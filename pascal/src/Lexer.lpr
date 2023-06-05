program LexerProgram;
uses SysUtils, LexerUnit;

var
    lex: Lexer;
    Input: String;
    c: Char;
    line: string;
    tok: Token;
begin
    WriteLn('Enter your beautiful Monkey code:');

    repeat
      ReadLn(line);
      lex := Lexer.Create(line);

      repeat
            tok:= lex.GetNextToken();
            if tok.Token_Type <> Eof then
            begin
                 WriteLn('Type: ', TokenTypeToString(tok.Token_Type), ', Literal: ', tok.Literal);
            end;
      until tok.Token_Type = Eof;
    until 1 = 2;

    Input := '=+(){},;';
    lex := Lexer.Create(Input);
    for c in Input do
    begin
        with lex.GetNextToken() do
            WriteLn('Type: ', TokenTypeToString(Token_Type), ', Literal: ', Literal);
    end;
    with lex.GetNextToken() do
        WriteLn('Type: ', TokenTypeToString(Token_Type), ', Literal: ', Literal);
end.

