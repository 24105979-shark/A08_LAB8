
`timescale 1ns/1ps

module a08_wave_tb;

    reg  [7:0] data_in;
    wire [3:0] count_out;

    integer i;

    // DUT: doi ten module/port neu RTL cua ban khac
    a08_popcount8 dut (
        .a    (data_in),
        .ones (count_out)
    );

    initial begin
        $dumpfile("a08_wave.vcd");
        $dumpvars(0, a08_wave_tb);

        // Quet cac gia tri dai dien
        data_in = 8'h00; #50;
        data_in = 8'h01; #50;
        data_in = 8'h03; #50;
        data_in = 8'h07; #50;
        data_in = 8'h0F; #50;
        data_in = 8'h1F; #50;
        data_in = 8'h3F; #50;
        data_in = 8'h7F; #50;
        data_in = 8'hFF; #50;

        // Kiem tra tung bit
        for (i = 7; i >= 0; i = i - 1) begin
            data_in = (8'b1 << i);
            #50;
        end

        // Quet day du 256 dau vao
        for (i = 0; i < 256; i = i + 1) begin
            data_in = i[7:0];
            #10;
        end

        $finish;
    end

    // Kiem tra ket qua sau moi thay doi dau vao
    always @(data_in) begin
        #1;
        if (count_out !== $countones(data_in))
            $display("ERROR: input=%h output=%d expected=%d",
                     data_in, count_out, $countones(data_in));
    end

endmodule
