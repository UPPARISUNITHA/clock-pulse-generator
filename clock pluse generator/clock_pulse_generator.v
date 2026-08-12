module clock_pulse_generator (
    input clk,
    input reset,
    output reg pulse
);

    reg [2:0] counter;

    always @(posedge clk) begin

        if (reset) begin
            counter <= 3'd0;
            pulse <= 1'b0;
        end

        else begin

            if (counter == 3'd4) begin
                counter <= 3'd0;
                pulse <= 1'b1;
            end

            else begin
                counter <= counter + 1;
                pulse <= 1'b0;
            end

        end

    end

endmodule