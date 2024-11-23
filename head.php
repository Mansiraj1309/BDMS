<html>
<head>
<style>

.header {
  overflow:hidden;
  background-color: blueviolet;
  top: 0;
  width:100%;
  padding: 10px 5px;
  color: aliceblue ;
}
.header a {
  float: left;
  color: aliceblue;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
  font-weight:bold;
}
.header a.logo {
  font-size: 25px;
  font-weight: bold;
  color: antiquewhite  ;
}
.header-right {
  float: right;
}

</style>
</head>

<body>
  <div class="header">
    <a href="home.php" class="logo"<?php if($active=='home') echo "class='logo2'"; ?>>Blood Bank & Donation </a>
    <div class="header-right">
    <a href="home.php"  <?php if($active=='home') echo "class='act'"; ?> >Home</a>
      <a href="need_blood.php" <?php if($active=='need') echo "class='act'"; ?>>Need Blood</a>
      <a href="contact_us.php" <?php if($active=='contact') echo "class='act'"; ?>>Contact Us</a>
      <a href="admin/login.php"  <?php if($active=='home') echo "class='act'"; ?> >Admin</a>
    </div>
  </div>
</body>
</html>
