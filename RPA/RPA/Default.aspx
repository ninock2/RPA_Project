<%@ Page Title="Domov" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h2>RPA Seminarska naloga</h2>
        <h3>Spletna aplikacija za izposojo knjig</h3>
        <hr style="width:700px" />
        <p>
            To aplikacijo sem naredil kot spletno knjigarno oziroma knjižnico. Pravtako se lahko ta aplikacija uporablja kot spletna različica že obstoječe knjižnice.<br />
            Znotraj aplikacije najdemo kar nekaj funkcionalnosti, ki jih lahko vidite samo, če ste prijavljeni v aplikcijo kot uporabnik ali administrator.<br />
            <b>Zavihki, ki jih lahko najdete v aplikaciji so:</b>
        </p>
        <ul style="width:400px; margin: auto; text-align:left; ">
            <li>Upravljanje z knjigami (Administrator)</li>
            <li>Upravljanje rezervacij (Administrator)</li>
            <li>Rezerviraj knjigo (Uporabnik in administrator)</li>
            <li>Moje rezervacije (Uporabnik in administrator)</li>
        </ul>
        <br />
        <p>
            Na desni strani navigacijske komponente pa najdemo tudi gumbe za registracijo, prijavo in admin prijavo. Ter ko si enkrat prijavljen boš videl tudi gumb za odjavo.
        </p>

    </div>
</asp:Content>
