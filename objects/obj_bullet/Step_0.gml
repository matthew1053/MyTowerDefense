//show_debug_message("bullet damage (step): " + string(damage));

// Check if the object is outside the room boundaries
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy(); // Destroy the object
}