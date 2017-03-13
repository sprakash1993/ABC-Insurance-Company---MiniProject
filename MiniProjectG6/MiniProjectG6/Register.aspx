<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MiniProjectG6.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            height: 926px;
            width: 700px;
        }
        .auto-style7 {
            text-align:left;
            padding-right:5em;
            font-size:14px;
        }
        .auto-style2 {
            text-align:center;
            
        }
        tr {
            padding-bottom:2em;
        }
        .auto-style8 {
            text-align: left;
            padding-right: 5em;
            font-size: 14px;
            width: 183px;
        }
        .auto-style10 {
            width: 193px;
        }
        .red {
            color:red;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center>
    <h1>ENTER POLICY HOLDER DETAILS</h1><br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label><span class="red">*</span>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxFirstName" runat="server" ToolTip="Enter the First name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFirstName" EnableClientScript="False" ErrorMessage="First Name is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxFirstName" EnableClientScript="False" ErrorMessage="Please enter characters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$" ViewStateMode="Enabled"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="LabelMiddleName" runat="server" Text="Middle Name:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxMiddleName" runat="server" ToolTip="Enter the middle name"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxMiddleName" EnableClientScript="False" ErrorMessage="Please enter characters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$" ViewStateMode="Enabled"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxLastName" runat="server" ToolTip="Enter the last name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLastName" EnableClientScript="False" ErrorMessage="Last Name is Mandatory" style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxLastName" EnableClientScript="False" ErrorMessage="Please enter characters only" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$" ViewStateMode="Enabled"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="LabelGender" runat="server" Text="Gender"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"  AutoPostBack="True" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="LabelDOB" runat="server" Text="Date of Birth(dd/mm/yyyy):"></asp:Label>
                <span class="red">*</span></td>
            

            <td class="auto-style10">
              
                <asp:TextBox ID="TextBoxDOB" runat="server" ToolTip="Enter your date of birth"></asp:TextBox>
           
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Date of Birth is Mandatory" style="color: #FF0000" ControlToValidate="TextBoxDOB" EnableClientScript="false"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label6" runat="server" Text="Maritial Status"></asp:Label>
                :<span class="red">*</span></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" ToolTip="Select your maritial status">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Marital Status is Mandatory" style="color: #FF0000" ControlToValidate="DropDownList1" EnableClientScript="false" InitialValue="-Select-"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="LabelMailingAddress1" runat="server" Text="Mailing Address Line 1:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxLastName0" runat="server" ToolTip="Enter the address"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxLastName0" ErrorMessage="Mailing Address Line 1 is Mandatory" style="color: #FF0000" EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label8" runat="server" Text="Mailing Address Line 2:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxLastName1" runat="server" ToolTip="Enter the address"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxLastName1" ErrorMessage="Mailing Address Line 2 is Mandatory" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
                <span class="red">*</span></td>
           
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <td>
                
                <asp:DropDownList ID="DropDownListState" runat="server" OnSelectedIndexChanged="StateEvent" AutoPostBack="true" >
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Andra Pradesh</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    </asp:DropDownList>
                       
                   
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" EnableClientScript="false" ControlToValidate="DropDownListState" runat="server" ErrorMessage="State is Mandatory" ForeColor="Red" InitialValue="-Select-"></asp:RequiredFieldValidator>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListCity" runat="server">
                    
                    
                </asp:DropDownList>
                 
            </td>
             </ContentTemplate>
              </asp:UpdatePanel>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label11" runat="server" Text="Zip Code:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxZipCode" runat="server" TextMode="Number" ToolTip="Enter your 5 digit zip code"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxZipCode" ErrorMessage="Zip Code is Mandatory" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxZipCode" EnableClientScript="False" ErrorMessage="Enter Numbers only" ForeColor="Red" ValidationExpression="^[0-9]{6}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label12" runat="server" Text="Age when first licensed:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxLastName3" runat="server" TextMode="Number" ToolTip="Enter the age when first licensed"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxLastName3" ErrorMessage="Age is Mandatory" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBoxLastName3" EnableClientScript="False" ErrorMessage="Age should be greater than 18" ForeColor="Red" MaximumValue="99" MinimumValue="18"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label13" runat="server" Text="Current License Status"></asp:Label>
                :<span class="red">*</span></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList5" runat="server" ToolTip="Choose your license status" >
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Valid</asp:ListItem>
                    <asp:ListItem>Expired</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Current Licence Status is Mandatory" ForeColor="Red" EnableClientScript="False" InitialValue="-Select-"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label14" runat="server" Text="Social Security Number:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBoxLastName5" runat="server" ToolTip="Enter your Social Security Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxLastName5" EnableClientScript="False" ErrorMessage="Social Security Number is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxLastName5" EnableClientScript="False" ErrorMessage="Enter Valid SSN no" ForeColor="Red" ValidationExpression="^[0-9]{8}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label15" runat="server" Text="Industry"></asp:Label>
                :<span class="red">*</span></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList2" runat="server" ToolTip="Choose Industry">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Banking</asp:ListItem>
                    <asp:ListItem>Insurance</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList2" EnableClientScript="False" ErrorMessage="Industry is Mandatory" ForeColor="Red" InitialValue="-Select-"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label16" runat="server" Text="Occupation:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList3" runat="server" ToolTip="Choose occupation">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Clerk</asp:ListItem>
                    <asp:ListItem>Developer</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList3" EnableClientScript="False" ErrorMessage="Occupation is Mandatory" ForeColor="Red" InitialValue="-Select-"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label17" runat="server" Text="Highest Level of Education:"></asp:Label>
                <span class="red">*</span></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList4" runat="server" ToolTip="Choose highest level of education">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>Degree</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList3" EnableClientScript="False" ErrorMessage="Level of Education is Mandatory" ForeColor="Red" InitialValue="-Select-"></asp:RequiredFieldValidator>
            </td>
        </tr>
      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label18" runat="server" Text="Has license been suspended/revoked in last 5 years?"></asp:Label>
            </td>
            <td class="auto-style6">
               
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
               
            </td>
            
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label19" runat="server" Text="If Yes, Total Number of days license suspended? " ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxLicenseSuspended" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxLicenseSuspended" ErrorMessage="Enter numbers only" EnableClientScript="False" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator></td>
        </tr>
              </ContentTemplate>
        </asp:UpdatePanel>
        <tr>
        <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                <ContentTemplate>

               
            <td class="auto-style7">
                <asp:Label ID="Label20" runat="server" Text=" Has this driver had any incident and Violations?"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style4"></td>
        </tr>

          
        
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label21" runat="server" Text="Incident Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListIncidentType" runat="server" AutoPostBack="true">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Major</asp:ListItem>
                    <asp:ListItem>Minor</asp:ListItem>
                    <asp:ListItem>At-Fault</asp:ListItem>
                    <asp:ListItem>Comp Claim</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label22" runat="server" Text="Incident Count"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxIncidentCount" runat="server" AutoPostBack="true"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label23" runat="server" Text="Violation Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListViolationType" runat="server">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Speeding</asp:ListItem>
                    <asp:ListItem>Alcohol</asp:ListItem>
                    <asp:ListItem>Obey Rules</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
          
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label24" runat="server" Text="Violation Count"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxViolationCount" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
      </ContentTemplate>
            </asp:UpdatePanel>-->
       <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                <asp:Button ID="Button1" CssClass="button blue" runat="server" Text="Save" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" CssClass="button blue" runat="server" Text="Proceed" Width="116px" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>