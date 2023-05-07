const std = @import("std");
const token = @import("token");
const lexer = @import("lexer");

const TokenType = token.TokenType;
const Token = token.Token;

pub fn main() !void {
    var t = Token{ .type = TokenType.COMMA, .char = "," };
    std.debug.print("token: {s}", .{t.char});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
