codeunit 50162 Validaciones
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnBeforeValidateEvent', 'Address', false, false)]
    local procedure OnBeforeValidateAddress(var xRec: Record Customer; var Rec: Record Customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;

    local procedure CheckForPlusSign(TextToVerify: Text)
    begin
        Message('%1', StrPos(TextToVerify, '+'));
    end;
}