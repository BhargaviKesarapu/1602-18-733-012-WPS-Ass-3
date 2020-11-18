
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Contact</title>
    <style>
/*        #imageUpload
        {
            display: none;
        }*/

        #profileImage
        {
            cursor: pointer;
        }
    </style>
  </head>
  <body>
      
      
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item active">
          <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
  </div>
</nav>
      
      
    <div class="container col-12 col-lg-6 col-xl-6" style="margin-top: 100px;">

        <form method="POST" class="text-center  p-5" action="data" style="background-color:rgb(0,0,0,0.1);border-radius: 10px" >

            <p class="h4 mb-4">Enter the details</p>
            <div class="row">          
            <div class="col-8">
                    <!-- First name -->
            <input type="text" id="defaultRegisterFormFirstName" name="name" class="form-control mb-4" placeholder="Name" required>
        
            <!-- E-mail -->
            <input type="email" id="defaultRegisterFormEmail" class="form-control mb-4" name="email" placeholder="E-mail" required>
        
            <!-- Password -->
            <input type="text" class="form-control" name="mobile" placeholder="Mobile no." aria-describedby="defaultRegisterFormPasswordHelpBlock" required>

            <input type="date" class="form-control mt-4" name="dob" placeholder="Date of birth" aria-describedby="defaultRegisterFormPasswordHelpBlock" required>
            </div>
            <!-- Sign up button -->
            <div class="col-4">
            <image id="profileImage" class="mb-4" src="profile.png" style="height:130px;width: 100px"/>
            <input id="imageUpload" type="file" 
                 name="profile_photo" placeholder="Photo" required="" capture>
            </div>
                        <button class="btn btn-info mt-4 mx-4" type="submit">Submit</button>

            <div>
            
        </form>

    </div>

        <script>
        if ( window.history.replaceState ) {
          window.history.replaceState( null, null, window.location.href );
        }
        </script>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>
       function previewProfileImage( uploader ) {   
    //ensure a file was selected 
    if (uploader.files && uploader.files[0]) {
        var imageFile = uploader.files[0];
        var reader = new FileReader();    
        reader.onload = function (e) {
            //set the image data as source
            $('#profileImage').attr('src', e.target.result);
        }    
        reader.readAsDataURL( imageFile );
    }
}

$("#imageUpload").change(function(){
    previewProfileImage( this );
});
    </script>

  </body>
</html>
