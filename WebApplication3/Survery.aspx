<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survery.aspx.cs" Inherits="WebApplication3.Survery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Take the survey!</h1>
<p>
Name: <input type="text" id="name" runat="server" />
</p>
<p>
Name: <input type="text" id="Text1" runat="server" />
</p>
<p>
Name: <input type="text" id="Text2" runat="server" />
</p>
<p>
Do you like ASP.net so far?<br />
<select id="serverModel" runat="server" multiple="true">
<option>Yes</option>
<option>No</option>
</select>
</p>
<p>
<button id="confirmButton" onserverclick="confirmButton_click" runat="server">Confirm</button>
　
</p>
<p>
<asp:Label runat="server" ID="feedbackLabel"></asp:Label>
</p>
<script runat="server">
void confirmButton_click(Object s, EventArgs e){
feedbackLabel.Text = "Your name is: " + name.Value + "<br>";
feedbackLabel.Text += "Your email is: " + name.Value + "<br>";
feedbackLabel.Text += "You use: <br><ul> ";
foreach(ListItem item in serverModel.Items)
{
if (item.Selected) {
feedbackLabel.Text += "<li>" + item.Text + "</li>";
item.Selected = true;
}
if (!item.Selected) {
feedbackLabel.Text += "<li>Nothing</li>";
item.Selected = true;
}
}
feedbackLabel.Text = "</ul>";
feedbackLabel.Text = "You like to ";
}
</script>
</asp:Content>
