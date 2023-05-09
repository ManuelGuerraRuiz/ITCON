pageextension 50408 Desc extends "Sales & Receivables Setup"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            group(Desc)
            {
                field(Descripcion; Rec.Desc)
                {
                    Caption = 'Modificar Desc MGR';
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