<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <title>CRUD Application on Product Management</title>
</head>

<body>
    <nav class="navbar navbar-light justify-content-center fs-3 mb-5">
    CRUD Application on Product Management
    </nav>

    <div class="container">

      <?php
        if (isset($_GET['msg'])) {
          $msg = $_GET['msg'];
          echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
          '.$msg.'
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
        }
      ?>

      <a href="add_new.php" class="btn btn-dark mb-3">Add New</a>

      <table class="table table-hover text-center data display datatable" width="100%">
          <thead class="table-dark">
            <tr>
              <th width="5%" scope="col">ID</th>
              <th width="10%" scope="col">Product Name</th>
              <th width="10%" scope="col">Description</th>
              <th width="10%" scope="col">Quantity</th>
              <th width="10%" scope="col">Price</th>
              <th width="10%" scope="col">Manufactured</th>
              <th width="10%" scope="col">Expired Date</th>
              <th width="10%" scope="col">Action</th>
            </tr>
          </thead>
          <tbody>

            <?php
                include "db_conn.php";
                $sql = "SELECT * FROM crud";
                $result = mysqli_query($conn, $sql);
                 $i = 0;
                while($row = mysqli_fetch_assoc($result)) {
                    $i++;
                    ?>
            <tr>
                  <td><?php echo $i;?></td>
                  <td><?php echo $row['name']?></td>
                  <td><?php echo $row['description']?></td>
                  <td><?php echo $row['quantity']?></td>
                  <td><?php echo $row['price']?></td>
                  <td><?php echo $row['manufactured']?></td>
                  <td><?php echo $row['expired']?></td>
                  <td>
                    <a href="edit.php?id=<?php echo $row['id']?>" class="link-dark"><i class="fa-solid fa-pen-to-square fs-5 me-3"></i></a>
                    <a href="delete.php?id=<?php echo $row['id']?>" class="link-dark"><i class="fa-solid fa-trash fs-5"></i></a>
                  </td>


              <!-- <td width="10%"><?php echo $i;?></td>
              <td width="10%"><?php echo $row['first_name']?></td>
              <td width="10%"><?php echo $row['last_name']?></td>
              <td width="10%"><?php echo $row['email']?></td>
              <td width="10%"><?php echo $row['gender']?></td>
              <td width="10%">
                <a href="edit.php?id=<?php echo $row['id']?>" class="link-dark"><i class="fa-solid fa-pen-to-square fs-5 me-3"></i></a>
                <a href="delete.php?id=<?php echo $row['id']?>" class="link-dark"><i class="fa-solid fa-trash fs-5"></i></a>
              </td>
              <td width="10%"><?php echo $row['gender']?></td>
              <td width="10%"><?php echo $row['gender']?></td> -->
        

            </tr>
            <?php } ?>
          </tbody>
      </table>
    </div>

    <!--Bootstrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    

</body>
</html>