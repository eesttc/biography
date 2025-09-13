<style>
    /* general */
    * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    }
    body{
        margin: 0;
        padding: 0;
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        color: white;
        font-style: italic;
        background-image: url("/biography/public/assets/images/background-image.jpg");
        background-size: auto;
        position: relative;
    }
    /* header style */
    header {      
        grid-row: 1;
        background-color: #66CDAA;
        margin-bottom: 50px;
        width: auto;
        height: auto;
    }
    header .header-container1 {
        display: flex;
        align-items: center;
        width: 100%;
        height: auto;
        font-size: 30px;
    }
    .logo-header a {
        margin: 5vh 5vh 5vh 2vh;
    }
    .logo-header a img {        
        border-radius: 50%;
    }
    .header-container1 ul {
        display: flex;
        list-style-type: none;
        width: 100%;
        height: auto;
        align-items: center;
        justify-content: space-between;
    }
    .header-container1 ul li {
        margin: 0;
        text-align: left;
    }
    header .header-container1 ul li img {
        display: block;
        max-height: 100px;
        width: auto;
        margin: 0 50px 0 20px;
        padding: 0;
    }
    #visit-count {
        text-align: right;
        padding-right: 10px;
    }

    /* Header container 2 */
    header .header-container2 {
        display: flex;
        align-items: center;
        width: 100%;
        padding: 10px 0;
    }
    .header-container2 ul {
        display: flex;
        list-style-type: none;
        margin: 0px;
        padding: 0px;
        width: 100%;
        justify-content: center;
        align-items: center;
    }
    .header-container2 ul li {
        cursor: default;
        position: relative;
        font-size: 16px;
        color: rgb(22, 52, 32);
        font-size: 22px;
        margin: 3.5px;
        padding: 15px 15px;
        border-radius: 5%;
    }
    .header-container2 ul li:hover {
        background-color: rgb(66, 128, 107);
        color: rgb(9, 26, 34);
    }
    .header-container2 ul li:active {
        background-color: rgba(156, 211, 193, 1);
        color: rgba(31, 91, 57, 1);
    }
    .header-container2 ul a {
        text-decoration: none;
        color: rgb(22, 52, 32);
    }
    .header-container2 .brand .submenu {
        display: none;
        position: absolute;
        top: 100%;
        left: 0;
        background-color: #66CDAA;
        list-style: none;
        padding: 0;
        margin: 0;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        width: 200px;
        z-index: 1000;
        cursor: pointer;
    }
    .header-container2 .brand .submenu li {
        font-size: 15px;
    }
    .header-container2 .brand .submenu ul li:hover {
        background-color: rgb(66, 128, 107);
        color: rgb(9, 26, 34);
        font-weight: bold;
    }
    .header-container2 .brand:hover .submenu {
        display: block;
    }
    .header-container2 .brand li {
        padding: 10px 15px;
        color: rgb(22, 52, 32);
        font-size: 14px;
    }
    /* main style */
    main {
        grid-row: 2;
        padding: 5vh 10vh 10vh 0vh;
        position: relative;
    padding: 20px;
    width: calc(100% - 250px);
    }
    main h1 {
        text-align: center;
        font-size: 3rem;
        margin: 5vh 0 8vh 0;
    }
    main p {
        text-align: justify;
        font-size: 20px;

    }
    main a {
        text-decoration: none;
        color: burlywood;
        font-weight: bold;
    }

    .read-background {
        background-color: #22313aff;
        padding: 30px;
        border-radius: 20px;
    border-right: 3px solid #5c4141ff;
    }
    /* footer style */
    .footer {
  background: cyan ;
  padding: 30px;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 20px;
}
.footer-bio img {
  width: 80px;
  border-radius: 50%;
}
.footer-links img {
  width: 20px;
  border-radius: 50%;
}
.footer-social img {
  width: 24px;
  margin-right: 10px;
}



.icon-inline-1 {
  display: inline-block;
  vertical-align: middle;
  margin-right: 5px;
}

.icon-inline-2 {
  display: inline-block;
  vertical-align: middle;
  margin-right: 5px;
}

.icon-inline-3 {
  display: inline-block;
  vertical-align: middle;
  margin-right: 5px;
}

