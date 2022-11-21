<?php
    include "db_conn.php";
    $id = $_GET['id'];

    if (isset($_POST['submit'])) {
        $name = $_POST['name'];
        $description = $_POST['description'];
        $quantity = $_POST['quantity'];
        $price = $_POST['price'];
        $manufactured = $_POST['manufactured'];
        $expired = $_POST['expired'];

        $sql = "UPDATE crud SET `name` = '$name', `description` = '$description', `quantity` = '$quantity', `price` = '$price', `manufactured` = '$manufactured', `expired` = '$expired' WHERE id = $id";

        $result = mysqli_query($conn, $sql);

        if($result) {
            header("Location: index.php?msg=Product Updated Successfully");
        }
        else {
            echo "Failed " . mysqli_error($conn);
        }
    }
?>


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
        <div class="text-center mb-4">
            <h3>Edit Product Information</h3>
            <p class="text-muted">Click 'Update' after changing any information</p>
        </div>

        <?php
         
            $sql = "SELECT * FROM crud WHERE id = $id LIMIT 1";
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);
        ?>

        <div class="container d-flex justify-content-center">
            <form action="" method="post" style="width:50vw; min-width: 300px;">
                    <div class="col">
                        <label class="form-label">Product Name:</label>
                        <input type="text" class="form-control" name="name" value="<?php echo $row['name'];?>"/>
                    </div>
                        <br>
                    <div class="col">
                        <label class="form-label">Description:</label>
                        <input type="text" class="form-control" name="description" value="<?php echo $row['description'];?>"/>
                    </div>

                    <br>

                <div class="row">
                    <div class="col">
                        <label class="form-label">Quantity:</label>
                        <input type="number" class="form-control" name="quantity" value="<?php echo $row['quantity'];?>"/>
                    </div>

                    <!-- <div class="form-group mb-3">
                        <label>Gender:</label>&nbsp;
                        <input type="radio" class="form-check-input" name="gender" id="male" value="male"/>&nbsp;
                        <label for="male" class="form-check-label">Male</label>&nbsp;
                        <input type="radio" class="form-check-input" name="gender" id="female" value="female"/>&nbsp;
                        <label for="female" class="form-check-label">Female</label>&nbsp;
                    </div> -->

                    <div class="col">
                        <label class="form-label">Price:</label>
                        <input type="text" class="form-control" name="price" value="<?php echo $row['price'];?>"/>
                    </div>
            
                    <div class="col">
                        <label class="form-label">Manufactured:</label>
                        <input type="text" class="form-control" name="manufactured" value="<?php echo $row['manufactured'];?>"/>
                    </div>

                    <div class="col">
                        <label class="form-label">Expired:</label>
                        <input type="date" class="form-control" name="expired" value="<?php echo $row['expired'];?>"/>
                    </div>
                </div>
     
                <br>       

                    <div style="float: right">
                        <button type="submit" class="btn btn-success" name="submit">Update</button>
                        <a href="index.php" class="btn btn-danger">Cancel</a>
                    </div>
            </form>
        </div>
    </div>

    <!--Bootstrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
</body>
</html>