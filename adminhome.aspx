<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <div class=""></div>
   
    <div class="middile">
<h3>WELCOME ADMIN !!!</h3>

<img src="img/BloodBanker.png" alt="" />
</div>
<div class="rightcontent">
<table><tr><td>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</td></tr></table>
</div>

</asp:Content>

