report 50400 ListaCustomer
{
    Caption = 'Registros Clientes';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    PreviewMode = Normal;
    DefaultRenderingLayout = Example_RDLCLayout;

    dataset
    {
        dataitem(Customer; "PTE Vista_general_del_cliente")
        {



            column(No; NumeroCliente)
            {


            }
            column(Name; NombreCliente)
            {

            }

            column(Balance; Importe)
            {

            }
        }
    }
    rendering
    {
        layout(Example_RDLCLayout)
        {
            Type = RDLC;
            LayoutFile = './Rdl/LABCustomerList.rdl';
            Caption = 'Registro de CLientes RDLC';
            Summary = 'Un ejemplo en RDLC Layout.';
        }
        layout(Example_WORDLayout)
        {
            Type = Word;
            LayoutFile = './Rdl/Example_WORDLayout.docx';
            Caption = 'Registro de CLientes WORD';
            Summary = 'Un ejemplo en WORD Layout.';
        }
        layout(Example_EXCELLayout)
        {
            Type = Excel;
            LayoutFile = './Rdl/Example_EXCELLayout.xlsx';
            Caption = 'Registro de CLientes EXCEL';
            Summary = 'Un ejemplo en EXCEL Layout.';
        }
    }
}