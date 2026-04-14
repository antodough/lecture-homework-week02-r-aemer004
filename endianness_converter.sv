// Put your code below

module endianness_converter(
    input logic clk,
    input logic [31:0] word,
    input logic endianness_in,
    input logic endianness_out,
    output logic [31:0] converted_word
);

always_ff @(posedge clk) begin
    if (endianness_in == endianness_out) begin
        converted_word <= word;
    end else begin
        converted_word <= {
            word[7:0],
            word[15:8],
            word[23:16],
            word[31:24]         // reveverse
        };
    end
end

endmodule