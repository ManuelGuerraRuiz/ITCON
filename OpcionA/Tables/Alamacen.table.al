table 50401 Almacen
{
    DataClassification = ToBeClassified;

    fields
    {
        field(50400; EntryNo; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            AutoIncrement = true;

        }
        field(50401; DocumentNo; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(50402; PostingDate; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(50403; ItemNo; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item;

        }
        field(50404; VariantCode; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Item Variant";

        }
        field(50405; Description; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate()
            var
                myInt: Integer;
                Item: Record Item;
            begin

            end;

        }
        field(50406; Location; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Almacen;


        }
        field(50407; Bin; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;


        }
        field(50408; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;


        }
        field(50409; UserID; Code[50])
        {
            DataClassification = ToBeClassified;


        }
        field(50410; LotNo; Code[20])
        {
            DataClassification = ToBeClassified;


        }
        field(50411; Posted; Boolean)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; EntryNo)
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