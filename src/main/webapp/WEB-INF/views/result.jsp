<%@ page contentType="text/html;charset=UTF-8" %>


<!DOCTYPE html>

<html>

<head>

    <title>Your Short URL</title>


    <style>


        body{

            height:100vh;

            display:flex;

            justify-content:center;

            align-items:center;


            background:
                    linear-gradient(135deg,#667eea,#764ba2);


            font-family:'Segoe UI',sans-serif;


        }



        .card{

            background:white;

            padding:45px;

            width:500px;

            border-radius:25px;

            text-align:center;


            box-shadow:
                    0 25px 50px rgba(0,0,0,.25);


            animation:show .7s;


        }



        @keyframes show{

            from{

                opacity:0;

                transform:scale(.8);

            }

            to{

                opacity:1;

                transform:scale(1);

            }

        }



        .success{

            font-size:60px;

        }



        h2{

            margin:20px;

        }



        .url{

            background:#f3f4f6;

            padding:15px;

            border-radius:12px;

            word-break:break-all;

            margin:20px 0;

        }



        a{

            text-decoration:none;

            color:#667eea;

            font-weight:bold;

        }



        button{

            padding:12px 25px;

            border:none;

            border-radius:10px;

            cursor:pointer;

            background:#667eea;

            color:white;

            font-size:16px;

            margin:5px;

        }



    </style>


</head>


<body>



<div class="card">


    <div class="success">
        🎉
    </div>


    <h2>
        Your Short URL is Ready
    </h2>



    <div class="url" id="url">

        ${shortUrl}

    </div>



    <button onclick="copyUrl()">

        Copy Link 📋

    </button>



    <a href="${shortUrl}">

        <button>

            Open Link 🔗

        </button>

    </a>



</div>



<script>


    function copyUrl(){

        let text =
            document.getElementById("url")
                .innerText;


        navigator.clipboard.writeText(text);


        alert("Copied!");

    }


</script>



</body>


</html>