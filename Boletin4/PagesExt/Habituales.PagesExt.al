pageextension 50410 ClienteHabitual extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {

        addbefore(PricesandDiscounts)
        {
            action(boton)
            {
                Caption = 'Clientes Habituales MGR';
                ApplicationArea = All;
                Image = PersonInCharge;

                trigger OnAction()
                var
                    pagina: Page ClienteHabitual;
                begin
                    pagina.Run();
                end;



            }
        }
    }

    var
        myInt: Integer;

}