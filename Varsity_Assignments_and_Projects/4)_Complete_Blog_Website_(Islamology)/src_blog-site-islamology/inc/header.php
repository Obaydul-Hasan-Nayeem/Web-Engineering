<?php include "config/config.php"; ?>
<?php include "lib/Database.php"; ?>
<?php include "helpers/format.php"; ?>
<?php
$db = new Database();
$fm = new Format();
?>

<!DOCTYPE html>
<html>

<head>
	<?php include 'scripts/meta.php'; ?>
	<?php include 'scripts/css.php'; ?>
	<?php include 'scripts/js.php'; ?>
</head>

<body>

	<div class="headersection templete clear">
		<a href="index.php">
			<div class="logo">
				<?php
				$query = "select * from title_slogan where id='1'";
				$blog_title = $db->select($query);
				if ($blog_title) {
					while ($result = $blog_title->fetch_assoc()) {
				?>
						<img src="admin/<?php echo $result['logo']; ?>" alt="Logo" />
						<h2><?php echo $result['title']; ?></h2>
						<p><?php echo $result['slogan']; ?></p>
				<?php }
				} ?>
			</div>
		</a>

				<div style="text-align: center;">
				<h4>
				<?php
					echo "Today is " .date("l"), date(" | Y-m-d");
					?>

				</h4>
					
				</div>


		<div class="social clear">
			<div class="icon clear">
				<?php
				$query = "select * from tbl_social where id='1'";
				$socialmedia = $db->select($query);
				if ($socialmedia) {
					while ($result = $socialmedia->fetch_assoc()) {
				?>
						<a href="<?php echo $result['fb']; ?>" target="_blank"><i class="fa fa-facebook"></i></a>
						<a href="<?php echo $result['tw']; ?>" target="_blank"><i class="fa fa-twitter"></i></a>
						<!-- <a href="<?php echo $result['ln']; ?>" target="_blank"><i class="fa fa-linkedin"></i></a>
						<a href="<?php echo $result['gp']; ?>" target="_blank"><i class="fa fa-google-plus"></i></a> -->
				<?php }
				} ?>
			</div>


			<div class="searchbtn clear">
				<form action="search.php" method="get">
					<input type="text" name="search" placeholder="Search Your Islamic Queries..." />
					<input type="submit" name="submit" value="Search" />
				</form>
			</div>

			
				
		</div>

				
				
	</div>


	<style>
					
	</style>