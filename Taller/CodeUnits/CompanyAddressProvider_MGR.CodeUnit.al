codeunit 50161 CompanyAddressProvider_MGR implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('Direccion de la Compañia \ Sevilla 41008')
    end;
}