<?php
$pageTitle = "Home";
include "includes/header.php";
include "classes/users.php";
extract($_GET);

$user_obj = new UsersClass($db);

$page = -1;
$users_list = $user_obj->get_users_list($page);

?>

	<div class="mt-3">
		<h1>Data Table</h1>
		
		<!--<div class="">-->
			<table id="usersTable" class="table table-striped nowrap display table-responsive" style="width:100%">
				<thead>
					<tr>
						<th>User ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Username</th>
						<th>Email Address</th>
						<th>Phone Number</th>
						<th>Date of Birth</th>
						<th>Gender</th>
						<th>Address Line 1</th>
						<th>Address Line 2</th>
						<th>City</th>
						<th>State</th>
						<th>Country</th>
						<th>Zip/Postal Code</th>
						<th>Registration Date</th>
						<th>Last Login Date</th>
						<th>Subscription Type</th>
						<th>Subscription Start Date</th>
						<th>Subscription End Date</th>
						<th>Account Status</th>
						<th>Preferred Language</th>
						<th>Timezone</th>
						<th>Profile Picture URL</th>
						<th>Description</th>
						<th>Others</th>
					</tr>
				</thead>
				<tbody>
				<?php
				if(!empty($users_list)){
					foreach($users_list as $user){
						
				?>
					<tr>
						<td><?=$user->user_id?></td>
						<td><?=$user->first_name?></td>
						<td><?=$user->last_name?></td>
						<td><?=$user->username?></td>
						<td><?=$user->email?></td>
						<td><?=$user->phone_number?></td>
						<td><?=$user->date_of_birth?></td>
						<td><?=$user->gender?></td>
						<td><?=$user->address_line1?></td>
						<td><?=$user->address_line2?></td>
						<td><?=$user->city?></td>
						<td><?=$user->state_province?></td>
						<td><?=$user->country?></td>
						<td><?=$user->zip_postal_code?></td>
						<td><?=$user->registration_date?></td>
						<td><?=$user->last_login_date?></td>
						<td><?=$user->subscription_type?></td>
						<td><?=$user->subscription_start_date?></td>
						<td><?=$user->subscription_end_date?></td>
						<td><?=$user->account_status?></td>
						<td><?=$user->preferred_language?></td>
						<td><?=$user->timezone?></td>
						<td><?=$user->profile_picture_url?></td>
						<td><?=$user->bio?></td>
						<td><?=$user->others?></td>
					</tr>
				<?php
					}
				}
				?>
				</tbody>
			</table>
		<!--</div>-->
	</div>

<?php
include "includes/footer.php";
?>


