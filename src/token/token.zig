pub const TokenType = enum {
    ILLEGAL,
    EOF,
    IDENT,
    INT,
    ASSIGN,
    PLUS,
    COMMA,
    SEMICOLON,
    LPAREN,
    RPAREN,
    LBRACE,
    RBRACE,
    FUNCTION,
    LET,
};

pub const Token = struct {
    const Self = @This();

    type: TokenType,
    char: []u8,
};
