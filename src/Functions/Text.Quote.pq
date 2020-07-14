
let

    // Function Information

    Me.FullName = "Text.Quote",
    Me.Library = Text.BeforeDelimiter(Me.FullName, "."),
    Me.Description = "",

    // Type Definitions

    TextToEnclose.Type = 
        (
            type text meta [
                Documentation.FieldCaption = "Text to Enclose",
                Documentation.FieldDescription = "The text to enclose in quotes",
                Formatting.IsMultiLine = true,
                Formatting.IsCode = false
            ]
            
        ),

    Me.Type = 
        (
            type function(
            
                TextToEnclose as TextToEnclose.Type
            
            )
            as text meta [
                    Documentation.Name = Me.FullName,
                    Documentation.LongDescription = Me.Description,
                    Documentation.Examples = {
                        [
                            Description = "Example 1",
                            Code = Text.Combine({
                                    "Example 1 Code"
                                }, "#(lf)"),
                            Result = Text.Combine({
                                    "Example 1 Result"
                                }, "#(lf)")
                        ]
                    }
                ]
        ),

    // Error Definitions

    Error.Error1 = Error.Record(
            "Error 1 Reason",
            "Error 1 Message",
            "Error 1 Details"
        ),


    // Function

    Me.Base = 
        (
            (
                TextToEnclose as text
            )
            as text =>

            let

                Result = Character.FromNumber(34) & TextToEnclose & Character.FromNumber(34)
            
            in
                Result
        )

in
    [
        Name = Me.FullName,
        Library = Me.Library,
        Description = Me.Description,
        Function = Value.ReplaceType(Me.Base, Me.Type)
    ]