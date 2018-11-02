<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
  rel="stylesheet">
  <title>JAVAEE - Color Game</title>
</head>
<body>
  <div class="wrapper">
  
  <nav class="nav-wrapper teal darken-4 navbar-fixed">
    <div class="container">
    <a href="#" class="brand-logo">Logo</a>
    <ul class="right hide-on-med-and-down">
      <li><a href="../index.jsp">Home</a></li>
      <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a href="../about.jsp">About</a></li>
    </ul>
    </div>
  </nav>

  <!-- Dropdown Structure -->
  <ul id="dropdown1" class="dropdown-content">
    <li>
    <a href="javascript:void(0)">Color Game</a>
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
    <a href="human-evolution.jsp">Human Evolution</a>
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


    <div id="color-game">
      <div class="row">
        <div class="col s12 m12 l6 offset-l3">
          <div class="card horizontal" style="margin-top: 35px; height: 80vh !important;">
            <div class="card-stacked">
              <div class="card-content">
                <div class="container-fluid">
                  <span class="card-title center-align"> <strong>Color Game</strong> </span>
                  <ul class="browser-default">
                    <li>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, a, similique! Error accusantium corrupti est! Tempora earum molestiae eligendi repudiandae!</p>
                    </li>
                  </ul>
                  <div class="center">
                    <button class="btn-floating btn-large waves-effect waves-light blue" id="blue" onclick="existingLogic()"></button>
                    <button class="btn-floating btn-large waves-effect waves-light red" id="red" onclick="existingLogic()"></button>
                    <button class="btn-floating btn-large waves-effect waves-light yellow" id="yellow" onclick="existingLogic()"></button>
                  <div class="card">
                    <div id="card-color" class="card-content" style="width: 100%; height: 55%;"></div>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <script>

  // var red = "red";
  // var blue = "blue";

  document.getElementById('red').onclick = function() {
    $("#card-color").css("background", "yellow");
  };
 
  $(document).ready(function(){

    $(".dropdown-trigger").dropdown({
      coverTrigger: false,
      hover: true,
      constrainWidth: false
    });

  });
  
  
  </script>
</body>
</html>