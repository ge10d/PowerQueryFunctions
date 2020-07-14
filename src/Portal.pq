// Portal


let

    NewLibraryRecord = 
        (
            (
                RecordName as text,
                RecordType as text,
                RecordContent as any
            ) as record =>
                [
                    Name = RecordName,
                    Type = RecordType,
                    Content = RecordContent
                ]
        )



    ContentStart = {},
    AddLoadFileFromURL = 
        (

            let
                Types = 
                    [
                        

                        LoadFileFromURL.Type = 
                            (
                                type function(
                                
                                    
                                
                                )
                                as any meta [
                                        Documentation.Name = "Portal.LoadFileFromURL",
                                        Documentation.LongDescription = "Loads a PQ document stored in Github"
                                    ]
                            )
                    ],

                Errors = 
                    [

                    ],

                BaseFunction = 
                    (

                    ),

                SetType = Value.ReplaceType(BaseFunction, Types[LoadFileFromURL.Type]),

                GetRecord = NewLibraryRecord(
                    "Portal.LoadFileFromURL",
                    "Function",
                    SetType
                )

            in
                List.Combine({ContentStart, {GetRecord}})

        ),

    ContentFinal = AddLoadFileFromURL

in

    



[

    Info = 
        [
            
            Name = "Portal",
            DocumentType = "Library"

        ],
    Content = ContentFinal


]
