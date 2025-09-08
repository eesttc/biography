<style>
    /* general */
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
        font-size: 19px;
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
        padding: 5vh 10vh 10vh 40vh;
        position: relative;
    }
    main h1 {
        text-align: center;
        font-size: 3rem;
        margin: 5vh 0 8vh 0;
    }
    main p {
        text-align: justify;
        font-size: 18px;

    }
    main a {
        text-decoration: none;
        color: burlywood;
        font-weight: bold;
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
        margin: 20vh 0 20vh 0;
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
</style>