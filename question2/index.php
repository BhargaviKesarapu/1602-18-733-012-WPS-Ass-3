<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
        }

        td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        }

        tr:nth-child(even) {
        background-color: #dddddd;
        }
</style>
</head>
<body>
<div class="container col-12 col-lg-6 col-xl-6" style="margin-top: 100px;">

<form method="POST" class="p-5" action="index.php" style="background-color:rgb(0,0,0,0.1);border-radius: 10px" >

    <p class="h4 mb-4">Enter the Name </p>
    <div class="row">          
    <div class="col-8">
    <input type="text" id="defaultRegisterFormFirstName" name="nam" class="form-control mb-4" placeholder="Name of the student" required>
    </div>
    <div class="col-4">

        <button type="submit" class="btn btn-info">Submit</button>
    <div>

    </div>
    </div>
    <?php
   if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $nam = $_POST['nam'];
        $conn=mysqli_connect("localhost","root","","test");
            if(!$conn){
              echo "error";
            }
            else{
        $sql="SELECT * from marks where nam='$nam'";
        $result=mysqli_query($conn,$sql);
        if(mysqli_num_rows($result)>=1)

        {
            while($row = mysqli_fetch_assoc($result)) {
                $total = (int) $row['C']+(int) $row['Java']+(int) $row['Python']+(int) $row['Maths'];

            echo "
            <b class='mb-4 mr-2'>Name of student : </b> $nam

            <table>
            <tr>
              <th>S.No.</th>
              <th>Course</th>
              <th>Marks</th>
            </tr>
            <tr>
              <td>1</td>
              <td>C Progaramming</td>
              <td>". $row['C']."</td>
            </tr>
            <tr>
              <td>2</td>
              <td>JAVA</td>
              <td>". $row['Java']."</td>
            </tr>
            <tr>
              <td>3</td>
              <td>Python</td>
              <td>". $row['Python']."</td>
            </tr>
            <tr>
              <td>4</td>
              <td>Maths</td>
              <td>". $row['Maths']."</td>
            </tr>
            <tr>
              <td></td>
              <td><b>Total</b></td>
              <td>$total</td>
            </tr>
          </table>";
            }
            if($total>280){
                echo '<div class="mx-auto mt-2">Result :<b> Distintion</b></div>';

            }
            else if($total<140){
                echo "<div class='mx-auto mt-2'>Result :<b> Fail</b></div>";

            }
            else{
                echo "<div class='mx-auto mt-2'>Result :<b> Passed</b></div>";

            }
        }

        else
        {
            echo "<b>result not found</b>";
        }
            }
   }
   ?>


    


    
</form>

</div>

</body>
</html>