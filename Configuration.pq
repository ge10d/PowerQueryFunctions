// Configuration

let
    RootURL = "https://raw.githubusercontent.com/gmearnest91/PowerQueryFunctions/master/src",
    Errors = 
        [
            FileURL = Error.Record(
                "Issue with File URL",
                "Error Message",
                "Error Detail"
            ),

            Expression = Error.Record(
                "Issue with Expression",
                "Error Message",
                "Error Detail"
            )
        ],
    Source = try Text.FromBinary(Web.Contents(RootURL, [RelativePath="Portal.pq"])),
    RawGitContent = if Source[HasError] then error Errors[FileURL] else Source[Value],
    Environment = #shared,
    TryEvaluation = try Expression.Evaluate(RawGitContent, Environment),
    Evaluation = if TryEvaluation[HasError] = false
        then TryEvaluation[Value]
        else error Errors[Expression],
    DocumentInfo = Evaluation[Info],
    Content = if DocumentInfo[DocumentType] = "Library" then Table.FromRecords(Evaluation[Content]) else Evaluation[Content]
in
    Content