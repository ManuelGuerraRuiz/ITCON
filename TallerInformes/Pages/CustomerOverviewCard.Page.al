page 50401 FichaDeVistaGeneralDelCliente
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PTE Vista_general_del_cliente";

    layout
    {
        area(Content)
        {
            group(Clientes)
            {
                field(NumeroMovimiento; Rec.NumeroMovimiento)
                {
                    ApplicationArea = All;

                }

                field(NumeroCliente; Rec.NumeroCliente)
                {
                    ApplicationArea = All;
                }
                field(NombreCliente; Rec.NombreCliente)
                {
                    ApplicationArea = All;
                }
                field(CodigoOrigen; Rec.CodigoOrigen)
                {
                    ApplicationArea = All;
                }
                field(Importe; Rec.Importe)
                {
                    ApplicationArea = All;
                }
                field(LastRunDate; Rec.LastRunDate)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Borrar)
            {
                ApplicationArea = All;


                trigger OnAction()
                begin


                end;
            }
        }
    }

    var
        myInt: Integer;
}