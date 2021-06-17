<%@ Page Title="Moje Rezervacije" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MojeRezervacije.aspx.cs" Inherits="MojeRezervacije" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>

        <link rel="stylesheet" type="text/css" href="stili.css" />
        <style type="text/css">
            .auto-style4 {
                width: 829px;
            }

            .auto-style5 {
                width: 41px;
            }

            .auto-style6 {
                width: 647px;
            }

            .auto-style7 {
                height: 546px;
                width: 1170px;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                margin-top: 0px;
                padding-left: 15px;
                padding-right: 15px;
            }
        </style>
    </head>
    <body>
        <h2>Moje Rezervacije</h2>
        <hr style="width: 800px;" />
        <div style="margin-top: 50px; text-align: center; width: 800px; margin: 35px auto;" draggable="true">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" Height="230px" Width="750px" CssClass="auto-style1" HorizontalAlign="Justify"
                AllowPaging="True" PageSize="7" >
                <HeaderStyle Height="35px" HorizontalAlign="Center" />
                <PagerSettings FirstPageText="&amp;lt; &amp;lt;" />
                <RowStyle Height="25px" HorizontalAlign="Center" VerticalAlign="NotSet" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Uporabnik_ID" HeaderText="ID Uporabnika" SortExpression="Uporabnik_ID" />
                    <asp:BoundField DataField="Uporabnisko_ime" HeaderText="Uporabniško ime" SortExpression="Uporabnisko_ime" />
                    <asp:BoundField DataField="Knjiga_ID" HeaderText="ID Knjige" SortExpression="Knjiga_ID" />
                    <asp:BoundField DataField="Naslov_knjige" HeaderText="Naslov knjige" SortExpression="Naslov_knjige" />
                    <asp:BoundField DataField="Pisatelj_knjige" HeaderText="Pisatelj knjige" SortExpression="Pisatelj_knjige" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="RezervacijeKnjig" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>"></asp:SqlDataSource>
            <br />
            <p style="text-align:center; font-weight:700; font-size: 14px;">Za brisanje ali urejanje rezervacij se obrnite na skrbnika spletne strani. <a href="Contact.aspx">Kontakt.</a></p>
        </div>
    </body>
    </html>
</asp:Content>

