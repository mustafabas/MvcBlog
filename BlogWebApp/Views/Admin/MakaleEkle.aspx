﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteAdmin.Master" Inherits="System.Web.Mvc.ViewPage<BlogWebApp.makaleler>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    MakaleEkle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <article class="module width_full">
        <header><h3>Makale Ekle</h3></header>
    <table>
        <%using(Html.BeginForm()){ %>
        <tr>
            <td>Makale Adı</td>
            <td><%:Html.TextBox("makaleAdi") %></td>
        </tr>
        <tr>
            <td>Kategori Adı</td>
            <td><%:Html.DropDownList("kategoriler") %></td>
        </tr>
        <tr>
            <td>Makale Kısa Açıklama</td>
            <td><%:Html.TextArea("makaleKisaAciklama", new {@id="ckeditor",@class="ckeditor" })%></td>
        </tr>
        <tr>
            <td>Makale</td>
            <td><%:Html.TextArea("makale",new {@id="ckeditor",@class="ckeditor" })%></td>
        </tr>
        <tr>
            <td>Makale Title</td>
           <td> <%:Html.TextBox("makaleTitle") %></td>
        </tr>
           <tr>
            <td>Makale Description</td>
          <td>  <%:Html.TextBox("makaleDescription") %></td>
        </tr>
           <tr>
            <td>Makale Keyword</td>
            <td><%:Html.TextBox("makaleKeyword") %></td>
        </tr>
        <tr>
            <td>Yazar</td>
            <td><%:Html.DropDownList("yazarlar") %></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Ekle" /></td>
        </tr>

    </table>
    <%} if (!Page.IsPostBack) Response.Write(ViewBag.basarili); %>
        
         </article>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
   
</asp:Content>
