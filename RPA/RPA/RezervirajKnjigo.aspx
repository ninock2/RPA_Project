<%@  Title="Rezerviraj knjigo" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RezervirajKnjigo.aspx.cs" Inherits="RezervirajKnjigo" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <webopt:BundleReference runat="server" Path="~/Content/css" />
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


        <h1 style="text-align: center;">Rezerviraj knjigo</h1>
        <hr style="width: 900px;" />

        <%-- GridView Knjig ki so trenutno na voljo --%>
        <div style="margin-top: 50px; text-align: center; width: 800px; margin: 35px auto;" draggable="true">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Knjige" Height="230px" Width="750px" CssClass="auto-style1" HorizontalAlign="Justify"
                AllowPaging="True" PageSize="7">
                <HeaderStyle Height="35px" HorizontalAlign="Center" />
                <PagerSettings FirstPageText="&amp;lt; &amp;lt;" />
                <RowStyle Height="25px" HorizontalAlign="Center" VerticalAlign="NotSet" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID št." InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NaslovKnjige" HeaderText="Naslov knjige" SortExpression="NaslovKnjige" />
                    <asp:BoundField DataField="Pisatelj" HeaderText="Pisatelj" SortExpression="Pisatelj" />
                    <asp:BoundField DataField="LetoIzdaje" HeaderText="Leto izdaje" SortExpression="LetoIzdaje" />
                    <asp:BoundField DataField="NaVoljo" HeaderText="Zaloga" SortExpression="NaVoljo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Knjige" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>"
                SelectCommand="SELECT * FROM [Knjige]"
                DeleteCommand="DELETE FROM Knjige WHERE ID = @ID"
                UpdateCommand="UPDATE Knjige SET NaslovKnjige=@NaslovKnjige, Pisatelj=@Pisatelj, LetoIzdaje=@LetoIzdaje, NaVoljo=@NaVoljo WHERE ID=@ID"></asp:SqlDataSource>
            <p style="text-align: center; font-weight: 700; margin-top: 20px;">IZBRANA KNJIGA</p>
            <table border="0" style="border-collapse: collapse; margin-top: 10px; width: 750px;" class="auto-style6">
                <tr>
                    <td style="width: 150px">Naslov knjige:<br />
                        <asp:TextBox ID="txtbosNaslov" runat="server" Width="140" ReadOnly="true" />
                    </td>
                    <td style="width: 150px">Pisatelj:<br />
                        <asp:TextBox ID="txtboxPisatelj" runat="server" Width="140" ReadOnly="true" />
                    </td>
                    <td style="width: 150px">Leto izdaje:<br />
                        <asp:TextBox ID="txtboxLetoIzdaje" runat="server" Width="140" ReadOnly="true" />
                    </td>
                    <td style="width: 150px">Na voljo:<br />
                        <asp:TextBox ID="txtboxNaVoljo" runat="server" Width="140" ReadOnly="true" />

                    </td>
                </tr>
            </table>
            <div style="margin-top: 20px;">
                <asp:Button ID="rezervirajKnjigo" runat="server" Text="Rezerviraj izbrano knjigo" OnClick="GridView1_RezervirajKnjigo" />
            </div>
        </div>
    </body>
    </html>
</asp:Content>
