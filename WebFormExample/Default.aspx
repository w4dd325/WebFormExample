<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormExample._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

    <%--    ***********************************************************************************************************************************************************************--%>
<hr />
    <div>
        <h2>Web Form</h2>
            <p>
                Fill in the stuff below...
            </p>
    </div>

<%--    ***********************************************************************************************************************************************************************--%>
  
    <h4>Change Type</h4>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
        <asp:ListItem Text="DD Change Date" Value="1"></asp:ListItem>
        <asp:ListItem Text="DD Re-instate" Value="2"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <h4>Product</h4>
    <asp:DropDownList ID="DropDownList2" runat="server" Width="300px">
        <asp:ListItem Text="IPF" Value="1"></asp:ListItem>
        <asp:ListItem Text="Fixed Term" Value="2"></asp:ListItem>
        <asp:ListItem Text="WTP" Value="3"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <h4>Account Number</h4>
    <asp:TextBox ID="TextBox1" name="AccountNumber" MaxLength="18" placeholder="2347655454" required="required" runat="server" Width="300px"></asp:TextBox>
    <br />
    <h4>DD Current Date</h4>
    <asp:Calendar ID="Calendar1" name="DDCurDate" runat="server" Width="300px"></asp:Calendar>
    <br />
    <h4>DD Change Date</h4>
    <asp:Calendar ID="Calendar2" name="DDChangeDate" runat="server" Width="300px"></asp:Calendar>
    <br />
<%--    ***********************************************************************************************************************************************************************--%>

</asp:Content>
