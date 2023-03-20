page 50165 ArmstrongCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Carta de Armstrong';



    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }


    trigger OnOpenPage()
    var
        Counter1, Counter2, PowerNumber, Number, Result : Integer;
        CounterText: Text[5];
        ArmstrongNumbers: Text;
        ResultList: List of [Integer];
    begin
        for Counter1 := 1 to 10000 do begin
            CounterText := Format(Counter1);
            Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));
            for Counter2 := 1 to StrLen(CounterText) do begin
                Evaluate(Number, CopyStr(CounterText, Counter2, 1));
                Result += Power(Number, PowerNumber);
            end;

            if Result = Counter1 then
                ResultList.Add(Result);
            Clear(Result);
        end;

        foreach Counter1 in ResultList do
            ArmstrongNumbers += Format(Counter1) + '\';

        Message(ArmstrongNumbers);
    end;
}