codeunit 50420 CrearProveedorMGR
{
    trigger OnRun()
    begin
        CrearModificarProveedores();
    end;

    //Esta procedure lo que hace es Que si esta procesado el usuario te lo modifica si no te lo crea
    procedure CrearModificarProveedores()
    var
        Proveedores: Record Proveedor;
        VendorNo: Record Vendor;
    begin
        Proveedores.SetRange(Procesado, false);
        if Proveedores.FindSet() then
            repeat
                VendorNo := CrearProveedorMGR(Proveedores); // Obtener el registro del proveedor creado
                BuscarContacto(VendorNo); // Pasar el registro del proveedor a la función BuscarContacto
                Proveedores.Procesado := true;
                Proveedores.Modify();
            until Proveedores.Next() = 0;

        Proveedores.SetRange(Procesado, true);
        if Proveedores.FindSet() then
            repeat
                ModificarProveedorMGR(Proveedores);
            until Proveedores.Next() = 0;
    end;

    //Esta procedure lo que esta haciendo es que inserta todo los campos de mi pagina en la vendor 
    procedure CrearProveedorMGR(ProveedoresRec: Record Proveedor): Record Vendor

    var
        vendor: Record Vendor;
        cont: Record Contact;
    begin
        vendor.Init();

        vendor."Purchaser Code" := ProveedoresRec.CodComprador;
        vendor.Name := ProveedoresRec.Nombre;
        vendor.Address := ProveedoresRec."Dirección";
        vendor."Country/Region Code" := ProveedoresRec.CodigoPais;
        vendor.City := ProveedoresRec.Poblacion;
        vendor."Post Code" := ProveedoresRec.CodigoPostal;
        vendor."Phone No." := ProveedoresRec.telefono;
        vendor."VAT Registration No." := ProveedoresRec.DNI;
        vendor."Gen. Bus. Posting Group" := ProveedoresRec.GrupoContable;
        vendor."VAT Bus. Posting Group" := ProveedoresRec.GrupoContableIVA;
        vendor."Vendor Posting Group" := ProveedoresRec.GrupoProveedor;
        vendor."Payment Terms Code" := ProveedoresRec.terminoPago;
        vendor."Payment Method Code" := ProveedoresRec.FormaPago;
        vendor."E-Mail" := ProveedoresRec.Email;
        vendor."Primary Contact No." := ProveedoresRec.CodigoContacto;
        vendor.Contact := ProveedoresRec.Contacto;

        vendor.Insert(true);
        vendor.codigo := ProveedoresRec.codigo;
        vendor.Modify(true);
        exit(vendor);

    end;

    //Esta procedure lo que hace es modificar si la fecha de modificacion es mayor a la de creacion 
    procedure ModificarProveedorMGR(ProveedoresRec: Record Proveedor): Record Vendor

    var
        vendor: Record Vendor;
    begin
        if ProveedoresRec.SystemModifiedAt > ProveedoresRec.SystemCreatedAt then begin
            vendor.SetRange(codigo, ProveedoresRec.codigo);
            if vendor.FindFirst() then begin
                vendor."Purchaser Code" := ProveedoresRec.CodComprador;
                vendor.Name := ProveedoresRec.Nombre;
                vendor.Address := ProveedoresRec."Dirección";
                vendor."Country/Region Code" := ProveedoresRec.CodigoPais;
                vendor.City := ProveedoresRec.Poblacion;
                vendor."Post Code" := ProveedoresRec.CodigoPostal;
                vendor."Phone No." := ProveedoresRec.telefono;
                vendor."VAT Registration No." := ProveedoresRec.DNI;
                vendor."Gen. Bus. Posting Group" := ProveedoresRec.GrupoContable;
                vendor."VAT Bus. Posting Group" := ProveedoresRec.GrupoContableIVA;
                vendor."Vendor Posting Group" := ProveedoresRec.GrupoProveedor;
                vendor."Payment Terms Code" := ProveedoresRec.terminoPago;
                vendor."Payment Method Code" := ProveedoresRec.FormaPago;
                vendor."E-Mail" := ProveedoresRec.Email;
                vendor."Primary Contact No." := ProveedoresRec.CodigoContacto;
                vendor.Contact := ProveedoresRec.Contacto;

                vendor.Modify(true);
            end;

        end;

    end;

    //Esta procedure lo que hace es buscar el contacto py lo filtra por el nombre y el numero para ponerlo en el campo del proveedor
    procedure BuscarContacto(VendorNo: Record Vendor)
    var
        Contacto: Record Contact;
    begin
        VendorNo.Get(VendorNo."No.");
        Contacto.SetFilter(Name, VendorNo.Name);
        Contacto.SetFilter("Phone No.", VendorNo."Phone No.");
        if Contacto.FindFirst() then begin
            VendorNo."Primary Contact No." := Contacto."No.";
            VendorNo.Modify();
        end;
    end;

    var
        myInt: Integer;
}
