<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="Examen3OsmanGomez.Encuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/estilo.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <img src="Imagen/images.jpeg" />
        <div>
             <div class="form-group">
                    <label for="Nombre del participante">Nombre:</label>
                    <asp:TextBox ID="Nombre" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
                </div>


                <div class="form-group">
                    <label for="Edad">Edad:</label>
                    <asp:TextBox ID="Edad" runat="server" CssClass="form-control" Required="true" Type="Number" Min="18" Max="50"></asp:TextBox>
                </div>


                <div class="form-group">
                    <label for="Correo Electronico">Correo Electrónico:</label>
                    <asp:TextBox ID="Correo" runat="server" CssClass="form-control" Required="true" Type="email"></asp:TextBox>
                </div>


                <div class="form-group">
                    <label for="PartidoPolitico">Partido Político:</label>
                    <asp:DropDownList ID="ddlPartidoPolitico" runat="server" CssClass="form-control" Required="true">
                        <asp:ListItem Text="Seleccione un partido politico" />
                        <asp:ListItem Text="PUSC" Value="1" />
                        <asp:ListItem Text="PAC" Value="2" />
                        <asp:ListItem Text="PLN" Value="3" />
                    </asp:DropDownList>
                </div>


                <div class="text-center">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar Encuesta" OnClick="btnGuardar_Click" CssClass="btn btn-rounded-rectangular" />
                </div>
            </div>
   
    <script src="~/js/bootstrap.min.js"></script>
</asp:Content>
        </div>
    </form>
</body>
</html>
