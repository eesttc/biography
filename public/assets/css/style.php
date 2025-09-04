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
        margin-right: 0%;
        margin-left: 5%;
        justify-content: space-between;
        align-items: center;
    }
    .header-container1 ul li {
        margin: 0;
    }
    #search-header {
        list-style: none;
        width: 40%;
        margin: 0px 0px 0px 0px;
    }
    .search-container {
        position: relative;
        display: flex;

        width: 80%;
    }
    .search {
        padding-left: 2.5rem;
        height: 38px;
        border: 1px solid #ced4da;
        border-radius: 4px 0 0 4px;
        width: 100%;
        font-size: 16px;
    }
    .search-button {
        background-color: #28a745;
        color: white;
        border: none;
        height: 38px;
        padding: 0 10px;
        border-radius: 0 4px 4px 0;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .search-button:hover {
        background-color: #218838;
    }
    .bi-search {
        position: absolute;
        top: 50%;
        left: 10px;
        transform: translateY(-50%);
        color: black;
        pointer-events: none;
    }
    .bi-cart3 {
        font-size: 1.5rem;
        font-weight: bold;
        filter: brightness(0.7);
    }
    header .header-container1 ul li img {
        display: block;
        max-height: 100px;
        width: auto;
        margin: 0 5px 0 20px;
        padding: 0;
    }
    .header-container1 li a {
        text-decoration: none;
        color: rgb(22, 52, 32);
    }
    .header-container1 li a:hover {
        text-decoration: underline;
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
    }
    main h1 {
        text-align: center;
        font-size: 3rem;
        margin: 5vh 0 8vh 0;
    }
    main p {
        text-align: justify;
        font-size: 18px;
        text-indent: 30px;

    }
    main a {
        text-decoration: none;
        color: burlywood;
        font-weight: bold;
    }
    /* footer style */
    footer {
        grid-row: 3;
        background-color: green;
        width: auto;
        height: 20vh;
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
     /* images content style  */
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
</style>