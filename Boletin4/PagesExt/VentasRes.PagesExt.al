pageextension 50409 Modificar extends "Posted Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("F&unctions")
        {
            action(boton)
            {

                Caption = 'Modificar Desc Trabajo MGR';
                ApplicationArea = All;
                Image = Workflow;
                Visible = Activado;
                /*RunObject = Page DescripcionTrabajo;
                RunPageLink = "No." = FIELD("No.");*/

                trigger OnAction()
                var
                    paginita: Page DescripcionTrabajo;
                    select: Record "Sales Invoice Header";
                begin
                    select.Reset();
                    CurrPage.SetSelectionFilter(select);
                    paginita.Run();
                end;

            }
        }


    }

    trigger OnOpenPage()
    var
        BotonActivado: Codeunit Boton;
    begin
        Activado := BotonActivado.Desc();

    end;

    var
        Activado: boolean;

}