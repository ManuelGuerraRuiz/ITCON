pageextension 50406 fechita extends "Sales Invoice Subform"
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