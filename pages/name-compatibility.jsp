<%@ page import="java.util.*" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
  rel="stylesheet">
  <title>JAVAEE - Name Compatibity</title>
</head>
<body>
  <div class="wrapper">
  
  <nav class="nav-wrapper teal darken-4 navbar-fixed">
    <div class="container">
      <a href="#" class="brand-logo">Logo</a>
      <ul class="right hide-on-med-and-down">
        <li><a href="../index.jsp">Home</a></li>
        <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
        <li><a href="about.jsp">About</a></li>
    </ul>
    </div>
  </nav>

  <!-- Dropdown Structure -->
  <ul id="dropdown1" class="dropdown-content">
    <li>
      <a href="color-game.jsp">Color Game</a>
    </li>
    <li>
      <a href="javascript:void(0)">Name Compatibility</a>
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



  <div id="binary-dddition">
    <div class="row">
      <div class="col s12 m12 l6 offset-l3">
        <div class="card horizontal" style="margin-top: 35px; height: 80vh !important;">
          <div class="card-stacked">
            <div class="card-content">
              <div class="container-fluid">
                <span class="card-title center-align"> <strong>Name Compatibility</strong> </span>
                <ul class="browser-default">
                  <li>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis asperiores voluptates sit est molestiae nemo voluptatum aspernatur, impedit deserunt cumque.</p>
                  </li>
                </ul>
                <form action="" method="POST">
                  <div class="input-field col s6">
                    <input id="num1" name="num1" type="text" class="validate" data-length="8" maxlength="8" >
                    <label class="active" for="num1">First Number</label>
                  </div>
                  <div class="input-field col s6">
                    <input id="num2" name="num2" type="text" class="validate" data-length="8" maxlength="8" >
                    <label class="active" for="num2">Second Number</label>
                  </div>
                  <button class="btn waves-effect waves-light right" type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                  </button>

            <%
            try
            {
              String firstName= request.getParameter("num1"); 
              String secondName= request.getParameter("num2"); 
              String st = firstName +" + "+ secondName;
              String vowels = "";
              String result = "";

              if(request.getParameter("action") != null){

              
                

                st = st.toUpperCase();
              int a=0, b=0, c=0, d=0, e=0;
              int l = st.length();

              for(int i=0;i<l;i++)
              {
              char ch = st.charAt(i);
              if(ch=='A')
              a++;
              else
              if(ch=='E')
              b++;
              else
              if(ch=='I')
              c++;
              else
              if(ch=='O')
              d++;
              else
              if(ch=='U')
              e++;
              }

              if ((a>b) && (a>c) && (a>d )&& (a>e)) {

              vowels="A";

              if(a%2==0)
              {
              result="Its a match!";

              }
              else
              {
              result="Does not match!";

              }
     

              %>
              <h6 id="answer"><%=st.toString()%></h6>
              <h6 class="active"><%=vowels.toString()%></h6>
              <h6 class="active"><%=a%></h6>
              <h6 class="active"><%=result.toString()%></h6>
              
              <%
              }

              else if (b>c && (b>d) && (b>e)) {
                vowels="E";
              if(b%2==0)
              {
              result="Its a match!";

              }
              else
              {
              result="Does not match!";

              }

              %>
              <h6 id="answer"><%=st.toString()%></h6>
              <h6 class="active"><%=vowels.toString()%></h6>
              <h6 class="active"><%=b%></h6>
              <h6 class="active"><%=result.toString()%></h6>

              <%

              }

              else if (c>d && (c>e))
              {
                vowels="I";
              if(c%2==0)
              {
              result="Its a match!";

              }
              else
              {
              result="Does not match!";

              }

                %>
              <h6 id="answer"><%=st.toString()%></h6>
              <h6 class="active"><%=vowels.toString()%></h6>
              <h6 class="active"><%=c%></h6>
              <h6 class="active"><%=result.toString()%></h6>
              
              
                
                <%

              }


              else if (d>e)
              {
                vowels="O";
              if(d%2==0)
              {
              result="Its a match!";

              }
              else
              {
              result="Does not match!";

              }

                %>
              <h6 id="answer"><%=st.toString()%></h6>
              <h6 class="active"><%=vowels.toString()%></h6>
              <h6 class="active"><%=d%></h6>
              <h6 class="active"><%=result.toString()%></h6>
              
              
                
                <%

              }

              else if (e>a && e>b && e>c && e>d)
              {
                vowels="U";
              if(e%2==0)
              {
              result="Its a match!";

              }
              else
              {
              result="Does not match!";

              }

                %>
              <h6 id="answer"><%=st.toString()%></h6>
              <h6 class="active"><%=vowels.toString()%></h6>
              <h6 class="active"><%=e%></h6>
              <h6 class="active"><%=result.toString()%></h6>
              
              
                
                <%

              }


              else 
              {
              vowels="No vowels found!";
              result="No vowels found!";

                %>
              <h4 id="answer"><%=st.toString()%></h4>
              <h6 class="active">Similar Vowels: <%=vowels.toString()%></h6>
              <h6 class="active">Number of Similar Vowels: <%="0"%></h6>
              
                
                <%

              }

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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <script>
  function isNumberKey(evt)
  {
    var keycode = event.which;
        if (!(event.shiftKey == false && (keycode == 46 || keycode == 8 || keycode == 37 || keycode == 39 || keycode == 110 || (keycode >= 65 && keycode <= 90)))) {
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