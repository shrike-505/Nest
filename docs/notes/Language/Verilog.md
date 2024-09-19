# HDLBits 题解

> Syntactically-correct code does not necessarily result in a reasonable circuit.

## Basics
### 7458 chip

```verilog
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    assign p1y=(p1a&p1b&p1c)|(p1d&p1f&p1e);
    assign p2y=(p2a&p2b)|(p2c&p2d);
endmodule
```
## Vectors
### Vector Part Select

```verilog
module top_module( 
    input [31:0] in,
    output [31:0] out );

    wire [7:0] a,b,c,d;
    assign {a,b,c,d} = in;
    assign out = {d,c,b,a};

endmodule

```

### Replication

```verilog
module top_module (
    input [7:0] in,
    output [31:0] out );//

    assign out = {{24{in[7]}},in};

endmodule
```

## Modules: Hierarchy
### Modules

```verilog
module top_module ( input a, input b, output out );
    mod_a tmp(.in1(a), .in2(b), .out(out));
endmodule
```

### Module Shift8

```verilog
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    logic [7:0] o1,o2,o3;
    my_dff8 t1(clk,d,o1);
    my_dff8 t2(clk,o1,o2);
    my_dff8 t3(clk,o2,o3);
    always_comb begin
        case(sel)
            2'd0: q=d;
            2'd1:q=o1;
            2'd2:q=o2;
            2'd3:q=o3;
        endcase
    end
endmodule
```
## Procedures
### Always Blocks(clocked)

```verilog
// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
	assign out_assign = a^b;
    always out_always_comb = a^b;
    always @(posedge clk) out_always_ff = a^b;
endmodule
```

## Circuits
### Combinational Logic
#### 9-1 Mux
```verilog
module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    always @(*) begin
        case(sel) 
            4'b0000: out = a;
            4'd1: out = b;
            4'd2: out = c;
            4'd3: out = d;
            4'd4: out = e;
            4'd5: out = f;
            4'd6:out = g;
            4'd7: out = h;
            4'd8: out = i;
            default: out = {16{1'b1}};
        endcase
    end
endmodule
```