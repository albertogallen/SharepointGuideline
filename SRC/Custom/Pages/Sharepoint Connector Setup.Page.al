page 50000 "Sharepoint Connector Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Sharepoint Connector Setup";
    ModifyAllowed = true;
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(Setup)
            {
                field("Client ID"; Rec."Client ID")
                {
                    ApplicationArea = All;
                }
                field("Client Secret"; Rec."Client Secret")
                {
                    ApplicationArea = All;
                    ExtendedDatatype = Masked;
                }
                field("Sharepoint URL"; Rec."Sharepoint URL")
                {
                    ApplicationArea = All;
                }
                field("Document Library"; Rec."Document Library")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not Rec.Get() then
            Rec.Insert();

    end;
}