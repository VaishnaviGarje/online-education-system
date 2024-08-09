<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
@import url("https://fonts.googleapis.com/css?family=Lato:400,700");

body, html {
    margin: 0;
    padding: 0;
    font-family: 'Lato', sans-serif;
    color: #4A4A4A;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url('img/MAINICON1.jpg') no-repeat center center fixed;
    background-size: cover;
    overflow: hidden;
}

#bg {
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    filter: blur(5px);
    z-index: -1;
}

form {
    width: 80%;
    max-width: 400px;
    padding: 2rem;
    background: rgba(255, 255, 255, 0.8);
    border-radius: 20px;
    box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.2);
}

form .form-field {
    display: flex;
    align-items: center;
    margin-bottom: 1rem;
    position: relative;
}

form .form-field::before {
    font-size: 20px;
    position: absolute;
    left: 15px;
    color: #888888;
    display: block;
    background-size: cover;
    background-repeat: no-repeat;
}

form .form-field:nth-child(1)::before {
    background-image: url('img/user-icon.png');
    width: 20px;
    height: 20px;
    top: 15px;
}

form .form-field:nth-child(2)::before {
    background-image: url('img/lock-icon.png');
    width: 16px;
    height: 16px;
    top: 17px;
}

form input {
    font-family: inherit;
    width: 100%;
    outline: none;
    background-color: #fff;
    border-radius: 4px;
    border: 1px solid #ddd;
    padding: 0.9rem 0.7rem;
    padding-left: 40px;
    box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
    font-size: 17px;
    color: #4A4A4A;
}

form .btn {
    outline: none;
    border: none;
    cursor: pointer;
    display: inline-block;
    width: 100%;
    padding: 0.9rem;
    text-align: center;
    background-color: #47AB11;
    color: #fff;
    border-radius: 4px;
    box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
    font-size: 17px;
    transition: background-color 0.3s ease;
}

form .btn:hover {
    background-color: #3e920d;
}

form .link {
    text-align: center;
    margin-top: 1rem;
}

form .link a {
    color: #47AB11;
    text-decoration: none;
    font-weight: bold;
}

form .link a:hover {
    text-decoration: line-through;
}

.content {
    position: relative;
    text-align: center;
    width: 100%;
    z-index: 1;
}

.marquee {
    font-family: 'Lato', sans-serif;
    font-size: 24px;
    font-weight: bold;
    color: #fff;
    margin-bottom: 2rem;
}

@media (max-width: 600px) {
    .marquee {
        font-size: 18px;
    }

    form {
        padding: 1.5rem;
    }

    form input {
        font-size: 15px;
    }

    form .btn {
        font-size: 15px;
    }
}
</style>
<title>Vaishnavi - Online Education System</title>
<link rel="icon" href="img/MAINICON1.jpg">
</head>
<body>
    <div class="content">
        <div class="marquee">
            <marquee>
                <span style="color: red;">VGA</span>
                <span style="color: white;">Vaishnavi</span>
                <span style="color: green;">Online</span>
                <span style="color: yellow;">Education</span>
                <span style="color: pink;">System</span>
            </marquee>
        </div>
        <%
        if(request.getAttribute("msg")!=null){
            out.print(request.getAttribute("msg"));
        }
        %>
        <form action="userl" method="post">
        <h5>user login</h5>
            <div class="form-field">
                <input type="text" name="username" placeholder="Username">
            </div>
            <div class="form-field">
                <input type="password" name="password" placeholder="Password">
            </div>
            <div class="form-field">
                <button class="btn" type="submit">Sign In</button>
            </div>
        </form>
        <div class="link">
            <a href="CreateAccount">Create Account</a>
        </div>
    </div>
</body>
</html>
