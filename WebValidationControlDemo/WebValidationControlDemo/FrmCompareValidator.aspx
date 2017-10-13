<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCompareValidator.aspx.cs" Inherits="WebValidationControlDemo.FrmCompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>비교 확인 유효성 검사 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>비교 확인 유효성 검사 컨트롤</h3>

            암호 : 
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valPasswordEmpty" runat="server" 
                ControlToValidate="txtPassword" Display="Dynamic"
                ErrorMessage="값을 입력해 주세요"></asp:RequiredFieldValidator>
            <br />
            암호 확인 : 
            <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valPasswordConfirmEmpty" runat="server" 
                ControlToValidate="txtPasswordConfirm" Display="Dynamic"
                ErrorMessage="값을 입력해 주세요"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="valPasswordConfirm" runat="server" 
                ControlToValidate="txtPasswordConfirm" ControlToCompare="txtPassword"
                SetFocusOnError="true"  Display="Dynamic"
                ErrorMessage="암호를 다시 확인해 주세요"></asp:CompareValidator>
            <%--SetFocusOnError="true" 틀렸을 때 깜빡거리게--%>
            <hr />

            <asp:Button ID="btnConfirm" runat="server" Text="확인" OnClick="btnConfirm_Click"/>
        </div>
    </form>
</body>
</html>
