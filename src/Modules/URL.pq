
[

    Info = 
        [
            
            Name = "URL",
            DocumentType = "Library"

        ],






    Content = 
        {


            [   // URL.Combine
            
                Name = "URL.Combine",
                Type = "Function",
                Content = 
                    (
            
            
                        (
                            RootURL as text,
                            AppendPath as text
                        ) as text =>
                            Text.Combine({
                                RootURL,
                                AppendPath
                            },
                            "\")
                        
            
            
                    )
            ]


        }







]