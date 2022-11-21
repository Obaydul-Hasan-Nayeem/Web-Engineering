<div class="navsection templete">
		<?php
		$path = $_SERVER['SCRIPT_FILENAME'];
		$currentpage = basename($path, '.php');
		?>
		<ul>
			<li><a <?php
					if ($currentpage == 'index') {
						echo 'id="active"';
					}
					?> href="index.php">Home</a></li>
			<?php
			$query = "select * from tbl_page";
			$pages = $db->select($query);
			if ($pages) {
				while ($result = $pages->fetch_assoc()) {
			?>
					<li><a <?php
							if (isset($_GET['pageid']) && $_GET['pageid'] == $result['id']) {
								echo 'id="active"';
							}
							?> href="page.php?pageid=<?php echo $result['id']; ?>"><?php echo $result['name']; ?></a> </li>
			<?php }
			} ?>
			<li><a <?php
					if ($currentpage == 'contact') {
						echo 'id="active"';
					}
					?> href="contact.php">Contact</a></li>

			<li>
				<a href="admin/login.php">Login</a>
			</li>
		</ul>
	</div>