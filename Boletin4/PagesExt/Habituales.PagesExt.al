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
                RunObject = Page ClienteHabitual;
                RunPageLink = CodProdcuto = FIELD("No.");




            }
        }
    }

    var
        myInt: Integer;

}