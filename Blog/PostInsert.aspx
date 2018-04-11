<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostInsert.aspx.cs" Inherits="Blog.PostInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 style="text-align:center">Criar Post</h3>
    <div style="margin-left: auto; margin-right: auto; width: 300px; margin-top: 50px;">
        <div class="form-group">
            <label for="txtTitulo">Titulo</label>
            <asp:TextBox
                class="form-control"
                runat="server"
                ID="txtTitulo" 
                />
        </div>
        <asp:RequiredFieldValidator
            ForeColor="Red"
            Font-Bold="true"
            runat="server"
            ID="RequiredFieldValidator1"
            ErrorMessage="É necessário informar um título."
            Display="Dynamic"
            ControlToValidate="txtTitulo" /><br />

        <div class="form-group">
            <label for="exampleInputPassword1">Descricao</label>
            <asp:TextBox
                class="form-control"
                runat="server"
                ID="txtDescricao" />
        </div>
        <asp:RequiredFieldValidator
            ForeColor="Red"
            Font-Bold="true"
            runat="server"
            ID="PassRequiredFieldValidator"
            ErrorMessage="É necessário informar uma Descrição."
            Display="Dynamic"
            ControlToValidate="txtDescricao" /><br />

        <asp:Button
            class="btn btn-primary"
            runat="server"
            ID="btnSend"
            Text="Enviar"
            OnClick="btnSend_Click" />
    </div>

</asp:Content>
