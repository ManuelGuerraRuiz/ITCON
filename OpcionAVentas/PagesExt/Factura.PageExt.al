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
                Caption = 'Factura detallada MGR';
                ApplicationArea = All;
                Image = PrintReport;
                Visible = Activado;



                trigger OnAction()
                var
                    vuelta: Record "Sales Header";
                begin
                    vuelta.Reset();
                    CurrPage.SetSelectionFilter(vuelta);
                    if vuelta.FindSet() then
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

        Activado: Boolean;
}
