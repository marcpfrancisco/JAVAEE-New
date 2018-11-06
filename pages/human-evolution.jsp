<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="../materialize/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
  <title>Human Evolution</title>
</head>
<style>
.dropdown-content li>a, .dropdown-content li>span {
  font-size: 16px;
  color: #2e2e2e;
  display: block;
  line-height: 22px;
  padding: 14px 16px;
}
</style>
<body>
  <div class="wrapper">
    <nav class="nav-wrapper blue-grey darken-3">
      <div class="container">
        <a href="javascript:void(0)" class="brand-logo">JAVAEE</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
          <li><a href="../index.jsp">Home</a></li>
          <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
          <li><a href="../index.jsp">About</a></li>
          <li><a href="../index.jsp">Contact</a></li>
        </ul>
        <!-- Dropdown Structure -->
        <ul id="dropdown1" class="dropdown-content">
          <li>
            <a href="color-game.jsp">Color Game</a>
          </li>
          <li>
            <a href="name-compatibility.jsp">Name Compatibility</a>
          </li>
          <li>
            <a href="what-date.jsp">What date is it?</a>
          </li>
          <li>
            <a href="cooking.jsp">Who is cooking?</a>
          </li>
          <li>
            <a href="javascript:void(0)">Human Evolution</a>
          </li>
          <li>
            <a href="human-randomizer.jsp">Human Randomizer</a>
          </li>
          <li>
            <a href="passing-chances.jsp">Passing Chances</a>
          </li>
          <li>
            <a href="quiz-app.jsp">Quiz Application</a>
          </li>
          <li>
            <a href="task-checker.jsp">Task Checker</a>
          </li>
          <li>
            <a href="binary-addition.jsp">Binary Addition</a>
          </li>
        </ul>
      </div>
    </nav>

    <div id="human-evolution">
      <div class="row">
        <div class="col s12 l8 offset-l2">
          <div class="card horizontal" style="margin-top: 35px; height: 90vh !important;">
            <div class="card-stacked">
              <div class="card-content">
                <div class="container-fluid">
                  <span class="card-title center-align"><strong>Human Evolution</strong></span>
                  <div class="row">
                    <div class="col s12 l4 offset-l3">
                      <div class="input-field">
                        <input type="text" name="age" id="age" class="" maxlength="2" onkeypress="return isNumberKey(event)">
                        <label for="name">Enter your age</label>
                      </div>
                    </div>
                    <div class="col s12 l5">
                      <div class="input-field">
                        <button class="btn waves-effect waves-light" name="submitAge" id="submitAge" onclick="getAge()">SUBMIT</button>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col s12">
                      <img src="" alt=""  id="img" class="responsive-img" style="height: 40%; visibility: hidden;">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     
  </div>

  <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <!-- Compiled and minified JavaScript -->
  <script src="../materialize/js/materialize.js"></script>
  <script>

  function isNumberKey(evt)
	   {
		   var keycode = event.which;
           if (!(event.shiftKey == false && (keycode == 46 || keycode == 8 || keycode == 37 || keycode == 39 || keycode == 110 || (keycode >= 48 && keycode <= 57)))) {
          event.preventDefault();
       }

	   }

  function getAge(){  

  var age = document.getElementById("age").value; 

  if(age == ""){

    alert('Enter Age!');  

  } else {
    document.getElementById('img').style.visibility='visible';


   if(age >= 0 && age <= 1) {
    document.getElementById("img").src = "../assets/0 - 1.png";
  } else if(age >= 2 && age <= 3){
    document.getElementById("img").src = "../assets/0 - 3.png";
  } else if(age >= 4 && age <= 5){
    document.getElementById("img").src = "../assets/0 - 4.png";
  } else if(age >= 6 && age <= 11) {
    document.getElementById("img").src = "../assets/0 - 11.png";
  } else if(age >= 12 && age <= 19){
    document.getElementById("img").src = "../assets/0 - 19.png";
  } else if(age >= 20 && age <= 39) {
    document.getElementById("img").src = "../assets/0 - 39.png";
  } else if(age >= 40 && age <= 55) {
     document.getElementById("img").src = "../assets/0 - 55.png";
  } else if(age >= 56) {
    document.getElementById("img").src = "../assets/0 - 60.png";
  } else {

      }
    }
  }  
    $(".dropdown-trigger").dropdown({
      coverTrigger: false,
      hover: true,
      constrainWidth: false
    });

    $('#age').on("cut copy paste",function(e) {
      e.preventDefault();
   });
    
  </script>
</body>
</html>