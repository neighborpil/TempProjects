using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace WebValidationControlDemo
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //[1] 유효성 검사 컨트롤 사용
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.WebForms;

        }
    }
}