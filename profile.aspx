<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="HomePage/css/bootstrap.css" rel="stylesheet" />
    <link href="css/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/css/style.css" rel="stylesheet" />
    <script type="text/javascript">
        function Validatenum(event) {
            if (event.keyCode >= 48 && event.keyCode <= 57)
                event.returnValue = true;

            else
                event.returnValue = false;
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">




        <h1>Profile</h1>
        <br />
        <br />

        <div class="table-responsive" style="float:none;">
           <%-- <table border="1" style="border-style:ridge;" class="table">
                <tr>
                    <asp:Image ID="Image1" AlternateText="img not uploaded" runat="server" />
                </tr>
                <%--<tr>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUploadImg" OnClick="btnUploadImg_Click" runat="server" Text="Change Profile Picture" />
                </tr>--%>
               <%-- 
            </table>--%>
            <asp:Label ID="lblerr" runat="server" Text="*"></asp:Label>
        </div><br />

        <div class="table-responsive">
            <table style="border-style:outset;" class="table">
                <tr>
                    <td class="col-md-2">
                        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="ID : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtid" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" CssClass="form-control" runat="server" Text="Name : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" CssClass="form-control" runat="server" Text="Email : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtmail" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" CssClass="form-control" runat="server" Text="Address : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtadd" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" CssClass="form-control" runat="server" Text="Department : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdept" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:DropDownList ID="dddept" CssClass="form-control" runat="server">
             <asp:ListItem>MCA</asp:ListItem>
             <asp:ListItem>MscIT</asp:ListItem>
                        </asp:DropDownList>
                 &nbsp;   </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" CssClass="form-control" runat="server" Text="Phone Number : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtphone" onkeypress="return Validatenum(event)" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnmodify" CssClass="btn btn-lg btn-primary " OnClick="btnmodify_Click" runat="server" Text="Modify Data" />
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" CssClass="btn btn-lg btn-primary " OnClick="btnUpdate_Click" runat="server" Text="Update Data" />
                    
                        <asp:Button ID="btnReset" CssClass="btn btn-lg btn-primary " OnClick="btnReset_Click" runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
