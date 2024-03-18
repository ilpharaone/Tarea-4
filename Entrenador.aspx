<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entrenador.aspx.cs" Inherits="UPIFC.Entrenador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>UPI FC</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #ffd800;
                    text-align: left;
                }

        .active {
            background-color: #ffd800;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        
        <div class="auto-style1">
            <strong>Sistema del UPIFC
            </strong>
        </div>
        <div>
            <ul>
                <li><a class="active" href="principal.aspx">Inicio</a></li>
                <li><a href="Jugador.aspx">Jugadores</a></li>
                <li><a href="Entrenador.aspx">Entrenadores</a></li>
                <li><a href="about">Salir</a></li>
            </ul>
        </div>
        <div><br />
            <br />
            Codigo:
            <asp:TextBox ID="Tcodigo" runat="server"></asp:TextBox>
            Nombre:
            <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
            Titulos:
            <asp:TextBox ID="Ttitulo" runat="server"></asp:TextBox>

        </div>
        <div> 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SQLEntrenador" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="titulos" HeaderText="titulos" SortExpression="titulos" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            <asp:SqlDataSource ID="SQLEntrenador" runat="server" ConnectionString="<%$ ConnectionStrings:UPIFCConnectionString %>" SelectCommand="SELECT * FROM [entrenador]"></asp:SqlDataSource>

        </div>
        <div>
            <asp:Button ID="Bagregar" runat="server" Text="Agregar"/>
            <asp:Button ID="Bborrar" runat="server" Text="Borrar"/>
            <asp:Button ID="Bmodificar" runat="server" Text="Modificar"/>
            <asp:Button ID="Bconsultar" runat="server" Text="Consultar"/>
        </div>

    </form>
    
</body>
</html>
