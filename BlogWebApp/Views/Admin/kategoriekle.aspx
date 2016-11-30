<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteAdmin.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    kategoriekle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<article class="module width_full">
			<header><h3>Kategori Ekle</h3></header>
    <%using(Html.BeginForm("kategoriekle","admin",FormMethod.Post,new{@name="frmKAt"})){ %>
        <table>
            <tr>
                <td>Kategori Adı</td>
                <td><%:Html.TextBox("txtKategoriAdi") %></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Ekle" /></td>
            </tr>
        </table>
    
    <%} %>
        <%if (!IsPostBack)
      {
          if (ViewBag.bos == true)
          {
              Response.Write("Kategori Adını Giriniz.");
          }
          else {
              if (ViewBag.var == true)
              {
                  Response.Write("Böyle bir kategori adı mevcut.");
              }
              if(ViewBag.eklendi==true) {
                  
                  Response.Write("Başarılı Şekilde Eklenmiştir");
              }
          }
      }
          %>
    </article>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
