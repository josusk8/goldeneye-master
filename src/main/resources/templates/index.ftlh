<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Goldeneye</title>
    <!--Import Google Icon Font-->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <!--Import materialize.css-->
    <link
      type="text/css"
      rel="stylesheet"
      href="css/materialize.min.css"
      media="screen,projection"
    />
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <script type="text/javascript" src="/js/index.js"></script>
  </head>
  <body class="container">
  <br>
    <!-- logo  -->
    <div align="center">
      <img
        class="responsive-img"
        src="https://www.pngkey.com/png/full/869-8698646_logo-final-goldeneye-resort-logo.png"
        alt=""
        width="250px"
      />
    </div>
    <!-- form  -->
    <form>
      <!-- name  -->
      <div>
        <label>Name</label>
        <input
          type="text"
          id="name"
          value=""
          placeholder="Enter your name"
          minlength="2"
          maxlength="30"
          required
          pattern="[A-Za-z ]{2,30}"
          oninvalid="alert('You must fill in you name!');"
        />
      </div>
      <!-- surname  -->
      <div>
        <label>Surname</label>
        <input
          type="text"
          id="surname"
          value=""
          placeholder="Enter your surname"
          minlength="2"
          maxlength="30"
          required
          pattern="[A-Za-z ]{2,30}"
          oninvalid="alert('You must fill in your surname!');"
        />
      </div>
      <!-- office  -->
      <div>
        <label>Office</label>
        <select
          id="cityOffice"
          class="browser-default"
          required
          onchange="setJobPosition(this)"
          oninvalid="alert('You must fill in to choose an office!');"
        >
          <option selected disabled value="">Choose your option</option>
          <option value="milan">Milan</option>
          <option value="spain">Spain</option>
          <option value="newyork">New York</option>
        </select>
      </div>
      <!-- Job position -->
      <div>
        <label>Job position</label>
        <select
          id="jobPosition"
          class="browser-default"
          required
          oninvalid="alert('You must fill in to choose a job position!');"
        >
          <option value="" disabled selected>Choose your option</option>
        </select>
      </div>
    </form>
    <br />
    <!-- Get your email -->
    <div align="center">
      <button
        id="button"
        onclick="getEmail()"
        class="waves-effect waves-light btn"
      >
        Get your email
      </button>
    </div>
    <br />
    <div id="out"></div>

    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="js/materialize.min.js"></script>
  </body>
</html>
