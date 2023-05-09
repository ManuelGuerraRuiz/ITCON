codeunit 50407 Boton
{
    trigger OnRun()
    begin

    end;

    /// <summary>
    /// Boton para activar o desactivar el boton de modificar descripcion del trabajo
    /// </summary>
    /// <returns></returns>
    procedure Desc(): Boolean
    var
        BotonActivado: Record "Sales & Receivables Setup";
    begin
        if BotonActivado.Get() then
            exit(BotonActivado.Desc);
    end;

    var
        myInt: Integer;

}