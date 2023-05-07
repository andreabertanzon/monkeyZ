const std = @import("std");
const token = @import("token");

const Token = token.Token;
const TokenType = token.TokenType;

test "trying token" {
    std.testing.refAllDecls(@This());
    _ = Token{ .type = TokenType.EOF, .char = "p" };

    // std.debug.print("IN TEST: {s}", .{tk.char});
    std.debug.print("I successfully run the test!!!", .{});
}

pub const Lexer = struct {
    input: []const u8,
    /// last position read.
    position: usize,
    /// current reading position.
    readPosition: usize,
    /// current character.
    ch: ?u8,

    pub fn new(input: []const u8) Lexer {
        return Lexer{ .input = input, .position = 0, .readPosition = 0, .ch = null };
    }

    pub fn readChar(self: *Lexer) void {
        if (self.readPosition >= self.input.len) {
            self.ch = null;
        } else {
            self.ch = self.input[self.readPosition];
        }

        self.position = self.readPosition; // current position is now the one we were just reading
        self.readPosition = self.readPosition + 1; // advance the reading position by one
    }

    // pub fn nextToken(self: Self) Token {

    // }
};
