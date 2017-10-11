<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmValidationControl.aspx.cs" Inherits="WebValidationControlDemo.FrmValidationControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>필수 입력 확인</h1>
        <asp:TextBox ID="txtInput" runat="server" Text="아이디"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valInputInitialValue" runat="server" 
            ErrorMessage="값을 입력하시오." 
            Display="Dynamic"
            InitialValue="아이디"
            ControlToValidate="txtInput"><%--이니셜 밸류 처리--%>
        </asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="valInput" runat="server" 
            ErrorMessage="값을 입력하시오." 
            Display="Dynamic"
            ControlToValidate="txtInput"><%--값이 있는지 없는지 처리--%>
        </asp:RequiredFieldValidator>
        <br />

        <asp:Button ID="btnInput" runat="server" Text="입력" OnClick="btnInput_Click" /><br />
        <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
        
    </div>
    </form>
</body>
</html>
