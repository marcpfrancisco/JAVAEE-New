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
  <title>JAVAEE - Human Randomizer</title>
</head>
<body>
  <div class="wrapper">
    <ul class="sidenav" id="mobile-demo">
      <li><a href="">Home</a></li>
          <li><a class="dropdown-trigger" href="javascript:void(0)" data-target="dropdown1">Programs<i class="material-icons right">arrow_drop_down</i></a></li>
          <li><a href="about.jsp">About</a></li>
    </ul>

    <nav class="nav-wrapper teal darken-4">
      <div class="container">
        <a href="#" class="brand-logo">Logo</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
          <li><a href="">Home</a></li>
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
                      <p class="lead">Click spin to generate random names.</p>
                    </li>
                  </ul>
                  <form name="WordForm">  
                    <input type="text" name="WordBox" id="wordbox"><br>
                    <button class="btn waves-effect waves-light" type="button" value="Generate" onClick="PickRandomWord(document.WordForm);" id="button">Generate</button>
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
    var NumberOfWords = 28

    var words = new BuildArray(NumberOfWords)

    // Use the following variables to 
    // define your random words:
    words[1] = "Jacob"
    words[2] = "Madison"
    words[3] = "Joshua"
    words[4] = "Hannah"
    words[5] = "Christopher"
    words[6] = "Andrew"
    words[7] = "Daniel"
    words[8] = "Ethan"
    words[9] = "Joseph"
    words[10] = "William"
    words[11] = "Anthony"
    words[12] = "Nicholas"
    words[13] = "David"
    words[14] = "Brianna"
    words[15] = "Ryan"
    words[16] = "Tyler"
    words[17] = "James"
    words[18] = "John"
    words[19] = "Jonathan"
    words[20] = "Brandon"
    words[21] = "Christian"
    words[22] = "Dylan"
    words[23] = "Victoria"
    words[24] = "Noah"
    words[25] = "Samuel"
    words[26] = "Emily"
    words[27] = "Michael"
    words[28] = "Emma"
    words[29] = "Matthew"
    words[30] = "Olivia"
    words[31] = "Abigail"
    words[32] = "Isabella"
    words[33] = "Ashley"
    words[34] = "Samantha"
    words[35] = "Elizabeth"
    words[36] = "Alexa"
    words[37] = "Sarah"
    words[38] = "Alyssa"
    words[39] = "Grace"
    words[40] = "Sophia"
    words[41] = "Taylor"
    words[42] = "Alexander"
    words[43] = "Lauren"
    words[44] = "Ava"
    words[45] = "Kayla"
    words[46] = "Jessica"
    words[47] = "Natalie"
    words[48] = "Chloe"
    words[49] = "Anna"
    words[50] = "Zachary"

    function BuildArray(size){
    this.length = size
    for (var i = 1; i <= size; i++){
    this[i] = null}
    return this
    }

    function PickRandomWord(frm) {
    // Generate a random number between 1 and NumberOfWords
    var rnd = Math.ceil(Math.random() * NumberOfWords)

    // Display the word inside the text box
    frm.WordBox.value = words[rnd]
    }

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