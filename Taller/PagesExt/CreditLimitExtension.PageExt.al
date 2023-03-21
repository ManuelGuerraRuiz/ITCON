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
                trigger OnAction()
                begin
                    CallUpdateCreditLimit()
                end;
            }
        }
    }

    var
        AreYouSureQst: Label '¿Está seguro de que desea establecer %1 como %2?';
        CreditLimitRoundedTxt: Label 'El límite de crédito se redondeó a %1 para cumplir con las directivas de la empresa.';
        CreditLimitUpToDateTxt: Label 'El límite de crédito está actualizado.';


    local procedure CallUpdateCreditLimit()
    var
        CreditLimitCalculated: Decimal;
        CreditLimitActual: Decimal;
    begin
        CreditLimitCalculated := Rec.CalculateCreditLimit();
        if CreditLimitCalculated = Rec."Credit Limit (LCY)" then begin
            Message(CreditLimitUpToDateTxt);
            exit;
        end;

        if GuiAllowed() then
            if not Confirm(AreYouSureQst, false, Rec.FieldCaption("Credit Limit (LCY)"), CreditLimitCalculated) then
                exit;

        CreditLimitActual := CreditLimitCalculated;
        Rec.UpdateCreditLimit(CreditLimitActual);
        if CreditLimitActual <> CreditLimitCalculated then
            Message(CreditLimitROundedTxt, CreditLimitActual);
    end;
}