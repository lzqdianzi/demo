

//**************************************************************************************
// Module name :                                                                        
// Description :                                                                        
// Module uses : use for simulation and synthesization                                  
// By Designer : zequan_liu                                                             
// Dat changed :                                                                        
//**************************************************************************************
  
  module name # 
  (
   parameter aw = 32,
   parameter dw = 32 
  )
  (
   input  wire        clk,
   input  wire        rst_n,
  
   input  wire        i_a,
   input  wire [15:0] i_b,
  
   output reg         o_a,
   output wire [15:0] o_b 
  );
  
//**************************************************************************************
//                                                                                      
// region of declaration                                                                
//                                                                                      
//**************************************************************************************
  
  reg         register_a;
  reg  [15:0] register_b;
  
//**************************************************************************************
//                                                                                      
// region of logic                                                                      
//                                                                                      
//**************************************************************************************
  
  wire        register_a_in;
  wire [15:0] register_b_in;
  
//**************************************************************************************
//                                                                                      
// region of register                                                                   
//                                                                                      
//**************************************************************************************
  
  always @ (posedge clk)
  begin
    register_a   <= #1 register_a_in;
  end
  
  always @ (posedge clk or negedge rst_n)
  if(!rst_n)
  begin
    register_b   <= #1 16'h0;
  end
  else
  begin
    register_b   <= #1 register_b_in;
  end
  
  endmodule
  
//**************************************************************************************
//                                                                                      
//                                end of this module                                    
//                                                                                      
//**************************************************************************************

