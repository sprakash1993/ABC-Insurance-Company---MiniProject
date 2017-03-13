<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiniProjectG6.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="abc.js"></script>
    <link rel="Stylesheet" type="text/css" href="style.css" />
    <style type="text/css">
       
        #userName {
            height: 25px;
            width: 141px;
        }
        #password {
            height: 23px;
            width: 141px;
        }
       
    </style>
</head>
<body>
     <form id="form1" runat="server">
     <div id="header">
             
  <div class="container">
        
    <div class="row-1">
      <div class="logo"><a href="#"><img alt="" src="images/logo.png" height="100px" /></a></div>
      <h2 class="top-links">ABC General Insurance Company Ltd <sup>&reg</sup></h2>
    </div>
    <div class="row-2">
      <!-- nav box begin -->
       <div class="nav-box">
        <div class="left">
          <div class="right">
            <ul>
              <li><a href="#" class="first "><em><b>HOME</b></em></a></li>
              <li><a href="#" class=""><em><b>REGISTER DETAILS</b></em></a></li>
              <li><a href="#"><em><b>UPDATE DETAILS</b></em></a></li>
              <li></li><li></li>
              <li><a href="#" ><em><b>LOG OUT</b></em></a></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- nav box end -->
    </div>
  </div>
        
</div>
    
    <div id="content"><br />
  <div class="container">
    <!-- main-banner-big begin -->
      
         
      <div class="section">
      <!-- box begin -->
      <div class="box">
        <div class="border-top">
          <div class="border-right">
            <div class="border-bot">
              <div class="border-left">
                <div class="left-top-corner">
                  <div class="right-top-corner">
                    <div class="right-bot-corner">
                      <div class="left-bot-corner">
                        <div class="inner">
                          <center>                   <h2 class="Contentheading">Login Page</h2><br />
                           <table  style="height: 156px; width: 275px">
                                <tr><th>
                                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Username"></asp:Label>
                                    </th><td>
                                        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="140px"></asp:TextBox>
                                    </td></tr>
                                <tr><th>
                                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Password"></asp:Label>
                                    </th><td>
                                        <asp:TextBox ID="TextBox2" runat="server" Height="24px" TextMode="Password" Width="140px"></asp:TextBox>
                                    </td></tr>
                                <tr style="text-align:right"><td colspan="2">
                                    <label id="errmsg" style="color:red; text-align:right"></label></td></tr>
                            </table>
           &nbsp;<asp:Button ID="Button1" class="button blue"  runat="server" Text="Login" OnClick="Button1_Click" />
       </center> 
                           </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   </div>
      </div>
      <br />
      

   
        </div></div>
         </form>
    <div id="footer">
  <div class="container">
      <div class="wrapper">
      <div style="text-align:center">Copyright &copy; 2014 ABC General Insurance Company Ltd <sup>&reg</sup></div>
      
    </div>
  </div>
</div>
</body>
</html>
