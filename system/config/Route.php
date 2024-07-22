<?php
    class Route {
        private static $routes = [];

        public static function get($uri, $action) {
            $method = $_SERVER['REQUEST_METHOD'];
            self::$routes[] = ['uri' => $uri, 'action' => $action];
        }

        public static function post($uri, $action) {
            self::$routes[] = ['uri' => $uri, 'action' => $action];
        }

        private static function requireController($namespace, $class, $function) {
            $controllerPath = $namespace . '/controller/' . $class . '.php';
            if (file_exists($controllerPath)) {
                require_once $controllerPath;
                (new $class())->$function();
                exit();
            } else {
                http_response_code(404);
                require_once DIR_THEME . 'error/404.php';
            }
        }

        public static function dispatch() {
            $requestUri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
            if(count(self::$routes)>0){
                foreach (self::$routes as $route) {
                    $routeUri = $route['uri'];
                    $routeAction = $route['action'];

                    // echo $routeUri.' -> '.$routeAction.'<br>';
                    $routeSegments = explode("/", trim($routeUri, "/"));
                    $uriSegments = explode("/", parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));

                    if (str_replace(DIR_FOLDERNAME, '', $requestUri) === $routeUri) {
                        $actionExplode = explode('@', $routeAction);
                        $class = $actionExplode[0];
                        $function = $actionExplode[1];
                        if($uriSegments[2]=='admin-login' OR $uriSegments[2]=='admin'){
                            self::requireController('admin', $class, $function);
                        }else{
                            self::requireController('catalog', $class, $function);
                        }
                        return;
                    }
                }
            }
            // die;
            http_response_code(404);
            require_once DIR_THEME . 'error/404.php';
        }
    }
