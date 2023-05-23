table 50420 Proveedor

{
    DataClassification = ToBeClassified;
    DataCaptionFields = codigo, Nombre;
    DrillDownPageId = ProveedorTeamMember;


    fields
    {
        field(50420; codigo; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;


        }

        field(50421; Nombre; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(50422; CodComprador; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
            Caption = 'Cod.Comprador';
        }

        field(50423; DNI; Text[20])
        {
            DataClassification = ToBeClassified;

        }

        field(50424; Dirección; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50425; CodigoPais; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cod.Pais/Region';
            TableRelation = "Country/Region";

        }
        field(50426; Poblacion; Text[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = IF (CodigoPais = CONST('')) "Post Code".City
            ELSE
            IF ("CodigoPais" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD(CodigoPais));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
            /* trigger OnLookup()
             var

             begin
                 Poblacion.Reset();
                 if Page.RunModal(Page::"Countries/Regions", Poblacion) = Action::LookupOK then
                     nose := Poblacion.City

             end;*/
            trigger OnValidate()
            var
                Postal: Record "Post Code";
            begin
                if CodigoPais = '' then
                    exit;
                Postal.SetFilter("Country/Region Code", '%1', CodigoPais);
                Postal.SetFilter(City, '%1', Poblacion);
                if Postal.FindFirst() then
                    Validate(CodigoPostal, Postal.Code);
            end;



        }
        field(50427; CodigoPostal; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Codigo Postal';
            TableRelation = IF ("CodigoPais" = CONST('')) "Post Code"
            ELSE
            IF ("CodigoPais" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("CodigoPais"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;





        }
        field(50428; Email; Text[80])
        {
            Caption = 'Correo electronico';
            DataClassification = ToBeClassified;
        }
        field(50429; telefono; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nº telefono';
        }
        field(50430; GrupoContable; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Grupo contable neg.gen.';
            TableRelation = "Gen. Business Posting Group";
        }
        field(50431; GrupoContableIVA; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Grupo contable IVA.';
            TableRelation = "VAT Business Posting Group";
        }
        field(50432; GrupoProveedor; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Grupo registro proveedor';
            TableRelation = "Vendor Posting Group";
        }
        field(50433; FormaPago; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cod. forma pago';
            TableRelation = "Payment Method";
        }
        field(50434; terminoPago; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cod.terminos pago.';
            TableRelation = "Payment Terms";
        }
        field(50435; Procesado; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(50436; CodigoContacto; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Codigo del contacto principal';
            TableRelation = Contact;

        }

        field(50437; Contacto; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }


    keys
    {
        key(PK; Codigo)
        {
            Clustered = true;
        }


    }


    var
        myInt: Integer;
        nose: Code[20];





    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}