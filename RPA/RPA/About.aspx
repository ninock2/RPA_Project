<%@ Page Title="O aplikaciji" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>O aplikaciji</h2>
    <hr style="width: 900px;" />
    <h3>Seminarska naloga pri predmetu RPA.</h3>
    <h3>Aplikacija za izposojo knjig</h3>
    <h4>Zahteve za aplikacijo:</h4>
    <div class="o-app" style="text-align: left; width: 500px; margin: 15px auto;">
        <ul>
            <li>
                <p class="about-line">oblikovanje s slogi CSS</p>
            </li>
            <li>
                <p>uporaba master page-a</p>
            </li>
            <li>
                <p>uporaba navigacijskih komponent</p>
            </li>
            <li>
                <p>uporaba komponent za preverjanje vnosa (validacija)</p>
            </li>
            <li>
                <p>uporaba podatkovne baze</p>
            </li>
            <li>
                <p>uporaba prijave v aplikacijo in omogočanje vpisovanja v tabele za administratorje (nepozabiti priložiti gesla)</p>
            </li>
        </ul>

        <p>
            Podatkovna baza mora biti normalizirana, vsaka tabela mora imeti primarni ključ, zagotoviti je
        treba referenčno integriteto podatkov in uporabiti indekse, kjer je to smiselno; implementirana
        mora biti v MS SQL Server-ju.
        </p>
    </div>
</asp:Content>
