<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="../materialize/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
  rel="stylesheet">
  <title>Color Game</title>
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
  <div class="wrapper ">
    
    <ul class="sidenav" id="mobile-demo">
      <li><a href="../index.jsp">Home</a></li>
      <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
    </ul>

    <nav class="nav-wrapper blue-grey darken-3">
      <div class="container">
        <a href="javascript:void(0)" class="brand-logo">Logo</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
          <li><a href="../index.jsp">Home</a></li>
          <li><a href="../index.jsp">About</a></li>
          <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
          <li><a href="../index.jsp">Contact</a></li>
        </ul>
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
      </div>
    </nav>
  
    <div id="color-game">
      <div class="row">
        <div class="col s12 m12 l6 offset-l3">
          <div class="card horizontal" style="margin-top: 35px; height: 90vh !important;">
            <div class="card-stacked">
              <div class="card-content">
                <div class="container-fluid">
                  <span class="card-title center-align"> <strong>Color Game</strong> </span>
                  <ul class="browser-default">
                    <li>
                      <p class="lead">The objective of the game is to combine two primary colors to produce secondary colros.</p>
                    </li>
                  </ul>
                  <div class="center">
                    <button class="btn-floating btn-large waves-effect waves-light blue" id="blue" onclick="buttonClicked('A'); M.toast({html: 'Blue was clicked!', displayLength: 800})"></button>
                    <button class="btn-floating btn-large waves-effect waves-light red darken-2" id="red" onclick="buttonClicked('B');  M.toast({html: 'Red was clicked', displayLength: 800})"></button>
                    <button class="btn-floating btn-large waves-effect waves-light yellow" id="yellow" onclick="buttonClicked('C');  M.toast({html: 'Yellow was clicked', displayLength: 800})"></button>
                  <div class="card">
                    <div id="card-color" class="card-content" style="width: 100%; height: 55%;"></div>
                  </div>
                  <button class="btn black text-white right" id="reset">RESET</button>
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
  
  var blue = "";
  var red = "";
  var yellow = "";
 
  function buttonClicked(color) {
    if(color == 'A') {
      blue = "blue";
      $("#card-color").css("background", "#2196F3");

      //To make purple #7b1fa2
      if(blue == "blue" && red == "red") {
        $("#card-color").css("background", "#7b1fa2");
        blue = "";
        red = "";
      }
      //To make green #388e3c
      else if(blue == "blue" && yellow =="yellow") {
        $("#card-color").css("background", "#388e3c");
        blue="";
        yellow="";
      }
    }else if(color == 'B') {
      red = "red";
      $("#card-color").css("background", "#d32f2f");

      //To make purple #7b1fa2
      if(red == "red" && blue == "blue") {
        $("#card-color").css("background", "#7b1fa2");
        red = "";
        blue = "";
      }
      //To make orange #f57c00
      else if (red == "red" && yellow == "yellow") {
        $("#card-color").css("background", "#f57c00");
        red = "";
        yellow = "";
      }

    }else if(color == 'C') {
      yellow = "yellow";
      $("#card-color").css("background", "#FFEB3B");

      //To make green #388e3c
      if(yellow == "yellow" && blue == "blue") {
        $("#card-color").css("background", "#388e3c");
        yellow = "";
        blue = "";
      }
      //To make orange #f57c00
      else if(yellow == "yellow" && red == "red") {
        $("#card-color").css("background", "#f57c00");
        yellow = "";
        red = "";
      }
    }
  }

  $(document).ready(function(){

    $(".dropdown-trigger").dropdown({
      coverTrigger: false,
      hover: true,
      constrainWidth: false
    });

    $('.sidenav').sidenav();

    $('#reset').click(function(){
      $("#card-color").css("background", "");
    });

  });
  
  
  </script>
</body>
</html>