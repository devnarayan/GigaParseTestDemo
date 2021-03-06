﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CS.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Import Excel Data into GridView</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Has Header ?"></asp:Label>
        <asp:RadioButtonList ID="rbHDR" runat="server">
            <asp:ListItem Text = "Yes" Value = "Yes" Selected = "True" ></asp:ListItem>
            <asp:ListItem Text = "No" Value = "No"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:GridView ID="GridView1" runat="server" OnPageIndexChanging = "PageIndexChanging" AllowPaging = "true"  >
        </asp:GridView>
    </div>
    </form>
</body>
</html>
