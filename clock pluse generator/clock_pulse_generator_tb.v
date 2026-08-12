`timescale 1ns/1ps

module clock_pulse_generator_tb;

    reg clk;
    reg reset;

    wire pulse;

    // Connect clock pulse generator
    clock_pulse_generator uut (
        .clk(clk),
        .reset(reset),
        .pulse(pulse)
    );

    // Generate clock
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("output.vcd");
        $dumpvars(0, clock_pulse_generator_tb);

        // Initial values
        clk = 0;
        reset = 1;

        #10;

        // Release reset
        reset = 0;

        // Run simulation
        #120;

        // Reset again
        reset = 1;
        #10;

        reset = 0;

        #40;

        $finish;

    end

endmodule