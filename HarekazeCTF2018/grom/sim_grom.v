`timescale 1 ps / 1 ps
module sim_grom;
  parameter STEP = 100;

  // generate clock
  reg clk;
  always begin
    clk = 1;
    #( STEP/2 );
    clk = 0;
    #( STEP/2 );
  end

  // connect grom module
  grom grom( .clk(clk), .fin(fin) );

  // start simulation
  initial begin
    // dump setting for vvp
    $dumpfile("sim_grom.vcd");
    $dumpvars(0,sim_grom);

    while(!fin) @( posedge clk );

    $finish;
  end

endmodule
