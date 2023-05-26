tableextension 50420 ElId extends Vendor
{
    fields
    {
        field(50420; codigo; Integer)
        {
            TableRelation = Proveedor;
        }
    }

    var
        myInt: Integer;
}