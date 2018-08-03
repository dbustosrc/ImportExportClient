using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ImportExportClient.ImportExportFrameworkService;

namespace ImportExportClient
{
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CallContext callContext = new CallContext();
            NOVImportExportFormatContract dataContract = new NOVImportExportFormatContract();
            NOVFileValueContract[] result;
            String[] fileLines;
            NOVImportExportFormatServiceClient serviceClient = new NOVImportExportFormatServiceClient();

            if (rdioListOption.SelectedIndex == 0)
            {
                dataContract.ActionType = NOVImportExport.Import;
                fileLines = txtFileContent.Text.Split('\n');
                dataContract.FileLines = fileLines;
            }
            else
            {
                dataContract.ActionType = NOVImportExport.Export;
            }

            dataContract.FileFormatId = txtFormat.Text;
            result = serviceClient.startOperation(callContext, dataContract);

            foreach (var item in result)
            {
                lblResponse.Text += item.parmValue;
            }

            
        }
    }
}