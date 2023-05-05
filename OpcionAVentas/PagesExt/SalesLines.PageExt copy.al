pageextension 50407 fechita2 extends "Sales Order Subform"
{
    layout
    {
        // Add changes to page layout here
        addbefore(Quantity)
        {
            field(FechaDisponibleManuel; Rec.FechaDisponibleManuel)
            {
                Caption = 'Fecha Disponibilidad MGR';
                ApplicationArea = All;
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