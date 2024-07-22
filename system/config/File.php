<?php
    class File {
		
		public static function upload($path = NULL){
			$path = DIR_STORAGE;
			if($path !== NULL){
				$targetDir = $path;
				if(!empty($_FILES["file"]["name"])){ 
					$fileName = date('Ymdhis').'-'.rand(111111,999999).'-'.basename($_FILES["file"]["name"]); 
					$targetFilePath = $targetDir . $fileName; 
					$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);
					if($fileType){ 
						if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){ 
							return $fileName;
						}else{ 
							return null;
						} 
					}else{ 
						return null;
					} 
				}else{ 
					return null;
				}
			}else{
				return null;
			}
		}
		
	}
		