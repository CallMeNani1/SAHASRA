<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/> 
    <link href="Stylesheets/StyleSheet.css" rel="stylesheet" type="text/css" />

    <link href="Stylesheets/Media.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/jscript" >
        $(function () {
            var pull = $('#pull');
            menu = $('nav ul');
            menuHeight = menu.height();

            $(pull).on('click', function (e) {
                e.preventDefault();
                menu.slideToggle();
            });
        });



        $(window).resize(function () {
            var w = $(window).width();
            if (w > 320 && menu.is(':hidden')) {
                menu.removeAttr('style');
            }
        });	


</script>


    </head>
<body>
    <form id="form1" runat="server">
    <div id="Header">
    <div class="headcontent"><h1>BLOOD CHAMBER</h1></div>
    </div>


    <div  >
    <nav class="clearfix">
	<ul class="clearfix">
    <li><a href="index.aspx">Home</a></li>
   <%-- <li><a href="#">About</a></li>--%>
    <li><a href="searchblooddonor.aspx">Search Blood Donors</a></li>
    <li><a href="searchhospital.aspx">Search Hospitals</a></li>
    <li><a href="searchbloodbanks.aspx">Search Blood Banks</a></li>
    <li><a href="bloodfacts.aspx">Blood Facts</a></li>
    <li><a href="tips.aspx">Tips for Blood Donors</a></li>
    <li><a href="rbccompatibility.aspx">Red Blood Cell</a></li>
    <li><a href="viewhelpline.aspx">Help Lines</a></li>
    </ul>
	<a href="#" id="pull">Menu </a>

    </nav>
    


    </div>
    
    
    <div id="content">
    <div class="leftcontent">
    <%--<fieldset >
                        <legend>
                        Menus
                        </legend>
                        <table >
                            <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" 
                                        NavigateUrl="~/searchblooddonor.aspx">Search Blood Donors</asp:HyperLink>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink2" runat="server" 
                                        NavigateUrl="~/searchhospital.aspx">Search Hospitals</asp:HyperLink>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink3" runat="server" 
                                        NavigateUrl="~/searchbloodbanks.aspx">Search Blood Banks</asp:HyperLink>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/bloodfacts.aspx">Blood Facts</asp:HyperLink>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/tips.aspx">Tips for Blood Donors</asp:HyperLink>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink6" runat="server">Helpline Numbers</asp:HyperLink>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink7" runat="server" 
                                        NavigateUrl="~/rbccompatibility.aspx">Red Blood Cell Compatibility</asp:HyperLink>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink8" runat="server">About</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </fieldset>--%>
    
    </div>
    <div class="middile"><img src="img/bbank.png" alt="img1" /></div>
    <div class="rightcontent">
    <fieldset >
                        <legend>
                        Login
                        </legend>
                        <table >
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                                        Font-Names="Cambria" onclick="Button1_Click" Width="69px" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                                        Font-Names="Cambria" />
                                </td>
                            </tr>
                            <tr>
                               
                                <td>
                                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/usersignup.aspx">Sign up</asp:HyperLink>
                                </td>
                                 <td>
                                     <asp:Label ID="lblerr" runat="server" Text="Invalid Username & Password" 
                                         Visible="False" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                    </div>
                    <div class="rightcontent"><table><tr><td>
                       <asp:GridView Width="300px" ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#72923F" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4"  DataSourceID="SqlDataSource1" >
                <Columns>
                    <asp:TemplateField HeaderText="Services" SortExpression="country">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("services") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("services") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact Numbers" SortExpression="state">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("contact_numbers") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("contact_numbers") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#005502" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                
            </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Services], [Contact_Numbers] FROM [Services_table]"></asp:SqlDataSource>
                        <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                            DataFile="~/App_Data/bloodbnk.mdb" 
                            SelectCommand="SELECT [Services], [Contact_Numbers] FROM [Services_table]">
                        </asp:AccessDataSource>--%>
                    </td></tr></table></div>
    </div>
    
    </form>
</body>
</html>
