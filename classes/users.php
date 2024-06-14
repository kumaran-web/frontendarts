<?php 
class UsersClass {
	private $db;

	// user Section
	public $user_id 						= '';
    public $first_name						= '';
    public $last_name						= '';
    public $username						= '';
    public $email							= '';
    public $phone_number					= '';
    public $date_of_birth					= '';
    public $gender							= '';
    public $address_line1					= '';
    public $address_line2					= '';
    public $city							= '';
    public $state_province					= '';
    public $country 						= '';
    public $zip_postal_code 				= '';
    public $registration_date				= '';
    public $last_login_date 				= '';
    public $subscription_type				= '';
    public $subscription_start_date 		= '';
    public $subscription_end_date			= '';
    public $account_status					= '';
    public $preferred_language				= '';
    public $timezone						= '';
    public $profile_picture_url 			= '';
    public $bio 							= '';
    public $others							= '';
	
	public $search_page_limit				=	30;
    public $search_total_results			=	0;
    public $search_total_result_pages		=	0;
    
	public $search_keyword					=	'';
	
    function __construct($db) {
		$this->db = $db;
	}
	
	function set($field, $value){
		$this->{$field} = $this->db->escape($value);
	}
	
	function get($field){
		return $this->{$field};
	}
    
	public function get_users_list($p=0){
		$users_list_qry 	= "";
		$users_list_type	= "";
		$users_list_params	= array();
		
		$limit = $this->search_page_limit;
		$start = $p*$limit;
		
		$user_name		= $this->username;
		
		$sql_qry = "SELECT <RESULT> FROM `users_list` WHERE 1 = ? ";
		$users_list_type .= "i";
		$users_list_params[] = 1;
		
		if($user_name != ''){
			$sql_qry .= " AND `user_name` LIKE ? ";
			
			$users_list_type .= "s";
			for($sk=0;$sk<1;$sk++){
				$users_list_params[] = "%{$user_name}%";
			}
		}
		
		$totalSQL	= str_replace('<RESULT>', 'COUNT(*) AS TOTAL', $sql_qry);
        $total_obj	= $this->db->select($totalSQL, $users_list_type, $users_list_params);
		$total_rows = $total_obj->row->TOTAL;
		
		$this->search_total_results 		= $total_rows;
		$this->search_total_result_pages	= ceil($total_rows/$limit);
        
        $users_list_qry 	= str_replace('<RESULT>', '*', $sql_qry);
        $users_list_qry 	.= " ORDER BY `user_id` ASC";
        
        if($p!=-1){
        	$users_list_qry .= " LIMIT $start, $limit ";
        }
        
        $users_list_obj = $this->db->select($users_list_qry, $users_list_type, $users_list_params);
        $tot_num_rows	= $users_list_obj->num_rows;
        
        if($tot_num_rows > 0){
    		return $users_list_obj->rows;
		}
		else{
			return false;
		}
	}
	
}
?>