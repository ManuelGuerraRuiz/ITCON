codeunit 50400 CompanyAddressProvider_MGR implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('Direccion de la Compañia \ Sevilla 41008')
    end;
}