<?php
session_start();

function isLoggedIn() {
    return isset($_SESSION['user_id']);
}

function requireLogin() {
    if (!isLoggedIn()) {
        header('Location: index.php');
        exit();
    }
}

function getUserLevel() {
    return isset($_SESSION['admin']) ? $_SESSION['admin'] : 0;
}

function requireLevel($level) {
    if (!isLoggedIn() || getUserLevel() < $level) {
        header('Location: index.php');
        exit();
    }
}
?>