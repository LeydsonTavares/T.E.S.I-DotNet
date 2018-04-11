<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blog._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Blog do Leydson
        </h1>
        <asp:Image
            ID="Image1" runat="server"
            AlternateText="Image text"
            ImageAlign="left"
            style="height:158px;width:146px;margin-top: -120px;margin-left: 700px;"
            ImageUrl="Assets/avatar.png" Height="158px" Width="146px" />
    </div>
    <h3 style="text-align: center">Posts</h3>
    <div id="PostMenu" style="text-align: center">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Titulo</th>
                    <th scope="col">Descrição</th>
                    <th scope="col">Data</th>
                </tr>
            </thead>
            <tbody style="text-align: start;">
                <% foreach (var post in postList_GetData())
                    { %>
                <tr>
                    <td><%= post.PostId%></td>
                    <td><%= post.Titulo%></td>
                    <td><%= post.Descricao%></td>
                    <td><%= post.Data%></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</asp:Content>
