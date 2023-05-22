codeunit 50420 CrearProveedor
{
    trigger OnRun()
    begin

    end;

    procedure crearProveedor(TeamMember: Record Proveedor)
    var
        proveedor: Record Vendor;
    begin
        TeamMember.SetRange(CodComprador, proveedor."Purchaser Code");
        proveedor.Init();
        proveedor."Purchaser Code" := TeamMember.CodComprador;
        proveedor.Name := TeamMember.Nombre;
        proveedor.Address := TeamMember."Dirección";
        proveedor."Country/Region Code" := TeamMember.CodigoPais;
        proveedor.City := TeamMember.Poblacion;
        proveedor."Post Code" := TeamMember.CodigoPostal;
        proveedor."Phone No." := TeamMember.telefono;
        proveedor.Insert(true);
    end;

    var
        myInt: Integer;
}