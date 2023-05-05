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
            CalcFormula = count("Sales Line" where(FechaDisponibleManuel = filter(<> 0D), Quantity = filter(<> 0), "No." = field("No."), "Document Type" = filter(Invoice)));
            Editable = false;
        }
    }

    var
        myInt: Integer;
}