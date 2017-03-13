<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="MiniProjectG6.Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="PARTY_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="0" EnableSortingAndPagingCallbacks="True" ForeColor="Black" GridLines="Vertical" Height="200px" Width="2074px" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="PARTY_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="PARTY_ID" />
            <asp:BoundField DataField="NM_INSURED_FIRST_NM" HeaderText="FName" SortExpression="NM_INSURED_FIRST_NM" />
            <asp:BoundField DataField="NM_INSURED_MIDDLE_NM" HeaderText="MName" SortExpression="NM_INSURED_MIDDLE_NM" />
            <asp:BoundField DataField="NM_INSURED_LAST_NM" HeaderText="Lname" SortExpression="NM_INSURED_LAST_NM" />
            <asp:BoundField DataField="NM_INSURED_GENDER" HeaderText="GENDER" SortExpression="NM_INSURED_GENDER" />
            <asp:BoundField DataField="NM_INSURED_DOB" HeaderText="DOB" SortExpression="NM_INSURED_DOB" />
            <asp:BoundField DataField="MARITAL_STATUS" HeaderText="Marital Status" SortExpression="MARITAL_STATUS" />
            <asp:BoundField DataField="MAIL_ADDR_LINE1" HeaderText="Addr1" SortExpression="MAIL_ADDR_LINE1" />
            <asp:BoundField DataField="MAIL_ADDR_LINE2" HeaderText="Add22" SortExpression="MAIL_ADDR_LINE2" />
            <asp:BoundField DataField="CITY_NM" HeaderText="City" SortExpression="CITY_NM" />
            <asp:BoundField DataField="STATE_NM" HeaderText="State" SortExpression="STATE_NM" />
            <asp:BoundField DataField="ZIP_CD" HeaderText="ZIP" SortExpression="ZIP_CD" />
            <asp:BoundField DataField="AGE" HeaderText="Age" SortExpression="AGE" />
            <asp:BoundField DataField="CURRENT_US_LICENSE_STATUS" HeaderText="Licence Status" SortExpression="CURRENT_US_LICENSE_STATUS" />
            <asp:BoundField DataField="SSN" HeaderText="Ssn" SortExpression="SSN" />
            <asp:BoundField DataField="INDUSTRY" HeaderText="Industry" SortExpression="INDUSTRY" />
            <asp:BoundField DataField="OCCUPATION" HeaderText="Occupation" SortExpression="OCCUPATION" />
            <asp:BoundField DataField="HIGHEST_EDUCATION" HeaderText="Education" SortExpression="HIGHEST_EDUCATION" />
            <asp:BoundField DataField="LICENSE_SUSPENDED_REVOKED" HeaderText="Licence Suspended" SortExpression="LICENSE_SUSPENDED_REVOKED" />
            <asp:BoundField DataField="DAYS_LICENSE_SUSPENDED" HeaderText="Days" SortExpression="DAYS_LICENSE_SUSPENDED" />
            <asp:BoundField DataField="DRIVER_VIOLATIONS" HeaderText="Voilations" SortExpression="DRIVER_VIOLATIONS" />
            <asp:BoundField DataField="INCIDENT_TYPE" HeaderText="Type" SortExpression="INCIDENT_TYPE" />
            <asp:BoundField DataField="INCIDENT_COUNT" HeaderText="Count" SortExpression="INCIDENT_COUNT" />
            <asp:BoundField DataField="VIOLATION_TYPE" HeaderText="Type" SortExpression="VIOLATION_TYPE" />
            <asp:BoundField DataField="VIOLATION_COUNT" HeaderText="Count" SortExpression="VIOLATION_COUNT" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB06HMS07ConnectionString2 %>" SelectCommand="SELECT * FROM [Customer_Details06]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
