<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_stud.aspx.cs" Inherits="admin_stud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bazinger-landing-page/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../bazinger-landing-page/assets/css/style.css" rel="stylesheet" />
    <link href="../bazinger-landing-page/assets/css/responsive.css" rel="stylesheet" />
    <script src="../bazinger-landing-page/assets/js/jquery.magnific-popup.js"></script>
    <script src="../bazinger-landing-page/assets/js/main.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="collapse navbar-collapse" id="Div1">
                <br />
                <ul class="nav navbar-nav navbar">
                    <li>
                        <div style="text-align: center;">
                            <asp:Button ID="Button2" CssClass="btn btn-default btn-outline btn-circle btn-block" ForeColor="White" runat="server" Text="STUDENT MASTER" />
                        </div>
                    </li>
                </ul>

            </div>
        </nav>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <div>
            <asp:TextBox ID="txtsearch" placeholder="Enter ID To Search" runat="server" Font-Bold="True" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox>
              <asp:Button ID="btnSearch" CssClass="btn btn-info" runat="server" Text="Search" OnClick="btnSearch_Click" Font-Names="Tw Cen MT Ultra Bold" Font-Size="Medium" />
            <br />
            <br />
        </div>
        <div>
            <asp:TextBox ID="txtname" placeholder="Name" runat="server" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox>
            <asp:TextBox ID="txtemail" placeholder="Email" runat="server" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox>
            <asp:TextBox ID="txtpw" placeholder="Password" runat="server" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox>
            <asp:TextBox ID="txtadd" placeholder="Address" runat="server" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox>
            <asp:TextBox ID="txtdept" placeholder="Department" runat="server" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox>
            <asp:TextBox ID="txtphone" placeholder="Phone Number" runat="server" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox><br />
            <br />

            <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-info" Text="Add New" OnClick="btnInsert_Click" Font-Names="Tw Cen MT Ultra Bold" Font-Size="Medium" />
            &nbsp;<asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-info" Text="Update" OnClick="btnUpdate_Click" Font-Names="Tw Cen MT Ultra Bold" Font-Size="Medium" />
        </div>
        <div>
            <br />
            <asp:TextBox ID="txtdelid" placeholder="Enter ID To Delete" runat="server" Font-Names="Tw Cen MT" Font-Size="Medium"></asp:TextBox>
              &nbsp;<asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" Text="Delete" OnClick="btnDelete_Click" Font-Names="Tw Cen MT Ultra Bold" Font-Size="Medium" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>

        <div>

            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="stud_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF; color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>

                        <td>
                            <asp:Label ID="stud_idLabel" runat="server" Text='<%# Eval("stud_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_nameLabel" runat="server" Text='<%# Eval("stud_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_emailLabel" runat="server" Text='<%# Eval("stud_email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_pwLabel" runat="server" Text='<%# Eval("stud_pw") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_addLabel" runat="server" Text='<%# Eval("stud_add") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_deptLabel" runat="server" Text='<%# Eval("stud_dept") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_phoneLabel" runat="server" Text='<%# Eval("stud_phone") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="stud_idLabel1" runat="server" Text='<%# Eval("stud_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="stud_nameTextBox" runat="server" Text='<%# Bind("stud_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="stud_emailTextBox" runat="server" Text='<%# Bind("stud_email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="stud_pwTextBox" runat="server" Text='<%# Bind("stud_pw") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="stud_addTextBox" runat="server" Text='<%# Bind("stud_add") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="stud_deptTextBox" runat="server" Text='<%# Bind("stud_dept") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="stud_phoneTextBox" runat="server" Text='<%# Bind("stud_phone") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox Font-Size="Medium" ID="stud_nameTextBox" runat="server" Text='<%# Bind("stud_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox Font-Size="Medium" ID="stud_emailTextBox" runat="server" Text='<%# Bind("stud_email") %>' />
                        </td>
                        <td>
                            <asp:TextBox Font-Size="Medium" ID="stud_pwTextBox" runat="server" Text='<%# Bind("stud_pw") %>' />
                        </td>
                        <td>
                            <asp:TextBox Font-Size="Medium" ID="stud_addTextBox" runat="server" Text='<%# Bind("stud_add") %>' />
                        </td>
                        <td>
                            <asp:TextBox Font-Size="Medium" ID="stud_deptTextBox" runat="server" Text='<%# Bind("stud_dept") %>' />
                        </td>
                        <td>
                            <asp:TextBox Font-Size="Medium" ID="stud_phoneTextBox" runat="server" Text='<%# Bind("stud_phone") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF; color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>

                        <td>
                            <asp:Label ID="stud_idLabel" runat="server" Text='<%# Eval("stud_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_nameLabel" runat="server" Text='<%# Eval("stud_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_emailLabel" runat="server" Text='<%# Eval("stud_email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_pwLabel" runat="server" Text='<%# Eval("stud_pw") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_addLabel" runat="server" Text='<%# Eval("stud_add") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_deptLabel" runat="server" Text='<%# Eval("stud_dept") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_phoneLabel" runat="server" Text='<%# Eval("stud_phone") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">stud_id</th>
                                        <th runat="server">stud_name</th>
                                        <th runat="server">stud_email</th>
                                        <th runat="server">stud_pw</th>
                                        <th runat="server">stud_add</th>
                                        <th runat="server">stud_dept</th>
                                        <th runat="server">stud_phone</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager PageSize="10" ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="False" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField NumericButtonCssClass="alert-info" />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="False" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                        <td>
                            <asp:Button Width="12" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="stud_idLabel" runat="server" Text='<%# Eval("stud_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_nameLabel" runat="server" Text='<%# Eval("stud_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_emailLabel" runat="server" Text='<%# Eval("stud_email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_pwLabel" runat="server" Text='<%# Eval("stud_pw") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_addLabel" runat="server" Text='<%# Eval("stud_add") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_deptLabel" runat="server" Text='<%# Eval("stud_dept") %>' />
                        </td>
                        <td>
                            <asp:Label ID="stud_phoneLabel" runat="server" Text='<%# Eval("stud_phone") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" DeleteCommand="DELETE FROM [tbl_student] WHERE [stud_id] = @stud_id" InsertCommand="INSERT INTO [tbl_student] ([stud_name], [stud_email], [stud_pw], [stud_add], [stud_dept], [stud_phone]) VALUES (@stud_name, @stud_email, @stud_pw, @stud_add, @stud_dept, @stud_phone)" SelectCommand="SELECT * FROM [tbl_student]" UpdateCommand="UPDATE [tbl_student] SET [stud_name] = @stud_name, [stud_email] = @stud_email, [stud_pw] = @stud_pw, [stud_add] = @stud_add, [stud_dept] = @stud_dept, [stud_phone] = @stud_phone WHERE [stud_id] = @stud_id">
                <DeleteParameters>
                    <asp:Parameter Name="stud_id" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="stud_name" Type="String" />
                    <asp:Parameter Name="stud_email" Type="String" />
                    <asp:Parameter Name="stud_pw" Type="String" />
                    <asp:Parameter Name="stud_add" Type="String" />
                    <asp:Parameter Name="stud_dept" Type="String" />
                    <asp:Parameter Name="stud_phone" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="stud_name" Type="String" />
                    <asp:Parameter Name="stud_email" Type="String" />
                    <asp:Parameter Name="stud_pw" Type="String" />
                    <asp:Parameter Name="stud_add" Type="String" />
                    <asp:Parameter Name="stud_dept" Type="String" />
                    <asp:Parameter Name="stud_phone" Type="String" />
                    <asp:Parameter Name="stud_id" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <nav class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="collapse navbar-collapse" id="navbar-collapse-4">
                <br />
                <ul class="nav navbar-nav navbar-left">
                    <li>
                        <asp:Button ID="Button1" CssClass="btn btn-default btn-outline btn-circle" ForeColor="White" runat="server" OnClick="Button1_Click" Text="Home" />
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <asp:Button ID="btnlogout" CssClass="btn btn-default btn-outline btn-circle" ForeColor="White" runat="server" OnClick="btnlogout_Click" Text="Logout" />
                    </li>
                </ul>
            </div>
        </nav>

    </form>
</body>
</html>
