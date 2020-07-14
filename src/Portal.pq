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
        ),


    AddLoadFileFromURL = 
        (

            let
                Types = 
                    [
                        
                        FileRelativePath.Type = type text meta [
                            Documentation.FieldCaption = "File Relative Path",
                            Documentation.FieldDescription = "File Relative Path"
                        ],
                        

                        LoadFileFromURL.Type = 
                            (
                                type function(
                                
                                    FileRelativePath as FileRelativePath.Type
                                
                                )
                                as any meta [
                                        Documentation.Name = "Portal.LoadFileFromURL",
                                        Documentation.LongDescription = "Loads a PQ document stored in Github"
                                    ]
                            )
                    ],

                Errors = 
                    [
                        FileURL = Error.Record(
                            "Issue with File URL",
                            "Issue with File URL",
                            "Issue with File URL"
                            ),
                        Expression = Error.Record(
                            "Issue with Expression",
                            "Issue with Expression",
                            "Issue with Expression"
                        )
                    ],

                BaseFunction = 
                    (
                        (
                            FileRelativePath as text
                        ) as any =>
                            FileRelativePath
                    ),

                SetType = Value.ReplaceType(BaseFunction, Types[LoadFileFromURL.Type]),

                GetRecord = NewLibraryRecord(
                    "Portal.LoadFileFromURL",
                    "Function",
                    SetType
                )

            in
                {GetRecord}

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
