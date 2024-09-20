global.is_paused = !global.is_paused;

// Optional: Deactivate instances except for the pause controller
if (global.is_paused) {
    instance_deactivate_all(true);
    instance_activate_object(obj_pause_controller);
} else {
    instance_activate_all();
}