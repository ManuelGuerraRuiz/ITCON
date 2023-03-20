pageextension 50161 CreditLimitExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("F&unctions")
        {
            action(UpdateCreditLimit)
            {
                Caption = 'Actualizacion Credito';
                Image = CalculateCost;
            }
        }
    }



    local procedure CallUpdateCreditLimit()
    begin

    end;
}