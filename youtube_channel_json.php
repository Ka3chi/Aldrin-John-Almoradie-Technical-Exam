<?php

header('Content-Type: application/json');

// Database configuration
$host = 'localhost:3307';
$dbname = 'youtube_db';
$user = 'root';
$pass = '';


try {
    // DB Connection
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Fetch channel info
    $channelStmt = $pdo->prepare('SELECT * FROM youtube_channels LIMIT 1');
    $channelStmt->execute();
    $channelData = $channelStmt->fetch(PDO::FETCH_ASSOC);

    // Fetch video by latest
    $videosStmt = $pdo->prepare('SELECT * FROM youtube_channel_videos');
    $videosStmt->execute();
    $videosData = $videosStmt->fetchAll(PDO::FETCH_ASSOC);

    $response = [
        'channel' => $channelData,
        'videos' => $videosData,
    ];

    echo json_encode($response);

} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
} catch (Exception $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
?>
