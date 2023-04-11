pageextension 50403 Reporte extends "Sales Invoice list"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Reports)
        {
            action(boton)
            {
                Caption = 'Factura detallada';
                ApplicationArea = All;
                Image = PrintReport;

                trigger OnAction()
                var
                    vuelta: Record "Sales Header";
                begin
                    vuelta.Reset();
                    CurrPage.SetSelectionFilter(vuelta);
                    report.Run(Report::ReportFactura, true, true, vuelta);
                end;

            }
        }


    }

    var
        myInt: Integer;
}
