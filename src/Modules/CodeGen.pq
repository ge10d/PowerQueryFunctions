
[

    Info = 
        [
            
            Name = "CodeGen",
            DocumentType = "Library"

        ],






    Content = 
        {


            [   // CodeGen.ParameterMetadata
            
                Name = "CodeGen.ParameterMetadata",
                Type = "Function",
                Content = 
                    (
            
            
                         (
                             ParameterName as text,
                             ParameterTypeName as text
                         ) as text =>

                            ParameterName & ParameterTypeName
                         
            
            
                    )
            ],

            [   // CodeGen.TestVar1
            
                Name = "CodeGen.TestVar1",
                Type = "Variable",
                Content = 
                    (
            
            
                         "hello world"
            
            
                    )
            ]


        }







]