Register-ArgumentCompleter -CommandName wmic -Native -ScriptBlock {
    param ( $wordToComplete, $commandAst, $cursorPosition )

    wmic /?:BRIEF |
        Where-Object { $_ -cmatch '^([A-Z]{2}\S+)+' } |
        ForEach-Object { $matches[1] } |
        Where-Object {
            $_ -notin 'CLASS', 'PATH', 'CONTEXT', 'QUIT/EXIT' -and
            $_ -like "$wordToComplete*"
        }
}
