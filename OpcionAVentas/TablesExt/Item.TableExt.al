tableextension 50403 FechaDisponible extends Item
{
    fields
    {
        field(50401; FechaDis; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50402; PedidosDis; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Line" where("No." = field("No."), "Posting Date" = field(FechaDis)));
            Editable = false;
        }
    }

    var
        myInt: Integer;
}