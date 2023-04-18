pageextension 50405 Detallada extends "Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Action9)
        {
            action(boton)
            {
                Caption = 'Factura detallada';
                ApplicationArea = All;
                Image = PrintReport;
                Visible = Activado;

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

    trigger OnOpenPage()
    var
        BotonActivado: Codeunit Botoncito;
    begin
        Activado := BotonActivado.Visto();

    end;

    var
        Activado: boolean;

}
