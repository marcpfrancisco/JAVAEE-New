<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="../materialize/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
  <title>Task Checker</title>
</head>
<body>
  <div class="wrapper">
    
  <ul class="sidenav" id="mobile-demo">
      <li><a href="../index.jsp">Home</a></li>
          <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
          
    </ul>

    <nav class="nav-wrapper teal darken-4">
      <div class="container">
        <a href="../index.jsp" class="brand-logo">Logo</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
          <li><a href="../index.jsp">Home</a></li>
          <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
          
        </ul>
      </div>
    </nav>

    

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
        <a href="javascript:void(0)">Task Checker</a>
      </li>
      <li>
        <a href="binary-addition.jsp">Binary Addition</a>
      </li>
    </ul>

    <div id="task-checker">
      <div class="row">
        <div class="col s12 m12 l6 offset-l3">
          <div class="card horizontal" style="margin-top: 35px; height: 80vh !important;">
            <div class="card-stacked">
              <div class="card-content">
                <div class="container-fluid">
                  <span class="card-title center-align"><strong>Task Checker</strong></span>
                  <ul class="browser-default">
                    <li>
                      <p class="lead">Organize your To-Do list</p>
                    </li>
                  </ul>
                  <form action="" method="POST">
                    <div class="row">
                      <div class="col">
                        <div class="container-fluid">
                          <div class="checkboxes">
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Love yourself</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Focus on achieving your goal</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Appreciate little thingst</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Exert effort to your work</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Share happiness to others</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Face the reality</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Learn new things</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Explore new beginnings</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Challenge yourself</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                <input type="checkbox" />
                                <span>Be happy all the time</span>
                              </label>
                            </p>
                          </div>
                        </div>
                      </div>
                      <!-- first col end-->
                    </div>
                    <!-- firs row end-->
                    <div class="loader">
                      <p class="right-align" id="tasks">0/10</p>
                      <div class="progress">
                          <div class="determinate"></div>
                      </div>
                    </div>
                  </form>
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
  $(document).ready(function(){


  var count = 0;
  var checked = 0;

  function countBoxes() { 
    count = $("input[type='checkbox']").length;
  }
  
  countBoxes();
  $(":checkbox").click(countBoxes);
  
  
    function countChecked() {
    checked = $("input:checked").length;

    var percentage = parseInt(((checked / count) * 100),10);
    $('.determinate').css('width', percentage + '%').attr('aria-valuenow', percentage).text(percentage + "%");
    $('#tasks').text(checked + "/10");
    
  }
  
  countChecked();

  $(":checkbox").click(countChecked);

  $(".dropdown-trigger").dropdown({
    coverTrigger: false,
    hover: true,
    constrainWidth: false
  });

  $('.sidenav').sidenav();

  });

    
  </script>
</body>
</html>