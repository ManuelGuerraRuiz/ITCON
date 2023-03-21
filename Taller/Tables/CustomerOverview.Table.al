table 50162 "PTE Vista_general_del_cliente"
{
    DataClassification = CustomerContent;
    Caption = 'Vista general del cliente', Comment = 'Panoramica del cliente';

    fields
    {
        field(50161; NumeroMovimiento; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Numero de Movimientos', Comment = 'Numero di movimenti';
        }
        field(50162; NumeroCliente; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Numero de Clientes', Comment = 'Numero di clienti';
        }
        field(50163; NombreCliente; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nombres de Clientes', Comment = 'Nomi dei clienti';
        }
        field(50164; CodigoOrigen; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Codigo de Origen', Comment = 'Codice sorgente';
        }
        field(50165; Importe; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Importe', Comment = 'Quantità';
        }
        field(50166; LastRunDate; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Last Run Date', Comment = 'Data dell ultima esecuzione';
        }
    }

    keys
    {
        key(PK; NumeroMovimiento)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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