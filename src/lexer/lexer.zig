const std = @import("std");
const token = @import("token");
//usingnamespace token;

test "trying token" {
    const tk = token.Token{ .type = token.TokenType.EOF, .char = "" };

    std.debug.print("{s}", .{tk.char});
}
