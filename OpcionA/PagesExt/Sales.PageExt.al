pageextension 50404 VisiblePage extends "Sales & Receivables Setup"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            group(Visible)
            {
                field(Visto; Rec.Visible)
                {
                    Caption = 'Visible';
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