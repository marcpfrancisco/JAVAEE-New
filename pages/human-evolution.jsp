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
<body>
  <div class="wrapper">
    
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
            <a href="pages/color-game.jsp">Color Game</a>
          </li>
          <li>
            <a href="pages/name-compatibility.jsp">Name Compatibility</a>
          </li>
          <li>
            <a href="pages/what-date.jsp">What date is it?</a>
          </li>
          <li>
            <a href="pages/cooking.jsp">Who is cooking?</a>
          </li>
          <li>
            <a href="pages/human-evolution.jsp">Human Evolution</a>
          </li>
          <li>
            <a href="pages/human-randomizer.jsp">Human Randomizer</a>
          </li>
          <li>
            <a href="pages/passing-chances.jsp">Passing Chances</a>
          </li>
          <li>
            <a href="pages/quiz-app.jsp">Quiz Application</a>
          </li>
          <li>
            <a href="pages/task-checker.jsp">Task Checker</a>
          </li>
          <li>
            <a href="pages/binary-addition.jsp">Binary Addition</a>
          </li>
        </ul>
      </div>
    </nav>

     
  </div>

  <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <!-- Compiled and minified JavaScript -->
  <script src="../materialize/js/materialize.js"></script>
  <script>
    $(".dropdown-trigger").dropdown({
      coverTrigger: false,
      hover: true,
      constrainWidth: false
    });
    
  </script>
</body>
</html>