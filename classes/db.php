<?php
include "functions.php";

define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'task');

class DBConfig{
	private $conn;
	
	public $query_log_status 	= false;
	public $query_log			= "";
	public $database			= "";
	
	public function __construct($hostname, $username, $password, $database){
		$this->database = $database;

		if(!$this->conn = mysqli_connect($hostname, $username, $password)){
			trigger_error('Error: Could not connect to database ' . $database);('Error: Could not make a database link using ' . $username . '@' . $hostname);
      		exit();
    	}

    	if(!mysqli_select_db($this->conn, $database)){
      		trigger_error('Error: Could not connect to database '.$database);
      		exit();
    	}

		mysqli_query($this->conn, "SET NAMES 'utf8'");
		mysqli_query($this->conn, "SET CHARACTER SET utf8");
		mysqli_query($this->conn, "SET CHARACTER_SET_CONNECTION=utf8");
		mysqli_query($this->conn, "SET SQL_MODE = ''");
  	}
	
	function select($query, $param_type, $param_value_array){
		$sql = $this->conn->prepare($query);
		$this->bindQueryParams($sql, $param_type, $param_value_array);
		$sql->execute();
		$result = $sql->get_result();
		
		$num_rows = $result->num_rows;
		
		$resultset = array();
		$resultset['num_rows'] = $num_rows;
		if($num_rows > 0){
			while($row = $result->fetch_assoc()){
				$resultset['rows'][] = $row;
			}
			$resultset['row'] = $resultset['rows'][0];
		}
		
		return json_decode(json_encode($resultset, true));
    }
	
    function bindQueryParams($sql, $param_type, $param_value_array) {
    	$param_value_reference[] = &$param_type;
        for($i=0;$i<count($param_value_array);$i++){
            $param_value_reference[] = &$param_value_array[$i];
        }
        
        $validated = call_user_func_array(array(
            $sql,
            'bind_param'
        ), $param_value_reference);
        
        if(!$validated){
        	trigger_error('Error: ' . mysqli_error($this->conn) . '<br />Error No: ' . mysqli_errno($this->conn) . '<br />' . $sql);
			exit();
    	}
    }
    
	public function escape($value) {
		if(!is_array($value) && !is_object($value)){
			return mysqli_real_escape_string($this->conn, $value);
		}
		else if(is_array($value)){
			return $value;
		}
		else{
			return $value;
		}
	}
	
	public function __destruct(){
		mysqli_close($this->conn);
	}
}

$db = new DBConfig(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);

?>