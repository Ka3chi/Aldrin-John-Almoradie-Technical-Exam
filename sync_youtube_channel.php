<?php

$apiKey = 'AIzaSyAOMrTSJfx28L-Z0ubF7KmBoDslVpj7uDk';
$channelId = 'UCX6OQ3DkcsbYNE6H8uQQuVA';

// Fetch channel information
$channelUrl = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channelId&key=$apiKey";
$channelResponse = file_get_contents($channelUrl);
$channelData = json_decode($channelResponse, true);

// Error Check for Api
if ($channelData === null || !isset($channelData['items'][0]['snippet'])) {
    die("Error: Unable to fetch channel data or snippet not found.");
}

$channel = $channelData['items'][0]['snippet'];

// Database configuration
$host = 'localhost:3307'; 
$dbname = 'youtube_db';
$user = 'root'; 
$pass = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

// Save channel information to the database
$stmt = $pdo->prepare('
    INSERT INTO youtube_channels (channel_id, name, description, profile_picture_url) 
    VALUES (?, ?, ?, ?) 
    ON DUPLICATE KEY UPDATE name=?, description=?, profile_picture_url=?'
);
$stmt->execute([
    $channelId,
    $channel['title'],
    $channel['description'],
    $channel['thumbnails']['high']['url'],
    $channel['title'],
    $channel['description'],
    $channel['thumbnails']['high']['url']
]);

// Fetch latest videos using the search endpoint with pagination
$videosUrl = "https://www.googleapis.com/youtube/v3/search?channelId=$channelId&part=snippet&order=date&maxResults=50&type=video&key=$apiKey";
$videosData = json_decode(file_get_contents($videosUrl), true);

$totalFetched = 0;

while (isset($videosData['items']) && $totalFetched < 100) {
    foreach ($videosData['items'] as $item) {
        if (isset($item['id']['videoId'])) {
            $video = $item['snippet'];
            $videoId = $item['id']['videoId'];

            // Save video information to the database
            $stmt = $pdo->prepare('
                INSERT INTO youtube_channel_videos (channel_id, video_id, title, description, thumbnail_url, video_url) 
                VALUES (?, ?, ?, ?, ?, ?) 
                ON DUPLICATE KEY UPDATE title=?, description=?, thumbnail_url=?, video_url=?'
            );
            $stmt->execute([
                $channelId,
                $videoId,
                $video['title'],
                $video['description'],
                $video['thumbnails']['high']['url'],
                'https://www.youtube.com/watch?v=' . $videoId,
                $video['title'],
                $video['description'],
                $video['thumbnails']['high']['url'],
                'https://www.youtube.com/watch?v=' . $videoId
            ]);
        }
    }

    $totalFetched += count($videosData['items']);

    if (isset($videosData['nextPageToken']) && $totalFetched < 100) {
        $nextPageToken = $videosData['nextPageToken'];
        $videosUrl = "https://www.googleapis.com/youtube/v3/search?channelId=$channelId&part=snippet&order=date&pageToken=$nextPageToken&maxResults=50&type=video&key=$apiKey";
        $videosData = json_decode(file_get_contents($videosUrl), true);
    } else {
        break;
    }
}

echo "Channel and video information synchronized successfully.";

?>
