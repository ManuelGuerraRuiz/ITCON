reportextension 50400 Venta extends "Standard Sales - Invoice"
{
    dataset
    {


    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = './ReportExt/layouts/LABCustomerList.rdl';
        }
    }
}