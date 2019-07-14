<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pizza.aspx.cs" Inherits="Pizza_Shop.pizza1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-attachment: fixed;
            text-align: center;
            align-content: center;
            background-image: url('https://images2.alphacoders.com/941/941112.jpg');
            background-attachment: fixed;
            height: 900px;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            width: 1081px;
        }
        .heading {
	font-family: "Lato", sans-serif;
	font-size: 30px;
	
	 
    color:ghostwhite ;
    padding: 10px;
    background: black;
    top: 3%;
    left:35%;
   
    text-align: center;
position: absolute ;
}
         .back {
	font-family: "Lato", sans-serif;
	font-size: 20px;
	
	 
    color:ghostwhite ;
    padding: 40px;
    background: black;
    width:20%;
    
   
    text-align: center;
}
        #form1 {
            width: 1071px;
            height: 968px;
            margin-top: 63px;
        }
    </style>
</head>
<body>
    <h1 class="heading">Welcome to Pizza Shop</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridViewpizza" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="182px" Width="361px" OnSelectedIndexChanged="GridViewpizza_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:GridView ID="GridViewsauce" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="79px" style="margin-top: 18px" Width="338px" OnSelectedIndexChanged="GridViewsauce_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <div class ="back">
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="OrderID"></asp:Label>
            <br />
        <asp:TextBox ID="TextBoxorder" runat="server" BorderStyle="None" ></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="BaseSauce"></asp:Label>
            <br />
        <asp:TextBox ID="TextBoxsauce" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Oninons"></asp:Label>
            <br />
        <asp:TextBox ID="TextBoxonions" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Capsicum"></asp:Label>
            <br />
        <asp:TextBox ID="TextBoxcapsicum" runat="server" BorderStyle="None" ></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Chicken"></asp:Label>
            <br />
        <asp:TextBox ID="TextBoxchicken" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Beef"></asp:Label>
            <br />
        <asp:TextBox ID="TextBoxbeef" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Buttonorder" runat="server" OnClick="Buttonorder_Click" Text="Order" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Buttonupdate" runat="server" OnClick="Buttonupdate_Click" Text="Order Update" Width="91px" />
&nbsp;
            <asp:Button ID="Buttoncomplete" runat="server" OnClick="Buttoncomplete_Click" Text="Order Complete" Width="96px" />
&nbsp;
            <asp:Button ID="Buttonlogout" runat="server" Text="Logout" OnClick="Buttonlogout_Click" />
            </div>
    </form>
</body>
</html>
