<<<<<<< HEAD
<?php

//main connection file for both admin & front end
$servername = "localhost"; //server
$username = "root"; //username
$password = ""; //password
$dbname = "onlinefoodphp";  //database

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname); // connecting 
// Check connection
if (!$db) {       //checking connection to DB	
    die("Connection failed: " . mysqli_connect_error());
}

?>
=======

<?php

$servername = getenv("DB_HOST");
$username   = getenv("DB_USER");
$password   = getenv("DB_PASSWORD");
$dbname     = getenv("DB_NAME") ?: "onlinefoodphp";
$port       = (int)(getenv("DB_PORT") ?: 4000);

$db = mysqli_init();

if (!$db) {
    die("Database initialization failed.");
}

// TiDB Cloud SSL certificate
$ca = __DIR__ . "/certs/isrgrootx1.pem";

if (!file_exists($ca)) {
    die("SSL certificate not found: " . $ca);
}

mysqli_ssl_set($db, NULL, NULL, $ca, NULL, NULL);

try {
    $connected = mysqli_real_connect(
        $db,
        $servername,
        $username,
        $password,
        $dbname,
        $port,
        NULL,
        MYSQLI_CLIENT_SSL
    );

    if (!$connected) {
        die("Database connection failed: " . mysqli_connect_error());
    }

    mysqli_set_charset($db, "utf8mb4");

} catch (mysqli_sql_exception $e) {
    die("Database connection failed: " . $e->getMessage());
}

?>
>>>>>>> 8a1bc61b31f908947227180c6bbecca149575102
