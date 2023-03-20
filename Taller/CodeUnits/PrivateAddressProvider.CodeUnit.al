codeunit 50164 PrivateAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('La direccion de mi Casa \ Sevilla 41016')
    end;
}