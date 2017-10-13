<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRegularExpressionValidator.aspx.cs" Inherits="WebValidationControlDemo.FrmRegularExpressionValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>정규식 확인 유효성 검사 컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>정규식 확인 유효성 검사 컨트롤</h3>

        이메일 : 
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="valEmail" runat="server" 
            ControlToValidate="txtEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ErrorMessage="이메일을 정확히 입력하시오"></asp:RegularExpressionValidator>
        <br />
        홈페이지 : 
        <asp:TextBox ID="txtHomePage" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="valHomePage" runat="server" 
            ControlToValidate="txtHomePage"
            ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"
            ErrorMessage="홈페이지를 정확히 입력하세요"></asp:RegularExpressionValidator>
        <hr />
        <asp:LinkButton ID="btnOK" runat="server">확인</asp:LinkButton>
    </div>
    </form>
</body>
</html>
