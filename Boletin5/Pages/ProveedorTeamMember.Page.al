page 50420 ProveedorTeamMember
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Proveedor;
    Editable = true;
    Permissions = tabledata Proveedor = RIMD;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    Editable = true;

                }

                field(CodComprador; Rec.CodComprador)
                {
                    ApplicationArea = All;
                    Editable = true;

                }

                field(DNI; Rec.DNI)
                {
                    ApplicationArea = ALl;
                    Editable = true;

                }
            }

            group(DireccionYContacto)
            {
                Caption = 'Dirección Y contacto';
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = ALl;
                }
                field(CodigoPais; Rec.CodigoPais)
                {
                    ApplicationArea = ALl;
                }
                field(Poblacion; Rec.Poblacion)
                {
                    ApplicationArea = ALl;
                }
                field(CodigoPostal; Rec.CodigoPostal)
                {
                    ApplicationArea = ALl;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = ALl;
                }
                field(telefono; Rec.telefono)
                {
                    ApplicationArea = ALl;
                }
            }
            group(Facturación)
            {
                field(GrupoContable; Rec.GrupoContable)
                {
                    ApplicationArea = ALl;
                }
                field(GrupoContableIVA; Rec.GrupoContableIVA)
                {
                    ApplicationArea = ALl;
                }
                field(GrupoProveedor; Rec.GrupoProveedor)
                {
                    ApplicationArea = ALl;
                }
                field(terminoPago; Rec.terminoPago)
                {
                    ApplicationArea = ALl;
                }
                field(FormaPago; Rec.FormaPago)
                {
                    ApplicationArea = ALl;
                }
            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;

    trigger OnClosePage()
    var
        myInt: Integer;
        crear: Codeunit CrearProveedor;
        tabla: Record Proveedor;
    begin
        crear.crearProveedor(Rec);
    end;
}