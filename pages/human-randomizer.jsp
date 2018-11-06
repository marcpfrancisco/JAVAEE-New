<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="../materialize/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
  <link rel="stylesheet" href="../css/randomizer.css">
  <title>Human Randomizer</title>
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
    <ul class="sidenav" id="mobile-demo">
      <li><a href="../index.jsp">Home</a></li>
      <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
    </ul>

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
            <a href="human-evolution.jsp">Human Evolution</a>
          </li>
          <li>
            <a href="javascript:void(0)">Human Randomizer</a>
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
        <a href="javascript:void(0)">Human Randomizer</a>
      </li>
      <li>
        <a href="passing-chance/index.html">Passing Chances</a>
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

    <div id="randomizer">
      <div class="row">
        <div class="col s12 m12 l6 offset-l3">
          <div class="card horizontal" style="margin-top: 35px; height: 80vh !important;">
            <div class="card-stacked">
              <div class="card-content">
                <div class="container-fluid">
                  <span class="card-title center-align"><strong>Human Randomizer</strong> </span>
                  <ul class="browser-default">
                    <li>
                      <p class="lead">Click to generate random names.</p>
                    </li>
                  </ul>
                  <form name="WordForm">  
                    <input type="text" name="WordBox" id="wordbox"><br>
                    <button class="btn waves-effect waves-light right" type="button" value="Generate" onClick="PickRandomWord(document.WordForm);" id="button">Generate</button>
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
    let boy = ["Jacob","Michael","Joshua","Matthew","Christopher","Andrew","Daniel","Ethan","Joseph","William","Anthony","Nicholas","David","Alexander","Ryan","Tyler","James","John","Jonathan","Brandon","Christian","Dylan","Zachary","Noah","Samuel"];

    let girl = ["Emma","Olivia","Sophia","Isabella","Ava","Mia","Emily","Abigail","Madison","Charlotte","Harper","Sofia","Avery","Elizabeth","Amelia","Evelyn","Ella","Chloe","Victoria","Aubrey","Grace","Zoey","Natalie","Addison","Lillian"];

    let combine = boy.concat(girl);
    
    $('#button').click(function(){
      let randomname = combine[Math.floor(Math.random() * combine.length)];
      if(boy.includes(randomname)){
        $('#wordbox').css('background',' #1e88e5');
      }
      else{
        $('#wordbox').css('background','#d81b60');
      }
      $('#wordbox').val(randomname);
    });
  $(document).ready(function(){
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