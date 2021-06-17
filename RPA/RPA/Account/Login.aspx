<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>Prijava v spletno stran</h2>

    <div class="row">
        <div>
            <section id="loginForm">
                <div class="form-horizontal" style="width: 800px; margin: 20px auto;">
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>

                    <%-- Uporabniško ime --%>
                    <div class="form-group" style="width: 2000px;">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">Uporabniško ime: </asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="Potrebno je vpisati uporabniško ime." />
                        </div>
                    </div>

                    <%-- Geslo --%>
                    <div class="form-group" style="width: 2000px;">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Geslo: </asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="Potrebno je vpisati uporabniško geslo." />
                        </div>
                    </div>

                    <%-- Prijava gumb --%>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Prijava" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled"><a href="Register.aspx">Registracija</a></asp:HyperLink>, če še nimate uporabniškega imena.
                   
                </p>
            </section>
        </div>

    </div>
</asp:Content>

