<?php

class Session{

    public function __construct(){
        @session_start();
    }

    /**
     * Set a session variable
     *
     * @param string $key
     * @param mixed $value
     */
    public function set($key, $value){
        $_SESSION[$key] = $value;
    }

    /**
     * Get the value of a session variable
     *
     * @param string $key
     * @param mixed $default Default value to return if the key is not set
     * @return mixed
     */
    public function get($key, $default = null){
        return isset($_SESSION[$key]) ? $_SESSION[$key] : $default;
    }

    /**
     * Check if a session variable exists
     *
     * @param string $key
     * @return bool
     */
    public function has($key){
        return isset($_SESSION[$key]);
    }

    /**
     * Remove a session variable
     *
     * @param string $key
     */
    public function remove($key){
        if ($this->has($key)) {
            unset($_SESSION[$key]);
        }
    }

    /**
     * Destroy the session
     */
    public function destroy(){
        session_unset();
        session_destroy();
    }
}

// Create an instance of the SessionManager
// $session = new session();
// // Set a session variable
// $session->set("user_id", 123);
// // Get the value of a session variable
// $userID = $session->get("user_id");
// // Check if a session variable exists
// if ($session->has("user_id")) {
//     // Do something
// }
// // Remove a session variable
// $session->remove("user_id");
// // Destroy the session
// $session->destroy();

?>
