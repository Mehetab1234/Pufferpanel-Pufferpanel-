<?php
// Retrieve email and password from login form (assuming they're posted)
$email = "mehetabhoque566@gmail.com";
$password = "mehetab"; // User entered password

// Query to find user by email
$sql = "SELECT * FROM users WHERE email='$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // User found
    $row = $result->fetch_assoc();
    
    // Verify the password
    if (password_verify($password, $row['password'])) {
        echo "Login successful!";
    } else {
        echo "Invalid password!";
    }
} else {
    echo "No user found!";
}

$conn->close();
?>
