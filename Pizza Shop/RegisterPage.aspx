<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Pizza_Shop.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
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
            <p>Register Here,If you alredy have a account please click login</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               </div>
             <div class="form-group">
                     <label>Name</label>&nbsp;
                      <asp:TextBox ID="Regname" runat="server"></asp:TextBox>
                  </div>
             <div class="form-group">
                     <label>Age</label>&nbsp;
                      <asp:TextBox ID="Agereg" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                     <label>User Name</label>&nbsp;
                      <asp:TextBox ID="reguser" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                      <br />
&nbsp;<asp:TextBox ID="regpass" runat="server"></asp:TextBox>
                  </div>
             <button type="submit" class="btn btn-secondary">
                      <asp:Button ID="RegRegButton" runat="server" BackColor="#CC00FF" BorderStyle="None" ForeColor="White"  Text="Register" Width="139px" OnClick="RegRegButton_Click" />
        </button>
                  <button type="submit" class="btn btn-black">
                      <asp:Button ID="RegLoginbt" runat="server" BackColor="Black" BorderStyle="None" ForeColor="White" Text="Login" OnClick="RegLoginbt_Click" />
        </button>
                  
    </form>
            </div>
         </div>
      </div>
        </div>
    </form>
</body>
</html>
