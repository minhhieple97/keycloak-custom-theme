<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://fonts.cdnfonts.com/css/sf-pro-display" rel="stylesheet">               
    <style>   
    @import url('https://fonts.cdnfonts.com/css/sf-pro-display');
    * {
      box-sizing: border-box;
      padding: 0;
      margin: 0;
      font-family: 'SF Pro Display', sans-serif; 
    }
    .container {
        display: flex;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin: auto;
        max-height:100vh;
    }

    .loginSection {
        display: flex;
        flex-direction: column;
        width: 40%;
        height: 100vh;
        padding-left: 2rem;
        padding-right: 2rem;
        padding-bottom: 2rem;
        justify-content: space-between;
    }

    .infoSection {
        width: 60%;
        background-color: #b8cde3;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        padding-left: 80px;
        padding-top: 96px;
        max-height: 100vh;
        overflow-y: hidden;
        gap:96px
    }

    .loginContent {
        margin: auto;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        min-height: 70%;
    }

    .loginFormContent {
        display: flex;
        flex-direction: column;
        gap: 2rem;
        min-height: 400px;
    }

    .loginFormTitle h1 {
        font-size: 48px;
        font-weight: 600;
        line-height: 60px;
    }

    .loginFormTitle p {
        margin-top: 1rem;
        font-size: 18px;
        font-weight: 400;
        line-height: 22.5px;
        color: #4d4d4d;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 1.5rem;
    }

    .formGroup {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    .formGroup label {
        font-size: 14px;
        font-weight: 600;
        line-height: 21px;
        color: #4d4d4d;
    }

    .formGroup input {
        border: 1px solid #939393;
        height: 44px;
        border-radius: 10px;
        padding-left: 10px;
    }

    .formOptions {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .formOptions label {
        font-size: 14px;
        font-weight: 600;
        line-height: 21px;
        color: #4d4d4d;
    }

    .formOptions a {
        font-size: 14px;
        font-weight: 600;
        line-height: 21px;
        color: #0a84ff;
        text-decoration: none;
    }

    .checkboxContainer {
        display: flex;
        align-items: center;
    }

    .checkboxContainer input {
        margin-right: 10px;
    }

    .loginButton {
        width: 100%;
        padding: 12px;
        background-color: #000;
        color: #fff;
        border: none;
        border-radius: 15px;
        cursor: pointer;
        font-size: 16px;
        font-weight: 500;
    }

    .loginButton:hover {
        background-color: #333;
    }

    .signupText {
        text-align: center;
        margin-top: 20px;
        font-size: 14px;
        font-weight: 300;
        line-height: 21px;
        color: #4d4d4d;
    }

    .signupText a {
        color: #0a84ff;
        text-decoration: none;
        font-size: 14px;
        font-weight: 600;
        line-height: 21px;
    }

    .signupText a:hover {
        text-decoration: underline;
    }

    .footer {
        color: #4d4d4d;
        font-size: 14px;
        font-weight: 400;
        line-height: 20px;
    }

    .infoContent {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        padding-right:64px;
    }

    .infoContent h2 {
      font-size: 32px;
      font-weight: 400;
      line-height: 40px;
    }

    .quoteAuthor {
        font-weight: bold;
        font-size: 18px;
        line-height: 22.5px;
    }

    .companyInfo {
        margin-top: 0.5rem;
        font-size: 16px;
        font-weight: 500;
        line-height: 24px;
        color: #4d4d4d;
    }

    .imageContainer {
        width: 100%;
        position: relative;
        height: 100%;
    }

    .dashboardImage {
        width: 100%;
        height: 100%;
        object-fit: fill;
        object-position: center;
        border-top-left-radius: 12px;
        border: 6px solid #1A1A1A;
    }

    .errorMessage {
        color: #ff0f17;
        font-size: 14px;
        line-height: 21px;
        margin-bottom: 12px;
    }

    .logo {
        margin-bottom: 32px;
    }

    .ratingContainer {
       margin-top: 24px;
       display: flex;
       justify-content: space-between;
       align-items: center;
       width: 100%;
       padding-right: 20px;
    }


    @media (max-width: 1024px) {
        .loginSection {
            width: 100%;
        }
        .infoSection {
            display: none;
        }
        .loginContent {
            min-height: 60%;
            width: 100%;
        }
    }
  </style>
</head>
<body>
    <div class="container">
        <div class="loginSection">
            <div class="loginContent">
                 <img src="${url.resourcesPath}/img/ccashLogo.svg" width="126.51" height="32" alt="C-Cash Logo" class="logo"  >
                <div class="loginFormContent">
                    <div class="loginFormTitle">
                        <h1>Login</h1>
                        <p>Welcome back. Please enter your details</p>
                    </div>
                    <form action="${url.loginAction}" method="post">
                        <div class="formGroup">
                            <label for="username">Email</label>
                            <input name="username" id="username" type="text" placeholder="Enter your email" required >
                        </div>
                        <div class="formGroup">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" placeholder="********" required>
                        </div>
                        <div class="formOptions">
                            <label class="checkboxContainer">
                                <input type="checkbox">
                                <span class="checkmark"></span>
                                Remember for 30 days
                            </label>
                            <a href="#" class="forgotPassword">Forgot Password</a>
                        </div>
                        <button type="submit" class="loginButton">Login</button>
                    </form>
                    <p class="signupText">Don't have an account? <a href="#">Sign Up</a></p>
                </div>
            </div>
            <footer class="footer">© C-Cash 2024</footer>
        </div>
        <div class="infoSection">
            <div class="infoContent">
                <h2>Thanks to the automatic data synchronization from C-Cash platform, we are now able to see a complete picture of our cash flow and its values.</h2>
                <div class="ratingContainer">
                    <p class="quoteAuthor">— Chief Financial Officer</p>
                  <img src="${url.resourcesPath}/img/fiveStar.png" alt="FiveStar" width="108" height="20" class="fiveStarRating">
                </div>
                <p class="companyInfo">Leading mechanical engineering company in Viet Nam</p>
            </div>
            <div class="imageContainer">
                <img src="${url.resourcesPath}/img/background.jpg" class="dashboardImage" alt="Login Image">
            </div>
        </div>
    </div>
</body>
</html>