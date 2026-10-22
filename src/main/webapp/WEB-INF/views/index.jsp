<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>URL Shortener</title>


    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI',sans-serif;
        }


        body{

            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;

            background:
                    linear-gradient(-45deg,
                    #667eea,
                    #764ba2,
                    #6dd5ed,
                    #2193b0);

            background-size:400% 400%;
            animation:bgAnimation 12s ease infinite;

        }



        @keyframes bgAnimation{

            0%{
                background-position:0% 50%;
            }

            50%{
                background-position:100% 50%;
            }

            100%{
                background-position:0% 50%;
            }

        }




        .container{

            width:480px;
            padding:40px;

            background:
                    rgba(255,255,255,0.18);

            backdrop-filter:blur(15px);

            border-radius:25px;

            box-shadow:
                    0 25px 50px rgba(0,0,0,.25);


            animation:
                    slideUp .8s ease;

        }



        @keyframes slideUp{

            from{

                opacity:0;
                transform:translateY(40px);

            }

            to{

                opacity:1;
                transform:translateY(0);

            }

        }




        .logo{

            text-align:center;
            font-size:55px;

        }



        h1{

            text-align:center;

            color:white;

            margin-top:15px;

            font-size:32px;

        }



        .subtitle{

            text-align:center;

            color:#eee;

            margin-top:10px;

            margin-bottom:30px;

        }




        .input-box{

            position:relative;

        }



        input{

            width:100%;

            padding:18px 20px;

            border:none;

            outline:none;

            border-radius:15px;

            font-size:16px;

            background:white;

            transition:.3s;

        }



        input:focus{

            transform:scale(1.02);

            box-shadow:
                    0 0 0 4px rgba(255,255,255,.3);

        }





        button{


            margin-top:25px;

            width:100%;

            padding:16px;

            border:none;

            border-radius:15px;


            background:#111827;

            color:white;


            font-size:18px;

            cursor:pointer;


            transition:.3s;


        }



        button:hover{

            transform:translateY(-3px);

            background:#000;

        }



        button:active{

            transform:scale(.97);

        }





        .footer{

            margin-top:25px;

            text-align:center;

            color:white;

            font-size:13px;

            opacity:.8;

        }




        .loader{

            display:none;

        }



    </style>


</head>


<body>


<div class="container">


    <div class="logo">
        🔗
    </div>


    <h1>
        URL Shortener
    </h1>


    <p class="subtitle">
        Convert long URLs into simple shareable links
    </p>



    <form method="post"
          action="/shorten"
          onsubmit="loading()">



        <div class="input-box">

            <input

                    type="url"

                    name="url"

                    placeholder="Paste your long URL here..."

                    required

            >

        </div>



        <button id="btn">

<span id="text">
Create Short URL 🚀
</span>

            <span class="loader"
                  id="loader">
Please wait...
</span>


        </button>



    </form>



    <div class="footer">

        Fast • Simple • Secure

    </div>


</div>





<script>


    function loading(){


        document.getElementById("text")
            .style.display="none";


        document.getElementById("loader")
            .style.display="inline";


        document.getElementById("btn")
            .disabled=true;


    }



</script>


</body>

</html>