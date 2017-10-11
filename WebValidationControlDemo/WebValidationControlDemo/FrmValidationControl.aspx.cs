using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebValidationControlDemo
{
    public partial class FrmValidationControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInput_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) //서버측에서도 한번 더 검사
            {
                lblDisplay.Text = "텍스트상자에 입력한 내용은 : " + txtInput.Text; 
            }
        }
    }
}