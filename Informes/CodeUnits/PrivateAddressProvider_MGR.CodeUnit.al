codeunit 50402 PrivateAddressProvider_MGR implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('La direccion de mi Casa \ Sevilla 41016')
    end;
}