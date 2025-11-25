<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="2" style="width: 100%;">
    <tr>
        <th align="center"><h1>Menu</h1></th>
    </tr>
</table>
<table border="1" style="width: 100%; height: 600px">
    <tr style="height: 80">
        <th>drinks</th>
        <th>food</th>
    </tr>
    <tr>
        <td align="center"><img src="images/dhwoiahfoias.png" width="850" height="350" /></td>
        <td align="center"><img src="images/fish.png" width="850" height="350"/></td>
    </tr>
    <tr>
        <td align="center"><a href="whiskey.aspx"><img src="images/whiskey.png" width="850" height="350" /></a></td>
        <td align="center"><img src="images/steak.png" width="850" height="350"/></td>
    </tr>
</table>
</asp:Content>

