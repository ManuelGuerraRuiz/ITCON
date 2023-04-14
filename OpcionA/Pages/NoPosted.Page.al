page 50405 NoPosted
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Almacen;
    Caption = 'No Posted';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(EntryNo; Rec.EntryNo)
                {
                    ApplicationArea = All;
                }
                field(DocumentNo; Rec.DocumentNo)
                {
                    ApplicationArea = All;
                }
                field(PostingDate; Rec.PostingDate)
                {
                    ApplicationArea = All;
                }
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(VariantCode; Rec.VariantCode)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                }

                field(Bin; Rec.Bin)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(UserID; Rec.UserID)
                {
                    ApplicationArea = All;
                }
                field(LotNo; Rec.LotNo)
                {
                    ApplicationArea = All;
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}