pageextension 50401 FechaDisponibilidad extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            group("Campos Manuel")
            {
                field(FechaDis; Rec.FechaDis)
                {
                    Caption = 'Fecha Disponibilidad MGR';
                    ApplicationArea = All;
                }
                field(PedidosDis; Rec.PedidosDis)
                {
                    Caption = 'Cantidad disponible en pedidos MGR';
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}