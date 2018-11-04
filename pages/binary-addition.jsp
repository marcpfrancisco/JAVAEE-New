<%@ page import="java.util.*" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="../materialize/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
  rel="stylesheet">
  <title>Binary Addition</title>
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
          <a href="javascript:void(0)">Binary Addition</a>
        </li>
      </ul>
    </div>
  </nav>
 
  <div id="binary-dddition">
    <div class="row">
      <div class="col s12 m12 l6 offset-l3">
        <div class="card horizontal" style="margin-top: 35px; height: 80vh !important;">
          <div class="card-stacked">
            <div class="card-content">
              <div class="container-fluid">
                <span class="card-title center-align"> <strong>Binary Addition</strong> </span>
                <ul class="browser-default">
                  <li>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores voluptates sit est molestiae nemo voluptatum aspernatur, impedit deserunt cumque.</p>
                  </li>
                </ul>
                <form action="" method="POST">
                  <div class="input-field col s6">
                    <input id="num1" name="num1" type="text" class="validate" data-length="8" maxlength="8" onkeypress="return isNumberKey(event)">
                    <label class="active" for="num1">First Number</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="num2" name="num2" type="text" class="validate" data-length="8" maxlength="8" onkeypress="return isNumberKey(event)">
                    <label class="active" for="num2">Second Number</label>
                  </div>
                  <button class="btn waves-effect waves-light right" type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                  </button>

                  <%
try
{
  if(request.getParameter("action") != null){

  
		String firstNum= request.getParameter("num1"); 
		String secondNum= request.getParameter("num2"); 

    int left = Integer.parseInt(firstNum, 2);
    int right = Integer.parseInt(secondNum, 2);
		String output = firstNum.toString() +" + "+ secondNum.toString() +" = "+ Integer.toBinaryString(left + right);
                  %>
                  <h6 class="active">Answer:</h6>
                  <h3 id="answer"><%=output.toString()%></h3>
                  
                  <%
                    }
	
	
}
catch(Exception e)
{
	out.println(e);
}

%>
                </form>
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
           if (!(event.shiftKey == false && (keycode == 46 || keycode == 8 || keycode == 37 || keycode == 39 || keycode == 110 || (keycode >= 48 && keycode <= 49)))) {
          event.preventDefault();
       }

	   }
  $(document).ready(function() {

    
    M.updateTextFields();

    $('input#num1, input#num2').characterCounter();

    $(".dropdown-trigger").dropdown({
      coverTrigger: false,
      hover: true,
      constrainWidth: false
    });

    $('#num1').on("cut copy paste",function(e) {
      e.preventDefault();
   });

   $('#num2').on("cut copy paste",function(e) {
      e.preventDefault();
   });

  });
  </script>
</body>
</html>