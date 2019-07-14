<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Pizza_Shop.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
         @import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css);
                @import url(https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css);

@import url(https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.3/css/mdb.min.css);
        body {
    font-family: "Lato", sans-serif;
}



.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    background-color: #000;
    overflow-x: hidden;
    padding-top: 20px;
}


.main {
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="sidenav">
         <div class="login-main-text">
            <h2>Pizza Shop</h2>
            <p>Login here if you are not register please click Register</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               </div>
                  <div class="form-group">
                     <label>User Name</label>&nbsp;
                      <asp:TextBox ID="usertextbox" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                      <br />
&nbsp;<asp:TextBox ID="passwordtextbox" runat="server"></asp:TextBox>
                  </div>
                  <button type="submit" class="btn btn-black">
                      <asp:Button ID="Loginbt" runat="server" BackColor="Black" BorderStyle="None" ForeColor="White" OnClick="Loginbt_Click" Text="Login" />
        </button>
                  <button type="submit" class="btn btn-secondary">
                      <asp:Button ID="RegButton" runat="server" BackColor="#CC00FF" BorderStyle="None" ForeColor="White" OnClick="RegButton_Click" Text="Register" Width="139px" />
        </button>
    </form>
            </div>
         </div>
      </div>
        </div>
    </form>
</body>
</html>
