<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MiniProjectG6.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 318px;
        }
        .auto-style2 {
            width: 500px;
        }
        .auto-style3 {
            width: 500px;
            height: 23px;
        }
        .auto-style4 {
            width: 318px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 242px;
        }
        .auto-style6 {
            width: 242px;
        }
        .auto-style7 {
            width: 392px;
        }
        .auto-style8 {
            height: 23px;
            width: 392px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div id="table" >
        <table>
            <tr>
                <td class="auto-style2">First Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="Enter First Name" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Alphabets" ForeColor="Red" ControlToValidate="TextBox1"  ValidationExpression="^[a-zA-Z]+$"> </asp:RegularExpressionValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">Middle Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Alphabets" ForeColor="Red" ControlToValidate="TextBox3" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gender</td>
                <td class="auto-style1">
&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" EnableClientScript="False" ErrorMessage="Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Date of Birth (MM/DD/YYYY)</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox4" runat="server" Width="239px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter DOB" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter  valid DOB" ForeColor="Red" MaximumValue="01/01/1994" MinimumValue="01/01/1950"></asp:RangeValidator>
                    
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Marital Status</td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>UnMarried</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList2" EnableClientScript="False" ErrorMessage="Select Any One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mailing Address Line1 </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox5" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Mailing Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mailing Address Line2</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox6" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Mailing Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">State</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select State" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">City</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList2" EnableClientScript="False" ErrorMessage="Select City" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Zip Code</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox7" runat="server" Width="239px" MaxLength="6"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Zip Code" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Numbers" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Age When First Licenced</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox8" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Current U.S License Status</td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Inactive</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList3" ErrorMessage="Select Licence Status" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Social&nbsp; Security Number</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox9" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Industry</td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" AutoPostBack="True">
                        <asp:ListItem>Bank</asp:ListItem>
                        <asp:ListItem>Insurance</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="RadioButtonList4" ErrorMessage="Select Industry" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Occupation</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Clerk</asp:ListItem>
                        <asp:ListItem>Developer</asp:ListItem>
                        <asp:ListItem>PM</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Select Occupation" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Highest Level Education</td>
                <td class="auto-style1">
                    &nbsp;<asp:RadioButtonList ID="RadioButtonList6" runat="server" AutoPostBack="True">
                        <asp:ListItem>Masters</asp:ListItem>
                        <asp:ListItem>Schooling</asp:ListItem>
                        <asp:ListItem>Graduate</asp:ListItem>
                        <asp:ListItem>UnEducated</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="RadioButtonList6" ErrorMessage="Select Education" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Has Licensed been suspended/revoked&nbsp; in last 5 years</td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList7_SelectedIndexChanged">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="RadioButtonList7" ErrorMessage="Select Any One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">If yes,Total Number days License suspended </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox10" runat="server" Width="312px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox11" runat="server" Width="310px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Has this driver had any Incident and Violation</td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="RadioButtonList9" runat="server" AutoPostBack="True">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="RadioButtonList7" ErrorMessage="Select Any One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Incident Type</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Selected="True">select</asp:ListItem>
                        <asp:ListItem>Major</asp:ListItem>
                        <asp:ListItem>Minor</asp:ListItem>
                        <asp:ListItem>At-Fault</asp:ListItem>
                        <asp:ListItem>comp</asp:ListItem>
                        <asp:ListItem>Claim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select Any One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Incident Count</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox12" runat="server" Width="310px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox12" ErrorMessage="Select Any One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Violation Type</td>
                <td class="auto-style1">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>Speeding</asp:ListItem>
                        <asp:ListItem>Alcohol</asp:ListItem>
                        <asp:ListItem>Obey Rules</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="RadioButtonList7" ErrorMessage="Check Atleast One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Violation Count</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox13" runat="server" Width="310px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox13" ErrorMessage="Enter Violation Count" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="Enter numbers" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
           
        </table>
    
    </div>
        <asp:Button ID="Button1" runat="server" Text="Save" Width="141px"  />
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
