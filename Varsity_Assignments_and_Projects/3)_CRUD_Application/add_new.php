<?php
    include "db_conn.php";

    session_start();

    $_SESSION['name'] = "";
    $_SESSION['description'] = "";
    $_SESSION['quantity'] = "";
    $_SESSION['price'] = "";
    $_SESSION['expired'] = "";

    if (isset($_POST['add_new_product'])) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $quantity = $_POST['quantity'];
            $price = $_POST['price'];
            $expired = $_POST['expired'];

            $_SESSION['name'] = $name;
            $_SESSION['description'] = $description;
            $_SESSION['quantity'] = $quantity;
            $_SESSION['price'] = $price;
            $_SESSION['expired'] = $expired;

            if ($name == "") {
                $err_name = "You have to add the product name!";
            } 
            
            if ($description == "") {
                $err_description = "You have to add the description!";
            }
            
            if ($quantity == "") {
                $err_quantity = "You have to add the quantity!";
            }
            
            if ($price == "") {
                $err_price = "You have to add the price!";
            }
            
            if ($expired == "") {
                $err_expired = "You have to add the expiration date!";
            }
            else {
                $sql = "INSERT INTO crud (`id`, `name`, `description`, `quantity`, `price`,  `expired`)
                VALUES(NULL, '$name', '$description', '$quantity', '$price', '$expired')";

                $result = mysqli_query($conn, $sql);

                if($result) {
                    header("Location: index.php?msg=New record created successfully");
                }
                else {
                    echo "Failed " . mysqli_error($conn);
                }
             }
        }
?>
        <?php
        if (isset($_POST['cancel'])) {   
            session_destroy();
            header('Location: index.php');
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

    <title>CRUD Application</title>
</head>

<style>
    .error {
        color: red;
    }
</style>

<body>
    <nav class="navbar navbar-light justify-content-center fs-3 mb-5">
    CRUD Application on Product Management
    </nav>

    <div class="container">
        <div class="text-center mb-4">
            <h3>Add New Product</h3>
            <p class="text-muted">Complete the form below to add a new product</p>
        </div>

        <div class="container d-flex justify-content-center">
            <form action="" method="post" style="width:50vw; min-width: 300px;">

                    <div class="col">
                        
                        <label class="form-label">Product Name:</label>
                        <input type="text" class="form-control" value="<?php echo $_SESSION['name']; ?>" name="name" placeholder="Name of the product"/>
                            <?php 
                                if (isset($err_name)) {
                                    echo "<span class='error'>$err_name</span>"; 
                                }
                            ?>
                    </div>

                    <div class="col">
                        <label class="form-label">Description:</label>
                        <textarea type="text" class="form-control" name="description" value="<?php echo $_SESSION['description']; ?>" placeholder="Description of the product"></textarea>
                        <?php 
                                if (isset($err_description)) {
                                    echo "<span class='error'>$err_description</span>"; 
                                }
                            ?>
                    </div>

                    <br>

            <div class="row">
                    <div class="col">
                        <label class="form-label">Quantity:</label>
                        <input type="number" class="form-control" name="quantity" value="<?php echo $_SESSION['quantity']; ?>" placeholder="Quantity of the product"/>
                        <?php 
                                if (isset($err_quantity)) {
                                    echo "<span class='error'>$err_quantity</span>"; 
                                }
                            ?>
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
                        <input type="text" class="form-control" name="price" value="<?php echo $_SESSION['price']; ?>" placeholder="Price of the product"/>
                        <?php 
                                if (isset($err_price)) {
                                    echo "<span class='error'>$err_price</span>"; 
                                }
                            ?>
                    </div>

                    <div class="col">
                        <label class="form-label">Expired Date:</label>
                        <input type="date" class="form-control" value="<?php echo $_SESSION['expired']; ?>" name="expired" placeholder="Expiration date"/>
                        <?php 
                                if (isset($err_expired)) {
                                    echo "<span class='error'>$err_expired</span>"; 
                                }
                        ?>
                    </div>
            </div>
                    
                <br>       
                            
                    <div style="float: right">
                        <button type="submit" class="btn btn-success" name="add_new_product">Save</button>
                        <button type="submit" class="btn btn-dark" name="cancel">Cancel</button>
                        <!-- <a name="cancel" href="index.php" class="btn btn-danger">Cancel</a> -->
                    </div>
           
            </form>
        </div>
    </div>

      
    
    <!--Bootstrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
</body>
</html>
