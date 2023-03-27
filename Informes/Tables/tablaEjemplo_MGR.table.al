table 50161 "PTE TablaEjemplo_MGR"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50161; Camp1; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }

        field(50162; Camp2; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Relacion clientes';
            TableRelation = Customer where("Country/Region Code" = const('ES'));
        }

        field(50163; Camp3; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(50164; Camp4; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                texto: Text;
                numero1, numero2, numero3 : Integer;
            begin
                texto := 'Hola holita';
                numero1 := 15;
                Camp3 := texto + '' + Format(numero1);
            end;
        }

        field(50165; Camp5; Text[200])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Camp1)
        {
            Clustered = true;
        }
    }

    var
        TextoGlobal: Label 'Esto es un texto Global';

    trigger OnInsert()
    var
        texto: Text;
    begin
        texto := 'Es un valor del trigger Insert';
        Camp5 := texto + ' ' + TextoGlobal;

    end;

    local procedure ProcedimientoLocal()
    var
        myInt: Integer;
    begin
        myInt := ProcedimientoGlobal()
    end;

    procedure ProcedimientoGlobal(): Integer
    var
        myInt: Integer;
    begin
        myInt := 9 + 4;
        exit(myInt);
    end;
}