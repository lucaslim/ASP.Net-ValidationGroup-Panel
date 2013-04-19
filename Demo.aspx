<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo" %>

<%@ Register TagPrefix="Codeopolis" Namespace="Codeopolis" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <Codeopolis:ValidationGroupPanel runat="server" ID="validationGroupPanel" ValidationGroup="Submit">
            <div>
                Book Title:<br />
                <asp:TextBox runat="server" ID="txt_title"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfv_title" ControlToValidate="txt_title"
                    ErrorMessage="*Required" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                Price:<br />
                <asp:TextBox runat="server" ID="txt_price"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfv_price" ControlToValidate="txt_price"
                    ErrorMessage="*Required" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" ID="cv_price" Operator="DataTypeCheck" Type="Currency"
                    ControlToValidate="txt_price" ErrorMessage="*Invalid format"></asp:CompareValidator>
            </div>
            <div>
                <asp:Button runat="server" ID="btn_submit" Text="Submit"/>
            </div>
        </Codeopolis:ValidationGroupPanel>
    </div>
    </form>
</body>
</html>
