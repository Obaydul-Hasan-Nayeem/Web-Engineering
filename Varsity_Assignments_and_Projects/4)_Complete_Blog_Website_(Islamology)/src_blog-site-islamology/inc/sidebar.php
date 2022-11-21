<div class="sidebar clear">

	<div class="samesidebar clear">
		<h2>Latest Articles</h2>
		<!-- <h6>Islamology</h6> -->
		<?php
			$query = "select * from tbl_post order by id desc limit 5";
			$post = $db->select($query);
			if ($post) {
				while ($result = $post->fetch_assoc()) {
			?>
		<div style="border: 1px solid black; border-radius: 10px; padding: 5px; margin-bottom: 10px;">
			<div class="popular clear">
				<h3><a href="post.php?id=<?php echo $result['id']; ?>"><?php echo $result['title']; ?></a></h3>
				<a href="post.php?id=<?php echo $result['id']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="post image" /></a>
				<?php echo $fm->textShorten($result['body'], 120); ?>
			</div>
		</div>

		<?php }
			} else {
				header("Location:404.php");
			} ?>

	</div>


	<div class="samesidebar clear">
		<h2>Categories</h2>
		<ul>
			<?php
			$query = "select * from tbl_category";
			$category = $db->select($query);
			if ($category) {
				while ($result = $category->fetch_assoc()) {
			?>
					<li><a href="posts.php?category=<?php echo $result['id'];?>"><?php echo $result['name']; ?></a></li>
				<?php
				}
			} else { ?>
			<li>No Category Created</li>
			<?php } ?>
		</ul>
	</div>

</div>