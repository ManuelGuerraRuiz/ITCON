codeunit 50420 CrearProveedor
{
    procedure CreadorProveedores()
    var
        Proveedores: Record Proveedor;

    begin
        Proveedores.SetRange(Procesado, false);
        if Proveedores.FindSet() then
            repeat
                CrearProveedor(Proveedores);
                Proveedores.Procesado := true;
                Proveedores.Modify();
            until Proveedores.Next() = 0;
    end;

    procedure CrearProveedor(ProveedoresRec: Record Proveedor)
    var
        Crear: Record Vendor;
        cont: Record Contact;
    begin
        Crear.Init();

        Crear."Purchaser Code" := ProveedoresRec.CodComprador;
        Crear.Name := ProveedoresRec.Nombre;
        Crear.Address := ProveedoresRec."Dirección";
        Crear."Country/Region Code" := ProveedoresRec.CodigoPais;
        Crear.City := ProveedoresRec.Poblacion;
        Crear."Post Code" := ProveedoresRec.CodigoPostal;
        Crear."Phone No." := ProveedoresRec.telefono;
        Crear."Primary Contact No." := ProveedoresRec.CodigoContacto;
        Crear.Contact := ProveedoresRec.Contacto;

        if cont.Get(cont."No.") then
            Crear."Primary Contact No." := cont."No.";

        Crear.Insert(true);
    end;


    trigger OnRun()
    begin
        CreadorProveedores();
    end;

    var
        myInt: Integer;
}