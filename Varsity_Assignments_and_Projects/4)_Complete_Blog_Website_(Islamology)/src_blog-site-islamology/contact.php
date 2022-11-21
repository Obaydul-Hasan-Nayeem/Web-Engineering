<?php include 'inc/header.php'; ?>
<?php include 'inc/navbar.php'; ?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$fname = $fm->validation($_POST['firstname']);
	$lname = $fm->validation($_POST['lastname']);
	$email = $fm->validation($_POST['email']);
	$body = $fm->validation($_POST['body']);

	$fname = mysqli_real_escape_string($db->link, $fname);
	$lname = mysqli_real_escape_string($db->link, $lname);
	$email = mysqli_real_escape_string($db->link, $email);
	$body = mysqli_real_escape_string($db->link, $body);

	$error = "";
	if (empty($fname)) {
		$error = "First Name Must Not Be Empty";
	} elseif (empty($lname)) {
		$error = "Last Name Must Not Be Empty";
	} elseif (empty($email)) {
		$error = "Email Field Must Not Be Empty";
	} elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$error = "Invalid Email Address";
	} elseif (empty($body)) {
		$error = "Message Field Must Not Be Empty";
	} else {
		$query = "INSERT INTO tbl_contact(firstname, lastname, email, body) 
               VALUES('$fname', '$lname', '$email', '$body')";
		$inserted_rows = $db->insert($query);
		if ($inserted_rows) {
			$msg = "Message Sent Successfully";
		} else {
			$error = "Message Not Sent";
		}
	}
}
?>

<div class="contentsection contemplete clear">
	<div class="maincontent clear">
		<div class="about">
			<h2>Contact Us - Islamology</h2>
			<?php
			if (isset($error)) {
				echo "<span style='color:red'>$error</span>";
			}
			if (isset($msg)) {
				echo "<span style='color:green'>$msg</span>";
			}
			?>
			<form action="" method="post">
				<table>
					<tr>
						<td>Your First Name:</td>
						<td>
							<input type="text" name="firstname" placeholder="e.g., Obaydul Hasan" />
						</td>
					</tr>
					<tr>
						<td>Your Last Name:</td>
						<td>
							<input type="text" name="lastname" placeholder="e.g., Nayeem" />
						</td>
					</tr>

					<tr>
						<td>Your Email Address:</td>
						<td>
							<input type="text" name="email" placeholder="e.g., nayeem.cse6.bu@gmail.com" />
						</td>
					</tr>
					<tr>
						<td>Your Message to Islamology:</td>
						<td>
							<textarea name="body" placeholder="Write something about your experience or feedback or suggestion to improve the 'Islamology' more than before."></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" name="submit" value="Send" />
						</td>
					</tr>
				</table>
				<form>
		</div>

	</div>
	<?php include "inc/sidebar.php"; ?>

</div>

<?php include "inc/footer.php"; ?>