.footer-copy {
  grid-column: 1 / -1;
  text-align: center;
  font-size: 0.9em;
  color: #555;
  background-color: lightgreen
  ;
}
    /* index style */
    
    .biography-content {
        margin: 0vh 0 20vh 0;
    }
    .header-title-index {
        text-align: center;
        margin-bottom: 6vh;
    }
    .header-title-index a {
        text-decoration: none;
        color: white
    }

    .biography-images-container {
        display: flex;
        justify-content: center;
        text-align: center;
        align-items: center;
    }
    .index-images {
        background-color: blue;
        margin: 4vh 8vh 0vh 8vh;
        width: 30vh;
        height: 30vh;
        border-radius: 20px;
    }
    .index-images a img {
        height: 100%;
        border-radius: 20px;
    }

    .last-content-container {
        margin-bottom: 15vh;
    }   
     /* Biography  */
     .biography-section {
    overflow: auto; /* Quan trọng: để chứa các phần tử float bên trong */
    }

    .image-container {
        float: left; /* Đẩy khối ảnh sang trái, cho phép nội dung bao quanh */
        width: 250px;
        margin: 0 20px 20px 0;
        text-align: center;
    }

    .image-container img {
        max-width: 100%;
        height: auto;
        display: block;
        margin-bottom: 10px;
    }

    .image-container-right {
        float: right; /* Đẩy khối ảnh sang phải, cho phép nội dung bao quanh */
        width: 250px;
        margin: 0 0 20px 20px;
        text-align: center;
    }

    .image-container-right img {
        max-width: 100%;
        height: auto;
        display: block;
        margin-bottom: 10px;
    }

    /* gallery */
    .container-gallery {
        flex-wrap: wrap;
        gap: 20px;
        margin: 15vh 0 ;
        justify-content: center;
        display: flex;
    }
    .container-gallery a div {
        width: 180px;
        height: 180px;
        background-color: rgba(118, 134, 187, 0.5);
        border-radius: 20px;
    }
    .gallery-images {
        background-image: url("/biography/public/assets/images/Images.jpg");
        background-size: cover;
        background-position: center;
        margin-right: 15vh;
    }
    .gallery-references {
        background-image: url("/biography/public/assets/images/References.jpg");
        background-size: cover;
        background-position: center;
    }

    /* dashboard */
    .dashboard-container {
    display: flex;
    min-height: 100vh;
}

/* dashboard Sidebar - Thanh điều hướng */
.sidebar {
    width: 250px;
    background-color: #22313aff;
    color: #376874ff;
    display: flex;
    flex-direction: column;
    padding: 20px 0;
    box-shadow: 2px 0 5px rgba(0,0,0,0.1);
    border-radius: 20px;
    margin-bottom: 100px;
}

.sidebar-header {
    text-align: center;
    padding-bottom: 20px;
    border-bottom: 1px solid #34495e;
}

.sidebar-header h3 {
    margin: 0;
    font-size: 1.5em;
    font-weight: 700;
}

.sidebar-nav ul {
    list-style: none;
}

.sidebar-nav li a {
    display: flex;
    align-items: center;
    padding: 15px 20px;
    color: #ecf0f1;
    text-decoration: none;
    transition: background-color 0.3s;
}

.sidebar-nav li a:hover,
.sidebar-nav li a.active {
    background-color: #34495e;
    border-left: 5px solid #3498db;
    color: #fff;
}

.sidebar-nav i {
    margin-right: 15px;
    font-size: 1.2em;
}

/* dashboard Main Content - Khu vực nội dung chính */
.main-content {
    flex-grow: 1;
    padding: 30px;
    display: flex;
    flex-direction: column;
}

.main-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #fff;
    padding: 20px 30px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    margin-bottom: 30px;
}

.main-header h2 {
    margin: 0;
}

.user-info {
    display: flex;
    align-items: center;
}

.user-info span {
    margin-right: 10px;
}

.user-info i {
    font-size: 1.5em;
    color: #95a5a6;
}

/* Các thẻ thông tin */
.dashboard-content {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
}

.dashboard-card {
    background-color: #fff;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    transition: transform 0.3s;
    text-align: center;
}

.dashboard-card:hover {
    transform: translateY(-5px);
}

.dashboard-card h4 {
    margin-bottom: 10px;
    font-size: 1.2em;
    color: #7f8c8d;
}

.dashboard-card p {
    font-size: 2.5em;
    font-weight: 700;
    color: #3498db;
}
/* Style cho Sidebar */
.main-container {
 display: flex;
 flex-direction: row;
 width: 100%;
}
.sidebar {
 position: sticky;
    top: 100px;
    height: 100vh;
    overflow-y: auto;
    width: 350px;
    padding: 20px;
    border-right: 3px solid #5c4141ff;
    background-color: #22313aff;
}

.sidebar h2 {
 font-size: 1.5rem;
 margin-bottom: 15px;
}

.sidebar ul {
 list-style-type: none;
 padding: 0;
}

.sidebar li a {
 display: block;
 padding: 8px 0;
 text-decoration: none;
 color: #ffffffff;
 transition: color 0.3s;
}

.sidebar li a:hover {
 color: #007bff;
}
</style>