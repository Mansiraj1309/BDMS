<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
</head>
    <div class="col-lg-4 mb-4">
        <h2>Contact Details</h2>
        <?php
          include 'conn.php';
          $sql= "select * from contact_info";
          $result=mysqli_query($conn,$sql);
          if(mysqli_num_rows($result)>0)   {
              while($row = mysqli_fetch_assoc($result)) { ?>
        
        <p>
            <h4>Address :</h4><?php echo $row['contact_address']; ?>
        </p>
        <p>
            <h4>Contact Number :</h4><?php echo $row['contact_phone']; ?>
        </p>
        <p>
          <h4>  Email: </h4><a href="#"><?php echo $row['contact_mail']; ?></a>
          </a></b>
        </p>
        <?php }
      } ?>
    </div>
</div>


</div>
</div>
<br>
<?php include 'footer.php' ?>
</div>
</body>

</html>
