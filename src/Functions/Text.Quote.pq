let

    Me.FullName = "",
    Me.Library = "",
    Me.Description = "",
    Me.Type = type function(
    
        
    
    )
    as any meta [
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