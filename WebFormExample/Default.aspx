<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormExample._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>DD Change Form</h1>
        <p>Let's change stuff...</p>
    </div>


    <%--Stucture    
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
    </div>--%>

    <div class="row">
        <div class="col-md-4">

            <h3>Name of Operator</h3>
            <asp:TextBox ID="opName" name="opName" required="required" runat="server" Width="300px" Height="40px" Font-Size="Large" ></asp:TextBox>
            <br />

            <h3>Change Type</h3>
            <asp:DropDownList ID="ChangeType" name="ChangeType" runat="server" Width="300px" Height="40px" Font-Size="Large">
                <asp:ListItem Text="" Value="0"></asp:ListItem>
                <asp:ListItem Text="DD Change Date" Value="1"></asp:ListItem>
                <asp:ListItem Text="DD Re-instate" Value="2"></asp:ListItem>
            </asp:DropDownList>
            <br />

            <h3>Product</h3>
            <asp:DropDownList ID="Product" name="Product" runat="server" Width="300px" Height="40px" Font-Size="Large">
                <asp:ListItem Text="" Value="0"></asp:ListItem>
                <asp:ListItem Text="IPF" Value="1"></asp:ListItem>
                <asp:ListItem Text="Fixed Term" Value="2"></asp:ListItem>
                <asp:ListItem Text="WTP" Value="3"></asp:ListItem>
            </asp:DropDownList>
            <br />

            <h3>Account Number</h3>
            <asp:TextBox ID="AccountNumber" name="AccountNumber" MaxLength="18" required="required" runat="server" Width="300px" Height="40px" Font-Size="Large"></asp:TextBox>
            <br />
        </div>

        <div class="col-md-4" align="center">
            <h3>DD Current Date</h3>
            <asp:Calendar ID="DDCurDate" name="DDCurDate" runat="server" Width="300px" Height="230px" required="required" OnDayRender="Calendar1_DayRender" FirstDayOfWeek="Monday" DayStyle-ForeColor="#0066FF" SelectedDayStyle-BackColor="Yellow" SelectedDayStyle-ForeColor="Black" Font-Size="Larger"></asp:Calendar>

            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Reset Form" Width="300" Height="50px" Font-Bold="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Black" OnClick="Reset_Click" />
            <br />
        </div>

        <div class="col-md-4" align="center">
            <h3>DD Change Date</h3>
            <asp:Calendar ID="DDChangeDate" name="DDChangeDate" runat="server" Width="300px" Height="230px" required="required" OnDayRender="Calendar2_DayRender" FirstDayOfWeek="Monday" DayStyle-ForeColor="#0066FF" SelectedDayStyle-BackColor="Yellow" SelectedDayStyle-ForeColor="Black" Font-Size="Larger"></asp:Calendar>

            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Submit Form" Width="300" Height="50px" Font-Bold="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Black" OnClick="Mong_Click" />
            <br />

        </div>
    </div>

</asp:Content>


