<?php

$servername = getenv("gateway01.ap-northeast-1.prod.aws.tidbcloud.com");
$username   = getenv("Y2p8skbJzD4F9Rw.root");
$password   = getenv("ezwEw05JjHZG2SuZ");
$dbname     = getenv("onlinefoodphp") ?: "onlinefoodphp";
$port       = (int)(getenv("DB_PORT") ?: 4000);

$db = mysqli_init();

if (!$db) {
    die("Database initialization failed.");
}

// Configure SSL using the CA certificate provided by TiDB Cloud.
$ca = __DIR__ . "/certs/isrgrootx1.pem";

mysqli_ssl_set($db, NULL, NULL, $ca, NULL, NULL);

if (!mysqli_real_connect(
    $db,
    $servername,
    $username,
    $password,
    $dbname,
    $port,
    NULL,
    MYSQLI_CLIENT_SSL
)) {
    die("Database connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($db, "utf8mb4");

?>