<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="../materialize/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <title>Who's Cooking?</title>
</head>
<style>
  .dropdown-content li>a,
  .dropdown-content li>span {
    font-size: 16px;
    color: #2e2e2e;
    display: block;
    line-height: 22px;
    padding: 14px 16px;
  }

  .fdi {
    display: none;
  }

  .toast {
    background:red;
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
            <a href="javascript:void(0)">Who is cooking?</a>
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

    <div id="cooking">
      <div class="row">
        <div class="col s12">
          <!-- Eto yung unang mag sshow
          First manghihingi muna ng passcode
          If ( MOM || mOm || mom || Mom || moM ) ang input valid yun
          otherwise, kahit ano na ininput niya invalid/reject kahit swal nalang siguro yung popup -->
          <!-- Comment ko muna tong form -->
          <form method="POST" onsubmit="return Validate()">
            <h4 class="center-align fdo">
              Enter passcode
            </h4>
            <div class="input-field fdo">
              <input type="text" name="yourname" id="yourname">
              <label for="yourname">Who are you?</label>
            </div>
            <div class="input-field center-align fdo">
              <button class="btn waves-effect waves-light teal" type="submit">Submit</button>
            </div>
            <!-- eto naman yung mag sshow kapag tama yung input -->
            <div class="container fdi">
              <div class="row">
                <p class="flow-text">MOM</p>
                <div class="input-field col s12 l4">
                  <i class="material-icons prefix">search</i>
                  <input type="text" id="autocomplete-input" class="autocomplete">
                  <label for="autocomplete-input">Recipe or Ingredient</label>
                </div>
              </div>
              <div class="row">
                <div class="col s12 l4">
                  <div id="recipe1">
                    <img src="../assets/adobo.jpg" alt="Adobo" class="responsive-img">
                    <ul class="browser-default">
                      <li>Manok</li>
                      <li>Sibuyas</li>
                      <li>Paminta</li>
                      <li>Toyo</li>
                      <li>Suka</li>
                    </ul>
                    <p>Ganito magluto ng adobo Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda,
                      quasi.</p>
                  </div>
                </div>
                <div class="col s12 l4">
                  <div id="recipe2">
                    <img src="../assets/menudo.jpg" alt="Menudo" class="responsive-img">
                    <ul class="browser-default">
                      <li>Manok</li>
                      <li>Sibuyas</li>
                      <li>Paminta</li>
                      <li>Toyo</li>
                      <li>Suka</li>
                    </ul>
                    <p>Ganito magluto ng adobo Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda,
                      quasi.</p>
                  </div>
                </div>
                <div class="col s12 l4">
                  <div id="recipe3">
                    <img src="../assets/karekare.jpg" alt="Kare-Kare" class="responsive-img">
                    <ul class="browser-default">
                      <li>Manok</li>
                      <li>Sibuyas</li>
                      <li>Paminta</li>
                      <li>Toyo</li>
                      <li>Suka</li>
                    </ul>
                    <p>Ganito magluto ng adobo Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda,
                      quasi.</p>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col s12 l4">
                  <div id="recipe4">
                    <img src="../assets/sisig.jpg" alt="Kare-Kare" class="responsive-img">
                    <ul class="browser-default">
                      <li>Manok</li>
                      <li>Sibuyas</li>
                      <li>Paminta</li>
                      <li>Toyo</li>
                      <li>Suka</li>
                    </ul>
                    <p>Ganito magluto ng adobo Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda,
                      quasi.</p>
                  </div>
                </div>
                <div class="col s12 l4">
                  <div id="recipe5">
                    <img src="../assets/sbaboy.jpg" alt="Kare-Kare" class="responsive-img">
                    <ul class="browser-default">
                      <li>Manok</li>
                      <li>Sibuyas</li>
                      <li>Paminta</li>
                      <li>Toyo</li>
                      <li>Suka</li>
                    </ul>
                    <p>Ganito magluto ng adobo Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda,
                      quasi.</p>
                  </div>
                </div>
                <div class="col s12 l4">
                  <div id="recipe6">
                    <img src="../assets/dinuguan.jpg" alt="Kare-Kare" class="responsive-img">
                    <ul class="browser-default">
                      <li>Manok</li>
                      <li>Sibuyas</li>
                      <li>Paminta</li>
                      <li>Toyo</li>
                      <li>Suka</li>
                    </ul>
                    <p>Ganito magluto ng adobo Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda,
                      quasi.</p>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
  <!-- Compiled and minified JavaScript -->
  <script src="../materialize/js/materialize.js"></script>
  <script>
    $(".dropdown-trigger").dropdown({
      coverTrigger: false,
      hover: true,
      constrainWidth: false
    });
    function Validate(){
      if($('#yourname').val() == ''){
        M.toast({
          html:'Who are you?'
        })
      }
      else if($('#yourname').val().toLowerCase() == 'mom'){
        $('.fdo').fadeOut();
        setTimeout(function(){
          $('.fdi').fadeIn();
        },700)
      }
      else{
        M.toast({
          html:'You don\'t have access'
        })
      }
      return false;
    }
  </script>
</body>
</html>