<!DOCTYPE html>
<!-- Nirmal|| www.Nirmal.com -->
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Website in HTML CSS</title>
    <link rel="stylesheet" href="xyz.css" />
    <script src="../custom-scripts.js" defer></script>
  </head>
  <body>
    <main>
      <!-- Header Start -->
      <style>
          /* Import Google font - Poppins */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
main {
  background: #6610f2;
}
.container {
  max-width: 1300px;
  width: 100%;
  margin: 0 auto;
}
header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 1000;
}
.nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 60px;
}
.nav_logo {
  padding: 10px 0;
}
.menu_items {
  display: flex;
  list-style: none;
  gap: 20px;
}
a {
  color: #fff;
  text-decoration: none;
}
/* Hero */
.hero {
  position: relative;
  min-height: 100vh;
  width: 100%;
  background: url(images/bg-dot.png), url(images/bg-dot.png), url(images/bg-round.png), url(images/bg-tree.png);
  background-position: 10px 10px, bottom 215px right 10px, left 55% top -1%, left 45% bottom -1px;
  background-repeat: no-repeat;
}
.curveImg {
  position: absolute;
  bottom: 0;
  width: 100%;
  pointer-events: none;
}
.hero .row {
  display: flex;
  align-items: center;
  min-height: 100vh;
  height: 100%;
  width: 100%;
  padding: 0 60px;
  gap: 30px;
  justify-content: space-between;
}
.hero .row h2,
.hero .row p {
  color: #fff;
}
.hero .row h2 {
  font-size: 36px;
  margin-bottom: 16px;
}
.hero .column {
  width: 50%;
}
.buttons {
  display: flex;
  margin-top: 25px;
  gap: 10px;
}
.btn {
  padding: 14px 26px;
  background: #fff;
  border-radius: 50px;
  border: none;
  cursor: pointer;
  transition: all 0.3s ease;
}
.btn:last-child {
  border: 2px solid #fff;
  background: transparent;
  color: #fff;
}
.btn:last-child:hover {
  background-color: #fff;
  color: #333;
}
.hero_img {
  width: 100%;
  z-index: 10;
  position: relative;
}
#menu_toggle {
  display: none;
}
/* Reponsive */
@media (width < 860px) {
  #menu_toggle {
    display: block;
  }
  .nav {
    padding: 0 20px;
    background-color: #fff;
  }
  .menu_items {
    position: fixed;
    top: 0;
    width: 260px;
    background-color: #fff;
    height: 100%;
    left: -100%;
    padding: 50px 30px 30px;
    flex-direction: column;
    transition: all 0.5s ease;
  }
  .showMenu .menu_items {
    left: 0;
  }
  a {
    color: #333;
  }
  #menu_toggle {
    width: 20px;
    cursor: pointer;
  }
  .menu_items #menu_toggle {
    position: absolute;
    top: 20px;
    right: 20px;
  }
  .hero {
    padding-top: 130px;
  }
  .hero .row {
    flex-direction: column;
    padding: 0 20px;
    justify-content: center;
  }
  .hero .row .column {
    width: 100%;
  }
}
@media (width < 600px) {
  .hero {
    padding-top: 80px;
  }
  .hero .row h2 {
    font-size: 26px;
  }
  .buttons {
    justify-content: center;
  }
  .btn {
    padding: 10px 16px;
  }
}
      </style>
      <header>
        <nav class="nav container">
          <h2 class="nav_logo"><a href="#">Nirmal</a></h2>
          <ul class="menu_items">
            <img src="images/times.svg" alt="timesicon" id="menu_toggle" />
            <li><a href="#" class="nav_link">Home</a></li>
            <li><a href="#" class="nav_link">About</a></li>
            <li><a href="#" class="nav_link">Service</a></li>
            <li><a href="#" class="nav_link">Project</a></li>
            <li><a href="#" class="nav_link">Contact</a></li>
          </ul>
          <img src="images/bars.svg" alt="timesicon" id="menu_toggle" />
        </nav>
      </header>
      <!-- Header End -->
      <!-- Hero Start -->
      <section class="hero">
        <div class="row container">
          <div class="column">
            <h2>Top free tool and extension to <br />radiply grow you business</h2>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perferendis, architecto? Consectetur enim obcaecati velit quibusdam iure, perspiciatis accusantium, voluptatibus possimus cum voluptates dolorum optio ab vitae. Praesentium voluptas quia voluptates at aperiam aliquid vitae autem!</p>
            <div class="buttons">
              <button class="btn">Read More</button>
              <button class="btn">Contact Us</button>
            </div>
          </div>
          <div class="column">
          </div>
        </div>

      </section>
      <!-- Hero End-->
    </main>
    <script>
      const header = document.querySelector("header");
      const menuToggler = document.querySelectorAll("#menu_toggle");
      menuToggler.forEach(toggler => {
        toggler.addEventListener("click", () => header.classList.toggle("showMenu"));
      });
    </script>
  </body>
</html>
