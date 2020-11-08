// Generator : SpinalHDL v1.4.0    git head : ecb5a80b713566f417ea3ea061f9969e73770a7f
// Date      : 31/10/2020, 19:41:08
// Component : Briey


`define SdramCtrlBackendTask_defaultEncoding_type [2:0]
`define SdramCtrlBackendTask_defaultEncoding_MODE 3'b000
`define SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL 3'b001
`define SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE 3'b010
`define SdramCtrlBackendTask_defaultEncoding_REFRESH 3'b011
`define SdramCtrlBackendTask_defaultEncoding_ACTIVE 3'b100
`define SdramCtrlBackendTask_defaultEncoding_READ 3'b101
`define SdramCtrlBackendTask_defaultEncoding_WRITE 3'b110

`define SdramCtrlFrontendState_defaultEncoding_type [1:0]
`define SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE 2'b00
`define SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH 2'b01
`define SdramCtrlFrontendState_defaultEncoding_BOOT_MODE 2'b10
`define SdramCtrlFrontendState_defaultEncoding_RUN 2'b11

`define Axi4ToApb3BridgePhase_defaultEncoding_type [1:0]
`define Axi4ToApb3BridgePhase_defaultEncoding_SETUP 2'b00
`define Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 2'b01
`define Axi4ToApb3BridgePhase_defaultEncoding_RESPONSE 2'b10

`define UartStopType_defaultEncoding_type [0:0]
`define UartStopType_defaultEncoding_ONE 1'b0
`define UartStopType_defaultEncoding_TWO 1'b1

`define UartParityType_defaultEncoding_type [1:0]
`define UartParityType_defaultEncoding_NONE 2'b00
`define UartParityType_defaultEncoding_EVEN 2'b01
`define UartParityType_defaultEncoding_ODD 2'b10

`define UartCtrlTxState_defaultEncoding_type [2:0]
`define UartCtrlTxState_defaultEncoding_IDLE 3'b000
`define UartCtrlTxState_defaultEncoding_START 3'b001
`define UartCtrlTxState_defaultEncoding_DATA 3'b010
`define UartCtrlTxState_defaultEncoding_PARITY 3'b011
`define UartCtrlTxState_defaultEncoding_STOP 3'b100

`define UartCtrlRxState_defaultEncoding_type [2:0]
`define UartCtrlRxState_defaultEncoding_IDLE 3'b000
`define UartCtrlRxState_defaultEncoding_START 3'b001
`define UartCtrlRxState_defaultEncoding_DATA 3'b010
`define UartCtrlRxState_defaultEncoding_PARITY 3'b011
`define UartCtrlRxState_defaultEncoding_STOP 3'b100

`define AluBitwiseCtrlEnum_defaultEncoding_type [1:0]
`define AluBitwiseCtrlEnum_defaultEncoding_XOR_1 2'b00
`define AluBitwiseCtrlEnum_defaultEncoding_OR_1 2'b01
`define AluBitwiseCtrlEnum_defaultEncoding_AND_1 2'b10

`define EnvCtrlEnum_defaultEncoding_type [0:0]
`define EnvCtrlEnum_defaultEncoding_NONE 1'b0
`define EnvCtrlEnum_defaultEncoding_XRET 1'b1

`define Src1CtrlEnum_defaultEncoding_type [1:0]
`define Src1CtrlEnum_defaultEncoding_RS 2'b00
`define Src1CtrlEnum_defaultEncoding_IMU 2'b01
`define Src1CtrlEnum_defaultEncoding_PC_INCREMENT 2'b10
`define Src1CtrlEnum_defaultEncoding_URS1 2'b11

`define ShiftCtrlEnum_defaultEncoding_type [1:0]
`define ShiftCtrlEnum_defaultEncoding_DISABLE_1 2'b00
`define ShiftCtrlEnum_defaultEncoding_SLL_1 2'b01
`define ShiftCtrlEnum_defaultEncoding_SRL_1 2'b10
`define ShiftCtrlEnum_defaultEncoding_SRA_1 2'b11

`define AluCtrlEnum_defaultEncoding_type [1:0]
`define AluCtrlEnum_defaultEncoding_ADD_SUB 2'b00
`define AluCtrlEnum_defaultEncoding_SLT_SLTU 2'b01
`define AluCtrlEnum_defaultEncoding_BITWISE 2'b10

`define BranchCtrlEnum_defaultEncoding_type [1:0]
`define BranchCtrlEnum_defaultEncoding_INC 2'b00
`define BranchCtrlEnum_defaultEncoding_B 2'b01
`define BranchCtrlEnum_defaultEncoding_JAL 2'b10
`define BranchCtrlEnum_defaultEncoding_JALR 2'b11

`define Src2CtrlEnum_defaultEncoding_type [1:0]
`define Src2CtrlEnum_defaultEncoding_RS 2'b00
`define Src2CtrlEnum_defaultEncoding_IMI 2'b01
`define Src2CtrlEnum_defaultEncoding_IMS 2'b10
`define Src2CtrlEnum_defaultEncoding_PC 2'b11

`define JtagState_defaultEncoding_type [3:0]
`define JtagState_defaultEncoding_RESET 4'b0000
`define JtagState_defaultEncoding_IDLE 4'b0001
`define JtagState_defaultEncoding_IR_SELECT 4'b0010
`define JtagState_defaultEncoding_IR_CAPTURE 4'b0011
`define JtagState_defaultEncoding_IR_SHIFT 4'b0100
`define JtagState_defaultEncoding_IR_EXIT1 4'b0101
`define JtagState_defaultEncoding_IR_PAUSE 4'b0110
`define JtagState_defaultEncoding_IR_EXIT2 4'b0111
`define JtagState_defaultEncoding_IR_UPDATE 4'b1000
`define JtagState_defaultEncoding_DR_SELECT 4'b1001
`define JtagState_defaultEncoding_DR_CAPTURE 4'b1010
`define JtagState_defaultEncoding_DR_SHIFT 4'b1011
`define JtagState_defaultEncoding_DR_EXIT1 4'b1100
`define JtagState_defaultEncoding_DR_PAUSE 4'b1101
`define JtagState_defaultEncoding_DR_EXIT2 4'b1110
`define JtagState_defaultEncoding_DR_UPDATE 4'b1111


module BufferCC (
  input               io_initial,
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      buffers_0 <= io_initial;
      buffers_1 <= io_initial;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_1_ (
  input      [9:0]    io_initial,
  input      [9:0]    io_dataIn,
  output     [9:0]    io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [9:0]    buffers_0;
  reg        [9:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      buffers_0 <= io_initial;
      buffers_1 <= io_initial;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_2_ (
  input      [9:0]    io_initial,
  input      [9:0]    io_dataIn,
  output     [9:0]    io_dataOut,
  input               io_vgaClk,
  input               resetCtrl_vgaReset 
);
  reg        [9:0]    buffers_0;
  reg        [9:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      buffers_0 <= io_initial;
      buffers_1 <= io_initial;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [15:0]   io_push_payload_data,
  input      [3:0]    io_push_payload_context_id,
  input               io_push_payload_context_last,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [15:0]   io_pop_payload_data,
  output reg [3:0]    io_pop_payload_context_id,
  output reg          io_pop_payload_context_last,
  input               io_flush,
  output     [1:0]    io_occupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [20:0]   _zz_4_;
  wire                _zz_5_;
  wire       [0:0]    _zz_6_;
  wire       [20:0]   _zz_7_;
  reg                 _zz_1_;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [0:0]    pushPtr_valueNext;
  reg        [0:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [0:0]    popPtr_valueNext;
  reg        [0:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [20:0]   _zz_2_;
  wire       [4:0]    _zz_3_;
  wire       [0:0]    ptrDif;
  reg [20:0] ram [0:1];

  assign _zz_5_ = (! empty);
  assign _zz_6_ = _zz_3_[4 : 4];
  assign _zz_7_ = {{io_push_payload_context_last,io_push_payload_context_id},io_push_payload_data};
  assign _zz_4_ = ram[popPtr_value];
  always @ (posedge io_axiClk) begin
    if(_zz_1_) begin
      ram[pushPtr_value] <= _zz_7_;
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if(pushing)begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == (1'b1));
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + pushPtr_willIncrement);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = (1'b0);
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == (1'b1));
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + popPtr_willIncrement);
    if(popPtr_willClear)begin
      popPtr_valueNext = (1'b0);
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if(_zz_5_)begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign _zz_2_ = _zz_4_;
  assign _zz_3_ = _zz_2_[20 : 16];
  always @ (*) begin
    if(_zz_5_)begin
      io_pop_payload_data = _zz_2_[15 : 0];
    end else begin
      io_pop_payload_data = io_push_payload_data;
    end
  end

  always @ (*) begin
    if(_zz_5_)begin
      io_pop_payload_context_id = _zz_3_[3 : 0];
    end else begin
      io_pop_payload_context_id = io_push_payload_context_id;
    end
  end

  always @ (*) begin
    if(_zz_5_)begin
      io_pop_payload_context_last = _zz_6_[0];
    end else begin
      io_pop_payload_context_last = io_push_payload_context_last;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pushPtr_value <= (1'b0);
      popPtr_value <= (1'b0);
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module UartCtrlTx (
  input      [2:0]    io_configFrame_dataLength,
  input      `UartStopType_defaultEncoding_type io_configFrame_stop,
  input      `UartParityType_defaultEncoding_type io_configFrame_parity,
  input               io_samplingTick,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  input               io_cts,
  output              io_txd,
  input               io_break,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_2_;
  wire       [0:0]    _zz_3_;
  wire       [2:0]    _zz_4_;
  wire       [0:0]    _zz_5_;
  wire       [2:0]    _zz_6_;
  reg                 clockDivider_counter_willIncrement;
  wire                clockDivider_counter_willClear;
  reg        [2:0]    clockDivider_counter_valueNext;
  reg        [2:0]    clockDivider_counter_value;
  wire                clockDivider_counter_willOverflowIfInc;
  wire                clockDivider_counter_willOverflow;
  reg        [2:0]    tickCounter_value;
  reg        `UartCtrlTxState_defaultEncoding_type stateMachine_state;
  reg                 stateMachine_parity;
  reg                 stateMachine_txd;
  reg                 _zz_1_;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_2_ = (tickCounter_value == io_configFrame_dataLength);
  assign _zz_3_ = clockDivider_counter_willIncrement;
  assign _zz_4_ = {2'd0, _zz_3_};
  assign _zz_5_ = ((io_configFrame_stop == `UartStopType_defaultEncoding_ONE) ? (1'b0) : (1'b1));
  assign _zz_6_ = {2'd0, _zz_5_};
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      `UartStopType_defaultEncoding_ONE : io_configFrame_stop_string = "ONE";
      `UartStopType_defaultEncoding_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      `UartParityType_defaultEncoding_NONE : io_configFrame_parity_string = "NONE";
      `UartParityType_defaultEncoding_EVEN : io_configFrame_parity_string = "EVEN";
      `UartParityType_defaultEncoding_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      `UartCtrlTxState_defaultEncoding_IDLE : stateMachine_state_string = "IDLE  ";
      `UartCtrlTxState_defaultEncoding_START : stateMachine_state_string = "START ";
      `UartCtrlTxState_defaultEncoding_DATA : stateMachine_state_string = "DATA  ";
      `UartCtrlTxState_defaultEncoding_PARITY : stateMachine_state_string = "PARITY";
      `UartCtrlTxState_defaultEncoding_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @ (*) begin
    clockDivider_counter_willIncrement = 1'b0;
    if(io_samplingTick)begin
      clockDivider_counter_willIncrement = 1'b1;
    end
  end

  assign clockDivider_counter_willClear = 1'b0;
  assign clockDivider_counter_willOverflowIfInc = (clockDivider_counter_value == (3'b111));
  assign clockDivider_counter_willOverflow = (clockDivider_counter_willOverflowIfInc && clockDivider_counter_willIncrement);
  always @ (*) begin
    clockDivider_counter_valueNext = (clockDivider_counter_value + _zz_4_);
    if(clockDivider_counter_willClear)begin
      clockDivider_counter_valueNext = (3'b000);
    end
  end

  always @ (*) begin
    stateMachine_txd = 1'b1;
    case(stateMachine_state)
      `UartCtrlTxState_defaultEncoding_IDLE : begin
      end
      `UartCtrlTxState_defaultEncoding_START : begin
        stateMachine_txd = 1'b0;
      end
      `UartCtrlTxState_defaultEncoding_DATA : begin
        stateMachine_txd = io_write_payload[tickCounter_value];
      end
      `UartCtrlTxState_defaultEncoding_PARITY : begin
        stateMachine_txd = stateMachine_parity;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_write_ready = io_break;
    case(stateMachine_state)
      `UartCtrlTxState_defaultEncoding_IDLE : begin
      end
      `UartCtrlTxState_defaultEncoding_START : begin
      end
      `UartCtrlTxState_defaultEncoding_DATA : begin
        if(clockDivider_counter_willOverflow)begin
          if(_zz_2_)begin
            io_write_ready = 1'b1;
          end
        end
      end
      `UartCtrlTxState_defaultEncoding_PARITY : begin
      end
      default : begin
      end
    endcase
  end

  assign io_txd = _zz_1_;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      clockDivider_counter_value <= (3'b000);
      stateMachine_state <= `UartCtrlTxState_defaultEncoding_IDLE;
      _zz_1_ <= 1'b1;
    end else begin
      clockDivider_counter_value <= clockDivider_counter_valueNext;
      case(stateMachine_state)
        `UartCtrlTxState_defaultEncoding_IDLE : begin
          if(((io_write_valid && (! io_cts)) && clockDivider_counter_willOverflow))begin
            stateMachine_state <= `UartCtrlTxState_defaultEncoding_START;
          end
        end
        `UartCtrlTxState_defaultEncoding_START : begin
          if(clockDivider_counter_willOverflow)begin
            stateMachine_state <= `UartCtrlTxState_defaultEncoding_DATA;
          end
        end
        `UartCtrlTxState_defaultEncoding_DATA : begin
          if(clockDivider_counter_willOverflow)begin
            if(_zz_2_)begin
              if((io_configFrame_parity == `UartParityType_defaultEncoding_NONE))begin
                stateMachine_state <= `UartCtrlTxState_defaultEncoding_STOP;
              end else begin
                stateMachine_state <= `UartCtrlTxState_defaultEncoding_PARITY;
              end
            end
          end
        end
        `UartCtrlTxState_defaultEncoding_PARITY : begin
          if(clockDivider_counter_willOverflow)begin
            stateMachine_state <= `UartCtrlTxState_defaultEncoding_STOP;
          end
        end
        default : begin
          if(clockDivider_counter_willOverflow)begin
            if((tickCounter_value == _zz_6_))begin
              stateMachine_state <= (io_write_valid ? `UartCtrlTxState_defaultEncoding_START : `UartCtrlTxState_defaultEncoding_IDLE);
            end
          end
        end
      endcase
      _zz_1_ <= (stateMachine_txd && (! io_break));
    end
  end

  always @ (posedge io_axiClk) begin
    if(clockDivider_counter_willOverflow)begin
      tickCounter_value <= (tickCounter_value + (3'b001));
    end
    if(clockDivider_counter_willOverflow)begin
      stateMachine_parity <= (stateMachine_parity ^ stateMachine_txd);
    end
    case(stateMachine_state)
      `UartCtrlTxState_defaultEncoding_IDLE : begin
      end
      `UartCtrlTxState_defaultEncoding_START : begin
        if(clockDivider_counter_willOverflow)begin
          stateMachine_parity <= (io_configFrame_parity == `UartParityType_defaultEncoding_ODD);
          tickCounter_value <= (3'b000);
        end
      end
      `UartCtrlTxState_defaultEncoding_DATA : begin
        if(clockDivider_counter_willOverflow)begin
          if(_zz_2_)begin
            tickCounter_value <= (3'b000);
          end
        end
      end
      `UartCtrlTxState_defaultEncoding_PARITY : begin
        if(clockDivider_counter_willOverflow)begin
          tickCounter_value <= (3'b000);
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module UartCtrlRx (
  input      [2:0]    io_configFrame_dataLength,
  input      `UartStopType_defaultEncoding_type io_configFrame_stop,
  input      `UartParityType_defaultEncoding_type io_configFrame_parity,
  input               io_samplingTick,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  input               io_rxd,
  output              io_rts,
  output reg          io_error,
  output              io_break,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_2_;
  wire                io_rxd_buffercc_io_dataOut;
  wire                _zz_3_;
  wire                _zz_4_;
  wire                _zz_5_;
  wire                _zz_6_;
  wire       [0:0]    _zz_7_;
  wire       [2:0]    _zz_8_;
  wire                _zz_9_;
  wire                _zz_10_;
  wire                _zz_11_;
  wire                _zz_12_;
  wire                _zz_13_;
  wire                _zz_14_;
  wire                _zz_15_;
  reg                 _zz_1_;
  wire                sampler_synchroniser;
  wire                sampler_samples_0;
  reg                 sampler_samples_1;
  reg                 sampler_samples_2;
  reg                 sampler_samples_3;
  reg                 sampler_samples_4;
  reg                 sampler_value;
  reg                 sampler_tick;
  reg        [2:0]    bitTimer_counter;
  reg                 bitTimer_tick;
  reg        [2:0]    bitCounter_value;
  reg        [6:0]    break_counter;
  wire                break_valid;
  reg        `UartCtrlRxState_defaultEncoding_type stateMachine_state;
  reg                 stateMachine_parity;
  reg        [7:0]    stateMachine_shifter;
  reg                 stateMachine_validReg;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_3_ = (stateMachine_parity == sampler_value);
  assign _zz_4_ = (! sampler_value);
  assign _zz_5_ = ((sampler_tick && (! sampler_value)) && (! break_valid));
  assign _zz_6_ = (bitCounter_value == io_configFrame_dataLength);
  assign _zz_7_ = ((io_configFrame_stop == `UartStopType_defaultEncoding_ONE) ? (1'b0) : (1'b1));
  assign _zz_8_ = {2'd0, _zz_7_};
  assign _zz_9_ = ((((1'b0 || ((_zz_14_ && sampler_samples_1) && sampler_samples_2)) || (((_zz_15_ && sampler_samples_0) && sampler_samples_1) && sampler_samples_3)) || (((1'b1 && sampler_samples_0) && sampler_samples_2) && sampler_samples_3)) || (((1'b1 && sampler_samples_1) && sampler_samples_2) && sampler_samples_3));
  assign _zz_10_ = (((1'b1 && sampler_samples_0) && sampler_samples_1) && sampler_samples_4);
  assign _zz_11_ = ((1'b1 && sampler_samples_0) && sampler_samples_2);
  assign _zz_12_ = (1'b1 && sampler_samples_1);
  assign _zz_13_ = 1'b1;
  assign _zz_14_ = (1'b1 && sampler_samples_0);
  assign _zz_15_ = 1'b1;
  BufferCC io_rxd_buffercc ( 
    .io_initial            (_zz_2_                      ), //i
    .io_dataIn             (io_rxd                      ), //i
    .io_dataOut            (io_rxd_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                   ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset          )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      `UartStopType_defaultEncoding_ONE : io_configFrame_stop_string = "ONE";
      `UartStopType_defaultEncoding_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      `UartParityType_defaultEncoding_NONE : io_configFrame_parity_string = "NONE";
      `UartParityType_defaultEncoding_EVEN : io_configFrame_parity_string = "EVEN";
      `UartParityType_defaultEncoding_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      `UartCtrlRxState_defaultEncoding_IDLE : stateMachine_state_string = "IDLE  ";
      `UartCtrlRxState_defaultEncoding_START : stateMachine_state_string = "START ";
      `UartCtrlRxState_defaultEncoding_DATA : stateMachine_state_string = "DATA  ";
      `UartCtrlRxState_defaultEncoding_PARITY : stateMachine_state_string = "PARITY";
      `UartCtrlRxState_defaultEncoding_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @ (*) begin
    io_error = 1'b0;
    case(stateMachine_state)
      `UartCtrlRxState_defaultEncoding_IDLE : begin
      end
      `UartCtrlRxState_defaultEncoding_START : begin
      end
      `UartCtrlRxState_defaultEncoding_DATA : begin
      end
      `UartCtrlRxState_defaultEncoding_PARITY : begin
        if(bitTimer_tick)begin
          if(! _zz_3_) begin
            io_error = 1'b1;
          end
        end
      end
      default : begin
        if(bitTimer_tick)begin
          if(_zz_4_)begin
            io_error = 1'b1;
          end
        end
      end
    endcase
  end

  assign io_rts = _zz_1_;
  assign _zz_2_ = 1'b0;
  assign sampler_synchroniser = io_rxd_buffercc_io_dataOut;
  assign sampler_samples_0 = sampler_synchroniser;
  always @ (*) begin
    bitTimer_tick = 1'b0;
    if(sampler_tick)begin
      if((bitTimer_counter == (3'b000)))begin
        bitTimer_tick = 1'b1;
      end
    end
  end

  assign break_valid = (break_counter == 7'h68);
  assign io_break = break_valid;
  assign io_read_valid = stateMachine_validReg;
  assign io_read_payload = stateMachine_shifter;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1_ <= 1'b0;
      sampler_samples_1 <= 1'b1;
      sampler_samples_2 <= 1'b1;
      sampler_samples_3 <= 1'b1;
      sampler_samples_4 <= 1'b1;
      sampler_value <= 1'b1;
      sampler_tick <= 1'b0;
      break_counter <= 7'h0;
      stateMachine_state <= `UartCtrlRxState_defaultEncoding_IDLE;
      stateMachine_validReg <= 1'b0;
    end else begin
      _zz_1_ <= (! io_read_ready);
      if(io_samplingTick)begin
        sampler_samples_1 <= sampler_samples_0;
      end
      if(io_samplingTick)begin
        sampler_samples_2 <= sampler_samples_1;
      end
      if(io_samplingTick)begin
        sampler_samples_3 <= sampler_samples_2;
      end
      if(io_samplingTick)begin
        sampler_samples_4 <= sampler_samples_3;
      end
      sampler_value <= ((((((_zz_9_ || _zz_10_) || (_zz_11_ && sampler_samples_4)) || ((_zz_12_ && sampler_samples_2) && sampler_samples_4)) || (((_zz_13_ && sampler_samples_0) && sampler_samples_3) && sampler_samples_4)) || (((1'b1 && sampler_samples_1) && sampler_samples_3) && sampler_samples_4)) || (((1'b1 && sampler_samples_2) && sampler_samples_3) && sampler_samples_4));
      sampler_tick <= io_samplingTick;
      if(sampler_value)begin
        break_counter <= 7'h0;
      end else begin
        if((io_samplingTick && (! break_valid)))begin
          break_counter <= (break_counter + 7'h01);
        end
      end
      stateMachine_validReg <= 1'b0;
      case(stateMachine_state)
        `UartCtrlRxState_defaultEncoding_IDLE : begin
          if(_zz_5_)begin
            stateMachine_state <= `UartCtrlRxState_defaultEncoding_START;
          end
        end
        `UartCtrlRxState_defaultEncoding_START : begin
          if(bitTimer_tick)begin
            stateMachine_state <= `UartCtrlRxState_defaultEncoding_DATA;
            if((sampler_value == 1'b1))begin
              stateMachine_state <= `UartCtrlRxState_defaultEncoding_IDLE;
            end
          end
        end
        `UartCtrlRxState_defaultEncoding_DATA : begin
          if(bitTimer_tick)begin
            if(_zz_6_)begin
              if((io_configFrame_parity == `UartParityType_defaultEncoding_NONE))begin
                stateMachine_state <= `UartCtrlRxState_defaultEncoding_STOP;
                stateMachine_validReg <= 1'b1;
              end else begin
                stateMachine_state <= `UartCtrlRxState_defaultEncoding_PARITY;
              end
            end
          end
        end
        `UartCtrlRxState_defaultEncoding_PARITY : begin
          if(bitTimer_tick)begin
            if(_zz_3_)begin
              stateMachine_state <= `UartCtrlRxState_defaultEncoding_STOP;
              stateMachine_validReg <= 1'b1;
            end else begin
              stateMachine_state <= `UartCtrlRxState_defaultEncoding_IDLE;
            end
          end
        end
        default : begin
          if(bitTimer_tick)begin
            if(_zz_4_)begin
              stateMachine_state <= `UartCtrlRxState_defaultEncoding_IDLE;
            end else begin
              if((bitCounter_value == _zz_8_))begin
                stateMachine_state <= `UartCtrlRxState_defaultEncoding_IDLE;
              end
            end
          end
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    if(sampler_tick)begin
      bitTimer_counter <= (bitTimer_counter - (3'b001));
    end
    if(bitTimer_tick)begin
      bitCounter_value <= (bitCounter_value + (3'b001));
    end
    if(bitTimer_tick)begin
      stateMachine_parity <= (stateMachine_parity ^ sampler_value);
    end
    case(stateMachine_state)
      `UartCtrlRxState_defaultEncoding_IDLE : begin
        if(_zz_5_)begin
          bitTimer_counter <= (3'b010);
        end
      end
      `UartCtrlRxState_defaultEncoding_START : begin
        if(bitTimer_tick)begin
          bitCounter_value <= (3'b000);
          stateMachine_parity <= (io_configFrame_parity == `UartParityType_defaultEncoding_ODD);
        end
      end
      `UartCtrlRxState_defaultEncoding_DATA : begin
        if(bitTimer_tick)begin
          stateMachine_shifter[bitCounter_value] <= sampler_value;
          if(_zz_6_)begin
            bitCounter_value <= (3'b000);
          end
        end
      end
      `UartCtrlRxState_defaultEncoding_PARITY : begin
        if(bitTimer_tick)begin
          bitCounter_value <= (3'b000);
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module StreamFifoCC (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_last,
  input      [31:0]   io_push_payload_fragment,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload_last,
  output     [31:0]   io_pop_payload_fragment,
  output     [9:0]    io_pushOccupancy,
  output     [9:0]    io_popOccupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               io_vgaClk,
  input               resetCtrl_vgaReset 
);
  wire       [9:0]    _zz_22_;
  wire       [9:0]    _zz_23_;
  reg        [32:0]   _zz_24_;
  wire       [9:0]    popToPushGray_buffercc_io_dataOut;
  wire       [9:0]    pushToPopGray_buffercc_io_dataOut;
  wire                _zz_25_;
  wire       [9:0]    _zz_26_;
  wire       [8:0]    _zz_27_;
  wire       [9:0]    _zz_28_;
  wire       [8:0]    _zz_29_;
  wire       [0:0]    _zz_30_;
  wire       [32:0]   _zz_31_;
  wire                _zz_32_;
  wire                _zz_33_;
  wire                _zz_34_;
  reg                 _zz_1_;
  wire       [9:0]    popToPushGray;
  wire       [9:0]    pushToPopGray;
  reg        [9:0]    pushCC_pushPtr;
  wire       [9:0]    pushCC_pushPtrPlus;
  reg        [9:0]    pushCC_pushPtrGray;
  wire       [9:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_2_;
  wire                _zz_3_;
  wire                _zz_4_;
  wire                _zz_5_;
  wire                _zz_6_;
  wire                _zz_7_;
  wire                _zz_8_;
  wire                _zz_9_;
  wire                _zz_10_;
  reg        [9:0]    popCC_popPtr;
  wire       [9:0]    popCC_popPtrPlus;
  reg        [9:0]    popCC_popPtrGray;
  wire       [9:0]    popCC_pushPtrGray;
  wire                popCC_empty;
  wire       [9:0]    _zz_11_;
  wire       [32:0]   _zz_12_;
  wire                _zz_13_;
  wire                _zz_14_;
  wire                _zz_15_;
  wire                _zz_16_;
  wire                _zz_17_;
  wire                _zz_18_;
  wire                _zz_19_;
  wire                _zz_20_;
  wire                _zz_21_;
  reg [32:0] ram [0:511];

  assign _zz_25_ = (io_push_valid && io_push_ready);
  assign _zz_26_ = (pushCC_pushPtrPlus >>> (1'b1));
  assign _zz_27_ = pushCC_pushPtr[8:0];
  assign _zz_28_ = (popCC_popPtrPlus >>> (1'b1));
  assign _zz_29_ = _zz_11_[8:0];
  assign _zz_30_ = _zz_12_[0 : 0];
  assign _zz_31_ = {io_push_payload_fragment,io_push_payload_last};
  assign _zz_32_ = 1'b1;
  assign _zz_33_ = pushCC_popPtrGray[0];
  assign _zz_34_ = (popCC_pushPtrGray[0] ^ _zz_13_);
  always @ (posedge io_axiClk) begin
    if(_zz_1_) begin
      ram[_zz_27_] <= _zz_31_;
    end
  end

  always @ (posedge io_vgaClk) begin
    if(_zz_32_) begin
      _zz_24_ <= ram[_zz_29_];
    end
  end

  BufferCC_1_ popToPushGray_buffercc ( 
    .io_initial            (_zz_22_[9:0]                            ), //i
    .io_dataIn             (popToPushGray[9:0]                      ), //i
    .io_dataOut            (popToPushGray_buffercc_io_dataOut[9:0]  ), //o
    .io_axiClk             (io_axiClk                               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                      )  //i
  );
  BufferCC_2_ pushToPopGray_buffercc ( 
    .io_initial            (_zz_23_[9:0]                            ), //i
    .io_dataIn             (pushToPopGray[9:0]                      ), //i
    .io_dataOut            (pushToPopGray_buffercc_io_dataOut[9:0]  ), //o
    .io_vgaClk             (io_vgaClk                               ), //i
    .resetCtrl_vgaReset    (resetCtrl_vgaReset                      )  //i
  );
  always @ (*) begin
    _zz_1_ = 1'b0;
    if(_zz_25_)begin
      _zz_1_ = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 10'h001);
  assign _zz_22_ = 10'h0;
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[9 : 8] == (~ pushCC_popPtrGray[9 : 8])) && (pushCC_pushPtrGray[7 : 0] == pushCC_popPtrGray[7 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign _zz_2_ = (pushCC_popPtrGray[1] ^ _zz_3_);
  assign _zz_3_ = (pushCC_popPtrGray[2] ^ _zz_4_);
  assign _zz_4_ = (pushCC_popPtrGray[3] ^ _zz_5_);
  assign _zz_5_ = (pushCC_popPtrGray[4] ^ _zz_6_);
  assign _zz_6_ = (pushCC_popPtrGray[5] ^ _zz_7_);
  assign _zz_7_ = (pushCC_popPtrGray[6] ^ _zz_8_);
  assign _zz_8_ = (pushCC_popPtrGray[7] ^ _zz_9_);
  assign _zz_9_ = (pushCC_popPtrGray[8] ^ _zz_10_);
  assign _zz_10_ = pushCC_popPtrGray[9];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_10_,{_zz_9_,{_zz_8_,{_zz_7_,{_zz_6_,{_zz_5_,{_zz_4_,{_zz_3_,{_zz_2_,(_zz_33_ ^ _zz_2_)}}}}}}}}});
  assign popCC_popPtrPlus = (popCC_popPtr + 10'h001);
  assign _zz_23_ = 10'h0;
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign io_pop_valid = (! popCC_empty);
  assign _zz_11_ = ((io_pop_valid && io_pop_ready) ? popCC_popPtrPlus : popCC_popPtr);
  assign _zz_12_ = _zz_24_;
  assign io_pop_payload_last = _zz_30_[0];
  assign io_pop_payload_fragment = _zz_12_[32 : 1];
  assign _zz_13_ = (popCC_pushPtrGray[1] ^ _zz_14_);
  assign _zz_14_ = (popCC_pushPtrGray[2] ^ _zz_15_);
  assign _zz_15_ = (popCC_pushPtrGray[3] ^ _zz_16_);
  assign _zz_16_ = (popCC_pushPtrGray[4] ^ _zz_17_);
  assign _zz_17_ = (popCC_pushPtrGray[5] ^ _zz_18_);
  assign _zz_18_ = (popCC_pushPtrGray[6] ^ _zz_19_);
  assign _zz_19_ = (popCC_pushPtrGray[7] ^ _zz_20_);
  assign _zz_20_ = (popCC_pushPtrGray[8] ^ _zz_21_);
  assign _zz_21_ = popCC_pushPtrGray[9];
  assign io_popOccupancy = ({_zz_21_,{_zz_20_,{_zz_19_,{_zz_18_,{_zz_17_,{_zz_16_,{_zz_15_,{_zz_14_,{_zz_13_,_zz_34_}}}}}}}}} - popCC_popPtr);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_popPtrGray;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pushCC_pushPtr <= 10'h0;
      pushCC_pushPtrGray <= 10'h0;
    end else begin
      if((io_push_valid && io_push_ready))begin
        pushCC_pushPtrGray <= (_zz_26_ ^ pushCC_pushPtrPlus);
      end
      if(_zz_25_)begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      popCC_popPtr <= 10'h0;
      popCC_popPtrGray <= 10'h0;
    end else begin
      if((io_pop_valid && io_pop_ready))begin
        popCC_popPtrGray <= (_zz_28_ ^ popCC_popPtrPlus);
      end
      if((io_pop_valid && io_pop_ready))begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
    end
  end


endmodule

module BufferCC_3_ (
  input      [6:0]    io_dataIn,
  output     [6:0]    io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [6:0]    buffers_0;
  reg        [6:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule
//BufferCC_4_ replaced by BufferCC

module BufferCC_5_ (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_systemReset 
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module SdramCtrl (
  input               io_bus_cmd_valid,
  output reg          io_bus_cmd_ready,
  input      [24:0]   io_bus_cmd_payload_address,
  input               io_bus_cmd_payload_write,
  input      [15:0]   io_bus_cmd_payload_data,
  input      [1:0]    io_bus_cmd_payload_mask,
  input      [3:0]    io_bus_cmd_payload_context_id,
  input               io_bus_cmd_payload_context_last,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output     [15:0]   io_bus_rsp_payload_data,
  output     [3:0]    io_bus_rsp_payload_context_id,
  output              io_bus_rsp_payload_context_last,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_18_;
  reg                 _zz_19_;
  reg        [12:0]   _zz_20_;
  reg                 _zz_21_;
  reg                 _zz_22_;
  wire                chip_backupIn_fifo_io_push_ready;
  wire                chip_backupIn_fifo_io_pop_valid;
  wire       [15:0]   chip_backupIn_fifo_io_pop_payload_data;
  wire       [3:0]    chip_backupIn_fifo_io_pop_payload_context_id;
  wire                chip_backupIn_fifo_io_pop_payload_context_last;
  wire       [1:0]    chip_backupIn_fifo_io_occupancy;
  wire                _zz_23_;
  wire                _zz_24_;
  wire                _zz_25_;
  wire       [0:0]    _zz_26_;
  wire       [8:0]    _zz_27_;
  wire       [0:0]    _zz_28_;
  wire       [2:0]    _zz_29_;
  wire                refresh_counter_willIncrement;
  wire                refresh_counter_willClear;
  reg        [8:0]    refresh_counter_valueNext;
  reg        [8:0]    refresh_counter_value;
  wire                refresh_counter_willOverflowIfInc;
  wire                refresh_counter_willOverflow;
  reg                 refresh_pending;
  reg        [12:0]   powerup_counter;
  reg                 powerup_done;
  wire       [12:0]   _zz_1_;
  reg                 frontend_banks_0_active;
  reg        [12:0]   frontend_banks_0_row;
  reg                 frontend_banks_1_active;
  reg        [12:0]   frontend_banks_1_row;
  reg                 frontend_banks_2_active;
  reg        [12:0]   frontend_banks_2_row;
  reg                 frontend_banks_3_active;
  reg        [12:0]   frontend_banks_3_row;
  wire       [9:0]    frontend_address_column;
  wire       [1:0]    frontend_address_bank;
  wire       [12:0]   frontend_address_row;
  wire       [24:0]   _zz_2_;
  reg                 frontend_rsp_valid;
  wire                frontend_rsp_ready;
  reg        `SdramCtrlBackendTask_defaultEncoding_type frontend_rsp_payload_task;
  wire       [1:0]    frontend_rsp_payload_bank;
  reg        [12:0]   frontend_rsp_payload_rowColumn;
  wire       [15:0]   frontend_rsp_payload_data;
  wire       [1:0]    frontend_rsp_payload_mask;
  wire       [3:0]    frontend_rsp_payload_context_id;
  wire                frontend_rsp_payload_context_last;
  reg        `SdramCtrlFrontendState_defaultEncoding_type frontend_state;
  reg                 frontend_bootRefreshCounter_willIncrement;
  wire                frontend_bootRefreshCounter_willClear;
  reg        [2:0]    frontend_bootRefreshCounter_valueNext;
  reg        [2:0]    frontend_bootRefreshCounter_value;
  wire                frontend_bootRefreshCounter_willOverflowIfInc;
  wire                frontend_bootRefreshCounter_willOverflow;
  wire                _zz_3_;
  wire       [3:0]    _zz_4_;
  wire                _zz_5_;
  wire                _zz_6_;
  wire                _zz_7_;
  wire                _zz_8_;
  wire                bubbleInserter_cmd_valid;
  wire                bubbleInserter_cmd_ready;
  wire       `SdramCtrlBackendTask_defaultEncoding_type bubbleInserter_cmd_payload_task;
  wire       [1:0]    bubbleInserter_cmd_payload_bank;
  wire       [12:0]   bubbleInserter_cmd_payload_rowColumn;
  wire       [15:0]   bubbleInserter_cmd_payload_data;
  wire       [1:0]    bubbleInserter_cmd_payload_mask;
  wire       [3:0]    bubbleInserter_cmd_payload_context_id;
  wire                bubbleInserter_cmd_payload_context_last;
  reg                 frontend_rsp_m2sPipe_rValid;
  reg        `SdramCtrlBackendTask_defaultEncoding_type frontend_rsp_m2sPipe_rData_task;
  reg        [1:0]    frontend_rsp_m2sPipe_rData_bank;
  reg        [12:0]   frontend_rsp_m2sPipe_rData_rowColumn;
  reg        [15:0]   frontend_rsp_m2sPipe_rData_data;
  reg        [1:0]    frontend_rsp_m2sPipe_rData_mask;
  reg        [3:0]    frontend_rsp_m2sPipe_rData_context_id;
  reg                 frontend_rsp_m2sPipe_rData_context_last;
  wire                bubbleInserter_rsp_valid;
  wire                bubbleInserter_rsp_ready;
  wire       `SdramCtrlBackendTask_defaultEncoding_type bubbleInserter_rsp_payload_task;
  wire       [1:0]    bubbleInserter_rsp_payload_bank;
  wire       [12:0]   bubbleInserter_rsp_payload_rowColumn;
  wire       [15:0]   bubbleInserter_rsp_payload_data;
  wire       [1:0]    bubbleInserter_rsp_payload_mask;
  wire       [3:0]    bubbleInserter_rsp_payload_context_id;
  wire                bubbleInserter_rsp_payload_context_last;
  reg                 bubbleInserter_insertBubble;
  wire                _zz_9_;
  wire       `SdramCtrlBackendTask_defaultEncoding_type _zz_10_;
  wire                bubbleInserter_timings_read_busy;
  reg        [2:0]    bubbleInserter_timings_write_counter;
  wire                bubbleInserter_timings_write_busy;
  reg        [1:0]    bubbleInserter_timings_banks_0_precharge_counter;
  wire                bubbleInserter_timings_banks_0_precharge_busy;
  reg        [1:0]    bubbleInserter_timings_banks_0_active_counter;
  wire                bubbleInserter_timings_banks_0_active_busy;
  reg        [1:0]    bubbleInserter_timings_banks_1_precharge_counter;
  wire                bubbleInserter_timings_banks_1_precharge_busy;
  reg        [1:0]    bubbleInserter_timings_banks_1_active_counter;
  wire                bubbleInserter_timings_banks_1_active_busy;
  reg        [1:0]    bubbleInserter_timings_banks_2_precharge_counter;
  wire                bubbleInserter_timings_banks_2_precharge_busy;
  reg        [1:0]    bubbleInserter_timings_banks_2_active_counter;
  wire                bubbleInserter_timings_banks_2_active_busy;
  reg        [1:0]    bubbleInserter_timings_banks_3_precharge_counter;
  wire                bubbleInserter_timings_banks_3_precharge_busy;
  reg        [1:0]    bubbleInserter_timings_banks_3_active_counter;
  wire                bubbleInserter_timings_banks_3_active_busy;
  wire                chip_cmd_valid;
  wire                chip_cmd_ready;
  wire       `SdramCtrlBackendTask_defaultEncoding_type chip_cmd_payload_task;
  wire       [1:0]    chip_cmd_payload_bank;
  wire       [12:0]   chip_cmd_payload_rowColumn;
  wire       [15:0]   chip_cmd_payload_data;
  wire       [1:0]    chip_cmd_payload_mask;
  wire       [3:0]    chip_cmd_payload_context_id;
  wire                chip_cmd_payload_context_last;
  reg        [12:0]   chip_sdram_ADDR;
  reg        [1:0]    chip_sdram_BA;
  reg        [15:0]   chip_sdram_DQ_read;
  reg        [15:0]   chip_sdram_DQ_write;
  reg        [15:0]   chip_sdram_DQ_writeEnable;
  reg        [1:0]    chip_sdram_DQM;
  reg                 chip_sdram_CASn;
  reg                 chip_sdram_CKE;
  reg                 chip_sdram_CSn;
  reg                 chip_sdram_RASn;
  reg                 chip_sdram_WEn;
  wire                chip_remoteCke;
  wire                chip_readHistory_0;
  wire                chip_readHistory_1;
  wire                chip_readHistory_2;
  wire                chip_readHistory_3;
  wire                chip_readHistory_4;
  wire                chip_readHistory_5;
  wire                _zz_11_;
  reg                 _zz_12_;
  reg                 _zz_13_;
  reg                 _zz_14_;
  reg                 _zz_15_;
  reg                 _zz_16_;
  reg        [3:0]    chip_cmd_payload_context_delay_1_id;
  reg                 chip_cmd_payload_context_delay_1_last;
  reg        [3:0]    chip_cmd_payload_context_delay_2_id;
  reg                 chip_cmd_payload_context_delay_2_last;
  reg        [3:0]    chip_cmd_payload_context_delay_3_id;
  reg                 chip_cmd_payload_context_delay_3_last;
  reg        [3:0]    chip_cmd_payload_context_delay_4_id;
  reg                 chip_cmd_payload_context_delay_4_last;
  reg        [3:0]    chip_contextDelayed_id;
  reg                 chip_contextDelayed_last;
  wire                chip_sdramCkeNext;
  reg                 chip_sdramCkeInternal;
  reg                 chip_sdramCkeInternal_regNext;
  wire                _zz_17_;
  wire                chip_backupIn_valid;
  wire                chip_backupIn_ready;
  wire       [15:0]   chip_backupIn_payload_data;
  wire       [3:0]    chip_backupIn_payload_context_id;
  wire                chip_backupIn_payload_context_last;
  `ifndef SYNTHESIS
  reg [127:0] frontend_rsp_payload_task_string;
  reg [111:0] frontend_state_string;
  reg [127:0] bubbleInserter_cmd_payload_task_string;
  reg [127:0] frontend_rsp_m2sPipe_rData_task_string;
  reg [127:0] bubbleInserter_rsp_payload_task_string;
  reg [127:0] _zz_10__string;
  reg [127:0] chip_cmd_payload_task_string;
  `endif


  assign _zz_23_ = (((frontend_banks_0_active || frontend_banks_1_active) || frontend_banks_2_active) || frontend_banks_3_active);
  assign _zz_24_ = (_zz_3_ && (_zz_20_ != frontend_address_row));
  assign _zz_25_ = (! _zz_3_);
  assign _zz_26_ = refresh_counter_willIncrement;
  assign _zz_27_ = {8'd0, _zz_26_};
  assign _zz_28_ = frontend_bootRefreshCounter_willIncrement;
  assign _zz_29_ = {2'd0, _zz_28_};
  StreamFifoLowLatency chip_backupIn_fifo ( 
    .io_push_valid                   (chip_backupIn_valid                                ), //i
    .io_push_ready                   (chip_backupIn_fifo_io_push_ready                   ), //o
    .io_push_payload_data            (chip_backupIn_payload_data[15:0]                   ), //i
    .io_push_payload_context_id      (chip_backupIn_payload_context_id[3:0]              ), //i
    .io_push_payload_context_last    (chip_backupIn_payload_context_last                 ), //i
    .io_pop_valid                    (chip_backupIn_fifo_io_pop_valid                    ), //o
    .io_pop_ready                    (io_bus_rsp_ready                                   ), //i
    .io_pop_payload_data             (chip_backupIn_fifo_io_pop_payload_data[15:0]       ), //o
    .io_pop_payload_context_id       (chip_backupIn_fifo_io_pop_payload_context_id[3:0]  ), //o
    .io_pop_payload_context_last     (chip_backupIn_fifo_io_pop_payload_context_last     ), //o
    .io_flush                        (_zz_18_                                            ), //i
    .io_occupancy                    (chip_backupIn_fifo_io_occupancy[1:0]               ), //o
    .io_axiClk                       (io_axiClk                                          ), //i
    .resetCtrl_axiReset              (resetCtrl_axiReset                                 )  //i
  );
  always @(*) begin
    case(frontend_address_bank)
      2'b00 : begin
        _zz_19_ = frontend_banks_0_active;
        _zz_20_ = frontend_banks_0_row;
      end
      2'b01 : begin
        _zz_19_ = frontend_banks_1_active;
        _zz_20_ = frontend_banks_1_row;
      end
      2'b10 : begin
        _zz_19_ = frontend_banks_2_active;
        _zz_20_ = frontend_banks_2_row;
      end
      default : begin
        _zz_19_ = frontend_banks_3_active;
        _zz_20_ = frontend_banks_3_row;
      end
    endcase
  end

  always @(*) begin
    case(bubbleInserter_cmd_payload_bank)
      2'b00 : begin
        _zz_21_ = bubbleInserter_timings_banks_0_precharge_busy;
        _zz_22_ = bubbleInserter_timings_banks_0_active_busy;
      end
      2'b01 : begin
        _zz_21_ = bubbleInserter_timings_banks_1_precharge_busy;
        _zz_22_ = bubbleInserter_timings_banks_1_active_busy;
      end
      2'b10 : begin
        _zz_21_ = bubbleInserter_timings_banks_2_precharge_busy;
        _zz_22_ = bubbleInserter_timings_banks_2_active_busy;
      end
      default : begin
        _zz_21_ = bubbleInserter_timings_banks_3_precharge_busy;
        _zz_22_ = bubbleInserter_timings_banks_3_active_busy;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(frontend_rsp_payload_task)
      `SdramCtrlBackendTask_defaultEncoding_MODE : frontend_rsp_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : frontend_rsp_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : frontend_rsp_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_defaultEncoding_REFRESH : frontend_rsp_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_defaultEncoding_ACTIVE : frontend_rsp_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_defaultEncoding_READ : frontend_rsp_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_defaultEncoding_WRITE : frontend_rsp_payload_task_string = "WRITE           ";
      default : frontend_rsp_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(frontend_state)
      `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : frontend_state_string = "BOOT_PRECHARGE";
      `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : frontend_state_string = "BOOT_REFRESH  ";
      `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : frontend_state_string = "BOOT_MODE     ";
      `SdramCtrlFrontendState_defaultEncoding_RUN : frontend_state_string = "RUN           ";
      default : frontend_state_string = "??????????????";
    endcase
  end
  always @(*) begin
    case(bubbleInserter_cmd_payload_task)
      `SdramCtrlBackendTask_defaultEncoding_MODE : bubbleInserter_cmd_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : bubbleInserter_cmd_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : bubbleInserter_cmd_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_defaultEncoding_REFRESH : bubbleInserter_cmd_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_defaultEncoding_ACTIVE : bubbleInserter_cmd_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_defaultEncoding_READ : bubbleInserter_cmd_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_defaultEncoding_WRITE : bubbleInserter_cmd_payload_task_string = "WRITE           ";
      default : bubbleInserter_cmd_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(frontend_rsp_m2sPipe_rData_task)
      `SdramCtrlBackendTask_defaultEncoding_MODE : frontend_rsp_m2sPipe_rData_task_string = "MODE            ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : frontend_rsp_m2sPipe_rData_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : frontend_rsp_m2sPipe_rData_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_defaultEncoding_REFRESH : frontend_rsp_m2sPipe_rData_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_defaultEncoding_ACTIVE : frontend_rsp_m2sPipe_rData_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_defaultEncoding_READ : frontend_rsp_m2sPipe_rData_task_string = "READ            ";
      `SdramCtrlBackendTask_defaultEncoding_WRITE : frontend_rsp_m2sPipe_rData_task_string = "WRITE           ";
      default : frontend_rsp_m2sPipe_rData_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(bubbleInserter_rsp_payload_task)
      `SdramCtrlBackendTask_defaultEncoding_MODE : bubbleInserter_rsp_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : bubbleInserter_rsp_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : bubbleInserter_rsp_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_defaultEncoding_REFRESH : bubbleInserter_rsp_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_defaultEncoding_ACTIVE : bubbleInserter_rsp_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_defaultEncoding_READ : bubbleInserter_rsp_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_defaultEncoding_WRITE : bubbleInserter_rsp_payload_task_string = "WRITE           ";
      default : bubbleInserter_rsp_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(_zz_10_)
      `SdramCtrlBackendTask_defaultEncoding_MODE : _zz_10__string = "MODE            ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : _zz_10__string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : _zz_10__string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_defaultEncoding_REFRESH : _zz_10__string = "REFRESH         ";
      `SdramCtrlBackendTask_defaultEncoding_ACTIVE : _zz_10__string = "ACTIVE          ";
      `SdramCtrlBackendTask_defaultEncoding_READ : _zz_10__string = "READ            ";
      `SdramCtrlBackendTask_defaultEncoding_WRITE : _zz_10__string = "WRITE           ";
      default : _zz_10__string = "????????????????";
    endcase
  end
  always @(*) begin
    case(chip_cmd_payload_task)
      `SdramCtrlBackendTask_defaultEncoding_MODE : chip_cmd_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : chip_cmd_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : chip_cmd_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_defaultEncoding_REFRESH : chip_cmd_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_defaultEncoding_ACTIVE : chip_cmd_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_defaultEncoding_READ : chip_cmd_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_defaultEncoding_WRITE : chip_cmd_payload_task_string = "WRITE           ";
      default : chip_cmd_payload_task_string = "????????????????";
    endcase
  end
  `endif

  assign refresh_counter_willClear = 1'b0;
  assign refresh_counter_willOverflowIfInc = (refresh_counter_value == 9'h186);
  assign refresh_counter_willOverflow = (refresh_counter_willOverflowIfInc && refresh_counter_willIncrement);
  always @ (*) begin
    if(refresh_counter_willOverflow)begin
      refresh_counter_valueNext = 9'h0;
    end else begin
      refresh_counter_valueNext = (refresh_counter_value + _zz_27_);
    end
    if(refresh_counter_willClear)begin
      refresh_counter_valueNext = 9'h0;
    end
  end

  assign refresh_counter_willIncrement = 1'b1;
  assign _zz_1_[12 : 0] = 13'h1fff;
  assign _zz_2_ = io_bus_cmd_payload_address;
  assign frontend_address_column = _zz_2_[9 : 0];
  assign frontend_address_bank = _zz_2_[11 : 10];
  assign frontend_address_row = _zz_2_[24 : 12];
  always @ (*) begin
    frontend_rsp_valid = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : begin
        if(powerup_done)begin
          frontend_rsp_valid = 1'b1;
        end
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : begin
        frontend_rsp_valid = 1'b1;
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : begin
        frontend_rsp_valid = 1'b1;
      end
      default : begin
        if(refresh_pending)begin
          frontend_rsp_valid = 1'b1;
        end else begin
          if(io_bus_cmd_valid)begin
            frontend_rsp_valid = 1'b1;
          end
        end
      end
    endcase
  end

  always @ (*) begin
    frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_REFRESH;
    case(frontend_state)
      `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL;
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_REFRESH;
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_MODE;
      end
      default : begin
        if(refresh_pending)begin
          if(_zz_23_)begin
            frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL;
          end else begin
            frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_REFRESH;
          end
        end else begin
          if(io_bus_cmd_valid)begin
            if(_zz_24_)begin
              frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE;
            end else begin
              if(_zz_25_)begin
                frontend_rsp_payload_task = `SdramCtrlBackendTask_defaultEncoding_ACTIVE;
              end else begin
                frontend_rsp_payload_task = (io_bus_cmd_payload_write ? `SdramCtrlBackendTask_defaultEncoding_WRITE : `SdramCtrlBackendTask_defaultEncoding_READ);
              end
            end
          end
        end
      end
    endcase
  end

  assign frontend_rsp_payload_bank = frontend_address_bank;
  always @ (*) begin
    frontend_rsp_payload_rowColumn = frontend_address_row;
    case(frontend_state)
      `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : begin
      end
      default : begin
        if(! refresh_pending) begin
          if(io_bus_cmd_valid)begin
            if(! _zz_24_) begin
              if(! _zz_25_) begin
                frontend_rsp_payload_rowColumn = {3'd0, frontend_address_column};
              end
            end
          end
        end
      end
    endcase
  end

  assign frontend_rsp_payload_data = io_bus_cmd_payload_data;
  assign frontend_rsp_payload_mask = io_bus_cmd_payload_mask;
  assign frontend_rsp_payload_context_id = io_bus_cmd_payload_context_id;
  assign frontend_rsp_payload_context_last = io_bus_cmd_payload_context_last;
  always @ (*) begin
    io_bus_cmd_ready = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : begin
      end
      default : begin
        if(! refresh_pending) begin
          if(io_bus_cmd_valid)begin
            if(! _zz_24_) begin
              if(! _zz_25_) begin
                io_bus_cmd_ready = frontend_rsp_ready;
              end
            end
          end
        end
      end
    endcase
  end

  always @ (*) begin
    frontend_bootRefreshCounter_willIncrement = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : begin
        if(frontend_rsp_ready)begin
          frontend_bootRefreshCounter_willIncrement = 1'b1;
        end
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : begin
      end
      default : begin
      end
    endcase
  end

  assign frontend_bootRefreshCounter_willClear = 1'b0;
  assign frontend_bootRefreshCounter_willOverflowIfInc = (frontend_bootRefreshCounter_value == (3'b111));
  assign frontend_bootRefreshCounter_willOverflow = (frontend_bootRefreshCounter_willOverflowIfInc && frontend_bootRefreshCounter_willIncrement);
  always @ (*) begin
    frontend_bootRefreshCounter_valueNext = (frontend_bootRefreshCounter_value + _zz_29_);
    if(frontend_bootRefreshCounter_willClear)begin
      frontend_bootRefreshCounter_valueNext = (3'b000);
    end
  end

  assign _zz_3_ = _zz_19_;
  assign _zz_4_ = ({3'd0,(1'b1)} <<< frontend_address_bank);
  assign _zz_5_ = _zz_4_[0];
  assign _zz_6_ = _zz_4_[1];
  assign _zz_7_ = _zz_4_[2];
  assign _zz_8_ = _zz_4_[3];
  assign frontend_rsp_ready = ((1'b1 && (! bubbleInserter_cmd_valid)) || bubbleInserter_cmd_ready);
  assign bubbleInserter_cmd_valid = frontend_rsp_m2sPipe_rValid;
  assign bubbleInserter_cmd_payload_task = frontend_rsp_m2sPipe_rData_task;
  assign bubbleInserter_cmd_payload_bank = frontend_rsp_m2sPipe_rData_bank;
  assign bubbleInserter_cmd_payload_rowColumn = frontend_rsp_m2sPipe_rData_rowColumn;
  assign bubbleInserter_cmd_payload_data = frontend_rsp_m2sPipe_rData_data;
  assign bubbleInserter_cmd_payload_mask = frontend_rsp_m2sPipe_rData_mask;
  assign bubbleInserter_cmd_payload_context_id = frontend_rsp_m2sPipe_rData_context_id;
  assign bubbleInserter_cmd_payload_context_last = frontend_rsp_m2sPipe_rData_context_last;
  always @ (*) begin
    bubbleInserter_insertBubble = 1'b0;
    if(bubbleInserter_cmd_valid)begin
      case(bubbleInserter_cmd_payload_task)
        `SdramCtrlBackendTask_defaultEncoding_MODE : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_banks_0_active_busy;
        end
        `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : begin
          bubbleInserter_insertBubble = ({bubbleInserter_timings_banks_3_precharge_busy,{bubbleInserter_timings_banks_2_precharge_busy,{bubbleInserter_timings_banks_1_precharge_busy,bubbleInserter_timings_banks_0_precharge_busy}}} != (4'b0000));
        end
        `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : begin
          bubbleInserter_insertBubble = _zz_21_;
        end
        `SdramCtrlBackendTask_defaultEncoding_REFRESH : begin
          bubbleInserter_insertBubble = ({bubbleInserter_timings_banks_3_active_busy,{bubbleInserter_timings_banks_2_active_busy,{bubbleInserter_timings_banks_1_active_busy,bubbleInserter_timings_banks_0_active_busy}}} != (4'b0000));
        end
        `SdramCtrlBackendTask_defaultEncoding_ACTIVE : begin
          bubbleInserter_insertBubble = _zz_22_;
        end
        `SdramCtrlBackendTask_defaultEncoding_READ : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_read_busy;
        end
        default : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_write_busy;
        end
      endcase
    end
  end

  assign _zz_9_ = (! bubbleInserter_insertBubble);
  assign bubbleInserter_cmd_ready = (bubbleInserter_rsp_ready && _zz_9_);
  assign _zz_10_ = bubbleInserter_cmd_payload_task;
  assign bubbleInserter_rsp_valid = (bubbleInserter_cmd_valid && _zz_9_);
  assign bubbleInserter_rsp_payload_task = _zz_10_;
  assign bubbleInserter_rsp_payload_bank = bubbleInserter_cmd_payload_bank;
  assign bubbleInserter_rsp_payload_rowColumn = bubbleInserter_cmd_payload_rowColumn;
  assign bubbleInserter_rsp_payload_data = bubbleInserter_cmd_payload_data;
  assign bubbleInserter_rsp_payload_mask = bubbleInserter_cmd_payload_mask;
  assign bubbleInserter_rsp_payload_context_id = bubbleInserter_cmd_payload_context_id;
  assign bubbleInserter_rsp_payload_context_last = bubbleInserter_cmd_payload_context_last;
  assign bubbleInserter_timings_read_busy = 1'b0;
  assign bubbleInserter_timings_write_busy = (bubbleInserter_timings_write_counter != (3'b000));
  assign bubbleInserter_timings_banks_0_precharge_busy = (bubbleInserter_timings_banks_0_precharge_counter != (2'b00));
  assign bubbleInserter_timings_banks_0_active_busy = (bubbleInserter_timings_banks_0_active_counter != (2'b00));
  assign bubbleInserter_timings_banks_1_precharge_busy = (bubbleInserter_timings_banks_1_precharge_counter != (2'b00));
  assign bubbleInserter_timings_banks_1_active_busy = (bubbleInserter_timings_banks_1_active_counter != (2'b00));
  assign bubbleInserter_timings_banks_2_precharge_busy = (bubbleInserter_timings_banks_2_precharge_counter != (2'b00));
  assign bubbleInserter_timings_banks_2_active_busy = (bubbleInserter_timings_banks_2_active_counter != (2'b00));
  assign bubbleInserter_timings_banks_3_precharge_busy = (bubbleInserter_timings_banks_3_precharge_counter != (2'b00));
  assign bubbleInserter_timings_banks_3_active_busy = (bubbleInserter_timings_banks_3_active_counter != (2'b00));
  assign chip_cmd_valid = bubbleInserter_rsp_valid;
  assign bubbleInserter_rsp_ready = chip_cmd_ready;
  assign chip_cmd_payload_task = bubbleInserter_rsp_payload_task;
  assign chip_cmd_payload_bank = bubbleInserter_rsp_payload_bank;
  assign chip_cmd_payload_rowColumn = bubbleInserter_rsp_payload_rowColumn;
  assign chip_cmd_payload_data = bubbleInserter_rsp_payload_data;
  assign chip_cmd_payload_mask = bubbleInserter_rsp_payload_mask;
  assign chip_cmd_payload_context_id = bubbleInserter_rsp_payload_context_id;
  assign chip_cmd_payload_context_last = bubbleInserter_rsp_payload_context_last;
  assign io_sdram_ADDR = chip_sdram_ADDR;
  assign io_sdram_BA = chip_sdram_BA;
  assign io_sdram_DQ_write = chip_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = chip_sdram_DQ_writeEnable;
  assign io_sdram_DQM = chip_sdram_DQM;
  assign io_sdram_CASn = chip_sdram_CASn;
  assign io_sdram_CKE = chip_sdram_CKE;
  assign io_sdram_CSn = chip_sdram_CSn;
  assign io_sdram_RASn = chip_sdram_RASn;
  assign io_sdram_WEn = chip_sdram_WEn;
  assign _zz_11_ = (chip_cmd_valid && ((chip_cmd_payload_task == `SdramCtrlBackendTask_defaultEncoding_READ) || 1'b0));
  assign chip_readHistory_0 = _zz_11_;
  assign chip_readHistory_1 = _zz_12_;
  assign chip_readHistory_2 = _zz_13_;
  assign chip_readHistory_3 = _zz_14_;
  assign chip_readHistory_4 = _zz_15_;
  assign chip_readHistory_5 = _zz_16_;
  assign chip_sdramCkeNext = (! (({chip_readHistory_5,{chip_readHistory_4,{chip_readHistory_3,{chip_readHistory_2,{chip_readHistory_1,chip_readHistory_0}}}}} != 6'h0) && (! io_bus_rsp_ready)));
  assign chip_remoteCke = chip_sdramCkeInternal_regNext;
  assign _zz_17_ = (! chip_readHistory_1);
  assign chip_backupIn_valid = (chip_readHistory_5 && chip_remoteCke);
  assign chip_backupIn_payload_data = chip_sdram_DQ_read;
  assign chip_backupIn_payload_context_id = chip_contextDelayed_id;
  assign chip_backupIn_payload_context_last = chip_contextDelayed_last;
  assign chip_backupIn_ready = chip_backupIn_fifo_io_push_ready;
  assign io_bus_rsp_valid = chip_backupIn_fifo_io_pop_valid;
  assign io_bus_rsp_payload_data = chip_backupIn_fifo_io_pop_payload_data;
  assign io_bus_rsp_payload_context_id = chip_backupIn_fifo_io_pop_payload_context_id;
  assign io_bus_rsp_payload_context_last = chip_backupIn_fifo_io_pop_payload_context_last;
  assign chip_cmd_ready = chip_remoteCke;
  assign _zz_18_ = 1'b0;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      refresh_counter_value <= 9'h0;
      refresh_pending <= 1'b0;
      powerup_counter <= 13'h0;
      powerup_done <= 1'b0;
      frontend_banks_0_active <= 1'b0;
      frontend_banks_1_active <= 1'b0;
      frontend_banks_2_active <= 1'b0;
      frontend_banks_3_active <= 1'b0;
      frontend_state <= `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE;
      frontend_bootRefreshCounter_value <= (3'b000);
      frontend_rsp_m2sPipe_rValid <= 1'b0;
      bubbleInserter_timings_write_counter <= (3'b000);
      bubbleInserter_timings_banks_0_precharge_counter <= (2'b00);
      bubbleInserter_timings_banks_0_active_counter <= (2'b00);
      bubbleInserter_timings_banks_1_precharge_counter <= (2'b00);
      bubbleInserter_timings_banks_1_active_counter <= (2'b00);
      bubbleInserter_timings_banks_2_precharge_counter <= (2'b00);
      bubbleInserter_timings_banks_2_active_counter <= (2'b00);
      bubbleInserter_timings_banks_3_precharge_counter <= (2'b00);
      bubbleInserter_timings_banks_3_active_counter <= (2'b00);
      _zz_12_ <= 1'b0;
      _zz_13_ <= 1'b0;
      _zz_14_ <= 1'b0;
      _zz_15_ <= 1'b0;
      _zz_16_ <= 1'b0;
      chip_sdramCkeInternal <= 1'b1;
      chip_sdramCkeInternal_regNext <= 1'b1;
    end else begin
      refresh_counter_value <= refresh_counter_valueNext;
      if(refresh_counter_willOverflow)begin
        refresh_pending <= 1'b1;
      end
      if((! powerup_done))begin
        powerup_counter <= (powerup_counter + 13'h0001);
        if((powerup_counter == _zz_1_))begin
          powerup_done <= 1'b1;
        end
      end
      frontend_bootRefreshCounter_value <= frontend_bootRefreshCounter_valueNext;
      case(frontend_state)
        `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : begin
          if(powerup_done)begin
            if(frontend_rsp_ready)begin
              frontend_state <= `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH;
            end
          end
        end
        `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : begin
          if(frontend_rsp_ready)begin
            if(frontend_bootRefreshCounter_willOverflowIfInc)begin
              frontend_state <= `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE;
            end
          end
        end
        `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : begin
          if(frontend_rsp_ready)begin
            frontend_state <= `SdramCtrlFrontendState_defaultEncoding_RUN;
          end
        end
        default : begin
          if(refresh_pending)begin
            if(_zz_23_)begin
              if(frontend_rsp_ready)begin
                frontend_banks_0_active <= 1'b0;
                frontend_banks_1_active <= 1'b0;
                frontend_banks_2_active <= 1'b0;
                frontend_banks_3_active <= 1'b0;
              end
            end else begin
              if(frontend_rsp_ready)begin
                refresh_pending <= 1'b0;
              end
            end
          end else begin
            if(io_bus_cmd_valid)begin
              if(_zz_24_)begin
                if(frontend_rsp_ready)begin
                  if(_zz_5_)begin
                    frontend_banks_0_active <= 1'b0;
                  end
                  if(_zz_6_)begin
                    frontend_banks_1_active <= 1'b0;
                  end
                  if(_zz_7_)begin
                    frontend_banks_2_active <= 1'b0;
                  end
                  if(_zz_8_)begin
                    frontend_banks_3_active <= 1'b0;
                  end
                end
              end else begin
                if(_zz_25_)begin
                  if(frontend_rsp_ready)begin
                    if(_zz_5_)begin
                      frontend_banks_0_active <= 1'b1;
                    end
                    if(_zz_6_)begin
                      frontend_banks_1_active <= 1'b1;
                    end
                    if(_zz_7_)begin
                      frontend_banks_2_active <= 1'b1;
                    end
                    if(_zz_8_)begin
                      frontend_banks_3_active <= 1'b1;
                    end
                  end
                end
              end
            end
          end
        end
      endcase
      if(frontend_rsp_ready)begin
        frontend_rsp_m2sPipe_rValid <= frontend_rsp_valid;
      end
      if((bubbleInserter_timings_write_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_write_counter <= (bubbleInserter_timings_write_counter - (3'b001));
      end
      if((bubbleInserter_timings_banks_0_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_0_precharge_counter <= (bubbleInserter_timings_banks_0_precharge_counter - (2'b01));
      end
      if((bubbleInserter_timings_banks_0_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_0_active_counter <= (bubbleInserter_timings_banks_0_active_counter - (2'b01));
      end
      if((bubbleInserter_timings_banks_1_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_1_precharge_counter <= (bubbleInserter_timings_banks_1_precharge_counter - (2'b01));
      end
      if((bubbleInserter_timings_banks_1_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_1_active_counter <= (bubbleInserter_timings_banks_1_active_counter - (2'b01));
      end
      if((bubbleInserter_timings_banks_2_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_2_precharge_counter <= (bubbleInserter_timings_banks_2_precharge_counter - (2'b01));
      end
      if((bubbleInserter_timings_banks_2_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_2_active_counter <= (bubbleInserter_timings_banks_2_active_counter - (2'b01));
      end
      if((bubbleInserter_timings_banks_3_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_3_precharge_counter <= (bubbleInserter_timings_banks_3_precharge_counter - (2'b01));
      end
      if((bubbleInserter_timings_banks_3_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_3_active_counter <= (bubbleInserter_timings_banks_3_active_counter - (2'b01));
      end
      if(bubbleInserter_cmd_valid)begin
        case(bubbleInserter_cmd_payload_task)
          `SdramCtrlBackendTask_defaultEncoding_MODE : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_banks_0_active_counter <= (2'b01)))begin
                bubbleInserter_timings_banks_0_active_counter <= (2'b01);
              end
              if((bubbleInserter_timings_banks_1_active_counter <= (2'b01)))begin
                bubbleInserter_timings_banks_1_active_counter <= (2'b01);
              end
              if((bubbleInserter_timings_banks_2_active_counter <= (2'b01)))begin
                bubbleInserter_timings_banks_2_active_counter <= (2'b01);
              end
              if((bubbleInserter_timings_banks_3_active_counter <= (2'b01)))begin
                bubbleInserter_timings_banks_3_active_counter <= (2'b01);
              end
            end
          end
          `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_banks_0_active_counter <= (2'b00)))begin
                bubbleInserter_timings_banks_0_active_counter <= (2'b00);
              end
            end
          end
          `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_SINGLE : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_cmd_payload_bank == (2'b00)))begin
                if((bubbleInserter_timings_banks_0_active_counter <= (2'b00)))begin
                  bubbleInserter_timings_banks_0_active_counter <= (2'b00);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b01)))begin
                if((bubbleInserter_timings_banks_1_active_counter <= (2'b00)))begin
                  bubbleInserter_timings_banks_1_active_counter <= (2'b00);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b10)))begin
                if((bubbleInserter_timings_banks_2_active_counter <= (2'b00)))begin
                  bubbleInserter_timings_banks_2_active_counter <= (2'b00);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b11)))begin
                if((bubbleInserter_timings_banks_3_active_counter <= (2'b00)))begin
                  bubbleInserter_timings_banks_3_active_counter <= (2'b00);
                end
              end
            end
          end
          `SdramCtrlBackendTask_defaultEncoding_REFRESH : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_banks_0_active_counter <= (2'b10)))begin
                bubbleInserter_timings_banks_0_active_counter <= (2'b10);
              end
              if((bubbleInserter_timings_banks_1_active_counter <= (2'b10)))begin
                bubbleInserter_timings_banks_1_active_counter <= (2'b10);
              end
              if((bubbleInserter_timings_banks_2_active_counter <= (2'b10)))begin
                bubbleInserter_timings_banks_2_active_counter <= (2'b10);
              end
              if((bubbleInserter_timings_banks_3_active_counter <= (2'b10)))begin
                bubbleInserter_timings_banks_3_active_counter <= (2'b10);
              end
            end
          end
          `SdramCtrlBackendTask_defaultEncoding_ACTIVE : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_write_counter <= (3'b000)))begin
                bubbleInserter_timings_write_counter <= (3'b000);
              end
              if((bubbleInserter_cmd_payload_bank == (2'b00)))begin
                if((bubbleInserter_timings_banks_0_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_0_precharge_counter <= (2'b01);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b01)))begin
                if((bubbleInserter_timings_banks_1_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_1_precharge_counter <= (2'b01);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b10)))begin
                if((bubbleInserter_timings_banks_2_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_2_precharge_counter <= (2'b01);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b11)))begin
                if((bubbleInserter_timings_banks_3_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_3_precharge_counter <= (2'b01);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b00)))begin
                if((bubbleInserter_timings_banks_0_active_counter <= (2'b10)))begin
                  bubbleInserter_timings_banks_0_active_counter <= (2'b10);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b01)))begin
                if((bubbleInserter_timings_banks_1_active_counter <= (2'b10)))begin
                  bubbleInserter_timings_banks_1_active_counter <= (2'b10);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b10)))begin
                if((bubbleInserter_timings_banks_2_active_counter <= (2'b10)))begin
                  bubbleInserter_timings_banks_2_active_counter <= (2'b10);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b11)))begin
                if((bubbleInserter_timings_banks_3_active_counter <= (2'b10)))begin
                  bubbleInserter_timings_banks_3_active_counter <= (2'b10);
                end
              end
            end
          end
          `SdramCtrlBackendTask_defaultEncoding_READ : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_write_counter <= (3'b100)))begin
                bubbleInserter_timings_write_counter <= (3'b100);
              end
            end
          end
          default : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_cmd_payload_bank == (2'b00)))begin
                if((bubbleInserter_timings_banks_0_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_0_precharge_counter <= (2'b01);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b01)))begin
                if((bubbleInserter_timings_banks_1_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_1_precharge_counter <= (2'b01);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b10)))begin
                if((bubbleInserter_timings_banks_2_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_2_precharge_counter <= (2'b01);
                end
              end
              if((bubbleInserter_cmd_payload_bank == (2'b11)))begin
                if((bubbleInserter_timings_banks_3_precharge_counter <= (2'b01)))begin
                  bubbleInserter_timings_banks_3_precharge_counter <= (2'b01);
                end
              end
            end
          end
        endcase
      end
      if(chip_remoteCke)begin
        _zz_12_ <= _zz_11_;
      end
      if(chip_remoteCke)begin
        _zz_13_ <= _zz_12_;
      end
      if(chip_remoteCke)begin
        _zz_14_ <= _zz_13_;
      end
      if(chip_remoteCke)begin
        _zz_15_ <= _zz_14_;
      end
      if(chip_remoteCke)begin
        _zz_16_ <= _zz_15_;
      end
      chip_sdramCkeInternal <= chip_sdramCkeNext;
      chip_sdramCkeInternal_regNext <= chip_sdramCkeInternal;
    end
  end

  always @ (posedge io_axiClk) begin
    case(frontend_state)
      `SdramCtrlFrontendState_defaultEncoding_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_defaultEncoding_BOOT_MODE : begin
      end
      default : begin
        if(! refresh_pending) begin
          if(io_bus_cmd_valid)begin
            if(! _zz_24_) begin
              if(_zz_25_)begin
                if(_zz_5_)begin
                  frontend_banks_0_row <= frontend_address_row;
                end
                if(_zz_6_)begin
                  frontend_banks_1_row <= frontend_address_row;
                end
                if(_zz_7_)begin
                  frontend_banks_2_row <= frontend_address_row;
                end
                if(_zz_8_)begin
                  frontend_banks_3_row <= frontend_address_row;
                end
              end
            end
          end
        end
      end
    endcase
    if(frontend_rsp_ready)begin
      frontend_rsp_m2sPipe_rData_task <= frontend_rsp_payload_task;
      frontend_rsp_m2sPipe_rData_bank <= frontend_rsp_payload_bank;
      frontend_rsp_m2sPipe_rData_rowColumn <= frontend_rsp_payload_rowColumn;
      frontend_rsp_m2sPipe_rData_data <= frontend_rsp_payload_data;
      frontend_rsp_m2sPipe_rData_mask <= frontend_rsp_payload_mask;
      frontend_rsp_m2sPipe_rData_context_id <= frontend_rsp_payload_context_id;
      frontend_rsp_m2sPipe_rData_context_last <= frontend_rsp_payload_context_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_1_id <= chip_cmd_payload_context_id;
      chip_cmd_payload_context_delay_1_last <= chip_cmd_payload_context_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_2_id <= chip_cmd_payload_context_delay_1_id;
      chip_cmd_payload_context_delay_2_last <= chip_cmd_payload_context_delay_1_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_3_id <= chip_cmd_payload_context_delay_2_id;
      chip_cmd_payload_context_delay_3_last <= chip_cmd_payload_context_delay_2_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_4_id <= chip_cmd_payload_context_delay_3_id;
      chip_cmd_payload_context_delay_4_last <= chip_cmd_payload_context_delay_3_last;
    end
    if(chip_remoteCke)begin
      chip_contextDelayed_id <= chip_cmd_payload_context_delay_4_id;
      chip_contextDelayed_last <= chip_cmd_payload_context_delay_4_last;
    end
    chip_sdram_CKE <= chip_sdramCkeNext;
    if(chip_remoteCke)begin
      chip_sdram_DQ_read <= io_sdram_DQ_read;
      chip_sdram_CSn <= 1'b0;
      chip_sdram_RASn <= 1'b1;
      chip_sdram_CASn <= 1'b1;
      chip_sdram_WEn <= 1'b1;
      chip_sdram_DQ_write <= chip_cmd_payload_data;
      chip_sdram_DQ_writeEnable <= 16'h0;
      chip_sdram_DQM[0] <= _zz_17_;
      chip_sdram_DQM[1] <= _zz_17_;
      if(chip_cmd_valid)begin
        case(chip_cmd_payload_task)
          `SdramCtrlBackendTask_defaultEncoding_PRECHARGE_ALL : begin
            chip_sdram_ADDR[10] <= 1'b1;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_defaultEncoding_REFRESH : begin
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b1;
          end
          `SdramCtrlBackendTask_defaultEncoding_MODE : begin
            chip_sdram_ADDR <= 13'h0;
            chip_sdram_ADDR[2 : 0] <= (3'b000);
            chip_sdram_ADDR[3] <= 1'b0;
            chip_sdram_ADDR[6 : 4] <= (3'b011);
            chip_sdram_ADDR[8 : 7] <= (2'b00);
            chip_sdram_ADDR[9] <= 1'b0;
            chip_sdram_BA <= (2'b00);
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_defaultEncoding_ACTIVE : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b1;
          end
          `SdramCtrlBackendTask_defaultEncoding_WRITE : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_DQ_writeEnable <= 16'hffff;
            chip_sdram_DQ_write <= chip_cmd_payload_data;
            chip_sdram_DQM <= (~ chip_cmd_payload_mask);
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b1;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_defaultEncoding_READ : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b1;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b1;
          end
          default : begin
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b0;
          end
        endcase
      end
    end
  end


endmodule

module BufferCC_6_ (
  input      [31:0]   io_dataIn,
  output     [31:0]   io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [31:0]   buffers_0;
  reg        [31:0]   buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule
//BufferCC_7_ replaced by BufferCC_6_

module BufferCC_8_ (
  input               io_dataIn_clear,
  input               io_dataIn_tick,
  output              io_dataOut_clear,
  output              io_dataOut_tick,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 buffers_0_clear;
  reg                 buffers_0_tick;
  reg                 buffers_1_clear;
  reg                 buffers_1_tick;

  assign io_dataOut_clear = buffers_1_clear;
  assign io_dataOut_tick = buffers_1_tick;
  always @ (posedge io_axiClk) begin
    buffers_0_clear <= io_dataIn_clear;
    buffers_0_tick <= io_dataIn_tick;
    buffers_1_clear <= buffers_0_clear;
    buffers_1_tick <= buffers_0_tick;
  end


endmodule

module Prescaler (
  input               io_clear,
  input      [15:0]   io_limit,
  output              io_overflow,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [15:0]   counter;

  assign io_overflow = (counter == io_limit);
  always @ (posedge io_axiClk) begin
    counter <= (counter + 16'h0001);
    if((io_clear || io_overflow))begin
      counter <= 16'h0;
    end
  end


endmodule

module Timer (
  input               io_tick,
  input               io_clear,
  input      [31:0]   io_limit,
  output              io_full,
  output     [31:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [0:0]    _zz_1_;
  wire       [31:0]   _zz_2_;
  reg        [31:0]   counter;
  wire                limitHit;
  reg                 inhibitFull;

  assign _zz_1_ = (! limitHit);
  assign _zz_2_ = {31'd0, _zz_1_};
  assign limitHit = (counter == io_limit);
  assign io_full = ((limitHit && io_tick) && (! inhibitFull));
  assign io_value = counter;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      inhibitFull <= 1'b0;
    end else begin
      if(io_tick)begin
        inhibitFull <= limitHit;
      end
      if(io_clear)begin
        inhibitFull <= 1'b0;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_tick)begin
      counter <= (counter + _zz_2_);
    end
    if(io_clear)begin
      counter <= 32'h0;
    end
  end


endmodule

module Timer_1_ (
  input               io_tick,
  input               io_clear,
  input      [15:0]   io_limit,
  output              io_full,
  output     [15:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [0:0]    _zz_1_;
  wire       [15:0]   _zz_2_;
  reg        [15:0]   counter;
  wire                limitHit;
  reg                 inhibitFull;

  assign _zz_1_ = (! limitHit);
  assign _zz_2_ = {15'd0, _zz_1_};
  assign limitHit = (counter == io_limit);
  assign io_full = ((limitHit && io_tick) && (! inhibitFull));
  assign io_value = counter;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      inhibitFull <= 1'b0;
    end else begin
      if(io_tick)begin
        inhibitFull <= limitHit;
      end
      if(io_clear)begin
        inhibitFull <= 1'b0;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_tick)begin
      counter <= (counter + _zz_2_);
    end
    if(io_clear)begin
      counter <= 16'h0;
    end
  end


endmodule
//Timer_2_ replaced by Timer_1_
//Timer_3_ replaced by Timer_1_

module InterruptCtrl (
  input      [3:0]    io_inputs,
  input      [3:0]    io_clears,
  input      [3:0]    io_masks,
  output     [3:0]    io_pendings,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [3:0]    pendings;

  assign io_pendings = (pendings & io_masks);
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendings <= (4'b0000);
    end else begin
      pendings <= ((pendings & (~ io_clears)) | io_inputs);
    end
  end


endmodule

module UartCtrl (
  input      [2:0]    io_config_frame_dataLength,
  input      `UartStopType_defaultEncoding_type io_config_frame_stop,
  input      `UartParityType_defaultEncoding_type io_config_frame_parity,
  input      [19:0]   io_config_clockDivider,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_readError,
  input               io_writeBreak,
  output              io_readBreak,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_1_;
  wire                tx_io_write_ready;
  wire                tx_io_txd;
  wire                rx_io_read_valid;
  wire       [7:0]    rx_io_read_payload;
  wire                rx_io_rts;
  wire                rx_io_error;
  wire                rx_io_break;
  reg        [19:0]   clockDivider_counter;
  wire                clockDivider_tick;
  reg                 io_write_thrown_valid;
  wire                io_write_thrown_ready;
  wire       [7:0]    io_write_thrown_payload;
  `ifndef SYNTHESIS
  reg [23:0] io_config_frame_stop_string;
  reg [31:0] io_config_frame_parity_string;
  `endif


  UartCtrlTx tx ( 
    .io_configFrame_dataLength    (io_config_frame_dataLength[2:0]  ), //i
    .io_configFrame_stop          (io_config_frame_stop             ), //i
    .io_configFrame_parity        (io_config_frame_parity[1:0]      ), //i
    .io_samplingTick              (clockDivider_tick                ), //i
    .io_write_valid               (io_write_thrown_valid            ), //i
    .io_write_ready               (tx_io_write_ready                ), //o
    .io_write_payload             (io_write_thrown_payload[7:0]     ), //i
    .io_cts                       (_zz_1_                           ), //i
    .io_txd                       (tx_io_txd                        ), //o
    .io_break                     (io_writeBreak                    ), //i
    .io_axiClk                    (io_axiClk                        ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset               )  //i
  );
  UartCtrlRx rx ( 
    .io_configFrame_dataLength    (io_config_frame_dataLength[2:0]  ), //i
    .io_configFrame_stop          (io_config_frame_stop             ), //i
    .io_configFrame_parity        (io_config_frame_parity[1:0]      ), //i
    .io_samplingTick              (clockDivider_tick                ), //i
    .io_read_valid                (rx_io_read_valid                 ), //o
    .io_read_ready                (io_read_ready                    ), //i
    .io_read_payload              (rx_io_read_payload[7:0]          ), //o
    .io_rxd                       (io_uart_rxd                      ), //i
    .io_rts                       (rx_io_rts                        ), //o
    .io_error                     (rx_io_error                      ), //o
    .io_break                     (rx_io_break                      ), //o
    .io_axiClk                    (io_axiClk                        ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset               )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_config_frame_stop)
      `UartStopType_defaultEncoding_ONE : io_config_frame_stop_string = "ONE";
      `UartStopType_defaultEncoding_TWO : io_config_frame_stop_string = "TWO";
      default : io_config_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_config_frame_parity)
      `UartParityType_defaultEncoding_NONE : io_config_frame_parity_string = "NONE";
      `UartParityType_defaultEncoding_EVEN : io_config_frame_parity_string = "EVEN";
      `UartParityType_defaultEncoding_ODD : io_config_frame_parity_string = "ODD ";
      default : io_config_frame_parity_string = "????";
    endcase
  end
  `endif

  assign clockDivider_tick = (clockDivider_counter == 20'h0);
  always @ (*) begin
    io_write_thrown_valid = io_write_valid;
    if(rx_io_break)begin
      io_write_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_write_ready = io_write_thrown_ready;
    if(rx_io_break)begin
      io_write_ready = 1'b1;
    end
  end

  assign io_write_thrown_payload = io_write_payload;
  assign io_write_thrown_ready = tx_io_write_ready;
  assign io_read_valid = rx_io_read_valid;
  assign io_read_payload = rx_io_read_payload;
  assign io_uart_txd = tx_io_txd;
  assign io_readError = rx_io_error;
  assign _zz_1_ = 1'b0;
  assign io_readBreak = rx_io_break;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      clockDivider_counter <= 20'h0;
    end else begin
      clockDivider_counter <= (clockDivider_counter - 20'h00001);
      if(clockDivider_tick)begin
        clockDivider_counter <= io_config_clockDivider;
      end
    end
  end


endmodule

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  input               io_flush,
  output     [4:0]    io_occupancy,
  output     [4:0]    io_availability,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [7:0]    _zz_3_;
  wire       [0:0]    _zz_4_;
  wire       [3:0]    _zz_5_;
  wire       [0:0]    _zz_6_;
  wire       [3:0]    _zz_7_;
  wire       [3:0]    _zz_8_;
  wire                _zz_9_;
  reg                 _zz_1_;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [3:0]    logic_pushPtr_valueNext;
  reg        [3:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [3:0]    logic_popPtr_valueNext;
  reg        [3:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2_;
  wire       [3:0]    logic_ptrDif;
  reg [7:0] logic_ram [0:15];

  assign _zz_4_ = logic_pushPtr_willIncrement;
  assign _zz_5_ = {3'd0, _zz_4_};
  assign _zz_6_ = logic_popPtr_willIncrement;
  assign _zz_7_ = {3'd0, _zz_6_};
  assign _zz_8_ = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_9_ = 1'b1;
  always @ (posedge io_axiClk) begin
    if(_zz_9_) begin
      _zz_3_ <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1_) begin
      logic_ram[logic_pushPtr_value] <= io_push_payload;
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if(logic_pushing)begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing)begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == (4'b1111));
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_5_);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = (4'b0000);
    end
  end

  always @ (*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping)begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == (4'b1111));
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_7_);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = (4'b0000);
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_2_ && (! logic_full))));
  assign io_pop_payload = _zz_3_;
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_8_};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      logic_pushPtr_value <= (4'b0000);
      logic_popPtr_value <= (4'b0000);
      logic_risingOccupancy <= 1'b0;
      _zz_2_ <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_2_ <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if((logic_pushing != logic_popping))begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush)begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule
//StreamFifo_1_ replaced by StreamFifo

module VideoDma (
  input               io_start,
  output              io_busy,
  input      [26:0]   io_base,
  input      [17:0]   io_size,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [26:0]   io_mem_cmd_payload,
  input               io_mem_rsp_valid,
  input               io_mem_rsp_payload_last,
  input      [31:0]   io_mem_rsp_payload_fragment,
  output              io_frame_valid,
  input               io_frame_ready,
  output              io_frame_payload_last,
  output     [4:0]    io_frame_payload_fragment_r,
  output     [5:0]    io_frame_payload_fragment_g,
  output     [4:0]    io_frame_payload_fragment_b,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               io_vgaClk,
  input               resetCtrl_vgaReset 
);
  reg        [15:0]   _zz_25_;
  wire                rspArea_fifo_io_push_ready;
  wire                rspArea_fifo_io_pop_valid;
  wire                rspArea_fifo_io_pop_payload_last;
  wire       [31:0]   rspArea_fifo_io_pop_payload_fragment;
  wire       [9:0]    rspArea_fifo_io_pushOccupancy;
  wire       [9:0]    rspArea_fifo_io_popOccupancy;
  wire       [6:0]    rspArea_frameClockArea_popCmdGray_buffercc_io_dataOut;
  wire                _zz_26_;
  wire                _zz_27_;
  wire                _zz_28_;
  wire                _zz_29_;
  wire                _zz_30_;
  wire                _zz_31_;
  wire                _zz_32_;
  wire                _zz_33_;
  wire                _zz_34_;
  wire                _zz_35_;
  wire                _zz_36_;
  wire                _zz_37_;
  wire                _zz_38_;
  wire                _zz_39_;
  wire       [26:0]   _zz_40_;
  wire       [0:0]    _zz_41_;
  wire       [2:0]    _zz_42_;
  reg        [5:0]    _zz_1_;
  reg        [5:0]    _zz_1__0;
  reg                 pendingMemCmd_incrementIt;
  reg                 pendingMemCmd_decrementIt;
  wire       [2:0]    pendingMemCmd_valueNext;
  reg        [2:0]    pendingMemCmd_value;
  wire                pendingMemCmd_willOverflowIfInc;
  wire                pendingMemCmd_willOverflow;
  reg        [2:0]    pendingMemCmd_finalIncrement;
  reg        [5:0]    pendingMemRsp;
  wire       [5:0]    _zz_2_;
  wire                toManyPendingCmd;
  wire                toManyPendingRsp;
  reg                 isActive;
  reg                 cmdActive;
  reg        [17:0]   memCmdCounter;
  wire                memCmdLast;
  wire                memRsp_valid;
  wire                memRsp_payload_last;
  wire       [31:0]   memRsp_payload_fragment;
  wire                fifoPop_valid;
  wire                fifoPop_ready;
  wire                fifoPop_payload_last;
  wire       [31:0]   fifoPop_payload_fragment;
  reg                 rspArea_frameClockArea_popBeatCounter_willIncrement;
  wire                rspArea_frameClockArea_popBeatCounter_willClear;
  reg        [2:0]    rspArea_frameClockArea_popBeatCounter_valueNext;
  reg        [2:0]    rspArea_frameClockArea_popBeatCounter_value;
  wire                rspArea_frameClockArea_popBeatCounter_willOverflowIfInc;
  wire                rspArea_frameClockArea_popBeatCounter_willOverflow;
  reg        [6:0]    rspArea_frameClockArea_popCmdGray;
  reg                 _zz_3_;
  wire       [6:0]    _zz_4_;
  reg                 _zz_5_;
  reg                 _zz_6_;
  reg                 _zz_7_;
  reg                 _zz_8_;
  reg                 _zz_9_;
  reg                 _zz_10_;
  wire       [6:0]    rspArea_popCmdGray;
  reg        [6:0]    rspArea_pushCmdGray;
  reg                 _zz_11_;
  wire       [6:0]    _zz_12_;
  reg                 _zz_13_;
  reg                 _zz_14_;
  reg                 _zz_15_;
  reg                 _zz_16_;
  reg                 _zz_17_;
  reg                 _zz_18_;
  reg                 _zz_19_;
  reg        [0:0]    _zz_20_;
  reg        [0:0]    _zz_21_;
  wire                _zz_22_;
  wire       [31:0]   _zz_23_;
  wire       [15:0]   _zz_24_;

  assign _zz_26_ = (! isActive);
  assign _zz_27_ = ((! toManyPendingCmd) && (! toManyPendingRsp));
  assign _zz_28_ = (_zz_4_[5] && (! _zz_6_));
  assign _zz_29_ = (_zz_4_[4] && (! _zz_7_));
  assign _zz_30_ = (_zz_4_[3] && (! _zz_8_));
  assign _zz_31_ = (_zz_4_[2] && (! _zz_9_));
  assign _zz_32_ = (_zz_4_[1] && (! _zz_10_));
  assign _zz_33_ = (_zz_4_[0] && (! 1'b0));
  assign _zz_34_ = (_zz_12_[5] && (! _zz_14_));
  assign _zz_35_ = (_zz_12_[4] && (! _zz_15_));
  assign _zz_36_ = (_zz_12_[3] && (! _zz_16_));
  assign _zz_37_ = (_zz_12_[2] && (! _zz_17_));
  assign _zz_38_ = (_zz_12_[1] && (! _zz_18_));
  assign _zz_39_ = (_zz_12_[0] && (! 1'b0));
  assign _zz_40_ = {9'd0, memCmdCounter};
  assign _zz_41_ = rspArea_frameClockArea_popBeatCounter_willIncrement;
  assign _zz_42_ = {2'd0, _zz_41_};
  StreamFifoCC rspArea_fifo ( 
    .io_push_valid               (memRsp_valid                                ), //i
    .io_push_ready               (rspArea_fifo_io_push_ready                  ), //o
    .io_push_payload_last        (memRsp_payload_last                         ), //i
    .io_push_payload_fragment    (memRsp_payload_fragment[31:0]               ), //i
    .io_pop_valid                (rspArea_fifo_io_pop_valid                   ), //o
    .io_pop_ready                (fifoPop_ready                               ), //i
    .io_pop_payload_last         (rspArea_fifo_io_pop_payload_last            ), //o
    .io_pop_payload_fragment     (rspArea_fifo_io_pop_payload_fragment[31:0]  ), //o
    .io_pushOccupancy            (rspArea_fifo_io_pushOccupancy[9:0]          ), //o
    .io_popOccupancy             (rspArea_fifo_io_popOccupancy[9:0]           ), //o
    .io_axiClk                   (io_axiClk                                   ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                          ), //i
    .io_vgaClk                   (io_vgaClk                                   ), //i
    .resetCtrl_vgaReset          (resetCtrl_vgaReset                          )  //i
  );
  BufferCC_3_ rspArea_frameClockArea_popCmdGray_buffercc ( 
    .io_dataIn             (rspArea_frameClockArea_popCmdGray[6:0]                      ), //i
    .io_dataOut            (rspArea_frameClockArea_popCmdGray_buffercc_io_dataOut[6:0]  ), //o
    .io_axiClk             (io_axiClk                                                   ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                          )  //i
  );
  always @(*) begin
    case(_zz_21_)
      1'b0 : begin
        _zz_25_ = _zz_23_[15 : 0];
      end
      default : begin
        _zz_25_ = _zz_23_[31 : 16];
      end
    endcase
  end

  always @ (*) begin
    _zz_1_ = _zz_1__0;
    if(io_mem_rsp_valid)begin
      _zz_1_ = (_zz_1__0 - 6'h01);
    end
  end

  always @ (*) begin
    _zz_1__0 = _zz_2_;
    if((io_mem_cmd_valid && io_mem_cmd_ready))begin
      _zz_1__0 = (_zz_2_ + 6'h08);
    end
  end

  always @ (*) begin
    pendingMemCmd_incrementIt = 1'b0;
    if((io_mem_cmd_valid && io_mem_cmd_ready))begin
      pendingMemCmd_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingMemCmd_decrementIt = 1'b0;
    if((io_mem_rsp_valid && io_mem_rsp_payload_last))begin
      pendingMemCmd_decrementIt = 1'b1;
    end
  end

  assign pendingMemCmd_willOverflowIfInc = ((pendingMemCmd_value == (3'b111)) && (! pendingMemCmd_decrementIt));
  assign pendingMemCmd_willOverflow = (pendingMemCmd_willOverflowIfInc && pendingMemCmd_incrementIt);
  always @ (*) begin
    if((pendingMemCmd_incrementIt && (! pendingMemCmd_decrementIt)))begin
      pendingMemCmd_finalIncrement = (3'b001);
    end else begin
      if(((! pendingMemCmd_incrementIt) && pendingMemCmd_decrementIt))begin
        pendingMemCmd_finalIncrement = (3'b111);
      end else begin
        pendingMemCmd_finalIncrement = (3'b000);
      end
    end
  end

  assign pendingMemCmd_valueNext = (pendingMemCmd_value + pendingMemCmd_finalIncrement);
  assign _zz_2_ = pendingMemRsp;
  assign toManyPendingCmd = ((3'b110) < pendingMemCmd_value);
  assign io_busy = isActive;
  assign memCmdLast = (memCmdCounter == io_size);
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(! _zz_26_) begin
      if(cmdActive)begin
        if(_zz_27_)begin
          io_mem_cmd_valid = 1'b1;
        end
      end
    end
  end

  assign io_mem_cmd_payload = (io_base + _zz_40_);
  assign memRsp_valid = io_mem_rsp_valid;
  assign memRsp_payload_last = ((! cmdActive) && (pendingMemRsp == 6'h01));
  assign memRsp_payload_fragment = io_mem_rsp_payload_fragment;
  assign fifoPop_valid = rspArea_fifo_io_pop_valid;
  assign fifoPop_payload_last = rspArea_fifo_io_pop_payload_last;
  assign fifoPop_payload_fragment = rspArea_fifo_io_pop_payload_fragment;
  always @ (*) begin
    rspArea_frameClockArea_popBeatCounter_willIncrement = 1'b0;
    if((rspArea_fifo_io_pop_valid && fifoPop_ready))begin
      rspArea_frameClockArea_popBeatCounter_willIncrement = 1'b1;
    end
  end

  assign rspArea_frameClockArea_popBeatCounter_willClear = 1'b0;
  assign rspArea_frameClockArea_popBeatCounter_willOverflowIfInc = (rspArea_frameClockArea_popBeatCounter_value == (3'b111));
  assign rspArea_frameClockArea_popBeatCounter_willOverflow = (rspArea_frameClockArea_popBeatCounter_willOverflowIfInc && rspArea_frameClockArea_popBeatCounter_willIncrement);
  always @ (*) begin
    rspArea_frameClockArea_popBeatCounter_valueNext = (rspArea_frameClockArea_popBeatCounter_value + _zz_42_);
    if(rspArea_frameClockArea_popBeatCounter_willClear)begin
      rspArea_frameClockArea_popBeatCounter_valueNext = (3'b000);
    end
  end

  assign _zz_4_ = {1'b1,{rspArea_frameClockArea_popCmdGray[4 : 0],_zz_3_}};
  always @ (*) begin
    _zz_5_ = _zz_6_;
    if(_zz_28_)begin
      _zz_5_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_6_ = _zz_7_;
    if(_zz_29_)begin
      _zz_6_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_7_ = _zz_8_;
    if(_zz_30_)begin
      _zz_7_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_8_ = _zz_9_;
    if(_zz_31_)begin
      _zz_8_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_9_ = _zz_10_;
    if(_zz_32_)begin
      _zz_9_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_10_ = 1'b0;
    if(_zz_33_)begin
      _zz_10_ = 1'b1;
    end
  end

  assign rspArea_popCmdGray = rspArea_frameClockArea_popCmdGray_buffercc_io_dataOut;
  assign _zz_12_ = {1'b1,{rspArea_pushCmdGray[4 : 0],_zz_11_}};
  always @ (*) begin
    _zz_13_ = _zz_14_;
    if(_zz_34_)begin
      _zz_13_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_14_ = _zz_15_;
    if(_zz_35_)begin
      _zz_14_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_15_ = _zz_16_;
    if(_zz_36_)begin
      _zz_15_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_16_ = _zz_17_;
    if(_zz_37_)begin
      _zz_16_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_17_ = _zz_18_;
    if(_zz_38_)begin
      _zz_17_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_18_ = 1'b0;
    if(_zz_39_)begin
      _zz_18_ = 1'b1;
    end
  end

  assign toManyPendingRsp = ((rspArea_pushCmdGray[6 : 5] == (~ rspArea_popCmdGray[6 : 5])) && (rspArea_pushCmdGray[4 : 0] == rspArea_popCmdGray[4 : 0]));
  always @ (*) begin
    _zz_19_ = 1'b0;
    if((io_frame_valid && io_frame_ready))begin
      _zz_19_ = 1'b1;
    end
  end

  assign _zz_22_ = (_zz_21_ == (1'b1));
  always @ (*) begin
    _zz_20_ = (_zz_21_ + _zz_19_);
    if(1'b0)begin
      _zz_20_ = (1'b0);
    end
  end

  assign io_frame_valid = fifoPop_valid;
  assign _zz_23_ = fifoPop_payload_fragment;
  assign _zz_24_ = _zz_25_;
  assign io_frame_payload_fragment_r = _zz_24_[4 : 0];
  assign io_frame_payload_fragment_g = _zz_24_[10 : 5];
  assign io_frame_payload_fragment_b = _zz_24_[15 : 11];
  assign io_frame_payload_last = (fifoPop_payload_last && _zz_22_);
  assign fifoPop_ready = (io_frame_ready && _zz_22_);
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingMemCmd_value <= (3'b000);
      pendingMemRsp <= 6'h0;
      isActive <= 1'b0;
      cmdActive <= 1'b0;
      rspArea_pushCmdGray <= 7'h0;
      _zz_11_ <= 1'b1;
    end else begin
      pendingMemCmd_value <= pendingMemCmd_valueNext;
      pendingMemRsp <= _zz_1_;
      if(_zz_26_)begin
        if(io_start)begin
          isActive <= 1'b1;
          cmdActive <= 1'b1;
        end
      end else begin
        if(cmdActive)begin
          if(_zz_27_)begin
            if((memCmdLast && io_mem_cmd_ready))begin
              cmdActive <= 1'b0;
            end
          end
        end else begin
          if((pendingMemRsp == 6'h0))begin
            isActive <= 1'b0;
          end
        end
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        if(_zz_39_)begin
          rspArea_pushCmdGray[0] <= (! rspArea_pushCmdGray[0]);
        end
        if(_zz_38_)begin
          rspArea_pushCmdGray[1] <= (! rspArea_pushCmdGray[1]);
        end
        if(_zz_37_)begin
          rspArea_pushCmdGray[2] <= (! rspArea_pushCmdGray[2]);
        end
        if(_zz_36_)begin
          rspArea_pushCmdGray[3] <= (! rspArea_pushCmdGray[3]);
        end
        if(_zz_35_)begin
          rspArea_pushCmdGray[4] <= (! rspArea_pushCmdGray[4]);
        end
        if(_zz_34_)begin
          rspArea_pushCmdGray[5] <= (! rspArea_pushCmdGray[5]);
        end
        if((_zz_12_[6] && (! _zz_13_)))begin
          rspArea_pushCmdGray[6] <= (! rspArea_pushCmdGray[6]);
        end
        _zz_11_ <= (! _zz_11_);
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_26_)begin
      if(io_start)begin
        memCmdCounter <= 18'h0;
      end
    end
    if((io_mem_cmd_valid && io_mem_cmd_ready))begin
      memCmdCounter <= (memCmdCounter + 18'h00001);
    end
  end

  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      rspArea_frameClockArea_popBeatCounter_value <= (3'b000);
      rspArea_frameClockArea_popCmdGray <= 7'h0;
      _zz_3_ <= 1'b1;
      _zz_21_ <= (1'b0);
    end else begin
      rspArea_frameClockArea_popBeatCounter_value <= rspArea_frameClockArea_popBeatCounter_valueNext;
      if(rspArea_frameClockArea_popBeatCounter_willOverflow)begin
        if(_zz_33_)begin
          rspArea_frameClockArea_popCmdGray[0] <= (! rspArea_frameClockArea_popCmdGray[0]);
        end
        if(_zz_32_)begin
          rspArea_frameClockArea_popCmdGray[1] <= (! rspArea_frameClockArea_popCmdGray[1]);
        end
        if(_zz_31_)begin
          rspArea_frameClockArea_popCmdGray[2] <= (! rspArea_frameClockArea_popCmdGray[2]);
        end
        if(_zz_30_)begin
          rspArea_frameClockArea_popCmdGray[3] <= (! rspArea_frameClockArea_popCmdGray[3]);
        end
        if(_zz_29_)begin
          rspArea_frameClockArea_popCmdGray[4] <= (! rspArea_frameClockArea_popCmdGray[4]);
        end
        if(_zz_28_)begin
          rspArea_frameClockArea_popCmdGray[5] <= (! rspArea_frameClockArea_popCmdGray[5]);
        end
        if((_zz_4_[6] && (! _zz_5_)))begin
          rspArea_frameClockArea_popCmdGray[6] <= (! rspArea_frameClockArea_popCmdGray[6]);
        end
        _zz_3_ <= (! _zz_3_);
      end
      _zz_21_ <= _zz_20_;
    end
  end


endmodule

module BufferCC_9_ (
  input               io_dataIn,
  output              io_dataOut,
  input               io_vgaClk,
  input               resetCtrl_vgaReset 
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_vgaClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module VgaCtrl (
  input               io_softReset,
  input      [11:0]   io_timings_h_colorStart,
  input      [11:0]   io_timings_h_colorEnd,
  input      [11:0]   io_timings_h_syncStart,
  input      [11:0]   io_timings_h_syncEnd,
  input      [11:0]   io_timings_v_colorStart,
  input      [11:0]   io_timings_v_colorEnd,
  input      [11:0]   io_timings_v_syncStart,
  input      [11:0]   io_timings_v_syncEnd,
  output              io_frameStart /* verilator public */ ,
  input               io_pixels_valid,
  output              io_pixels_ready,
  input      [4:0]    io_pixels_payload_r,
  input      [5:0]    io_pixels_payload_g,
  input      [4:0]    io_pixels_payload_b,
  output              io_vga_vSync,
  output              io_vga_hSync,
  output              io_vga_colorEn,
  output     [4:0]    io_vga_color_r,
  output     [5:0]    io_vga_color_g,
  output     [4:0]    io_vga_color_b,
  output              io_error /* verilator public */ ,
  input               io_vgaClk,
  input               resetCtrl_vgaReset 
);
  reg        [11:0]   h_counter;
  wire                h_syncStart;
  wire                h_syncEnd;
  wire                h_colorStart;
  wire                h_colorEnd;
  reg                 h_sync;
  reg                 h_colorEn;
  reg        [11:0]   v_counter;
  wire                v_syncStart;
  wire                v_syncEnd;
  wire                v_colorStart;
  wire                v_colorEnd;
  reg                 v_sync;
  reg                 v_colorEn;
  wire                colorEn;

  assign h_syncStart = (h_counter == io_timings_h_syncStart);
  assign h_syncEnd = (h_counter == io_timings_h_syncEnd);
  assign h_colorStart = (h_counter == io_timings_h_colorStart);
  assign h_colorEnd = (h_counter == io_timings_h_colorEnd);
  assign v_syncStart = (v_counter == io_timings_v_syncStart);
  assign v_syncEnd = (v_counter == io_timings_v_syncEnd);
  assign v_colorStart = (v_counter == io_timings_v_colorStart);
  assign v_colorEnd = (v_counter == io_timings_v_colorEnd);
  assign colorEn = (h_colorEn && v_colorEn);
  assign io_pixels_ready = colorEn;
  assign io_error = (colorEn && (! io_pixels_valid));
  assign io_frameStart = (v_syncStart && h_syncStart);
  assign io_vga_hSync = h_sync;
  assign io_vga_vSync = v_sync;
  assign io_vga_colorEn = colorEn;
  assign io_vga_color_r = io_pixels_payload_r;
  assign io_vga_color_g = io_pixels_payload_g;
  assign io_vga_color_b = io_pixels_payload_b;
  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      h_counter <= 12'h0;
      h_sync <= 1'b0;
      h_colorEn <= 1'b0;
      v_counter <= 12'h0;
      v_sync <= 1'b0;
      v_colorEn <= 1'b0;
    end else begin
      if(1'b1)begin
        h_counter <= (h_counter + 12'h001);
        if(h_syncEnd)begin
          h_counter <= 12'h0;
        end
      end
      if(h_syncStart)begin
        h_sync <= 1'b1;
      end
      if(h_syncEnd)begin
        h_sync <= 1'b0;
      end
      if(h_colorStart)begin
        h_colorEn <= 1'b1;
      end
      if(h_colorEnd)begin
        h_colorEn <= 1'b0;
      end
      if(io_softReset)begin
        h_counter <= 12'h0;
        h_sync <= 1'b0;
        h_colorEn <= 1'b0;
      end
      if(h_syncEnd)begin
        v_counter <= (v_counter + 12'h001);
        if(v_syncEnd)begin
          v_counter <= 12'h0;
        end
      end
      if(v_syncStart)begin
        v_sync <= 1'b1;
      end
      if(v_syncEnd)begin
        v_sync <= 1'b0;
      end
      if(v_colorStart)begin
        v_colorEn <= 1'b1;
      end
      if(v_colorEnd)begin
        v_colorEn <= 1'b0;
      end
      if(io_softReset)begin
        v_counter <= 12'h0;
        v_sync <= 1'b0;
        v_colorEn <= 1'b0;
      end
    end
  end


endmodule

module PulseCCByToggle (
  input               io_pulseIn,
  output              io_pulseOut,
  input               io_vgaClk,
  input               resetCtrl_vgaReset,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_1_;
  wire                inArea_target_buffercc_io_dataOut;
  reg                 inArea_target;
  wire                outArea_target;
  reg                 outArea_hit;

  BufferCC inArea_target_buffercc ( 
    .io_initial            (_zz_1_                             ), //i
    .io_dataIn             (inArea_target                      ), //i
    .io_dataOut            (inArea_target_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                 )  //i
  );
  assign _zz_1_ = 1'b0;
  assign outArea_target = inArea_target_buffercc_io_dataOut;
  assign io_pulseOut = (outArea_target != outArea_hit);
  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      inArea_target <= 1'b0;
    end else begin
      if(io_pulseIn)begin
        inArea_target <= (! inArea_target);
      end
    end
  end

  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      outArea_hit <= 1'b0;
    end else begin
      if((outArea_target != outArea_hit))begin
        outArea_hit <= (! outArea_hit);
      end
    end
  end


endmodule

module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  output              io_cpu_fetch_mmuBus_cmd_isValid,
  output     [31:0]   io_cpu_fetch_mmuBus_cmd_virtualAddress,
  output              io_cpu_fetch_mmuBus_cmd_bypassTranslation,
  input      [31:0]   io_cpu_fetch_mmuBus_rsp_physicalAddress,
  input               io_cpu_fetch_mmuBus_rsp_isIoAccess,
  input               io_cpu_fetch_mmuBus_rsp_allowRead,
  input               io_cpu_fetch_mmuBus_rsp_allowWrite,
  input               io_cpu_fetch_mmuBus_rsp_allowExecute,
  input               io_cpu_fetch_mmuBus_rsp_exception,
  input               io_cpu_fetch_mmuBus_rsp_refilling,
  output              io_cpu_fetch_mmuBus_end,
  input               io_cpu_fetch_mmuBus_busy,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  output              io_cpu_fetch_haltIt,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  output              io_cpu_decode_cacheMiss,
  output              io_cpu_decode_error,
  output              io_cpu_decode_mmuRefilling,
  output              io_cpu_decode_mmuException,
  input               io_cpu_decode_isUser,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input      [2:0]    _zz_11_,
  input      [31:0]   _zz_12_,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [21:0]   _zz_13_;
  reg        [31:0]   _zz_14_;
  wire                _zz_15_;
  wire                _zz_16_;
  wire       [0:0]    _zz_17_;
  wire       [0:0]    _zz_18_;
  wire       [21:0]   _zz_19_;
  reg                 _zz_1_;
  reg                 _zz_2_;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* syn_keep , keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [7:0]    lineLoader_flushCounter;
  reg                 _zz_3_;
  reg                 lineLoader_cmdSent;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* syn_keep , keep *) reg        [2:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [6:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [9:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire                _zz_4_;
  wire       [6:0]    _zz_5_;
  wire                _zz_6_;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [19:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [21:0]   _zz_7_;
  wire       [9:0]    _zz_8_;
  wire                _zz_9_;
  wire       [31:0]   fetchStage_read_waysValues_0_data;
  reg        [31:0]   decodeStage_mmuRsp_physicalAddress;
  reg                 decodeStage_mmuRsp_isIoAccess;
  reg                 decodeStage_mmuRsp_allowRead;
  reg                 decodeStage_mmuRsp_allowWrite;
  reg                 decodeStage_mmuRsp_allowExecute;
  reg                 decodeStage_mmuRsp_exception;
  reg                 decodeStage_mmuRsp_refilling;
  reg                 decodeStage_hit_tags_0_valid;
  reg                 decodeStage_hit_tags_0_error;
  reg        [19:0]   decodeStage_hit_tags_0_address;
  wire                decodeStage_hit_hits_0;
  wire                decodeStage_hit_valid;
  reg        [31:0]   _zz_10_;
  wire       [31:0]   decodeStage_hit_data;
  reg [21:0] ways_0_tags [0:127];
  reg [31:0] ways_0_datas [0:1023];

  assign _zz_15_ = (! lineLoader_flushCounter[7]);
  assign _zz_16_ = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign _zz_17_ = _zz_7_[0 : 0];
  assign _zz_18_ = _zz_7_[1 : 1];
  assign _zz_19_ = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @ (posedge io_axiClk) begin
    if(_zz_2_) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_19_;
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_6_) begin
      _zz_13_ <= ways_0_tags[_zz_5_];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1_) begin
      ways_0_datas[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_9_) begin
      _zz_14_ <= ways_0_datas[_zz_8_];
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if(lineLoader_write_data_0_valid)begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2_ = 1'b0;
    if(lineLoader_write_tag_0_valid)begin
      _zz_2_ = 1'b1;
    end
  end

  assign io_cpu_fetch_haltIt = io_cpu_fetch_mmuBus_busy;
  always @ (*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid)begin
      if((lineLoader_wordIndex == (3'b111)))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(_zz_15_)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if((! _zz_3_))begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 5],5'h0};
  assign io_mem_cmd_payload_size = (3'b101);
  always @ (*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if((! lineLoader_valid))begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = 1'b1;
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  assign _zz_4_ = 1'b1;
  assign lineLoader_write_tag_0_valid = ((_zz_4_ && lineLoader_fire) || (! lineLoader_flushCounter[7]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[7] ? lineLoader_address[11 : 5] : lineLoader_flushCounter[6 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[7];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 12];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && _zz_4_);
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[11 : 5],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign _zz_5_ = io_cpu_prefetch_pc[11 : 5];
  assign _zz_6_ = (! io_cpu_fetch_isStuck);
  assign _zz_7_ = _zz_13_;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_17_[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_18_[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_7_[21 : 2];
  assign _zz_8_ = io_cpu_prefetch_pc[11 : 2];
  assign _zz_9_ = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_waysValues_0_data = _zz_14_;
  assign io_cpu_fetch_data = fetchStage_read_waysValues_0_data;
  assign io_cpu_fetch_mmuBus_cmd_isValid = io_cpu_fetch_isValid;
  assign io_cpu_fetch_mmuBus_cmd_virtualAddress = io_cpu_fetch_pc;
  assign io_cpu_fetch_mmuBus_cmd_bypassTranslation = 1'b0;
  assign io_cpu_fetch_mmuBus_end = ((! io_cpu_fetch_isStuck) || io_cpu_fetch_isRemoved);
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuBus_rsp_physicalAddress;
  assign decodeStage_hit_hits_0 = (decodeStage_hit_tags_0_valid && (decodeStage_hit_tags_0_address == decodeStage_mmuRsp_physicalAddress[31 : 12]));
  assign decodeStage_hit_valid = (decodeStage_hit_hits_0 != (1'b0));
  assign decodeStage_hit_data = _zz_10_;
  assign io_cpu_decode_data = decodeStage_hit_data;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = decodeStage_hit_tags_0_error;
  assign io_cpu_decode_mmuRefilling = decodeStage_mmuRsp_refilling;
  assign io_cpu_decode_mmuException = ((! decodeStage_mmuRsp_refilling) && (decodeStage_mmuRsp_exception || (! decodeStage_mmuRsp_allowExecute)));
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wordIndex <= (3'b000);
    end else begin
      if(lineLoader_fire)begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire)begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid)begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush)begin
        lineLoader_flushPending <= 1'b1;
      end
      if(_zz_16_)begin
        lineLoader_flushPending <= 1'b0;
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire)begin
        lineLoader_cmdSent <= 1'b0;
      end
      if(io_mem_rsp_valid)begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + (3'b001));
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(_zz_15_)begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 8'h01);
    end
    _zz_3_ <= lineLoader_flushCounter[7];
    if(_zz_16_)begin
      lineLoader_flushCounter <= 8'h0;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_mmuRsp_physicalAddress <= io_cpu_fetch_mmuBus_rsp_physicalAddress;
      decodeStage_mmuRsp_isIoAccess <= io_cpu_fetch_mmuBus_rsp_isIoAccess;
      decodeStage_mmuRsp_allowRead <= io_cpu_fetch_mmuBus_rsp_allowRead;
      decodeStage_mmuRsp_allowWrite <= io_cpu_fetch_mmuBus_rsp_allowWrite;
      decodeStage_mmuRsp_allowExecute <= io_cpu_fetch_mmuBus_rsp_allowExecute;
      decodeStage_mmuRsp_exception <= io_cpu_fetch_mmuBus_rsp_exception;
      decodeStage_mmuRsp_refilling <= io_cpu_fetch_mmuBus_rsp_refilling;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_tags_0_valid <= fetchStage_read_waysValues_0_tag_valid;
      decodeStage_hit_tags_0_error <= fetchStage_read_waysValues_0_tag_error;
      decodeStage_hit_tags_0_address <= fetchStage_read_waysValues_0_tag_address;
    end
    if((! io_cpu_decode_isStuck))begin
      _zz_10_ <= fetchStage_read_waysValues_0_data;
    end
    if((_zz_11_ != (3'b000)))begin
      _zz_10_ <= _zz_12_;
    end
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  input               io_cpu_execute_args_wr,
  input      [31:0]   io_cpu_execute_args_data,
  input      [1:0]    io_cpu_execute_args_size,
  input               io_cpu_memory_isValid,
  input               io_cpu_memory_isStuck,
  input               io_cpu_memory_isRemoved,
  output              io_cpu_memory_isWrite,
  input      [31:0]   io_cpu_memory_address,
  output              io_cpu_memory_mmuBus_cmd_isValid,
  output     [31:0]   io_cpu_memory_mmuBus_cmd_virtualAddress,
  output              io_cpu_memory_mmuBus_cmd_bypassTranslation,
  input      [31:0]   io_cpu_memory_mmuBus_rsp_physicalAddress,
  input               io_cpu_memory_mmuBus_rsp_isIoAccess,
  input               io_cpu_memory_mmuBus_rsp_allowRead,
  input               io_cpu_memory_mmuBus_rsp_allowWrite,
  input               io_cpu_memory_mmuBus_rsp_allowExecute,
  input               io_cpu_memory_mmuBus_rsp_exception,
  input               io_cpu_memory_mmuBus_rsp_refilling,
  output              io_cpu_memory_mmuBus_end,
  input               io_cpu_memory_mmuBus_busy,
  input               io_cpu_writeBack_isValid,
  input               io_cpu_writeBack_isStuck,
  input               io_cpu_writeBack_isUser,
  output reg          io_cpu_writeBack_haltIt,
  output              io_cpu_writeBack_isWrite,
  output reg [31:0]   io_cpu_writeBack_data,
  input      [31:0]   io_cpu_writeBack_address,
  output              io_cpu_writeBack_mmuException,
  output              io_cpu_writeBack_unalignedAccess,
  output reg          io_cpu_writeBack_accessError,
  output reg          io_cpu_redo,
  input               io_cpu_flush_valid,
  output reg          io_cpu_flush_ready,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output reg          io_mem_cmd_payload_wr,
  output reg [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output     [3:0]    io_mem_cmd_payload_mask,
  output reg [2:0]    io_mem_cmd_payload_length,
  output reg          io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [21:0]   _zz_10_;
  reg        [31:0]   _zz_11_;
  wire                _zz_12_;
  wire                _zz_13_;
  wire                _zz_14_;
  wire                _zz_15_;
  wire                _zz_16_;
  wire       [0:0]    _zz_17_;
  wire       [0:0]    _zz_18_;
  wire       [0:0]    _zz_19_;
  wire       [2:0]    _zz_20_;
  wire       [1:0]    _zz_21_;
  wire       [21:0]   _zz_22_;
  reg                 _zz_1_;
  reg                 _zz_2_;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [6:0]    tagsReadCmd_payload;
  reg                 tagsWriteCmd_valid;
  reg        [0:0]    tagsWriteCmd_payload_way;
  reg        [6:0]    tagsWriteCmd_payload_address;
  reg                 tagsWriteCmd_payload_data_valid;
  reg                 tagsWriteCmd_payload_data_error;
  reg        [19:0]   tagsWriteCmd_payload_data_address;
  reg                 tagsWriteLastCmd_valid;
  reg        [0:0]    tagsWriteLastCmd_payload_way;
  reg        [6:0]    tagsWriteLastCmd_payload_address;
  reg                 tagsWriteLastCmd_payload_data_valid;
  reg                 tagsWriteLastCmd_payload_data_error;
  reg        [19:0]   tagsWriteLastCmd_payload_data_address;
  reg                 dataReadCmd_valid;
  reg        [9:0]    dataReadCmd_payload;
  reg                 dataWriteCmd_valid;
  reg        [0:0]    dataWriteCmd_payload_way;
  reg        [9:0]    dataWriteCmd_payload_address;
  reg        [31:0]   dataWriteCmd_payload_data;
  reg        [3:0]    dataWriteCmd_payload_mask;
  wire                _zz_3_;
  wire                ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_error;
  wire       [19:0]   ways_0_tagsReadRsp_address;
  wire       [21:0]   _zz_4_;
  wire                _zz_5_;
  wire       [31:0]   ways_0_dataReadRsp;
  reg        [3:0]    _zz_6_;
  wire       [3:0]    stage0_mask;
  wire       [0:0]    stage0_colisions;
  reg                 stageA_request_wr;
  reg        [31:0]   stageA_request_data;
  reg        [1:0]    stageA_request_size;
  reg        [3:0]    stageA_mask;
  wire                stageA_wayHits_0;
  reg        [0:0]    stage0_colisions_regNextWhen;
  wire       [0:0]    _zz_7_;
  wire       [0:0]    stageA_colisions;
  reg                 stageB_request_wr;
  reg        [31:0]   stageB_request_data;
  reg        [1:0]    stageB_request_size;
  reg                 stageB_mmuRspFreeze;
  reg        [31:0]   stageB_mmuRsp_physicalAddress;
  reg                 stageB_mmuRsp_isIoAccess;
  reg                 stageB_mmuRsp_allowRead;
  reg                 stageB_mmuRsp_allowWrite;
  reg                 stageB_mmuRsp_allowExecute;
  reg                 stageB_mmuRsp_exception;
  reg                 stageB_mmuRsp_refilling;
  reg                 stageB_tagsReadRsp_0_valid;
  reg                 stageB_tagsReadRsp_0_error;
  reg        [19:0]   stageB_tagsReadRsp_0_address;
  reg        [31:0]   stageB_dataReadRsp_0;
  wire       [0:0]    _zz_8_;
  reg        [0:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  reg        [3:0]    stageB_mask;
  reg        [0:0]    stageB_colisions;
  reg                 stageB_loaderValid;
  reg                 stageB_flusher_valid;
  reg                 stageB_flusher_start;
  wire       [31:0]   stageB_requestDataBypass;
  wire                stageB_isAmo;
  reg                 stageB_memCmdSent;
  wire       [0:0]    _zz_9_;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [2:0]    loader_counter_valueNext;
  reg        [2:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [0:0]    loader_waysAllocator;
  reg                 loader_error;
  reg [21:0] ways_0_tags [0:127];
  reg [7:0] ways_0_data_symbol0 [0:1023];
  reg [7:0] ways_0_data_symbol1 [0:1023];
  reg [7:0] ways_0_data_symbol2 [0:1023];
  reg [7:0] ways_0_data_symbol3 [0:1023];
  reg [7:0] _zz_23_;
  reg [7:0] _zz_24_;
  reg [7:0] _zz_25_;
  reg [7:0] _zz_26_;

  assign _zz_12_ = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  assign _zz_13_ = (((stageB_mmuRsp_refilling || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess);
  assign _zz_14_ = (stageB_waysHit || (stageB_request_wr && (! stageB_isAmo)));
  assign _zz_15_ = (loader_valid && io_mem_rsp_valid);
  assign _zz_16_ = (stageB_mmuRsp_physicalAddress[11 : 5] != 7'h7f);
  assign _zz_17_ = _zz_4_[0 : 0];
  assign _zz_18_ = _zz_4_[1 : 1];
  assign _zz_19_ = loader_counter_willIncrement;
  assign _zz_20_ = {2'd0, _zz_19_};
  assign _zz_21_ = {loader_waysAllocator,loader_waysAllocator[0]};
  assign _zz_22_ = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  always @ (posedge io_axiClk) begin
    if(_zz_3_) begin
      _zz_10_ <= ways_0_tags[tagsReadCmd_payload];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_2_) begin
      ways_0_tags[tagsWriteCmd_payload_address] <= _zz_22_;
    end
  end

  always @ (*) begin
    _zz_11_ = {_zz_26_, _zz_25_, _zz_24_, _zz_23_};
  end
  always @ (posedge io_axiClk) begin
    if(_zz_5_) begin
      _zz_23_ <= ways_0_data_symbol0[dataReadCmd_payload];
      _zz_24_ <= ways_0_data_symbol1[dataReadCmd_payload];
      _zz_25_ <= ways_0_data_symbol2[dataReadCmd_payload];
      _zz_26_ <= ways_0_data_symbol3[dataReadCmd_payload];
    end
  end

  always @ (posedge io_axiClk) begin
    if(dataWriteCmd_payload_mask[0] && _zz_1_) begin
      ways_0_data_symbol0[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[7 : 0];
    end
    if(dataWriteCmd_payload_mask[1] && _zz_1_) begin
      ways_0_data_symbol1[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[15 : 8];
    end
    if(dataWriteCmd_payload_mask[2] && _zz_1_) begin
      ways_0_data_symbol2[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[23 : 16];
    end
    if(dataWriteCmd_payload_mask[3] && _zz_1_) begin
      ways_0_data_symbol3[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[31 : 24];
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[0]))begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2_ = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]))begin
      _zz_2_ = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign _zz_3_ = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_4_ = _zz_10_;
  assign ways_0_tagsReadRsp_valid = _zz_17_[0];
  assign ways_0_tagsReadRsp_error = _zz_18_[0];
  assign ways_0_tagsReadRsp_address = _zz_4_[21 : 2];
  assign _zz_5_ = (dataReadCmd_valid && (! io_cpu_memory_isStuck));
  assign ways_0_dataReadRsp = _zz_11_;
  always @ (*) begin
    tagsReadCmd_valid = 1'b0;
    if(_zz_12_)begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsReadCmd_payload = 7'h0;
    if(_zz_12_)begin
      tagsReadCmd_payload = io_cpu_execute_address[11 : 5];
    end
  end

  always @ (*) begin
    dataReadCmd_valid = 1'b0;
    if(_zz_12_)begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataReadCmd_payload = 10'h0;
    if(_zz_12_)begin
      dataReadCmd_payload = io_cpu_execute_address[11 : 2];
    end
  end

  always @ (*) begin
    tagsWriteCmd_valid = 1'b0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_valid = stageB_flusher_valid;
    end
    if(_zz_13_)begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_way = (1'bx);
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_way = (1'b1);
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_address = 7'h0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_valid = 1'bx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_data_valid = 1'b0;
    end
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_data_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_error = 1'bx;
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_data_error = (loader_error || io_mem_rsp_payload_error);
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_address = 20'h0;
    if(loader_counter_willOverflow)begin
      tagsWriteCmd_payload_data_address = stageB_mmuRsp_physicalAddress[31 : 12];
    end
  end

  always @ (*) begin
    dataWriteCmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          if((stageB_request_wr && stageB_waysHit))begin
            dataWriteCmd_valid = 1'b1;
          end
        end
      end
    end
    if(_zz_13_)begin
      dataWriteCmd_valid = 1'b0;
    end
    if(_zz_15_)begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_way = (1'bx);
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_way = stageB_waysHits;
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_address = 10'h0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 2];
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[11 : 5],loader_counter_value};
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_data = 32'h0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_data = stageB_requestDataBypass;
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_mask = (4'bxxxx);
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          dataWriteCmd_payload_mask = stageB_mask;
        end
      end
    end
    if(_zz_15_)begin
      dataWriteCmd_payload_mask = (4'b1111);
    end
  end

  always @ (*) begin
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_6_ = (4'b0001);
      end
      2'b01 : begin
        _zz_6_ = (4'b0011);
      end
      default : begin
        _zz_6_ = (4'b1111);
      end
    endcase
  end

  assign stage0_mask = (_zz_6_ <<< io_cpu_execute_address[1 : 0]);
  assign stage0_colisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == io_cpu_execute_address[11 : 2])) && ((stage0_mask & dataWriteCmd_payload_mask) != (4'b0000)));
  assign io_cpu_memory_mmuBus_cmd_isValid = io_cpu_memory_isValid;
  assign io_cpu_memory_mmuBus_cmd_virtualAddress = io_cpu_memory_address;
  assign io_cpu_memory_mmuBus_cmd_bypassTranslation = 1'b0;
  assign io_cpu_memory_mmuBus_end = ((! io_cpu_memory_isStuck) || io_cpu_memory_isRemoved);
  assign io_cpu_memory_isWrite = stageA_request_wr;
  assign stageA_wayHits_0 = ((io_cpu_memory_mmuBus_rsp_physicalAddress[31 : 12] == ways_0_tagsReadRsp_address) && ways_0_tagsReadRsp_valid);
  assign _zz_7_[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == io_cpu_memory_address[11 : 2])) && ((stageA_mask & dataWriteCmd_payload_mask) != (4'b0000)));
  assign stageA_colisions = (stage0_colisions_regNextWhen | _zz_7_);
  always @ (*) begin
    stageB_mmuRspFreeze = 1'b0;
    if((stageB_loaderValid || loader_valid))begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign _zz_8_[0] = stageA_wayHits_0;
  assign stageB_waysHit = (stageB_waysHits != (1'b0));
  assign stageB_dataMux = stageB_dataReadRsp_0;
  always @ (*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(! _zz_14_) begin
          if(io_mem_cmd_ready)begin
            stageB_loaderValid = 1'b1;
          end
        end
      end
    end
    if(_zz_13_)begin
      stageB_loaderValid = 1'b0;
    end
  end

  always @ (*) begin
    io_cpu_writeBack_haltIt = io_cpu_writeBack_isValid;
    if(stageB_flusher_valid)begin
      io_cpu_writeBack_haltIt = 1'b1;
    end
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        if((stageB_request_wr ? io_mem_cmd_ready : io_mem_rsp_valid))begin
          io_cpu_writeBack_haltIt = 1'b0;
        end
      end else begin
        if(_zz_14_)begin
          if(((! stageB_request_wr) || io_mem_cmd_ready))begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end
      end
    end
    if(_zz_13_)begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  always @ (*) begin
    io_cpu_flush_ready = 1'b0;
    if(stageB_flusher_start)begin
      io_cpu_flush_ready = 1'b1;
    end
  end

  assign stageB_requestDataBypass = stageB_request_data;
  assign stageB_isAmo = 1'b0;
  always @ (*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(_zz_14_)begin
          if((((! stageB_request_wr) || stageB_isAmo) && ((stageB_colisions & stageB_waysHits) != (1'b0))))begin
            io_cpu_redo = 1'b1;
          end
        end
      end
    end
    if((io_cpu_writeBack_isValid && stageB_mmuRsp_refilling))begin
      io_cpu_redo = 1'b1;
    end
    if(loader_valid)begin
      io_cpu_redo = 1'b1;
    end
  end

  always @ (*) begin
    io_cpu_writeBack_accessError = 1'b0;
    if(stageB_mmuRsp_isIoAccess)begin
      io_cpu_writeBack_accessError = (io_mem_rsp_valid && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = ((stageB_waysHits & _zz_9_) != (1'b0));
    end
  end

  assign io_cpu_writeBack_mmuException = (io_cpu_writeBack_isValid && ((stageB_mmuRsp_exception || ((! stageB_mmuRsp_allowWrite) && stageB_request_wr)) || ((! stageB_mmuRsp_allowRead) && ((! stageB_request_wr) || stageB_isAmo))));
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && (((stageB_request_size == (2'b10)) && (stageB_mmuRsp_physicalAddress[1 : 0] != (2'b00))) || ((stageB_request_size == (2'b01)) && (stageB_mmuRsp_physicalAddress[0 : 0] != (1'b0)))));
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_valid = (! stageB_memCmdSent);
      end else begin
        if(_zz_14_)begin
          if(stageB_request_wr)begin
            io_mem_cmd_valid = 1'b1;
          end
        end else begin
          if((! stageB_memCmdSent))begin
            io_mem_cmd_valid = 1'b1;
          end
        end
      end
    end
    if(_zz_13_)begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_address = 32'h0;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],(2'b00)};
      end else begin
        if(_zz_14_)begin
          io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],(2'b00)};
        end else begin
          io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 5],5'h0};
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_length = (3'bxxx);
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_payload_length = (3'b000);
      end else begin
        if(_zz_14_)begin
          io_mem_cmd_payload_length = (3'b000);
        end else begin
          io_mem_cmd_payload_length = (3'b111);
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_last = 1'bx;
    if(io_cpu_writeBack_isValid)begin
      if(stageB_mmuRsp_isIoAccess)begin
        io_mem_cmd_payload_last = 1'b1;
      end else begin
        if(_zz_14_)begin
          io_mem_cmd_payload_last = 1'b1;
        end else begin
          io_mem_cmd_payload_last = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_wr = stageB_request_wr;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_mmuRsp_isIoAccess) begin
        if(! _zz_14_) begin
          io_mem_cmd_payload_wr = 1'b0;
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  always @ (*) begin
    if(stageB_mmuRsp_isIoAccess)begin
      io_cpu_writeBack_data = io_mem_rsp_payload_data;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
  end

  assign _zz_9_[0] = stageB_tagsReadRsp_0_error;
  always @ (*) begin
    loader_counter_willIncrement = 1'b0;
    if(_zz_15_)begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == (3'b111));
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @ (*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_20_);
    if(loader_counter_willClear)begin
      loader_counter_valueNext = (3'b000);
    end
  end

  always @ (posedge io_axiClk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    if((! io_cpu_memory_isStuck))begin
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_data <= io_cpu_execute_args_data;
      stageA_request_size <= io_cpu_execute_args_size;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_mask <= stage0_mask;
    end
    if((! io_cpu_memory_isStuck))begin
      stage0_colisions_regNextWhen <= stage0_colisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_request_wr <= stageA_request_wr;
      stageB_request_data <= stageA_request_data;
      stageB_request_size <= stageA_request_size;
    end
    if(((! io_cpu_writeBack_isStuck) && (! stageB_mmuRspFreeze)))begin
      stageB_mmuRsp_physicalAddress <= io_cpu_memory_mmuBus_rsp_physicalAddress;
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuBus_rsp_isIoAccess;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuBus_rsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuBus_rsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuBus_rsp_allowExecute;
      stageB_mmuRsp_exception <= io_cpu_memory_mmuBus_rsp_exception;
      stageB_mmuRsp_refilling <= io_cpu_memory_mmuBus_rsp_refilling;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_tagsReadRsp_0_valid <= ways_0_tagsReadRsp_valid;
      stageB_tagsReadRsp_0_error <= ways_0_tagsReadRsp_error;
      stageB_tagsReadRsp_0_address <= ways_0_tagsReadRsp_address;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataReadRsp_0 <= ways_0_dataReadRsp;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_waysHits <= _zz_8_;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_mask <= stageA_mask;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_colisions <= stageA_colisions;
    end
    if(stageB_flusher_valid)begin
      if(_zz_16_)begin
        stageB_mmuRsp_physicalAddress[11 : 5] <= (stageB_mmuRsp_physicalAddress[11 : 5] + 7'h01);
      end
    end
    if(stageB_flusher_start)begin
      stageB_mmuRsp_physicalAddress[11 : 5] <= 7'h0;
    end
    `ifndef SYNTHESIS
      `ifdef FORMAL
        assert((! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck)))
      `else
        if(!(! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck))) begin
          $display("FAILURE writeBack stuck by another plugin is not allowed");
          $finish;
        end
      `endif
    `endif
  end

  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      stageB_flusher_valid <= 1'b0;
      stageB_flusher_start <= 1'b1;
      stageB_memCmdSent <= 1'b0;
      loader_valid <= 1'b0;
      loader_counter_value <= (3'b000);
      loader_waysAllocator <= (1'b1);
      loader_error <= 1'b0;
    end else begin
      if(stageB_flusher_valid)begin
        if(! _zz_16_) begin
          stageB_flusher_valid <= 1'b0;
        end
      end
      stageB_flusher_start <= ((((((! stageB_flusher_start) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start)begin
        stageB_flusher_valid <= 1'b1;
      end
      if(io_mem_cmd_ready)begin
        stageB_memCmdSent <= 1'b1;
      end
      if((! io_cpu_writeBack_isStuck))begin
        stageB_memCmdSent <= 1'b0;
      end
      if(stageB_loaderValid)begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(_zz_15_)begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_counter_willOverflow)begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
      end
      if((! loader_valid))begin
        loader_waysAllocator <= _zz_21_[0:0];
      end
    end
  end


endmodule

module FlowCCByToggle (
  input               io_input_valid,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment,
  output              io_output_valid,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment,
  input               io_jtag_tck,
  input               io_axiClk,
  input               resetCtrl_systemReset 
);
  wire                inputArea_target_buffercc_io_dataOut;
  wire                outHitSignal;
  reg                 inputArea_target = 0;
  reg                 inputArea_data_last;
  reg        [0:0]    inputArea_data_fragment;
  wire                outputArea_target;
  reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire                outputArea_flow_payload_last;
  wire       [0:0]    outputArea_flow_payload_fragment;
  reg                 outputArea_flow_regNext_valid;
  reg                 outputArea_flow_regNext_payload_last;
  reg        [0:0]    outputArea_flow_regNext_payload_fragment;

  BufferCC_5_ inputArea_target_buffercc ( 
    .io_dataIn                (inputArea_target                      ), //i
    .io_dataOut               (inputArea_target_buffercc_io_dataOut  ), //o
    .io_axiClk                (io_axiClk                             ), //i
    .resetCtrl_systemReset    (resetCtrl_systemReset                 )  //i
  );
  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload_last = inputArea_data_last;
  assign outputArea_flow_payload_fragment = inputArea_data_fragment;
  assign io_output_valid = outputArea_flow_regNext_valid;
  assign io_output_payload_last = outputArea_flow_regNext_payload_last;
  assign io_output_payload_fragment = outputArea_flow_regNext_payload_fragment;
  always @ (posedge io_jtag_tck) begin
    if(io_input_valid)begin
      inputArea_target <= (! inputArea_target);
      inputArea_data_last <= io_input_payload_last;
      inputArea_data_fragment <= io_input_payload_fragment;
    end
  end

  always @ (posedge io_axiClk) begin
    outputArea_hit <= outputArea_target;
    outputArea_flow_regNext_payload_last <= outputArea_flow_payload_last;
    outputArea_flow_regNext_payload_fragment <= outputArea_flow_payload_fragment;
  end

  always @ (posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if (resetCtrl_systemReset) begin
      outputArea_flow_regNext_valid <= 1'b0;
    end else begin
      outputArea_flow_regNext_valid <= outputArea_flow_valid;
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [7:0]    io_axi_ar_payload_len,
  input      [1:0]    io_axi_ar_payload_burst,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_1_;
  reg                 sendRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1_ = (io_axi_ar_valid && io_axi_ar_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_resp = (2'b11);
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      sendRsp <= 1'b0;
    end else begin
      if(_zz_1_)begin
        sendRsp <= 1'b1;
      end
      if(sendRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1_)begin
      remaining <= io_axi_ar_payload_len;
    end
    if(sendRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module Axi4SharedErrorSlave (
  input               io_axi_arw_valid,
  output              io_axi_arw_ready,
  input      [31:0]   io_axi_arw_payload_addr,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [3:0]    io_axi_arw_payload_cache,
  input      [2:0]    io_axi_arw_payload_prot,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_1_;
  reg                 consumeData;
  reg                 sendReadRsp;
  reg                 sendWriteRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1_ = (io_axi_arw_valid && io_axi_arw_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_arw_ready = (! ((consumeData || sendWriteRsp) || sendReadRsp));
  assign io_axi_w_ready = consumeData;
  assign io_axi_b_valid = sendWriteRsp;
  assign io_axi_b_payload_resp = (2'b11);
  assign io_axi_r_valid = sendReadRsp;
  assign io_axi_r_payload_resp = (2'b11);
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      consumeData <= 1'b0;
      sendReadRsp <= 1'b0;
      sendWriteRsp <= 1'b0;
    end else begin
      if(_zz_1_)begin
        consumeData <= io_axi_arw_payload_write;
        sendReadRsp <= (! io_axi_arw_payload_write);
      end
      if(((io_axi_w_valid && io_axi_w_ready) && io_axi_w_payload_last))begin
        consumeData <= 1'b0;
        sendWriteRsp <= 1'b1;
      end
      if((io_axi_b_valid && io_axi_b_ready))begin
        sendWriteRsp <= 1'b0;
      end
      if(sendReadRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendReadRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1_)begin
      remaining <= io_axi_arw_payload_len;
    end
    if(sendReadRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave_1_ (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [7:0]    io_axi_ar_payload_len,
  input      [2:0]    io_axi_ar_payload_size,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_1_;
  reg                 sendRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1_ = (io_axi_ar_valid && io_axi_ar_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      sendRsp <= 1'b0;
    end else begin
      if(_zz_1_)begin
        sendRsp <= 1'b1;
      end
      if(sendRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1_)begin
      remaining <= io_axi_ar_payload_len;
    end
    if(sendRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [11:0]   io_inputs_0_payload_addr,
  input      [2:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [11:0]   io_inputs_1_payload_addr,
  input      [2:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [11:0]   io_output_payload_addr,
  output     [2:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [3:0]    _zz_6_;
  wire       [1:0]    _zz_7_;
  wire       [3:0]    _zz_8_;
  wire       [0:0]    _zz_9_;
  wire       [0:0]    _zz_10_;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_1_;
  wire       [3:0]    _zz_2_;
  wire       [3:0]    _zz_3_;
  wire       [1:0]    _zz_4_;
  wire                _zz_5_;

  assign _zz_6_ = (_zz_2_ - _zz_8_);
  assign _zz_7_ = {maskLocked_0,maskLocked_1};
  assign _zz_8_ = {2'd0, _zz_7_};
  assign _zz_9_ = _zz_4_[0 : 0];
  assign _zz_10_ = _zz_4_[1 : 1];
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_1_ = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_2_ = {_zz_1_,_zz_1_};
  assign _zz_3_ = (_zz_2_ & (~ _zz_6_));
  assign _zz_4_ = (_zz_3_[3 : 2] | _zz_3_[1 : 0]);
  assign maskProposal_0 = _zz_9_[0];
  assign maskProposal_1 = _zz_10_[0];
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_write = (maskRouted_0 ? io_inputs_0_payload_write : io_inputs_1_payload_write);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_5_ = io_chosenOH[1];
  assign io_chosen = _zz_5_;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [11:0]   io_input_payload_addr,
  input      [2:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [11:0]   io_outputs_0_payload_addr,
  output     [2:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [11:0]   io_outputs_1_payload_addr,
  output     [2:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_1_;
  reg                 _zz_2_;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1_))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2_))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1_);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_1_valid = (io_input_valid && _zz_2_);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1_ <= 1'b1;
      _zz_2_ <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1_ <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2_ <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1_ <= 1'b1;
        _zz_2_ <= 1'b1;
      end
    end
  end


endmodule

module StreamFifoLowLatency_1_ (
  input               io_push_valid,
  output              io_push_ready,
  output reg          io_pop_valid,
  input               io_pop_ready,
  input               io_flush,
  output     [2:0]    io_occupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [0:0]    _zz_1_;
  wire       [1:0]    _zz_2_;
  wire       [0:0]    _zz_3_;
  wire       [1:0]    _zz_4_;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [1:0]    pushPtr_valueNext;
  reg        [1:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [1:0]    popPtr_valueNext;
  reg        [1:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [1:0]    ptrDif;

  assign _zz_1_ = pushPtr_willIncrement;
  assign _zz_2_ = {1'd0, _zz_1_};
  assign _zz_3_ = popPtr_willIncrement;
  assign _zz_4_ = {1'd0, _zz_3_};
  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == (2'b11));
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_2_);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = (2'b00);
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == (2'b11));
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_4_);
    if(popPtr_willClear)begin
      popPtr_valueNext = (2'b00);
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if((! empty))begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pushPtr_value <= (2'b00);
      popPtr_value <= (2'b00);
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamArbiter_1_ (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [25:0]   io_inputs_0_payload_addr,
  input      [1:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [25:0]   io_inputs_1_payload_addr,
  input      [1:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [25:0]   io_inputs_2_payload_addr,
  input      [1:0]    io_inputs_2_payload_id,
  input      [7:0]    io_inputs_2_payload_len,
  input      [2:0]    io_inputs_2_payload_size,
  input      [1:0]    io_inputs_2_payload_burst,
  input               io_inputs_2_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [25:0]   io_output_payload_addr,
  output     [1:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [25:0]   _zz_8_;
  reg        [1:0]    _zz_9_;
  reg        [7:0]    _zz_10_;
  reg        [2:0]    _zz_11_;
  reg        [1:0]    _zz_12_;
  reg                 _zz_13_;
  wire       [5:0]    _zz_14_;
  wire       [2:0]    _zz_15_;
  wire       [5:0]    _zz_16_;
  wire       [0:0]    _zz_17_;
  wire       [0:0]    _zz_18_;
  wire       [0:0]    _zz_19_;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_1_;
  wire       [5:0]    _zz_2_;
  wire       [5:0]    _zz_3_;
  wire       [2:0]    _zz_4_;
  wire       [1:0]    _zz_5_;
  wire                _zz_6_;
  wire                _zz_7_;

  assign _zz_14_ = (_zz_2_ - _zz_16_);
  assign _zz_15_ = {maskLocked_1,{maskLocked_0,maskLocked_2}};
  assign _zz_16_ = {3'd0, _zz_15_};
  assign _zz_17_ = _zz_4_[0 : 0];
  assign _zz_18_ = _zz_4_[1 : 1];
  assign _zz_19_ = _zz_4_[2 : 2];
  always @(*) begin
    case(_zz_5_)
      2'b00 : begin
        _zz_8_ = io_inputs_0_payload_addr;
        _zz_9_ = io_inputs_0_payload_id;
        _zz_10_ = io_inputs_0_payload_len;
        _zz_11_ = io_inputs_0_payload_size;
        _zz_12_ = io_inputs_0_payload_burst;
        _zz_13_ = io_inputs_0_payload_write;
      end
      2'b01 : begin
        _zz_8_ = io_inputs_1_payload_addr;
        _zz_9_ = io_inputs_1_payload_id;
        _zz_10_ = io_inputs_1_payload_len;
        _zz_11_ = io_inputs_1_payload_size;
        _zz_12_ = io_inputs_1_payload_burst;
        _zz_13_ = io_inputs_1_payload_write;
      end
      default : begin
        _zz_8_ = io_inputs_2_payload_addr;
        _zz_9_ = io_inputs_2_payload_id;
        _zz_10_ = io_inputs_2_payload_len;
        _zz_11_ = io_inputs_2_payload_size;
        _zz_12_ = io_inputs_2_payload_burst;
        _zz_13_ = io_inputs_2_payload_write;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_1_ = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_2_ = {_zz_1_,_zz_1_};
  assign _zz_3_ = (_zz_2_ & (~ _zz_14_));
  assign _zz_4_ = (_zz_3_[5 : 3] | _zz_3_[2 : 0]);
  assign maskProposal_0 = _zz_17_[0];
  assign maskProposal_1 = _zz_18_[0];
  assign maskProposal_2 = _zz_19_[0];
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign _zz_5_ = {maskRouted_2,maskRouted_1};
  assign io_output_payload_addr = _zz_8_;
  assign io_output_payload_id = _zz_9_;
  assign io_output_payload_len = _zz_10_;
  assign io_output_payload_size = _zz_11_;
  assign io_output_payload_burst = _zz_12_;
  assign io_output_payload_write = _zz_13_;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_6_ = io_chosenOH[1];
  assign _zz_7_ = io_chosenOH[2];
  assign io_chosen = {_zz_7_,_zz_6_};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b0;
      maskLocked_2 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
        maskLocked_2 <= maskRouted_2;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module StreamFork_1_ (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [25:0]   io_input_payload_addr,
  input      [1:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [25:0]   io_outputs_0_payload_addr,
  output     [1:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [25:0]   io_outputs_1_payload_addr,
  output     [1:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_1_;
  reg                 _zz_2_;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1_))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2_))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1_);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_1_valid = (io_input_valid && _zz_2_);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1_ <= 1'b1;
      _zz_2_ <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1_ <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2_ <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1_ <= 1'b1;
        _zz_2_ <= 1'b1;
      end
    end
  end


endmodule
//StreamFifoLowLatency_2_ replaced by StreamFifoLowLatency_1_

module StreamArbiter_2_ (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [19:0]   io_inputs_0_payload_addr,
  input      [3:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [19:0]   io_output_payload_addr,
  output     [3:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [0:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [1:0]    _zz_4_;
  wire       [0:0]    _zz_5_;
  wire       [1:0]    _zz_6_;
  wire       [0:0]    _zz_7_;
  wire       [0:0]    _zz_8_;
  reg                 locked;
  wire                maskProposal_0;
  reg                 maskLocked_0;
  wire                maskRouted_0;
  wire       [0:0]    _zz_1_;
  wire       [1:0]    _zz_2_;
  wire       [1:0]    _zz_3_;

  assign _zz_4_ = (_zz_2_ - _zz_6_);
  assign _zz_5_ = maskLocked_0;
  assign _zz_6_ = {1'd0, _zz_5_};
  assign _zz_7_ = _zz_8_[0 : 0];
  assign _zz_8_ = (_zz_3_[1 : 1] | _zz_3_[0 : 0]);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign _zz_1_ = io_inputs_0_valid;
  assign _zz_2_ = {_zz_1_,_zz_1_};
  assign _zz_3_ = (_zz_2_ & (~ _zz_4_));
  assign maskProposal_0 = _zz_7_[0];
  assign io_output_valid = (io_inputs_0_valid && maskRouted_0);
  assign io_output_payload_addr = io_inputs_0_payload_addr;
  assign io_output_payload_id = io_inputs_0_payload_id;
  assign io_output_payload_len = io_inputs_0_payload_len;
  assign io_output_payload_size = io_inputs_0_payload_size;
  assign io_output_payload_burst = io_inputs_0_payload_burst;
  assign io_output_payload_write = io_inputs_0_payload_write;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_chosenOH = maskRouted_0;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module StreamFork_2_ (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [19:0]   io_input_payload_addr,
  input      [3:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [19:0]   io_outputs_0_payload_addr,
  output     [3:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [19:0]   io_outputs_1_payload_addr,
  output     [3:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_1_;
  reg                 _zz_2_;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1_))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2_))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1_);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_1_valid = (io_input_valid && _zz_2_);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1_ <= 1'b1;
      _zz_2_ <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1_ <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2_ <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1_ <= 1'b1;
        _zz_2_ <= 1'b1;
      end
    end
  end


endmodule
//StreamFifoLowLatency_3_ replaced by StreamFifoLowLatency_1_

module BufferCC_10_ (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk 
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule
//BufferCC_11_ replaced by BufferCC_10_

module Axi4SharedOnChipRam (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [11:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg        [31:0]   _zz_6_;
  reg        [11:0]   _zz_7_;
  wire                _zz_8_;
  wire       [1:0]    _zz_9_;
  wire       [11:0]   _zz_10_;
  wire       [11:0]   _zz_11_;
  wire       [11:0]   _zz_12_;
  wire       [2:0]    _zz_13_;
  wire       [2:0]    _zz_14_;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [11:0]   unburstify_result_payload_fragment_addr;
  reg        [3:0]    unburstify_result_payload_fragment_id;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg                 unburstify_result_payload_fragment_write;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [11:0]   unburstify_buffer_transaction_addr;
  reg        [3:0]    unburstify_buffer_transaction_id;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg                 unburstify_buffer_transaction_write;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [11:0]   Axi4Incr_result;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_1_;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                _zz_2_;
  wire                stage0_valid;
  wire                stage0_ready;
  wire                stage0_payload_last;
  wire       [11:0]   stage0_payload_fragment_addr;
  wire       [3:0]    stage0_payload_fragment_id;
  wire       [2:0]    stage0_payload_fragment_size;
  wire       [1:0]    stage0_payload_fragment_burst;
  wire                stage0_payload_fragment_write;
  wire       [9:0]    _zz_3_;
  wire                _zz_4_;
  wire       [31:0]   _zz_5_;
  wire                stage1_valid;
  wire                stage1_ready;
  wire                stage1_payload_last;
  wire       [11:0]   stage1_payload_fragment_addr;
  wire       [3:0]    stage1_payload_fragment_id;
  wire       [2:0]    stage1_payload_fragment_size;
  wire       [1:0]    stage1_payload_fragment_burst;
  wire                stage1_payload_fragment_write;
  reg                 stage0_m2sPipe_rValid;
  reg                 stage0_m2sPipe_rData_last;
  reg        [11:0]   stage0_m2sPipe_rData_fragment_addr;
  reg        [3:0]    stage0_m2sPipe_rData_fragment_id;
  reg        [2:0]    stage0_m2sPipe_rData_fragment_size;
  reg        [1:0]    stage0_m2sPipe_rData_fragment_burst;
  reg                 stage0_m2sPipe_rData_fragment_write;
  reg [7:0] ram_symbol0 [0:1023];
  reg [7:0] ram_symbol1 [0:1023];
  reg [7:0] ram_symbol2 [0:1023];
  reg [7:0] ram_symbol3 [0:1023];
  reg [7:0] _zz_15_;
  reg [7:0] _zz_16_;
  reg [7:0] _zz_17_;
  reg [7:0] _zz_18_;

  assign _zz_8_ = (io_axi_arw_payload_len == 8'h0);
  assign _zz_9_ = {((2'b01) < Axi4Incr_validSize),((2'b00) < Axi4Incr_validSize)};
  assign _zz_10_ = unburstify_buffer_transaction_addr[11 : 0];
  assign _zz_11_ = _zz_10_;
  assign _zz_12_ = {9'd0, Axi4Incr_sizeValue};
  assign _zz_13_ = {1'd0, Axi4Incr_validSize};
  assign _zz_14_ = {1'd0, _zz_1_};
  initial begin
    $readmemb("Briey.v_toplevel_axi_ram_ram_symbol0.bin",ram_symbol0);
    $readmemb("Briey.v_toplevel_axi_ram_ram_symbol1.bin",ram_symbol1);
    $readmemb("Briey.v_toplevel_axi_ram_ram_symbol2.bin",ram_symbol2);
    $readmemb("Briey.v_toplevel_axi_ram_ram_symbol3.bin",ram_symbol3);
  end
  always @ (*) begin
    _zz_6_ = {_zz_18_, _zz_17_, _zz_16_, _zz_15_};
  end
  always @ (posedge io_axiClk) begin
    if(_zz_4_) begin
      _zz_15_ <= ram_symbol0[_zz_3_];
      _zz_16_ <= ram_symbol1[_zz_3_];
      _zz_17_ <= ram_symbol2[_zz_3_];
      _zz_18_ <= ram_symbol3[_zz_3_];
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_axi_w_payload_strb[0] && _zz_4_ && stage0_payload_fragment_write ) begin
      ram_symbol0[_zz_3_] <= _zz_5_[7 : 0];
    end
    if(io_axi_w_payload_strb[1] && _zz_4_ && stage0_payload_fragment_write ) begin
      ram_symbol1[_zz_3_] <= _zz_5_[15 : 8];
    end
    if(io_axi_w_payload_strb[2] && _zz_4_ && stage0_payload_fragment_write ) begin
      ram_symbol2[_zz_3_] <= _zz_5_[23 : 16];
    end
    if(io_axi_w_payload_strb[3] && _zz_4_ && stage0_payload_fragment_write ) begin
      ram_symbol3[_zz_3_] <= _zz_5_[31 : 24];
    end
  end

  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : begin
        _zz_7_ = {Axi4Incr_base[11 : 1],Axi4Incr_baseIncr[0 : 0]};
      end
      3'b001 : begin
        _zz_7_ = {Axi4Incr_base[11 : 2],Axi4Incr_baseIncr[1 : 0]};
      end
      3'b010 : begin
        _zz_7_ = {Axi4Incr_base[11 : 3],Axi4Incr_baseIncr[2 : 0]};
      end
      3'b011 : begin
        _zz_7_ = {Axi4Incr_base[11 : 4],Axi4Incr_baseIncr[3 : 0]};
      end
      3'b100 : begin
        _zz_7_ = {Axi4Incr_base[11 : 5],Axi4Incr_baseIncr[4 : 0]};
      end
      default : begin
        _zz_7_ = {Axi4Incr_base[11 : 6],Axi4Incr_baseIncr[5 : 0]};
      end
    endcase
  end

  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_sizeValue = {((2'b10) == Axi4Incr_validSize),{((2'b01) == Axi4Incr_validSize),((2'b00) == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_9_};
  assign Axi4Incr_base = (_zz_11_ & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_12_);
  always @ (*) begin
    if((((unburstify_buffer_len & 8'h08) == 8'h08))) begin
        _zz_1_ = (2'b11);
    end else if((((unburstify_buffer_len & 8'h04) == 8'h04))) begin
        _zz_1_ = (2'b10);
    end else if((((unburstify_buffer_len & 8'h02) == 8'h02))) begin
        _zz_1_ = (2'b01);
    end else begin
        _zz_1_ = (2'b00);
    end
  end

  assign Axi4Incr_wrapCase = (_zz_13_ + _zz_14_);
  always @ (*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = _zz_7_;
      end
      default : begin
        Axi4Incr_result = Axi4Incr_baseIncr;
      end
    endcase
  end

  always @ (*) begin
    io_axi_arw_ready = 1'b0;
    if(! unburstify_buffer_valid) begin
      io_axi_arw_ready = unburstify_result_ready;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_arw_valid;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      if(_zz_8_)begin
        unburstify_result_payload_last = 1'b1;
      end else begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_arw_payload_id;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_arw_payload_size;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_arw_payload_burst;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_write = unburstify_buffer_transaction_write;
    end else begin
      unburstify_result_payload_fragment_write = io_axi_arw_payload_write;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_arw_payload_addr;
    end
  end

  assign _zz_2_ = (! (unburstify_result_payload_fragment_write && (! io_axi_w_valid)));
  assign stage0_valid = (unburstify_result_valid && _zz_2_);
  assign unburstify_result_ready = (stage0_ready && _zz_2_);
  assign stage0_payload_last = unburstify_result_payload_last;
  assign stage0_payload_fragment_addr = unburstify_result_payload_fragment_addr;
  assign stage0_payload_fragment_id = unburstify_result_payload_fragment_id;
  assign stage0_payload_fragment_size = unburstify_result_payload_fragment_size;
  assign stage0_payload_fragment_burst = unburstify_result_payload_fragment_burst;
  assign stage0_payload_fragment_write = unburstify_result_payload_fragment_write;
  assign _zz_3_ = stage0_payload_fragment_addr[11 : 2];
  assign _zz_4_ = (stage0_valid && stage0_ready);
  assign _zz_5_ = io_axi_w_payload_data;
  assign io_axi_r_payload_data = _zz_6_;
  assign io_axi_w_ready = ((unburstify_result_valid && unburstify_result_payload_fragment_write) && stage0_ready);
  assign stage0_ready = ((1'b1 && (! stage1_valid)) || stage1_ready);
  assign stage1_valid = stage0_m2sPipe_rValid;
  assign stage1_payload_last = stage0_m2sPipe_rData_last;
  assign stage1_payload_fragment_addr = stage0_m2sPipe_rData_fragment_addr;
  assign stage1_payload_fragment_id = stage0_m2sPipe_rData_fragment_id;
  assign stage1_payload_fragment_size = stage0_m2sPipe_rData_fragment_size;
  assign stage1_payload_fragment_burst = stage0_m2sPipe_rData_fragment_burst;
  assign stage1_payload_fragment_write = stage0_m2sPipe_rData_fragment_write;
  assign stage1_ready = ((io_axi_r_ready && (! stage1_payload_fragment_write)) || ((io_axi_b_ready || (! stage1_payload_last)) && stage1_payload_fragment_write));
  assign io_axi_r_valid = (stage1_valid && (! stage1_payload_fragment_write));
  assign io_axi_r_payload_id = stage1_payload_fragment_id;
  assign io_axi_r_payload_last = stage1_payload_last;
  assign io_axi_r_payload_resp = (2'b00);
  assign io_axi_b_valid = ((stage1_valid && stage1_payload_fragment_write) && stage1_payload_last);
  assign io_axi_b_payload_resp = (2'b00);
  assign io_axi_b_payload_id = stage1_payload_fragment_id;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      unburstify_buffer_valid <= 1'b0;
      stage0_m2sPipe_rValid <= 1'b0;
    end else begin
      if(unburstify_result_ready)begin
        if(unburstify_buffer_last)begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(! unburstify_buffer_valid) begin
        if(! _zz_8_) begin
          if(unburstify_result_ready)begin
            unburstify_buffer_valid <= io_axi_arw_valid;
          end
        end
      end
      if(stage0_ready)begin
        stage0_m2sPipe_rValid <= stage0_valid;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(unburstify_result_ready)begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(! unburstify_buffer_valid) begin
      if(! _zz_8_) begin
        if(unburstify_result_ready)begin
          unburstify_buffer_transaction_addr <= io_axi_arw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_arw_payload_id;
          unburstify_buffer_transaction_size <= io_axi_arw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_arw_payload_burst;
          unburstify_buffer_transaction_write <= io_axi_arw_payload_write;
          unburstify_buffer_beat <= io_axi_arw_payload_len;
          unburstify_buffer_len <= io_axi_arw_payload_len;
        end
      end
    end
    if(stage0_ready)begin
      stage0_m2sPipe_rData_last <= stage0_payload_last;
      stage0_m2sPipe_rData_fragment_addr <= stage0_payload_fragment_addr;
      stage0_m2sPipe_rData_fragment_id <= stage0_payload_fragment_id;
      stage0_m2sPipe_rData_fragment_size <= stage0_payload_fragment_size;
      stage0_m2sPipe_rData_fragment_burst <= stage0_payload_fragment_burst;
      stage0_m2sPipe_rData_fragment_write <= stage0_payload_fragment_write;
    end
  end


endmodule

module Axi4SharedSdramCtrl (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [25:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [24:0]   _zz_11_;
  wire       [15:0]   _zz_12_;
  wire       [1:0]    _zz_13_;
  wire                _zz_14_;
  reg        [15:0]   _zz_15_;
  reg        [1:0]    _zz_16_;
  reg        [11:0]   _zz_17_;
  wire                ctrl_io_bus_cmd_ready;
  wire                ctrl_io_bus_rsp_valid;
  wire       [15:0]   ctrl_io_bus_rsp_payload_data;
  wire       [3:0]    ctrl_io_bus_rsp_payload_context_id;
  wire                ctrl_io_bus_rsp_payload_context_last;
  wire       [12:0]   ctrl_io_sdram_ADDR;
  wire       [1:0]    ctrl_io_sdram_BA;
  wire                ctrl_io_sdram_CASn;
  wire                ctrl_io_sdram_CKE;
  wire                ctrl_io_sdram_CSn;
  wire       [1:0]    ctrl_io_sdram_DQM;
  wire                ctrl_io_sdram_RASn;
  wire                ctrl_io_sdram_WEn;
  wire       [15:0]   ctrl_io_sdram_DQ_write;
  wire       [15:0]   ctrl_io_sdram_DQ_writeEnable;
  wire                _zz_18_;
  wire       [1:0]    _zz_19_;
  wire       [11:0]   _zz_20_;
  wire       [11:0]   _zz_21_;
  wire       [11:0]   _zz_22_;
  wire       [2:0]    _zz_23_;
  wire       [2:0]    _zz_24_;
  wire                ctrlBusAdapted_cmd_valid;
  wire                ctrlBusAdapted_cmd_ready;
  wire       [23:0]   ctrlBusAdapted_cmd_payload_address;
  wire                ctrlBusAdapted_cmd_payload_write;
  wire       [31:0]   ctrlBusAdapted_cmd_payload_data;
  wire       [3:0]    ctrlBusAdapted_cmd_payload_mask;
  wire       [3:0]    ctrlBusAdapted_cmd_payload_context_id;
  wire                ctrlBusAdapted_cmd_payload_context_last;
  wire                ctrlBusAdapted_rsp_valid;
  wire                ctrlBusAdapted_rsp_ready;
  wire       [31:0]   ctrlBusAdapted_rsp_payload_data;
  wire       [3:0]    ctrlBusAdapted_rsp_payload_context_id;
  wire                ctrlBusAdapted_rsp_payload_context_last;
  reg                 _zz_1_;
  reg        [0:0]    _zz_2_;
  reg        [0:0]    _zz_3_;
  wire                _zz_4_;
  reg                 _zz_5_;
  reg        [0:0]    _zz_6_;
  reg        [0:0]    _zz_7_;
  wire                _zz_8_;
  reg        [15:0]   ctrl_io_bus_rsp_payload_data_regNextWhen;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [25:0]   unburstify_result_payload_fragment_addr;
  reg        [3:0]    unburstify_result_payload_fragment_id;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg                 unburstify_result_payload_fragment_write;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [25:0]   unburstify_buffer_transaction_addr;
  reg        [3:0]    unburstify_buffer_transaction_id;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg                 unburstify_buffer_transaction_write;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [25:0]   Axi4Incr_result;
  wire       [13:0]   Axi4Incr_highCat;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_9_;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                _zz_10_;
  wire                bridge_axiCmd_valid;
  wire                bridge_axiCmd_ready;
  wire                bridge_axiCmd_payload_last;
  wire       [25:0]   bridge_axiCmd_payload_fragment_addr;
  wire       [3:0]    bridge_axiCmd_payload_fragment_id;
  wire       [2:0]    bridge_axiCmd_payload_fragment_size;
  wire       [1:0]    bridge_axiCmd_payload_fragment_burst;
  wire                bridge_axiCmd_payload_fragment_write;
  wire                bridge_writeRsp_valid;
  wire                bridge_writeRsp_ready;
  wire       [3:0]    bridge_writeRsp_payload_id;
  wire       [1:0]    bridge_writeRsp_payload_resp;
  wire                bridge_writeRsp_m2sPipe_valid;
  wire                bridge_writeRsp_m2sPipe_ready;
  wire       [3:0]    bridge_writeRsp_m2sPipe_payload_id;
  wire       [1:0]    bridge_writeRsp_m2sPipe_payload_resp;
  reg                 bridge_writeRsp_m2sPipe_rValid;
  reg        [3:0]    bridge_writeRsp_m2sPipe_rData_id;
  reg        [1:0]    bridge_writeRsp_m2sPipe_rData_resp;

  assign _zz_18_ = (io_axi_arw_payload_len == 8'h0);
  assign _zz_19_ = {((2'b01) < Axi4Incr_validSize),((2'b00) < Axi4Incr_validSize)};
  assign _zz_20_ = unburstify_buffer_transaction_addr[11 : 0];
  assign _zz_21_ = _zz_20_;
  assign _zz_22_ = {9'd0, Axi4Incr_sizeValue};
  assign _zz_23_ = {1'd0, Axi4Incr_validSize};
  assign _zz_24_ = {1'd0, _zz_9_};
  SdramCtrl ctrl ( 
    .io_bus_cmd_valid                   (ctrlBusAdapted_cmd_valid                    ), //i
    .io_bus_cmd_ready                   (ctrl_io_bus_cmd_ready                       ), //o
    .io_bus_cmd_payload_address         (_zz_11_[24:0]                               ), //i
    .io_bus_cmd_payload_write           (ctrlBusAdapted_cmd_payload_write            ), //i
    .io_bus_cmd_payload_data            (_zz_12_[15:0]                               ), //i
    .io_bus_cmd_payload_mask            (_zz_13_[1:0]                                ), //i
    .io_bus_cmd_payload_context_id      (ctrlBusAdapted_cmd_payload_context_id[3:0]  ), //i
    .io_bus_cmd_payload_context_last    (ctrlBusAdapted_cmd_payload_context_last     ), //i
    .io_bus_rsp_valid                   (ctrl_io_bus_rsp_valid                       ), //o
    .io_bus_rsp_ready                   (_zz_14_                                     ), //i
    .io_bus_rsp_payload_data            (ctrl_io_bus_rsp_payload_data[15:0]          ), //o
    .io_bus_rsp_payload_context_id      (ctrl_io_bus_rsp_payload_context_id[3:0]     ), //o
    .io_bus_rsp_payload_context_last    (ctrl_io_bus_rsp_payload_context_last        ), //o
    .io_sdram_ADDR                      (ctrl_io_sdram_ADDR[12:0]                    ), //o
    .io_sdram_BA                        (ctrl_io_sdram_BA[1:0]                       ), //o
    .io_sdram_DQ_read                   (io_sdram_DQ_read[15:0]                      ), //i
    .io_sdram_DQ_write                  (ctrl_io_sdram_DQ_write[15:0]                ), //o
    .io_sdram_DQ_writeEnable            (ctrl_io_sdram_DQ_writeEnable[15:0]          ), //o
    .io_sdram_DQM                       (ctrl_io_sdram_DQM[1:0]                      ), //o
    .io_sdram_CASn                      (ctrl_io_sdram_CASn                          ), //o
    .io_sdram_CKE                       (ctrl_io_sdram_CKE                           ), //o
    .io_sdram_CSn                       (ctrl_io_sdram_CSn                           ), //o
    .io_sdram_RASn                      (ctrl_io_sdram_RASn                          ), //o
    .io_sdram_WEn                       (ctrl_io_sdram_WEn                           ), //o
    .io_axiClk                          (io_axiClk                                   ), //i
    .resetCtrl_axiReset                 (resetCtrl_axiReset                          )  //i
  );
  always @(*) begin
    case(_zz_3_)
      1'b0 : begin
        _zz_15_ = ctrlBusAdapted_cmd_payload_data[15 : 0];
        _zz_16_ = ctrlBusAdapted_cmd_payload_mask[1 : 0];
      end
      default : begin
        _zz_15_ = ctrlBusAdapted_cmd_payload_data[31 : 16];
        _zz_16_ = ctrlBusAdapted_cmd_payload_mask[3 : 2];
      end
    endcase
  end

  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : begin
        _zz_17_ = {Axi4Incr_base[11 : 1],Axi4Incr_baseIncr[0 : 0]};
      end
      3'b001 : begin
        _zz_17_ = {Axi4Incr_base[11 : 2],Axi4Incr_baseIncr[1 : 0]};
      end
      3'b010 : begin
        _zz_17_ = {Axi4Incr_base[11 : 3],Axi4Incr_baseIncr[2 : 0]};
      end
      3'b011 : begin
        _zz_17_ = {Axi4Incr_base[11 : 4],Axi4Incr_baseIncr[3 : 0]};
      end
      3'b100 : begin
        _zz_17_ = {Axi4Incr_base[11 : 5],Axi4Incr_baseIncr[4 : 0]};
      end
      default : begin
        _zz_17_ = {Axi4Incr_base[11 : 6],Axi4Incr_baseIncr[5 : 0]};
      end
    endcase
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if((ctrlBusAdapted_cmd_valid && ctrl_io_bus_cmd_ready))begin
      _zz_1_ = 1'b1;
    end
  end

  assign _zz_4_ = (_zz_3_ == (1'b1));
  always @ (*) begin
    _zz_2_ = (_zz_3_ + _zz_1_);
    if(1'b0)begin
      _zz_2_ = (1'b0);
    end
  end

  assign _zz_11_ = {ctrlBusAdapted_cmd_payload_address,_zz_3_};
  assign _zz_12_ = _zz_15_;
  assign _zz_13_ = _zz_16_;
  assign ctrlBusAdapted_cmd_ready = (ctrl_io_bus_cmd_ready && _zz_4_);
  always @ (*) begin
    _zz_5_ = 1'b0;
    if((ctrl_io_bus_rsp_valid && _zz_14_))begin
      _zz_5_ = 1'b1;
    end
  end

  assign _zz_8_ = (_zz_7_ == (1'b1));
  always @ (*) begin
    _zz_6_ = (_zz_7_ + _zz_5_);
    if(1'b0)begin
      _zz_6_ = (1'b0);
    end
  end

  assign ctrlBusAdapted_rsp_valid = (ctrl_io_bus_rsp_valid && _zz_8_);
  assign ctrlBusAdapted_rsp_payload_data = {ctrl_io_bus_rsp_payload_data,ctrl_io_bus_rsp_payload_data_regNextWhen};
  assign ctrlBusAdapted_rsp_payload_context_id = ctrl_io_bus_rsp_payload_context_id;
  assign ctrlBusAdapted_rsp_payload_context_last = ctrl_io_bus_rsp_payload_context_last;
  assign _zz_14_ = (ctrlBusAdapted_rsp_ready || (! _zz_8_));
  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_highCat = unburstify_buffer_transaction_addr[25 : 12];
  assign Axi4Incr_sizeValue = {((2'b10) == Axi4Incr_validSize),{((2'b01) == Axi4Incr_validSize),((2'b00) == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_19_};
  assign Axi4Incr_base = (_zz_21_ & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_22_);
  always @ (*) begin
    if((((unburstify_buffer_len & 8'h08) == 8'h08))) begin
        _zz_9_ = (2'b11);
    end else if((((unburstify_buffer_len & 8'h04) == 8'h04))) begin
        _zz_9_ = (2'b10);
    end else if((((unburstify_buffer_len & 8'h02) == 8'h02))) begin
        _zz_9_ = (2'b01);
    end else begin
        _zz_9_ = (2'b00);
    end
  end

  assign Axi4Incr_wrapCase = (_zz_23_ + _zz_24_);
  always @ (*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = {Axi4Incr_highCat,_zz_17_};
      end
      default : begin
        Axi4Incr_result = {Axi4Incr_highCat,Axi4Incr_baseIncr};
      end
    endcase
  end

  always @ (*) begin
    io_axi_arw_ready = 1'b0;
    if(! unburstify_buffer_valid) begin
      io_axi_arw_ready = unburstify_result_ready;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_arw_valid;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      if(_zz_18_)begin
        unburstify_result_payload_last = 1'b1;
      end else begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_arw_payload_id;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_arw_payload_size;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_arw_payload_burst;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_write = unburstify_buffer_transaction_write;
    end else begin
      unburstify_result_payload_fragment_write = io_axi_arw_payload_write;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_arw_payload_addr;
    end
  end

  assign _zz_10_ = (! (unburstify_result_payload_fragment_write && (! io_axi_w_valid)));
  assign bridge_axiCmd_valid = (unburstify_result_valid && _zz_10_);
  assign unburstify_result_ready = (bridge_axiCmd_ready && _zz_10_);
  assign bridge_axiCmd_payload_last = unburstify_result_payload_last;
  assign bridge_axiCmd_payload_fragment_addr = unburstify_result_payload_fragment_addr;
  assign bridge_axiCmd_payload_fragment_id = unburstify_result_payload_fragment_id;
  assign bridge_axiCmd_payload_fragment_size = unburstify_result_payload_fragment_size;
  assign bridge_axiCmd_payload_fragment_burst = unburstify_result_payload_fragment_burst;
  assign bridge_axiCmd_payload_fragment_write = unburstify_result_payload_fragment_write;
  assign ctrlBusAdapted_cmd_valid = bridge_axiCmd_valid;
  assign ctrlBusAdapted_cmd_payload_address = bridge_axiCmd_payload_fragment_addr[25 : 2];
  assign ctrlBusAdapted_cmd_payload_write = bridge_axiCmd_payload_fragment_write;
  assign ctrlBusAdapted_cmd_payload_data = io_axi_w_payload_data;
  assign ctrlBusAdapted_cmd_payload_mask = io_axi_w_payload_strb;
  assign ctrlBusAdapted_cmd_payload_context_id = bridge_axiCmd_payload_fragment_id;
  assign ctrlBusAdapted_cmd_payload_context_last = bridge_axiCmd_payload_last;
  assign bridge_writeRsp_valid = (((bridge_axiCmd_valid && bridge_axiCmd_ready) && bridge_axiCmd_payload_fragment_write) && bridge_axiCmd_payload_last);
  assign bridge_writeRsp_payload_resp = (2'b00);
  assign bridge_writeRsp_payload_id = bridge_axiCmd_payload_fragment_id;
  assign bridge_writeRsp_ready = ((1'b1 && (! bridge_writeRsp_m2sPipe_valid)) || bridge_writeRsp_m2sPipe_ready);
  assign bridge_writeRsp_m2sPipe_valid = bridge_writeRsp_m2sPipe_rValid;
  assign bridge_writeRsp_m2sPipe_payload_id = bridge_writeRsp_m2sPipe_rData_id;
  assign bridge_writeRsp_m2sPipe_payload_resp = bridge_writeRsp_m2sPipe_rData_resp;
  assign io_axi_b_valid = bridge_writeRsp_m2sPipe_valid;
  assign bridge_writeRsp_m2sPipe_ready = io_axi_b_ready;
  assign io_axi_b_payload_id = bridge_writeRsp_m2sPipe_payload_id;
  assign io_axi_b_payload_resp = bridge_writeRsp_m2sPipe_payload_resp;
  assign io_axi_r_valid = ctrlBusAdapted_rsp_valid;
  assign io_axi_r_payload_id = ctrlBusAdapted_rsp_payload_context_id;
  assign io_axi_r_payload_data = ctrlBusAdapted_rsp_payload_data;
  assign io_axi_r_payload_last = ctrlBusAdapted_rsp_payload_context_last;
  assign io_axi_r_payload_resp = (2'b00);
  assign io_axi_w_ready = ((unburstify_result_valid && unburstify_result_payload_fragment_write) && bridge_axiCmd_ready);
  assign ctrlBusAdapted_rsp_ready = io_axi_r_ready;
  assign bridge_axiCmd_ready = (ctrlBusAdapted_cmd_ready && (! (bridge_axiCmd_payload_fragment_write && (! bridge_writeRsp_ready))));
  assign io_sdram_ADDR = ctrl_io_sdram_ADDR;
  assign io_sdram_BA = ctrl_io_sdram_BA;
  assign io_sdram_DQ_write = ctrl_io_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = ctrl_io_sdram_DQ_writeEnable;
  assign io_sdram_DQM = ctrl_io_sdram_DQM;
  assign io_sdram_CASn = ctrl_io_sdram_CASn;
  assign io_sdram_CKE = ctrl_io_sdram_CKE;
  assign io_sdram_CSn = ctrl_io_sdram_CSn;
  assign io_sdram_RASn = ctrl_io_sdram_RASn;
  assign io_sdram_WEn = ctrl_io_sdram_WEn;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_3_ <= (1'b0);
      _zz_7_ <= (1'b0);
      unburstify_buffer_valid <= 1'b0;
      bridge_writeRsp_m2sPipe_rValid <= 1'b0;
    end else begin
      _zz_3_ <= _zz_2_;
      _zz_7_ <= _zz_6_;
      if(unburstify_result_ready)begin
        if(unburstify_buffer_last)begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(! unburstify_buffer_valid) begin
        if(! _zz_18_) begin
          if(unburstify_result_ready)begin
            unburstify_buffer_valid <= io_axi_arw_valid;
          end
        end
      end
      if(bridge_writeRsp_ready)begin
        bridge_writeRsp_m2sPipe_rValid <= bridge_writeRsp_valid;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if((ctrl_io_bus_rsp_valid && _zz_14_))begin
      ctrl_io_bus_rsp_payload_data_regNextWhen <= ctrl_io_bus_rsp_payload_data;
    end
    if(unburstify_result_ready)begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(! unburstify_buffer_valid) begin
      if(! _zz_18_) begin
        if(unburstify_result_ready)begin
          unburstify_buffer_transaction_addr <= io_axi_arw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_arw_payload_id;
          unburstify_buffer_transaction_size <= io_axi_arw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_arw_payload_burst;
          unburstify_buffer_transaction_write <= io_axi_arw_payload_write;
          unburstify_buffer_beat <= io_axi_arw_payload_len;
          unburstify_buffer_len <= io_axi_arw_payload_len;
        end
      end
    end
    if(bridge_writeRsp_ready)begin
      bridge_writeRsp_m2sPipe_rData_id <= bridge_writeRsp_payload_id;
      bridge_writeRsp_m2sPipe_rData_resp <= bridge_writeRsp_payload_resp;
    end
  end


endmodule

module Axi4SharedToApb3Bridge (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [19:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output reg          io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output reg          io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output reg          io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output     [19:0]   io_apb_PADDR,
  output reg [0:0]    io_apb_PSEL,
  output reg          io_apb_PENABLE,
  input               io_apb_PREADY,
  output              io_apb_PWRITE,
  output     [31:0]   io_apb_PWDATA,
  input      [31:0]   io_apb_PRDATA,
  input               io_apb_PSLVERROR,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_1_;
  reg        `Axi4ToApb3BridgePhase_defaultEncoding_type phase;
  reg                 write;
  reg        [31:0]   readedData;
  reg        [3:0]    id;
  `ifndef SYNTHESIS
  reg [63:0] phase_string;
  `endif


  assign _zz_1_ = (io_axi_arw_valid && ((! io_axi_arw_payload_write) || io_axi_w_valid));
  `ifndef SYNTHESIS
  always @(*) begin
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : phase_string = "SETUP   ";
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : phase_string = "ACCESS_1";
      `Axi4ToApb3BridgePhase_defaultEncoding_RESPONSE : phase_string = "RESPONSE";
      default : phase_string = "????????";
    endcase
  end
  `endif

  always @ (*) begin
    io_axi_arw_ready = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
        if(io_apb_PREADY)begin
          io_axi_arw_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_axi_w_ready = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
        if(io_apb_PREADY)begin
          io_axi_w_ready = write;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_axi_b_valid = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
      end
      default : begin
        if(write)begin
          io_axi_b_valid = 1'b1;
        end
      end
    endcase
  end

  always @ (*) begin
    io_axi_r_valid = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
      end
      default : begin
        if(! write) begin
          io_axi_r_valid = 1'b1;
        end
      end
    endcase
  end

  always @ (*) begin
    io_apb_PSEL[0] = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
        if(_zz_1_)begin
          io_apb_PSEL[0] = 1'b1;
        end
      end
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
        io_apb_PSEL[0] = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_apb_PENABLE = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
        io_apb_PENABLE = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PADDR = io_axi_arw_payload_addr;
  assign io_apb_PWDATA = io_axi_w_payload_data;
  assign io_apb_PWRITE = io_axi_arw_payload_write;
  assign io_axi_r_payload_resp = {io_apb_PSLVERROR,(1'b0)};
  assign io_axi_b_payload_resp = {io_apb_PSLVERROR,(1'b0)};
  assign io_axi_r_payload_id = id;
  assign io_axi_b_payload_id = id;
  assign io_axi_r_payload_data = readedData;
  assign io_axi_r_payload_last = 1'b1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      phase <= `Axi4ToApb3BridgePhase_defaultEncoding_SETUP;
    end else begin
      case(phase)
        `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
          if(_zz_1_)begin
            phase <= `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1;
          end
        end
        `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
          if(io_apb_PREADY)begin
            phase <= `Axi4ToApb3BridgePhase_defaultEncoding_RESPONSE;
          end
        end
        default : begin
          if(write)begin
            if(io_axi_b_ready)begin
              phase <= `Axi4ToApb3BridgePhase_defaultEncoding_SETUP;
            end
          end else begin
            if(io_axi_r_ready)begin
              phase <= `Axi4ToApb3BridgePhase_defaultEncoding_SETUP;
            end
          end
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    case(phase)
      `Axi4ToApb3BridgePhase_defaultEncoding_SETUP : begin
        write <= io_axi_arw_payload_write;
        id <= io_axi_arw_payload_id;
      end
      `Axi4ToApb3BridgePhase_defaultEncoding_ACCESS_1 : begin
        if(io_apb_PREADY)begin
          readedData <= io_apb_PRDATA;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module Apb3Gpio (
  input      [3:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input      [31:0]   io_gpio_read,
  output     [31:0]   io_gpio_write,
  output     [31:0]   io_gpio_writeEnable,
  output     [31:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire       [31:0]   io_gpio_read_buffercc_io_dataOut;
  wire                ctrl_askWrite;
  wire                ctrl_askRead;
  wire                ctrl_doWrite;
  wire                ctrl_doRead;
  reg        [31:0]   io_gpio_write_driver;
  reg        [31:0]   io_gpio_writeEnable_driver;

  BufferCC_6_ io_gpio_read_buffercc ( 
    .io_dataIn             (io_gpio_read[31:0]                      ), //i
    .io_dataOut            (io_gpio_read_buffercc_io_dataOut[31:0]  ), //o
    .io_axiClk             (io_axiClk                               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                      )  //i
  );
  assign io_value = io_gpio_read_buffercc_io_dataOut;
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      4'b0000 : begin
        io_apb_PRDATA[31 : 0] = io_value;
      end
      4'b0100 : begin
        io_apb_PRDATA[31 : 0] = io_gpio_write_driver;
      end
      4'b1000 : begin
        io_apb_PRDATA[31 : 0] = io_gpio_writeEnable_driver;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PSLVERROR = 1'b0;
  assign ctrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign ctrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign ctrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign ctrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  assign io_gpio_write = io_gpio_write_driver;
  assign io_gpio_writeEnable = io_gpio_writeEnable_driver;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      io_gpio_writeEnable_driver <= 32'h0;
    end else begin
      case(io_apb_PADDR)
        4'b0000 : begin
        end
        4'b0100 : begin
        end
        4'b1000 : begin
          if(ctrl_doWrite)begin
            io_gpio_writeEnable_driver <= io_apb_PWDATA[31 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    case(io_apb_PADDR)
      4'b0000 : begin
      end
      4'b0100 : begin
        if(ctrl_doWrite)begin
          io_gpio_write_driver <= io_apb_PWDATA[31 : 0];
        end
      end
      4'b1000 : begin
      end
      default : begin
      end
    endcase
  end


endmodule
//Apb3Gpio_1_ replaced by Apb3Gpio

module PinsecTimerCtrl (
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input               io_external_clear,
  input               io_external_tick,
  output              io_interrupt,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_11_;
  wire                _zz_12_;
  wire                _zz_13_;
  wire                _zz_14_;
  wire                _zz_15_;
  wire                _zz_16_;
  wire                _zz_17_;
  wire                _zz_18_;
  reg        [3:0]    _zz_19_;
  reg        [3:0]    _zz_20_;
  wire                io_external_buffercc_io_dataOut_clear;
  wire                io_external_buffercc_io_dataOut_tick;
  wire                prescaler_1__io_overflow;
  wire                timerA_io_full;
  wire       [31:0]   timerA_io_value;
  wire                timerB_io_full;
  wire       [15:0]   timerB_io_value;
  wire                timerC_io_full;
  wire       [15:0]   timerC_io_value;
  wire                timerD_io_full;
  wire       [15:0]   timerD_io_value;
  wire       [3:0]    interruptCtrl_1__io_pendings;
  wire                external_clear;
  wire                external_tick;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  reg        [15:0]   _zz_1_;
  reg                 _zz_2_;
  reg        [1:0]    timerABridge_ticksEnable;
  reg        [0:0]    timerABridge_clearsEnable;
  reg                 timerABridge_busClearing;
  reg        [31:0]   timerA_io_limit_driver;
  reg                 _zz_3_;
  reg                 _zz_4_;
  reg        [2:0]    timerBBridge_ticksEnable;
  reg        [1:0]    timerBBridge_clearsEnable;
  reg                 timerBBridge_busClearing;
  reg        [15:0]   timerB_io_limit_driver;
  reg                 _zz_5_;
  reg                 _zz_6_;
  reg        [2:0]    timerCBridge_ticksEnable;
  reg        [1:0]    timerCBridge_clearsEnable;
  reg                 timerCBridge_busClearing;
  reg        [15:0]   timerC_io_limit_driver;
  reg                 _zz_7_;
  reg                 _zz_8_;
  reg        [2:0]    timerDBridge_ticksEnable;
  reg        [1:0]    timerDBridge_clearsEnable;
  reg                 timerDBridge_busClearing;
  reg        [15:0]   timerD_io_limit_driver;
  reg                 _zz_9_;
  reg                 _zz_10_;
  reg        [3:0]    interruptCtrl_1__io_masks_driver;

  BufferCC_8_ io_external_buffercc ( 
    .io_dataIn_clear       (io_external_clear                      ), //i
    .io_dataIn_tick        (io_external_tick                       ), //i
    .io_dataOut_clear      (io_external_buffercc_io_dataOut_clear  ), //o
    .io_dataOut_tick       (io_external_buffercc_io_dataOut_tick   ), //o
    .io_axiClk             (io_axiClk                              ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                     )  //i
  );
  Prescaler prescaler_1_ ( 
    .io_clear              (_zz_2_                    ), //i
    .io_limit              (_zz_1_[15:0]              ), //i
    .io_overflow           (prescaler_1__io_overflow  ), //o
    .io_axiClk             (io_axiClk                 ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset        )  //i
  );
  Timer timerA ( 
    .io_tick               (_zz_11_                       ), //i
    .io_clear              (_zz_12_                       ), //i
    .io_limit              (timerA_io_limit_driver[31:0]  ), //i
    .io_full               (timerA_io_full                ), //o
    .io_value              (timerA_io_value[31:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  Timer_1_ timerB ( 
    .io_tick               (_zz_13_                       ), //i
    .io_clear              (_zz_14_                       ), //i
    .io_limit              (timerB_io_limit_driver[15:0]  ), //i
    .io_full               (timerB_io_full                ), //o
    .io_value              (timerB_io_value[15:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  Timer_1_ timerC ( 
    .io_tick               (_zz_15_                       ), //i
    .io_clear              (_zz_16_                       ), //i
    .io_limit              (timerC_io_limit_driver[15:0]  ), //i
    .io_full               (timerC_io_full                ), //o
    .io_value              (timerC_io_value[15:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  Timer_1_ timerD ( 
    .io_tick               (_zz_17_                       ), //i
    .io_clear              (_zz_18_                       ), //i
    .io_limit              (timerD_io_limit_driver[15:0]  ), //i
    .io_full               (timerD_io_full                ), //o
    .io_value              (timerD_io_value[15:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  InterruptCtrl interruptCtrl_1_ ( 
    .io_inputs             (_zz_19_[3:0]                           ), //i
    .io_clears             (_zz_20_[3:0]                           ), //i
    .io_masks              (interruptCtrl_1__io_masks_driver[3:0]  ), //i
    .io_pendings           (interruptCtrl_1__io_pendings[3:0]      ), //o
    .io_axiClk             (io_axiClk                              ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                     )  //i
  );
  assign external_clear = io_external_buffercc_io_dataOut_clear;
  assign external_tick = io_external_buffercc_io_dataOut_tick;
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'b00000000 : begin
        io_apb_PRDATA[15 : 0] = _zz_1_;
      end
      8'b01000000 : begin
        io_apb_PRDATA[1 : 0] = timerABridge_ticksEnable;
        io_apb_PRDATA[16 : 16] = timerABridge_clearsEnable;
      end
      8'b01000100 : begin
        io_apb_PRDATA[31 : 0] = timerA_io_limit_driver;
      end
      8'b01001000 : begin
        io_apb_PRDATA[31 : 0] = timerA_io_value;
      end
      8'b01010000 : begin
        io_apb_PRDATA[2 : 0] = timerBBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerBBridge_clearsEnable;
      end
      8'b01010100 : begin
        io_apb_PRDATA[15 : 0] = timerB_io_limit_driver;
      end
      8'b01011000 : begin
        io_apb_PRDATA[15 : 0] = timerB_io_value;
      end
      8'b01100000 : begin
        io_apb_PRDATA[2 : 0] = timerCBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerCBridge_clearsEnable;
      end
      8'b01100100 : begin
        io_apb_PRDATA[15 : 0] = timerC_io_limit_driver;
      end
      8'b01101000 : begin
        io_apb_PRDATA[15 : 0] = timerC_io_value;
      end
      8'b01110000 : begin
        io_apb_PRDATA[2 : 0] = timerDBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerDBridge_clearsEnable;
      end
      8'b01110100 : begin
        io_apb_PRDATA[15 : 0] = timerD_io_limit_driver;
      end
      8'b01111000 : begin
        io_apb_PRDATA[15 : 0] = timerD_io_value;
      end
      8'b00010000 : begin
        io_apb_PRDATA[3 : 0] = interruptCtrl_1__io_pendings;
      end
      8'b00010100 : begin
        io_apb_PRDATA[3 : 0] = interruptCtrl_1__io_masks_driver;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PSLVERROR = 1'b0;
  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  always @ (*) begin
    _zz_2_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
        if(busCtrl_doWrite)begin
          _zz_2_ = 1'b1;
        end
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    timerABridge_busClearing = 1'b0;
    if(_zz_3_)begin
      timerABridge_busClearing = 1'b1;
    end
    if(_zz_4_)begin
      timerABridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
        if(busCtrl_doWrite)begin
          _zz_3_ = 1'b1;
        end
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_4_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
        if(busCtrl_doWrite)begin
          _zz_4_ = 1'b1;
        end
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_12_ = (((timerABridge_clearsEnable & timerA_io_full) != (1'b0)) || timerABridge_busClearing);
  assign _zz_11_ = ((timerABridge_ticksEnable & {prescaler_1__io_overflow,1'b1}) != (2'b00));
  always @ (*) begin
    timerBBridge_busClearing = 1'b0;
    if(_zz_5_)begin
      timerBBridge_busClearing = 1'b1;
    end
    if(_zz_6_)begin
      timerBBridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_5_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
        if(busCtrl_doWrite)begin
          _zz_5_ = 1'b1;
        end
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_6_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
        if(busCtrl_doWrite)begin
          _zz_6_ = 1'b1;
        end
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_14_ = (((timerBBridge_clearsEnable & {external_clear,timerB_io_full}) != (2'b00)) || timerBBridge_busClearing);
  assign _zz_13_ = ((timerBBridge_ticksEnable & {external_tick,{prescaler_1__io_overflow,1'b1}}) != (3'b000));
  always @ (*) begin
    timerCBridge_busClearing = 1'b0;
    if(_zz_7_)begin
      timerCBridge_busClearing = 1'b1;
    end
    if(_zz_8_)begin
      timerCBridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_7_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
        if(busCtrl_doWrite)begin
          _zz_7_ = 1'b1;
        end
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_8_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
        if(busCtrl_doWrite)begin
          _zz_8_ = 1'b1;
        end
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_16_ = (((timerCBridge_clearsEnable & {external_clear,timerC_io_full}) != (2'b00)) || timerCBridge_busClearing);
  assign _zz_15_ = ((timerCBridge_ticksEnable & {external_tick,{prescaler_1__io_overflow,1'b1}}) != (3'b000));
  always @ (*) begin
    timerDBridge_busClearing = 1'b0;
    if(_zz_9_)begin
      timerDBridge_busClearing = 1'b1;
    end
    if(_zz_10_)begin
      timerDBridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_9_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
        if(busCtrl_doWrite)begin
          _zz_9_ = 1'b1;
        end
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_10_ = 1'b0;
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
        if(busCtrl_doWrite)begin
          _zz_10_ = 1'b1;
        end
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_18_ = (((timerDBridge_clearsEnable & {external_clear,timerD_io_full}) != (2'b00)) || timerDBridge_busClearing);
  assign _zz_17_ = ((timerDBridge_ticksEnable & {external_tick,{prescaler_1__io_overflow,1'b1}}) != (3'b000));
  always @ (*) begin
    _zz_20_ = (4'b0000);
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
        if(busCtrl_doWrite)begin
          _zz_20_ = io_apb_PWDATA[3 : 0];
        end
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_19_[0] = timerA_io_full;
    _zz_19_[1] = timerB_io_full;
    _zz_19_[2] = timerC_io_full;
    _zz_19_[3] = timerD_io_full;
  end

  assign io_interrupt = (interruptCtrl_1__io_pendings != (4'b0000));
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      timerABridge_ticksEnable <= (2'b00);
      timerABridge_clearsEnable <= (1'b0);
      timerBBridge_ticksEnable <= (3'b000);
      timerBBridge_clearsEnable <= (2'b00);
      timerCBridge_ticksEnable <= (3'b000);
      timerCBridge_clearsEnable <= (2'b00);
      timerDBridge_ticksEnable <= (3'b000);
      timerDBridge_clearsEnable <= (2'b00);
      interruptCtrl_1__io_masks_driver <= (4'b0000);
    end else begin
      case(io_apb_PADDR)
        8'b00000000 : begin
        end
        8'b01000000 : begin
          if(busCtrl_doWrite)begin
            timerABridge_ticksEnable <= io_apb_PWDATA[1 : 0];
            timerABridge_clearsEnable <= io_apb_PWDATA[16 : 16];
          end
        end
        8'b01000100 : begin
        end
        8'b01001000 : begin
        end
        8'b01010000 : begin
          if(busCtrl_doWrite)begin
            timerBBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerBBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'b01010100 : begin
        end
        8'b01011000 : begin
        end
        8'b01100000 : begin
          if(busCtrl_doWrite)begin
            timerCBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerCBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'b01100100 : begin
        end
        8'b01101000 : begin
        end
        8'b01110000 : begin
          if(busCtrl_doWrite)begin
            timerDBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerDBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'b01110100 : begin
        end
        8'b01111000 : begin
        end
        8'b00010000 : begin
        end
        8'b00010100 : begin
          if(busCtrl_doWrite)begin
            interruptCtrl_1__io_masks_driver <= io_apb_PWDATA[3 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    case(io_apb_PADDR)
      8'b00000000 : begin
        if(busCtrl_doWrite)begin
          _zz_1_ <= io_apb_PWDATA[15 : 0];
        end
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
        if(busCtrl_doWrite)begin
          timerA_io_limit_driver <= io_apb_PWDATA[31 : 0];
        end
      end
      8'b01001000 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
        if(busCtrl_doWrite)begin
          timerB_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      8'b01011000 : begin
      end
      8'b01100000 : begin
      end
      8'b01100100 : begin
        if(busCtrl_doWrite)begin
          timerC_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      8'b01101000 : begin
      end
      8'b01110000 : begin
      end
      8'b01110100 : begin
        if(busCtrl_doWrite)begin
          timerD_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      8'b01111000 : begin
      end
      8'b00010000 : begin
      end
      8'b00010100 : begin
      end
      default : begin
      end
    endcase
  end


endmodule

module Apb3UartCtrl (
  input      [4:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_interrupt,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_9_;
  reg                 _zz_10_;
  wire                _zz_11_;
  wire                uartCtrl_1__io_write_ready;
  wire                uartCtrl_1__io_read_valid;
  wire       [7:0]    uartCtrl_1__io_read_payload;
  wire                uartCtrl_1__io_uart_txd;
  wire                uartCtrl_1__io_readError;
  wire                uartCtrl_1__io_readBreak;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_availability;
  wire                uartCtrl_1__io_read_queueWithOccupancy_io_push_ready;
  wire                uartCtrl_1__io_read_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    uartCtrl_1__io_read_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    uartCtrl_1__io_read_queueWithOccupancy_io_occupancy;
  wire       [4:0]    uartCtrl_1__io_read_queueWithOccupancy_io_availability;
  wire       [0:0]    _zz_12_;
  wire       [0:0]    _zz_13_;
  wire       [0:0]    _zz_14_;
  wire       [0:0]    _zz_15_;
  wire       [0:0]    _zz_16_;
  wire       [0:0]    _zz_17_;
  wire       [0:0]    _zz_18_;
  wire       [0:0]    _zz_19_;
  wire       [0:0]    _zz_20_;
  wire       [0:0]    _zz_21_;
  wire       [19:0]   _zz_22_;
  wire       [19:0]   _zz_23_;
  wire       [0:0]    _zz_24_;
  wire       [0:0]    _zz_25_;
  wire       [4:0]    _zz_26_;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  reg        [2:0]    bridge_uartConfigReg_frame_dataLength;
  reg        `UartStopType_defaultEncoding_type bridge_uartConfigReg_frame_stop;
  reg        `UartParityType_defaultEncoding_type bridge_uartConfigReg_frame_parity;
  reg        [19:0]   bridge_uartConfigReg_clockDivider;
  reg                 _zz_1_;
  wire                bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_ready;
  wire       [7:0]    bridge_write_streamUnbuffered_payload;
  reg                 bridge_read_streamBreaked_valid;
  reg                 bridge_read_streamBreaked_ready;
  wire       [7:0]    bridge_read_streamBreaked_payload;
  reg                 bridge_interruptCtrl_writeIntEnable;
  reg                 bridge_interruptCtrl_readIntEnable;
  wire                bridge_interruptCtrl_readInt;
  wire                bridge_interruptCtrl_writeInt;
  wire                bridge_interruptCtrl_interrupt;
  reg                 bridge_misc_readError;
  reg                 _zz_2_;
  reg                 bridge_misc_readOverflowError;
  reg                 _zz_3_;
  reg                 bridge_misc_breakDetected;
  reg                 uartCtrl_1__io_readBreak_regNext;
  reg                 _zz_4_;
  reg                 bridge_misc_doBreak;
  reg                 _zz_5_;
  reg                 _zz_6_;
  wire       `UartParityType_defaultEncoding_type _zz_7_;
  wire       `UartStopType_defaultEncoding_type _zz_8_;
  `ifndef SYNTHESIS
  reg [23:0] bridge_uartConfigReg_frame_stop_string;
  reg [31:0] bridge_uartConfigReg_frame_parity_string;
  reg [31:0] _zz_7__string;
  reg [23:0] _zz_8__string;
  `endif


  assign _zz_12_ = io_apb_PWDATA[0 : 0];
  assign _zz_13_ = (1'b0);
  assign _zz_14_ = io_apb_PWDATA[1 : 1];
  assign _zz_15_ = (1'b0);
  assign _zz_16_ = io_apb_PWDATA[9 : 9];
  assign _zz_17_ = (1'b0);
  assign _zz_18_ = io_apb_PWDATA[10 : 10];
  assign _zz_19_ = (1'b1);
  assign _zz_20_ = io_apb_PWDATA[11 : 11];
  assign _zz_21_ = (1'b0);
  assign _zz_22_ = io_apb_PWDATA[19 : 0];
  assign _zz_23_ = _zz_22_;
  assign _zz_24_ = io_apb_PWDATA[0 : 0];
  assign _zz_25_ = io_apb_PWDATA[1 : 1];
  assign _zz_26_ = (5'h10 - bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy);
  UartCtrl uartCtrl_1_ ( 
    .io_config_frame_dataLength    (bridge_uartConfigReg_frame_dataLength[2:0]                            ), //i
    .io_config_frame_stop          (bridge_uartConfigReg_frame_stop                                       ), //i
    .io_config_frame_parity        (bridge_uartConfigReg_frame_parity[1:0]                                ), //i
    .io_config_clockDivider        (bridge_uartConfigReg_clockDivider[19:0]                               ), //i
    .io_write_valid                (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid         ), //i
    .io_write_ready                (uartCtrl_1__io_write_ready                                            ), //o
    .io_write_payload              (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0]  ), //i
    .io_read_valid                 (uartCtrl_1__io_read_valid                                             ), //o
    .io_read_ready                 (uartCtrl_1__io_read_queueWithOccupancy_io_push_ready                  ), //i
    .io_read_payload               (uartCtrl_1__io_read_payload[7:0]                                      ), //o
    .io_uart_txd                   (uartCtrl_1__io_uart_txd                                               ), //o
    .io_uart_rxd                   (io_uart_rxd                                                           ), //i
    .io_readError                  (uartCtrl_1__io_readError                                              ), //o
    .io_writeBreak                 (bridge_misc_doBreak                                                   ), //i
    .io_readBreak                  (uartCtrl_1__io_readBreak                                              ), //o
    .io_axiClk                     (io_axiClk                                                             ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                                    )  //i
  );
  StreamFifo bridge_write_streamUnbuffered_queueWithOccupancy ( 
    .io_push_valid         (bridge_write_streamUnbuffered_valid                                    ), //i
    .io_push_ready         (bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready         ), //o
    .io_push_payload       (bridge_write_streamUnbuffered_payload[7:0]                             ), //i
    .io_pop_valid          (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid          ), //o
    .io_pop_ready          (uartCtrl_1__io_write_ready                                             ), //i
    .io_pop_payload        (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0]   ), //o
    .io_flush              (_zz_9_                                                                 ), //i
    .io_occupancy          (bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy[4:0]     ), //o
    .io_availability       (bridge_write_streamUnbuffered_queueWithOccupancy_io_availability[4:0]  ), //o
    .io_axiClk             (io_axiClk                                                              ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                     )  //i
  );
  StreamFifo uartCtrl_1__io_read_queueWithOccupancy ( 
    .io_push_valid         (uartCtrl_1__io_read_valid                                    ), //i
    .io_push_ready         (uartCtrl_1__io_read_queueWithOccupancy_io_push_ready         ), //o
    .io_push_payload       (uartCtrl_1__io_read_payload[7:0]                             ), //i
    .io_pop_valid          (uartCtrl_1__io_read_queueWithOccupancy_io_pop_valid          ), //o
    .io_pop_ready          (_zz_10_                                                      ), //i
    .io_pop_payload        (uartCtrl_1__io_read_queueWithOccupancy_io_pop_payload[7:0]   ), //o
    .io_flush              (_zz_11_                                                      ), //i
    .io_occupancy          (uartCtrl_1__io_read_queueWithOccupancy_io_occupancy[4:0]     ), //o
    .io_availability       (uartCtrl_1__io_read_queueWithOccupancy_io_availability[4:0]  ), //o
    .io_axiClk             (io_axiClk                                                    ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                           )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(bridge_uartConfigReg_frame_stop)
      `UartStopType_defaultEncoding_ONE : bridge_uartConfigReg_frame_stop_string = "ONE";
      `UartStopType_defaultEncoding_TWO : bridge_uartConfigReg_frame_stop_string = "TWO";
      default : bridge_uartConfigReg_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(bridge_uartConfigReg_frame_parity)
      `UartParityType_defaultEncoding_NONE : bridge_uartConfigReg_frame_parity_string = "NONE";
      `UartParityType_defaultEncoding_EVEN : bridge_uartConfigReg_frame_parity_string = "EVEN";
      `UartParityType_defaultEncoding_ODD : bridge_uartConfigReg_frame_parity_string = "ODD ";
      default : bridge_uartConfigReg_frame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_7_)
      `UartParityType_defaultEncoding_NONE : _zz_7__string = "NONE";
      `UartParityType_defaultEncoding_EVEN : _zz_7__string = "EVEN";
      `UartParityType_defaultEncoding_ODD : _zz_7__string = "ODD ";
      default : _zz_7__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_8_)
      `UartStopType_defaultEncoding_ONE : _zz_8__string = "ONE";
      `UartStopType_defaultEncoding_TWO : _zz_8__string = "TWO";
      default : _zz_8__string = "???";
    endcase
  end
  `endif

  assign io_uart_txd = uartCtrl_1__io_uart_txd;
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
        io_apb_PRDATA[16 : 16] = (bridge_read_streamBreaked_valid ^ 1'b0);
        io_apb_PRDATA[7 : 0] = bridge_read_streamBreaked_payload;
      end
      5'b00100 : begin
        io_apb_PRDATA[20 : 16] = _zz_26_;
        io_apb_PRDATA[15 : 15] = bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
        io_apb_PRDATA[28 : 24] = uartCtrl_1__io_read_queueWithOccupancy_io_occupancy;
        io_apb_PRDATA[0 : 0] = bridge_interruptCtrl_writeIntEnable;
        io_apb_PRDATA[1 : 1] = bridge_interruptCtrl_readIntEnable;
        io_apb_PRDATA[8 : 8] = bridge_interruptCtrl_writeInt;
        io_apb_PRDATA[9 : 9] = bridge_interruptCtrl_readInt;
      end
      5'b10000 : begin
        io_apb_PRDATA[0 : 0] = bridge_misc_readError;
        io_apb_PRDATA[1 : 1] = bridge_misc_readOverflowError;
        io_apb_PRDATA[8 : 8] = uartCtrl_1__io_readBreak;
        io_apb_PRDATA[9 : 9] = bridge_misc_breakDetected;
      end
      default : begin
      end
    endcase
  end

  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  always @ (*) begin
    _zz_1_ = 1'b0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
        if(busCtrl_doWrite)begin
          _zz_1_ = 1'b1;
        end
      end
      5'b00100 : begin
      end
      5'b10000 : begin
      end
      default : begin
      end
    endcase
  end

  assign bridge_write_streamUnbuffered_valid = _zz_1_;
  assign bridge_write_streamUnbuffered_payload = io_apb_PWDATA[7 : 0];
  assign bridge_write_streamUnbuffered_ready = bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  always @ (*) begin
    bridge_read_streamBreaked_valid = uartCtrl_1__io_read_queueWithOccupancy_io_pop_valid;
    if(uartCtrl_1__io_readBreak)begin
      bridge_read_streamBreaked_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_10_ = bridge_read_streamBreaked_ready;
    if(uartCtrl_1__io_readBreak)begin
      _zz_10_ = 1'b1;
    end
  end

  assign bridge_read_streamBreaked_payload = uartCtrl_1__io_read_queueWithOccupancy_io_pop_payload;
  always @ (*) begin
    bridge_read_streamBreaked_ready = 1'b0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
        if(busCtrl_doRead)begin
          bridge_read_streamBreaked_ready = 1'b1;
        end
      end
      5'b00100 : begin
      end
      5'b10000 : begin
      end
      default : begin
      end
    endcase
  end

  assign bridge_interruptCtrl_readInt = (bridge_interruptCtrl_readIntEnable && bridge_read_streamBreaked_valid);
  assign bridge_interruptCtrl_writeInt = (bridge_interruptCtrl_writeIntEnable && (! bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid));
  assign bridge_interruptCtrl_interrupt = (bridge_interruptCtrl_readInt || bridge_interruptCtrl_writeInt);
  always @ (*) begin
    _zz_2_ = 1'b0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
      end
      5'b00100 : begin
      end
      5'b10000 : begin
        if(busCtrl_doWrite)begin
          _zz_2_ = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_3_ = 1'b0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
      end
      5'b00100 : begin
      end
      5'b10000 : begin
        if(busCtrl_doWrite)begin
          _zz_3_ = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_4_ = 1'b0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
      end
      5'b00100 : begin
      end
      5'b10000 : begin
        if(busCtrl_doWrite)begin
          _zz_4_ = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_5_ = 1'b0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
      end
      5'b00100 : begin
      end
      5'b10000 : begin
        if(busCtrl_doWrite)begin
          _zz_5_ = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_6_ = 1'b0;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
      end
      5'b00000 : begin
      end
      5'b00100 : begin
      end
      5'b10000 : begin
        if(busCtrl_doWrite)begin
          _zz_6_ = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign io_interrupt = bridge_interruptCtrl_interrupt;
  assign _zz_7_ = io_apb_PWDATA[9 : 8];
  assign _zz_8_ = io_apb_PWDATA[16 : 16];
  assign _zz_9_ = 1'b0;
  assign _zz_11_ = 1'b0;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      bridge_uartConfigReg_clockDivider <= 20'h0;
      bridge_interruptCtrl_writeIntEnable <= 1'b0;
      bridge_interruptCtrl_readIntEnable <= 1'b0;
      bridge_misc_readError <= 1'b0;
      bridge_misc_readOverflowError <= 1'b0;
      bridge_misc_breakDetected <= 1'b0;
      bridge_misc_doBreak <= 1'b0;
    end else begin
      if(_zz_2_)begin
        if(_zz_12_[0])begin
          bridge_misc_readError <= _zz_13_[0];
        end
      end
      if(uartCtrl_1__io_readError)begin
        bridge_misc_readError <= 1'b1;
      end
      if(_zz_3_)begin
        if(_zz_14_[0])begin
          bridge_misc_readOverflowError <= _zz_15_[0];
        end
      end
      if((uartCtrl_1__io_read_valid && (! uartCtrl_1__io_read_queueWithOccupancy_io_push_ready)))begin
        bridge_misc_readOverflowError <= 1'b1;
      end
      if((uartCtrl_1__io_readBreak && (! uartCtrl_1__io_readBreak_regNext)))begin
        bridge_misc_breakDetected <= 1'b1;
      end
      if(_zz_4_)begin
        if(_zz_16_[0])begin
          bridge_misc_breakDetected <= _zz_17_[0];
        end
      end
      if(_zz_5_)begin
        if(_zz_18_[0])begin
          bridge_misc_doBreak <= _zz_19_[0];
        end
      end
      if(_zz_6_)begin
        if(_zz_20_[0])begin
          bridge_misc_doBreak <= _zz_21_[0];
        end
      end
      case(io_apb_PADDR)
        5'b01000 : begin
          if(busCtrl_doWrite)begin
            bridge_uartConfigReg_clockDivider[19 : 0] <= _zz_23_;
          end
        end
        5'b01100 : begin
        end
        5'b00000 : begin
        end
        5'b00100 : begin
          if(busCtrl_doWrite)begin
            bridge_interruptCtrl_writeIntEnable <= _zz_24_[0];
            bridge_interruptCtrl_readIntEnable <= _zz_25_[0];
          end
        end
        5'b10000 : begin
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    uartCtrl_1__io_readBreak_regNext <= uartCtrl_1__io_readBreak;
    case(io_apb_PADDR)
      5'b01000 : begin
      end
      5'b01100 : begin
        if(busCtrl_doWrite)begin
          bridge_uartConfigReg_frame_dataLength <= io_apb_PWDATA[2 : 0];
          bridge_uartConfigReg_frame_parity <= _zz_7_;
          bridge_uartConfigReg_frame_stop <= _zz_8_;
        end
      end
      5'b00000 : begin
      end
      5'b00100 : begin
      end
      5'b10000 : begin
      end
      default : begin
      end
    endcase
  end


endmodule

module Axi4VgaCtrl (
  output              io_axi_ar_valid,
  input               io_axi_ar_ready,
  output     [31:0]   io_axi_ar_payload_addr,
  output     [7:0]    io_axi_ar_payload_len,
  output     [2:0]    io_axi_ar_payload_size,
  output     [3:0]    io_axi_ar_payload_cache,
  output     [2:0]    io_axi_ar_payload_prot,
  input               io_axi_r_valid,
  output              io_axi_r_ready,
  input      [31:0]   io_axi_r_payload_data,
  input               io_axi_r_payload_last,
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_vga_vSync,
  output              io_vga_hSync,
  output              io_vga_colorEn,
  output     [4:0]    io_vga_color_r,
  output     [5:0]    io_vga_color_g,
  output     [4:0]    io_vga_color_b,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               io_vgaClk,
  input               resetCtrl_vgaReset 
);
  wire                _zz_14_;
  reg                 _zz_15_;
  wire                _zz_16_;
  wire                _zz_17_;
  wire                dma_io_busy;
  wire                dma_io_mem_cmd_valid;
  wire       [26:0]   dma_io_mem_cmd_payload;
  wire                dma_io_frame_valid;
  wire                dma_io_frame_payload_last;
  wire       [4:0]    dma_io_frame_payload_fragment_r;
  wire       [5:0]    dma_io_frame_payload_fragment_g;
  wire       [4:0]    dma_io_frame_payload_fragment_b;
  wire                run_buffercc_io_dataOut;
  wire                vga_ctrl_io_frameStart;
  wire                vga_ctrl_io_pixels_ready;
  wire                vga_ctrl_io_vga_vSync;
  wire                vga_ctrl_io_vga_hSync;
  wire                vga_ctrl_io_vga_colorEn;
  wire       [4:0]    vga_ctrl_io_vga_color_r;
  wire       [5:0]    vga_ctrl_io_vga_color_g;
  wire       [4:0]    vga_ctrl_io_vga_color_b;
  wire                vga_ctrl_io_error;
  wire                pulseCCByToggle_1__io_pulseOut;
  wire       [0:0]    _zz_18_;
  wire                apbCtrl_askWrite;
  wire                apbCtrl_askRead;
  wire                apbCtrl_doWrite;
  wire                apbCtrl_doRead;
  reg                 run;
  reg        [17:0]   _zz_1_;
  reg        [26:0]   _zz_2_;
  wire                vga_run;
  reg                 vga_run_regNext;
  reg                 _zz_3_;
  reg                 _zz_4_;
  wire                dma_io_frame_translated_valid;
  reg                 dma_io_frame_translated_ready;
  wire       [4:0]    dma_io_frame_translated_payload_r;
  wire       [5:0]    dma_io_frame_translated_payload_g;
  wire       [4:0]    dma_io_frame_translated_payload_b;
  reg                 dma_io_frame_translated_thrown_valid;
  wire                dma_io_frame_translated_thrown_ready;
  wire       [4:0]    dma_io_frame_translated_thrown_payload_r;
  wire       [5:0]    dma_io_frame_translated_thrown_payload_g;
  wire       [4:0]    dma_io_frame_translated_thrown_payload_b;
  wire                _zz_5_;
  reg        [11:0]   _zz_6_;
  reg        [11:0]   _zz_7_;
  reg        [11:0]   _zz_8_;
  reg        [11:0]   _zz_9_;
  reg        [11:0]   _zz_10_;
  reg        [11:0]   _zz_11_;
  reg        [11:0]   _zz_12_;
  reg        [11:0]   _zz_13_;

  assign _zz_18_ = io_apb_PWDATA[0 : 0];
  VideoDma dma ( 
    .io_start                       (_zz_14_                               ), //i
    .io_busy                        (dma_io_busy                           ), //o
    .io_base                        (_zz_2_[26:0]                          ), //i
    .io_size                        (_zz_1_[17:0]                          ), //i
    .io_mem_cmd_valid               (dma_io_mem_cmd_valid                  ), //o
    .io_mem_cmd_ready               (io_axi_ar_ready                       ), //i
    .io_mem_cmd_payload             (dma_io_mem_cmd_payload[26:0]          ), //o
    .io_mem_rsp_valid               (io_axi_r_valid                        ), //i
    .io_mem_rsp_payload_last        (io_axi_r_payload_last                 ), //i
    .io_mem_rsp_payload_fragment    (io_axi_r_payload_data[31:0]           ), //i
    .io_frame_valid                 (dma_io_frame_valid                    ), //o
    .io_frame_ready                 (_zz_15_                               ), //i
    .io_frame_payload_last          (dma_io_frame_payload_last             ), //o
    .io_frame_payload_fragment_r    (dma_io_frame_payload_fragment_r[4:0]  ), //o
    .io_frame_payload_fragment_g    (dma_io_frame_payload_fragment_g[5:0]  ), //o
    .io_frame_payload_fragment_b    (dma_io_frame_payload_fragment_b[4:0]  ), //o
    .io_axiClk                      (io_axiClk                             ), //i
    .resetCtrl_axiReset             (resetCtrl_axiReset                    ), //i
    .io_vgaClk                      (io_vgaClk                             ), //i
    .resetCtrl_vgaReset             (resetCtrl_vgaReset                    )  //i
  );
  BufferCC_9_ run_buffercc ( 
    .io_dataIn             (run                      ), //i
    .io_dataOut            (run_buffercc_io_dataOut  ), //o
    .io_vgaClk             (io_vgaClk                ), //i
    .resetCtrl_vgaReset    (resetCtrl_vgaReset       )  //i
  );
  VgaCtrl vga_ctrl ( 
    .io_softReset               (_zz_16_                                        ), //i
    .io_timings_h_colorStart    (_zz_8_[11:0]                                   ), //i
    .io_timings_h_colorEnd      (_zz_9_[11:0]                                   ), //i
    .io_timings_h_syncStart     (_zz_6_[11:0]                                   ), //i
    .io_timings_h_syncEnd       (_zz_7_[11:0]                                   ), //i
    .io_timings_v_colorStart    (_zz_12_[11:0]                                  ), //i
    .io_timings_v_colorEnd      (_zz_13_[11:0]                                  ), //i
    .io_timings_v_syncStart     (_zz_10_[11:0]                                  ), //i
    .io_timings_v_syncEnd       (_zz_11_[11:0]                                  ), //i
    .io_frameStart              (vga_ctrl_io_frameStart                         ), //o
    .io_pixels_valid            (_zz_17_                                        ), //i
    .io_pixels_ready            (vga_ctrl_io_pixels_ready                       ), //o
    .io_pixels_payload_r        (dma_io_frame_translated_thrown_payload_r[4:0]  ), //i
    .io_pixels_payload_g        (dma_io_frame_translated_thrown_payload_g[5:0]  ), //i
    .io_pixels_payload_b        (dma_io_frame_translated_thrown_payload_b[4:0]  ), //i
    .io_vga_vSync               (vga_ctrl_io_vga_vSync                          ), //o
    .io_vga_hSync               (vga_ctrl_io_vga_hSync                          ), //o
    .io_vga_colorEn             (vga_ctrl_io_vga_colorEn                        ), //o
    .io_vga_color_r             (vga_ctrl_io_vga_color_r[4:0]                   ), //o
    .io_vga_color_g             (vga_ctrl_io_vga_color_g[5:0]                   ), //o
    .io_vga_color_b             (vga_ctrl_io_vga_color_b[4:0]                   ), //o
    .io_error                   (vga_ctrl_io_error                              ), //o
    .io_vgaClk                  (io_vgaClk                                      ), //i
    .resetCtrl_vgaReset         (resetCtrl_vgaReset                             )  //i
  );
  PulseCCByToggle pulseCCByToggle_1_ ( 
    .io_pulseIn            (vga_ctrl_io_frameStart          ), //i
    .io_pulseOut           (pulseCCByToggle_1__io_pulseOut  ), //o
    .io_vgaClk             (io_vgaClk                       ), //i
    .resetCtrl_vgaReset    (resetCtrl_vgaReset              ), //i
    .io_axiClk             (io_axiClk                       ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset              )  //i
  );
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'b00000000 : begin
        io_apb_PRDATA[0 : 0] = run;
        io_apb_PRDATA[1 : 1] = dma_io_busy;
      end
      8'b00000100 : begin
      end
      8'b00001000 : begin
      end
      8'b01000000 : begin
      end
      8'b01000100 : begin
      end
      8'b01001000 : begin
      end
      8'b01001100 : begin
      end
      8'b01010000 : begin
      end
      8'b01010100 : begin
      end
      8'b01011000 : begin
      end
      8'b01011100 : begin
      end
      default : begin
      end
    endcase
  end

  assign apbCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign apbCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign apbCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign apbCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  assign io_axi_ar_valid = dma_io_mem_cmd_valid;
  assign io_axi_ar_payload_addr = ({5'd0,dma_io_mem_cmd_payload} <<< 5);
  assign io_axi_ar_payload_len = 8'h07;
  assign io_axi_ar_payload_size = (3'b010);
  assign io_axi_ar_payload_cache = (4'b1111);
  assign io_axi_ar_payload_prot = (3'b010);
  assign io_axi_r_ready = 1'b1;
  assign vga_run = run_buffercc_io_dataOut;
  assign dma_io_frame_translated_valid = dma_io_frame_valid;
  always @ (*) begin
    _zz_15_ = dma_io_frame_translated_ready;
    if((! vga_run))begin
      _zz_15_ = 1'b1;
    end
  end

  assign dma_io_frame_translated_payload_r = dma_io_frame_payload_fragment_r;
  assign dma_io_frame_translated_payload_g = dma_io_frame_payload_fragment_g;
  assign dma_io_frame_translated_payload_b = dma_io_frame_payload_fragment_b;
  always @ (*) begin
    dma_io_frame_translated_thrown_valid = dma_io_frame_translated_valid;
    if(_zz_3_)begin
      dma_io_frame_translated_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    dma_io_frame_translated_ready = dma_io_frame_translated_thrown_ready;
    if(_zz_3_)begin
      dma_io_frame_translated_ready = 1'b1;
    end
  end

  assign dma_io_frame_translated_thrown_payload_r = dma_io_frame_translated_payload_r;
  assign dma_io_frame_translated_thrown_payload_g = dma_io_frame_translated_payload_g;
  assign dma_io_frame_translated_thrown_payload_b = dma_io_frame_translated_payload_b;
  assign _zz_5_ = (! _zz_4_);
  assign dma_io_frame_translated_thrown_ready = (vga_ctrl_io_pixels_ready && _zz_5_);
  assign _zz_17_ = (dma_io_frame_translated_thrown_valid && _zz_5_);
  assign _zz_16_ = (! vga_run);
  assign io_vga_vSync = vga_ctrl_io_vga_vSync;
  assign io_vga_hSync = vga_ctrl_io_vga_hSync;
  assign io_vga_colorEn = vga_ctrl_io_vga_colorEn;
  assign io_vga_color_r = vga_ctrl_io_vga_color_r;
  assign io_vga_color_g = vga_ctrl_io_vga_color_g;
  assign io_vga_color_b = vga_ctrl_io_vga_color_b;
  assign _zz_14_ = (pulseCCByToggle_1__io_pulseOut && run);
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      run <= 1'b0;
    end else begin
      case(io_apb_PADDR)
        8'b00000000 : begin
          if(apbCtrl_doWrite)begin
            run <= _zz_18_[0];
          end
        end
        8'b00000100 : begin
        end
        8'b00001000 : begin
        end
        8'b01000000 : begin
        end
        8'b01000100 : begin
        end
        8'b01001000 : begin
        end
        8'b01001100 : begin
        end
        8'b01010000 : begin
        end
        8'b01010100 : begin
        end
        8'b01011000 : begin
        end
        8'b01011100 : begin
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_vgaClk) begin
    vga_run_regNext <= vga_run;
  end

  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      _zz_3_ <= 1'b0;
      _zz_4_ <= 1'b0;
    end else begin
      if(vga_ctrl_io_frameStart)begin
        _zz_4_ <= 1'b0;
      end
      if(((dma_io_frame_valid && _zz_15_) && dma_io_frame_payload_last))begin
        _zz_3_ <= 1'b0;
        _zz_4_ <= _zz_3_;
      end
      if(((! _zz_4_) && (! _zz_3_)))begin
        if((vga_ctrl_io_error || (vga_run && (! vga_run_regNext))))begin
          _zz_3_ <= 1'b1;
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    case(io_apb_PADDR)
      8'b00000000 : begin
      end
      8'b00000100 : begin
        if(apbCtrl_doWrite)begin
          _zz_1_ <= io_apb_PWDATA[22 : 5];
        end
      end
      8'b00001000 : begin
        if(apbCtrl_doWrite)begin
          _zz_2_ <= io_apb_PWDATA[31 : 5];
        end
      end
      8'b01000000 : begin
        if(apbCtrl_doWrite)begin
          _zz_6_ <= io_apb_PWDATA[11 : 0];
        end
      end
      8'b01000100 : begin
        if(apbCtrl_doWrite)begin
          _zz_7_ <= io_apb_PWDATA[11 : 0];
        end
      end
      8'b01001000 : begin
        if(apbCtrl_doWrite)begin
          _zz_8_ <= io_apb_PWDATA[11 : 0];
        end
      end
      8'b01001100 : begin
        if(apbCtrl_doWrite)begin
          _zz_9_ <= io_apb_PWDATA[11 : 0];
        end
      end
      8'b01010000 : begin
        if(apbCtrl_doWrite)begin
          _zz_10_ <= io_apb_PWDATA[11 : 0];
        end
      end
      8'b01010100 : begin
        if(apbCtrl_doWrite)begin
          _zz_11_ <= io_apb_PWDATA[11 : 0];
        end
      end
      8'b01011000 : begin
        if(apbCtrl_doWrite)begin
          _zz_12_ <= io_apb_PWDATA[11 : 0];
        end
      end
      8'b01011100 : begin
        if(apbCtrl_doWrite)begin
          _zz_13_ <= io_apb_PWDATA[11 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module VexRiscv (
  input               timerInterrupt,
  input               externalInterrupt,
  input               softwareInterrupt,
  input               debug_bus_cmd_valid,
  output reg          debug_bus_cmd_ready,
  input               debug_bus_cmd_payload_wr,
  input      [7:0]    debug_bus_cmd_payload_address,
  input      [31:0]   debug_bus_cmd_payload_data,
  output reg [31:0]   debug_bus_rsp_data,
  output              debug_resetOut,
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output reg [31:0]   iBus_cmd_payload_address,
  output     [2:0]    iBus_cmd_payload_size,
  input               iBus_rsp_valid,
  input      [31:0]   iBus_rsp_payload_data,
  input               iBus_rsp_payload_error,
  output              dBus_cmd_valid,
  input               dBus_cmd_ready,
  output              dBus_cmd_payload_wr,
  output     [31:0]   dBus_cmd_payload_address,
  output     [31:0]   dBus_cmd_payload_data,
  output     [3:0]    dBus_cmd_payload_mask,
  output     [2:0]    dBus_cmd_payload_length,
  output              dBus_cmd_payload_last,
  input               dBus_rsp_valid,
  input      [31:0]   dBus_rsp_payload_data,
  input               dBus_rsp_payload_error,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               resetCtrl_systemReset 
);
  wire                _zz_155_;
  wire                _zz_156_;
  wire                _zz_157_;
  wire                _zz_158_;
  wire                _zz_159_;
  wire                _zz_160_;
  wire                _zz_161_;
  reg                 _zz_162_;
  wire                _zz_163_;
  wire       [31:0]   _zz_164_;
  wire                _zz_165_;
  wire       [31:0]   _zz_166_;
  reg                 _zz_167_;
  wire                _zz_168_;
  wire                _zz_169_;
  wire       [31:0]   _zz_170_;
  wire                _zz_171_;
  reg        [31:0]   _zz_172_;
  reg        [31:0]   _zz_173_;
  reg        [31:0]   _zz_174_;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_haltIt;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_isValid;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_virtualAddress;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_bypassTranslation;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_end;
  wire                IBusCachedPlugin_cache_io_cpu_decode_error;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_decode_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire                IBusCachedPlugin_cache_io_cpu_decode_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire                dataCache_1__io_cpu_memory_isWrite;
  wire                dataCache_1__io_cpu_memory_mmuBus_cmd_isValid;
  wire       [31:0]   dataCache_1__io_cpu_memory_mmuBus_cmd_virtualAddress;
  wire                dataCache_1__io_cpu_memory_mmuBus_cmd_bypassTranslation;
  wire                dataCache_1__io_cpu_memory_mmuBus_end;
  wire                dataCache_1__io_cpu_writeBack_haltIt;
  wire       [31:0]   dataCache_1__io_cpu_writeBack_data;
  wire                dataCache_1__io_cpu_writeBack_mmuException;
  wire                dataCache_1__io_cpu_writeBack_unalignedAccess;
  wire                dataCache_1__io_cpu_writeBack_accessError;
  wire                dataCache_1__io_cpu_writeBack_isWrite;
  wire                dataCache_1__io_cpu_flush_ready;
  wire                dataCache_1__io_cpu_redo;
  wire                dataCache_1__io_mem_cmd_valid;
  wire                dataCache_1__io_mem_cmd_payload_wr;
  wire       [31:0]   dataCache_1__io_mem_cmd_payload_address;
  wire       [31:0]   dataCache_1__io_mem_cmd_payload_data;
  wire       [3:0]    dataCache_1__io_mem_cmd_payload_mask;
  wire       [2:0]    dataCache_1__io_mem_cmd_payload_length;
  wire                dataCache_1__io_mem_cmd_payload_last;
  wire                _zz_175_;
  wire                _zz_176_;
  wire                _zz_177_;
  wire                _zz_178_;
  wire                _zz_179_;
  wire                _zz_180_;
  wire                _zz_181_;
  wire                _zz_182_;
  wire                _zz_183_;
  wire                _zz_184_;
  wire                _zz_185_;
  wire                _zz_186_;
  wire                _zz_187_;
  wire                _zz_188_;
  wire                _zz_189_;
  wire                _zz_190_;
  wire       [1:0]    _zz_191_;
  wire                _zz_192_;
  wire       [1:0]    _zz_193_;
  wire                _zz_194_;
  wire                _zz_195_;
  wire                _zz_196_;
  wire                _zz_197_;
  wire                _zz_198_;
  wire                _zz_199_;
  wire                _zz_200_;
  wire                _zz_201_;
  wire       [5:0]    _zz_202_;
  wire                _zz_203_;
  wire                _zz_204_;
  wire                _zz_205_;
  wire                _zz_206_;
  wire       [1:0]    _zz_207_;
  wire       [1:0]    _zz_208_;
  wire                _zz_209_;
  wire       [0:0]    _zz_210_;
  wire       [0:0]    _zz_211_;
  wire       [51:0]   _zz_212_;
  wire       [51:0]   _zz_213_;
  wire       [51:0]   _zz_214_;
  wire       [32:0]   _zz_215_;
  wire       [51:0]   _zz_216_;
  wire       [49:0]   _zz_217_;
  wire       [51:0]   _zz_218_;
  wire       [49:0]   _zz_219_;
  wire       [51:0]   _zz_220_;
  wire       [0:0]    _zz_221_;
  wire       [0:0]    _zz_222_;
  wire       [0:0]    _zz_223_;
  wire       [0:0]    _zz_224_;
  wire       [32:0]   _zz_225_;
  wire       [31:0]   _zz_226_;
  wire       [32:0]   _zz_227_;
  wire       [0:0]    _zz_228_;
  wire       [0:0]    _zz_229_;
  wire       [0:0]    _zz_230_;
  wire       [0:0]    _zz_231_;
  wire       [0:0]    _zz_232_;
  wire       [0:0]    _zz_233_;
  wire       [0:0]    _zz_234_;
  wire       [0:0]    _zz_235_;
  wire       [0:0]    _zz_236_;
  wire       [0:0]    _zz_237_;
  wire       [0:0]    _zz_238_;
  wire       [0:0]    _zz_239_;
  wire       [3:0]    _zz_240_;
  wire       [2:0]    _zz_241_;
  wire       [31:0]   _zz_242_;
  wire       [11:0]   _zz_243_;
  wire       [31:0]   _zz_244_;
  wire       [19:0]   _zz_245_;
  wire       [11:0]   _zz_246_;
  wire       [31:0]   _zz_247_;
  wire       [31:0]   _zz_248_;
  wire       [19:0]   _zz_249_;
  wire       [11:0]   _zz_250_;
  wire       [2:0]    _zz_251_;
  wire       [2:0]    _zz_252_;
  wire       [0:0]    _zz_253_;
  wire       [2:0]    _zz_254_;
  wire       [4:0]    _zz_255_;
  wire       [11:0]   _zz_256_;
  wire       [11:0]   _zz_257_;
  wire       [31:0]   _zz_258_;
  wire       [31:0]   _zz_259_;
  wire       [31:0]   _zz_260_;
  wire       [31:0]   _zz_261_;
  wire       [31:0]   _zz_262_;
  wire       [31:0]   _zz_263_;
  wire       [31:0]   _zz_264_;
  wire       [65:0]   _zz_265_;
  wire       [65:0]   _zz_266_;
  wire       [31:0]   _zz_267_;
  wire       [31:0]   _zz_268_;
  wire       [0:0]    _zz_269_;
  wire       [5:0]    _zz_270_;
  wire       [32:0]   _zz_271_;
  wire       [31:0]   _zz_272_;
  wire       [31:0]   _zz_273_;
  wire       [32:0]   _zz_274_;
  wire       [32:0]   _zz_275_;
  wire       [32:0]   _zz_276_;
  wire       [32:0]   _zz_277_;
  wire       [0:0]    _zz_278_;
  wire       [32:0]   _zz_279_;
  wire       [0:0]    _zz_280_;
  wire       [32:0]   _zz_281_;
  wire       [0:0]    _zz_282_;
  wire       [31:0]   _zz_283_;
  wire       [11:0]   _zz_284_;
  wire       [19:0]   _zz_285_;
  wire       [11:0]   _zz_286_;
  wire       [31:0]   _zz_287_;
  wire       [31:0]   _zz_288_;
  wire       [31:0]   _zz_289_;
  wire       [11:0]   _zz_290_;
  wire       [19:0]   _zz_291_;
  wire       [11:0]   _zz_292_;
  wire       [2:0]    _zz_293_;
  wire       [1:0]    _zz_294_;
  wire       [1:0]    _zz_295_;
  wire       [0:0]    _zz_296_;
  wire       [0:0]    _zz_297_;
  wire       [0:0]    _zz_298_;
  wire       [0:0]    _zz_299_;
  wire       [0:0]    _zz_300_;
  wire       [0:0]    _zz_301_;
  wire                _zz_302_;
  wire                _zz_303_;
  wire       [1:0]    _zz_304_;
  wire       [31:0]   _zz_305_;
  wire       [31:0]   _zz_306_;
  wire       [31:0]   _zz_307_;
  wire                _zz_308_;
  wire       [0:0]    _zz_309_;
  wire       [12:0]   _zz_310_;
  wire       [31:0]   _zz_311_;
  wire       [31:0]   _zz_312_;
  wire       [31:0]   _zz_313_;
  wire                _zz_314_;
  wire       [0:0]    _zz_315_;
  wire       [6:0]    _zz_316_;
  wire       [31:0]   _zz_317_;
  wire       [31:0]   _zz_318_;
  wire       [31:0]   _zz_319_;
  wire                _zz_320_;
  wire       [0:0]    _zz_321_;
  wire       [0:0]    _zz_322_;
  wire                _zz_323_;
  wire                _zz_324_;
  wire                _zz_325_;
  wire       [31:0]   _zz_326_;
  wire       [0:0]    _zz_327_;
  wire       [2:0]    _zz_328_;
  wire       [0:0]    _zz_329_;
  wire       [0:0]    _zz_330_;
  wire       [0:0]    _zz_331_;
  wire       [0:0]    _zz_332_;
  wire                _zz_333_;
  wire       [0:0]    _zz_334_;
  wire       [25:0]   _zz_335_;
  wire       [31:0]   _zz_336_;
  wire       [31:0]   _zz_337_;
  wire       [31:0]   _zz_338_;
  wire                _zz_339_;
  wire                _zz_340_;
  wire       [31:0]   _zz_341_;
  wire       [31:0]   _zz_342_;
  wire                _zz_343_;
  wire       [0:0]    _zz_344_;
  wire       [0:0]    _zz_345_;
  wire       [0:0]    _zz_346_;
  wire       [0:0]    _zz_347_;
  wire                _zz_348_;
  wire       [0:0]    _zz_349_;
  wire       [22:0]   _zz_350_;
  wire       [31:0]   _zz_351_;
  wire       [31:0]   _zz_352_;
  wire       [31:0]   _zz_353_;
  wire       [31:0]   _zz_354_;
  wire       [1:0]    _zz_355_;
  wire       [1:0]    _zz_356_;
  wire                _zz_357_;
  wire       [0:0]    _zz_358_;
  wire       [19:0]   _zz_359_;
  wire       [31:0]   _zz_360_;
  wire       [31:0]   _zz_361_;
  wire                _zz_362_;
  wire                _zz_363_;
  wire                _zz_364_;
  wire       [0:0]    _zz_365_;
  wire       [0:0]    _zz_366_;
  wire                _zz_367_;
  wire       [0:0]    _zz_368_;
  wire       [15:0]   _zz_369_;
  wire       [31:0]   _zz_370_;
  wire       [31:0]   _zz_371_;
  wire       [31:0]   _zz_372_;
  wire       [0:0]    _zz_373_;
  wire       [0:0]    _zz_374_;
  wire       [5:0]    _zz_375_;
  wire       [5:0]    _zz_376_;
  wire                _zz_377_;
  wire       [0:0]    _zz_378_;
  wire       [12:0]   _zz_379_;
  wire       [31:0]   _zz_380_;
  wire       [31:0]   _zz_381_;
  wire                _zz_382_;
  wire       [0:0]    _zz_383_;
  wire       [2:0]    _zz_384_;
  wire                _zz_385_;
  wire                _zz_386_;
  wire       [0:0]    _zz_387_;
  wire       [1:0]    _zz_388_;
  wire       [2:0]    _zz_389_;
  wire       [2:0]    _zz_390_;
  wire                _zz_391_;
  wire       [0:0]    _zz_392_;
  wire       [9:0]    _zz_393_;
  wire       [31:0]   _zz_394_;
  wire       [31:0]   _zz_395_;
  wire       [31:0]   _zz_396_;
  wire                _zz_397_;
  wire       [0:0]    _zz_398_;
  wire       [0:0]    _zz_399_;
  wire       [31:0]   _zz_400_;
  wire       [31:0]   _zz_401_;
  wire       [31:0]   _zz_402_;
  wire       [31:0]   _zz_403_;
  wire                _zz_404_;
  wire                _zz_405_;
  wire                _zz_406_;
  wire       [0:0]    _zz_407_;
  wire       [0:0]    _zz_408_;
  wire       [0:0]    _zz_409_;
  wire       [2:0]    _zz_410_;
  wire       [0:0]    _zz_411_;
  wire       [0:0]    _zz_412_;
  wire                _zz_413_;
  wire       [0:0]    _zz_414_;
  wire       [7:0]    _zz_415_;
  wire       [31:0]   _zz_416_;
  wire       [31:0]   _zz_417_;
  wire       [31:0]   _zz_418_;
  wire       [31:0]   _zz_419_;
  wire       [31:0]   _zz_420_;
  wire       [31:0]   _zz_421_;
  wire       [31:0]   _zz_422_;
  wire       [31:0]   _zz_423_;
  wire       [31:0]   _zz_424_;
  wire       [31:0]   _zz_425_;
  wire       [31:0]   _zz_426_;
  wire       [31:0]   _zz_427_;
  wire       [31:0]   _zz_428_;
  wire       [31:0]   _zz_429_;
  wire                _zz_430_;
  wire       [0:0]    _zz_431_;
  wire       [0:0]    _zz_432_;
  wire       [31:0]   _zz_433_;
  wire       [31:0]   _zz_434_;
  wire       [0:0]    _zz_435_;
  wire       [1:0]    _zz_436_;
  wire       [0:0]    _zz_437_;
  wire       [0:0]    _zz_438_;
  wire                _zz_439_;
  wire       [0:0]    _zz_440_;
  wire       [5:0]    _zz_441_;
  wire       [31:0]   _zz_442_;
  wire       [31:0]   _zz_443_;
  wire       [31:0]   _zz_444_;
  wire       [31:0]   _zz_445_;
  wire       [31:0]   _zz_446_;
  wire       [31:0]   _zz_447_;
  wire       [31:0]   _zz_448_;
  wire                _zz_449_;
  wire                _zz_450_;
  wire       [31:0]   _zz_451_;
  wire       [31:0]   _zz_452_;
  wire                _zz_453_;
  wire       [0:0]    _zz_454_;
  wire       [0:0]    _zz_455_;
  wire                _zz_456_;
  wire       [0:0]    _zz_457_;
  wire       [3:0]    _zz_458_;
  wire       [31:0]   _zz_459_;
  wire       [31:0]   _zz_460_;
  wire       [31:0]   _zz_461_;
  wire                _zz_462_;
  wire       [0:0]    _zz_463_;
  wire       [0:0]    _zz_464_;
  wire                _zz_465_;
  wire       [0:0]    _zz_466_;
  wire       [0:0]    _zz_467_;
  wire       [31:0]   _zz_468_;
  wire       [31:0]   _zz_469_;
  wire       [31:0]   _zz_470_;
  wire       [31:0]   _zz_471_;
  wire       [31:0]   _zz_472_;
  wire       [0:0]    _zz_473_;
  wire       [1:0]    _zz_474_;
  wire                _zz_475_;
  wire                _zz_476_;
  wire                _zz_477_;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [33:0]   memory_MUL_HH;
  wire       [33:0]   execute_MUL_HH;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_CSR_WRITE_OPCODE;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_1_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_2_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_3_;
  wire                memory_MEMORY_WR;
  wire                decode_MEMORY_WR;
  wire       [51:0]   memory_MUL_LOW;
  wire       [31:0]   memory_PC;
  wire       [31:0]   execute_BRANCH_CALC;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_4_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_5_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_6_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_7_;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_8_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_9_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_10_;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       [33:0]   execute_MUL_HL;
  wire                decode_IS_CSR;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_11_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_12_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_13_;
  wire                decode_DO_EBREAK;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_MANAGMENT;
  wire       [31:0]   execute_SHIFT_RIGHT;
  wire                decode_SRC2_FORCE_ZERO;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_IS_RS1_SIGNED;
  wire       [33:0]   execute_MUL_LH;
  wire                execute_BRANCH_DO;
  wire                memory_IS_MUL;
  wire                execute_IS_MUL;
  wire                decode_IS_MUL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_14_;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_15_;
  wire       `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_16_;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_17_;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_18_;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_19_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_20_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_21_;
  wire                decode_IS_DIV;
  wire       [31:0]   execute_MUL_LL;
  wire                decode_PREDICTION_HAD_BRANCHED2;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_22_;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_23_;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_24_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_25_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_26_;
  wire                execute_DO_EBREAK;
  wire                decode_IS_EBREAK;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_27_;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_28_;
  wire       `EnvCtrlEnum_defaultEncoding_type writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_29_;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire                execute_PREDICTION_HAD_BRANCHED2;
  wire                execute_BRANCH_COND_RESULT;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_30_;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  reg        [31:0]   _zz_31_;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire                execute_IS_RS1_SIGNED;
  wire                execute_IS_DIV;
  wire                execute_IS_RS2_SIGNED;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_IS_DIV;
  wire                writeBack_IS_MUL;
  wire       [33:0]   writeBack_MUL_HH;
  wire       [51:0]   writeBack_MUL_LOW;
  wire       [33:0]   memory_MUL_HL;
  wire       [33:0]   memory_MUL_LH;
  wire       [31:0]   memory_MUL_LL;
  (* syn_keep , keep *) wire       [31:0]   execute_RS1 /* synthesis syn_keep = 1 */ ;
  wire       [31:0]   memory_SHIFT_RIGHT;
  reg        [31:0]   _zz_32_;
  wire       `ShiftCtrlEnum_defaultEncoding_type memory_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_33_;
  wire       `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_34_;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_35_;
  wire       `Src2CtrlEnum_defaultEncoding_type execute_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_36_;
  wire       `Src1CtrlEnum_defaultEncoding_type execute_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_37_;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_38_;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_39_;
  wire       [31:0]   _zz_40_;
  wire                _zz_41_;
  reg                 _zz_42_;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_43_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_44_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_45_;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_46_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_47_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_48_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_49_;
  reg        [31:0]   _zz_50_;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire                writeBack_MEMORY_WR;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire                writeBack_MEMORY_ENABLE;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_ENABLE;
  wire                execute_MEMORY_MANAGMENT;
  (* syn_keep , keep *) wire       [31:0]   execute_RS2 /* synthesis syn_keep = 1 */ ;
  wire                execute_MEMORY_WR;
  wire       [31:0]   execute_SRC_ADD;
  wire                execute_MEMORY_ENABLE;
  wire       [31:0]   execute_INSTRUCTION;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 _zz_51_;
  reg                 _zz_51__2;
  reg                 _zz_51__1;
  reg                 _zz_51__0;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_52_;
  wire       [31:0]   decode_INSTRUCTION;
  reg        [31:0]   _zz_53_;
  reg        [31:0]   _zz_54_;
  wire       [31:0]   decode_PC;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  reg                 decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  reg                 execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  reg                 execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  reg                 writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  reg                 writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_predictionJumpInterface_valid;
  (* syn_keep , keep *) wire       [31:0]   IBusCachedPlugin_predictionJumpInterface_payload /* synthesis syn_keep = 1 */ ;
  reg                 IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire                IBusCachedPlugin_decodePrediction_rsp_wasWrong;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_mmuBus_cmd_isValid;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_bypassTranslation;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                IBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                IBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                IBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                IBusCachedPlugin_mmuBus_rsp_exception;
  wire                IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  wire                DBusCachedPlugin_mmuBus_cmd_isValid;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_virtualAddress;
  wire                DBusCachedPlugin_mmuBus_cmd_bypassTranslation;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                DBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                DBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                DBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                DBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                DBusCachedPlugin_mmuBus_rsp_exception;
  wire                DBusCachedPlugin_mmuBus_rsp_refilling;
  wire                DBusCachedPlugin_mmuBus_end;
  wire                DBusCachedPlugin_mmuBus_busy;
  reg                 DBusCachedPlugin_redoBranch_valid;
  wire       [31:0]   DBusCachedPlugin_redoBranch_payload;
  reg                 DBusCachedPlugin_exceptionBus_valid;
  reg        [3:0]    DBusCachedPlugin_exceptionBus_payload_code;
  wire       [31:0]   DBusCachedPlugin_exceptionBus_payload_badAddr;
  reg                 _zz_55_;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  wire                BranchPlugin_branchExceptionPort_valid;
  wire       [3:0]    BranchPlugin_branchExceptionPort_payload_code;
  wire       [31:0]   BranchPlugin_branchExceptionPort_payload_badAddr;
  wire                CsrPlugin_inWfi /* verilator public */ ;
  reg                 CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  reg                 CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_allowInterrupts;
  reg                 CsrPlugin_allowException;
  reg                 IBusCachedPlugin_injectionPort_valid;
  reg                 IBusCachedPlugin_injectionPort_ready;
  wire       [31:0]   IBusCachedPlugin_injectionPort_payload;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_56_;
  wire       [3:0]    _zz_57_;
  wire                _zz_58_;
  wire                _zz_59_;
  wire                _zz_60_;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_corrected;
  reg                 IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_2_halt;
  wire                _zz_61_;
  wire                _zz_62_;
  wire                _zz_63_;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_64_;
  wire                _zz_65_;
  reg                 _zz_66_;
  wire                _zz_67_;
  reg                 _zz_68_;
  reg        [31:0]   _zz_69_;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_4;
  wire                _zz_70_;
  reg        [18:0]   _zz_71_;
  wire                _zz_72_;
  reg        [10:0]   _zz_73_;
  wire                _zz_74_;
  reg        [18:0]   _zz_75_;
  reg                 _zz_76_;
  wire                _zz_77_;
  reg        [10:0]   _zz_78_;
  wire                _zz_79_;
  reg        [18:0]   _zz_80_;
  wire       [31:0]   _zz_81_;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s2_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire       [31:0]   _zz_82_;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire       [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_83_;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  wire                _zz_84_;
  reg        [31:0]   _zz_85_;
  wire                _zz_86_;
  reg        [31:0]   _zz_87_;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  wire       [31:0]   _zz_88_;
  wire                _zz_89_;
  wire                _zz_90_;
  wire                _zz_91_;
  wire                _zz_92_;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_93_;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_94_;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_95_;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_96_;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_97_;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_98_;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_99_;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  wire       [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  wire       [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg                 _zz_100_;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_101_;
  reg        [31:0]   _zz_102_;
  wire                _zz_103_;
  reg        [19:0]   _zz_104_;
  wire                _zz_105_;
  reg        [19:0]   _zz_106_;
  reg        [31:0]   _zz_107_;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_108_;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_109_;
  reg                 execute_MulPlugin_aSigned;
  reg                 execute_MulPlugin_bSigned;
  wire       [31:0]   execute_MulPlugin_a;
  wire       [31:0]   execute_MulPlugin_b;
  wire       [15:0]   execute_MulPlugin_aULow;
  wire       [15:0]   execute_MulPlugin_bULow;
  wire       [16:0]   execute_MulPlugin_aSLow;
  wire       [16:0]   execute_MulPlugin_bSLow;
  wire       [16:0]   execute_MulPlugin_aHigh;
  wire       [16:0]   execute_MulPlugin_bHigh;
  wire       [65:0]   writeBack_MulPlugin_result;
  reg        [32:0]   memory_DivPlugin_rs1;
  reg        [31:0]   memory_DivPlugin_rs2;
  reg        [64:0]   memory_DivPlugin_accumulator;
  wire                memory_DivPlugin_frontendOk;
  reg                 memory_DivPlugin_div_needRevert;
  reg                 memory_DivPlugin_div_counter_willIncrement;
  reg                 memory_DivPlugin_div_counter_willClear;
  reg        [5:0]    memory_DivPlugin_div_counter_valueNext;
  reg        [5:0]    memory_DivPlugin_div_counter_value;
  wire                memory_DivPlugin_div_counter_willOverflowIfInc;
  wire                memory_DivPlugin_div_counter_willOverflow;
  reg                 memory_DivPlugin_div_done;
  reg        [31:0]   memory_DivPlugin_div_result;
  wire       [31:0]   _zz_110_;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outNumerator;
  wire       [31:0]   _zz_111_;
  wire                _zz_112_;
  wire                _zz_113_;
  reg        [32:0]   _zz_114_;
  reg                 _zz_115_;
  reg                 _zz_116_;
  reg                 _zz_117_;
  reg        [4:0]    _zz_118_;
  reg        [31:0]   _zz_119_;
  wire                _zz_120_;
  wire                _zz_121_;
  wire                _zz_122_;
  wire                _zz_123_;
  wire                _zz_124_;
  wire                _zz_125_;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    _zz_126_;
  reg                 _zz_127_;
  reg                 _zz_128_;
  wire                _zz_129_;
  reg        [19:0]   _zz_130_;
  wire                _zz_131_;
  reg        [10:0]   _zz_132_;
  wire                _zz_133_;
  reg        [18:0]   _zz_134_;
  reg                 _zz_135_;
  wire                execute_BranchPlugin_missAlignedTarget;
  reg        [31:0]   execute_BranchPlugin_branch_src1;
  reg        [31:0]   execute_BranchPlugin_branch_src2;
  wire                _zz_136_;
  reg        [19:0]   _zz_137_;
  wire                _zz_138_;
  reg        [10:0]   _zz_139_;
  wire                _zz_140_;
  reg        [18:0]   _zz_141_;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  wire       [1:0]    CsrPlugin_misa_base;
  wire       [25:0]   CsrPlugin_misa_extensions;
  wire       [1:0]    CsrPlugin_mtvec_mode;
  wire       [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg        [63:0]   CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  wire                _zz_142_;
  wire                _zz_143_;
  wire                _zz_144_;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_145_;
  wire                _zz_146_;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                CsrPlugin_exception;
  wire                CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
  wire                CsrPlugin_pipelineLiberator_active;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  reg                 execute_CsrPlugin_wfiWake;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire       [31:0]   execute_CsrPlugin_readData;
  wire                execute_CsrPlugin_writeInstruction;
  wire                execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  wire       [31:0]   execute_CsrPlugin_readToWriteData;
  reg        [31:0]   execute_CsrPlugin_writeData;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  reg                 DebugPlugin_firstCycle;
  reg                 DebugPlugin_secondCycle;
  reg                 DebugPlugin_resetIt;
  reg                 DebugPlugin_haltIt;
  reg                 DebugPlugin_stepIt;
  reg                 DebugPlugin_isPipBusy;
  reg                 DebugPlugin_godmode;
  reg                 DebugPlugin_haltedByBreak;
  reg        [31:0]   DebugPlugin_busReadDataReg;
  reg                 _zz_147_;
  reg                 DebugPlugin_resetIt_regNext;
  reg        `Src2CtrlEnum_defaultEncoding_type decode_to_execute_SRC2_CTRL;
  reg        `BranchCtrlEnum_defaultEncoding_type decode_to_execute_BRANCH_CTRL;
  reg                 decode_to_execute_PREDICTION_HAD_BRANCHED2;
  reg        [31:0]   execute_to_memory_MUL_LL;
  reg                 decode_to_execute_IS_DIV;
  reg                 execute_to_memory_IS_DIV;
  reg        `AluCtrlEnum_defaultEncoding_type decode_to_execute_ALU_CTRL;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  reg        `ShiftCtrlEnum_defaultEncoding_type decode_to_execute_SHIFT_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type execute_to_memory_SHIFT_CTRL;
  reg                 decode_to_execute_IS_MUL;
  reg                 execute_to_memory_IS_MUL;
  reg                 memory_to_writeBack_IS_MUL;
  reg                 execute_to_memory_BRANCH_DO;
  reg        [33:0]   execute_to_memory_MUL_LH;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  reg        [31:0]   decode_to_execute_RS1;
  reg        [31:0]   execute_to_memory_SHIFT_RIGHT;
  reg        [31:0]   decode_to_execute_RS2;
  reg                 decode_to_execute_MEMORY_MANAGMENT;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  reg                 decode_to_execute_DO_EBREAK;
  reg        `Src1CtrlEnum_defaultEncoding_type decode_to_execute_SRC1_CTRL;
  reg                 decode_to_execute_MEMORY_ENABLE;
  reg                 execute_to_memory_MEMORY_ENABLE;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  reg                 decode_to_execute_IS_CSR;
  reg        [33:0]   execute_to_memory_MUL_HL;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  reg        `EnvCtrlEnum_defaultEncoding_type decode_to_execute_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type execute_to_memory_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type memory_to_writeBack_ENV_CTRL;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  reg        [31:0]   decode_to_execute_PC;
  reg        [31:0]   execute_to_memory_PC;
  reg        [31:0]   memory_to_writeBack_PC;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  reg        [51:0]   memory_to_writeBack_MUL_LOW;
  reg                 decode_to_execute_MEMORY_WR;
  reg                 execute_to_memory_MEMORY_WR;
  reg                 memory_to_writeBack_MEMORY_WR;
  reg        `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_ALU_BITWISE_CTRL;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  reg        [33:0]   execute_to_memory_MUL_HH;
  reg        [33:0]   memory_to_writeBack_MUL_HH;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  reg        [2:0]    _zz_148_;
  reg                 execute_CsrPlugin_csr_768;
  reg                 execute_CsrPlugin_csr_836;
  reg                 execute_CsrPlugin_csr_772;
  reg                 execute_CsrPlugin_csr_833;
  reg                 execute_CsrPlugin_csr_834;
  reg                 execute_CsrPlugin_csr_835;
  reg        [31:0]   _zz_149_;
  reg        [31:0]   _zz_150_;
  reg        [31:0]   _zz_151_;
  reg        [31:0]   _zz_152_;
  reg        [31:0]   _zz_153_;
  reg        [31:0]   _zz_154_;
  `ifndef SYNTHESIS
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_1__string;
  reg [39:0] _zz_2__string;
  reg [39:0] _zz_3__string;
  reg [31:0] _zz_4__string;
  reg [31:0] _zz_5__string;
  reg [31:0] _zz_6__string;
  reg [31:0] _zz_7__string;
  reg [31:0] decode_ENV_CTRL_string;
  reg [31:0] _zz_8__string;
  reg [31:0] _zz_9__string;
  reg [31:0] _zz_10__string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_11__string;
  reg [95:0] _zz_12__string;
  reg [95:0] _zz_13__string;
  reg [71:0] _zz_14__string;
  reg [71:0] _zz_15__string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_16__string;
  reg [71:0] _zz_17__string;
  reg [71:0] _zz_18__string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_19__string;
  reg [63:0] _zz_20__string;
  reg [63:0] _zz_21__string;
  reg [31:0] _zz_22__string;
  reg [31:0] _zz_23__string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_24__string;
  reg [23:0] _zz_25__string;
  reg [23:0] _zz_26__string;
  reg [31:0] memory_ENV_CTRL_string;
  reg [31:0] _zz_27__string;
  reg [31:0] execute_ENV_CTRL_string;
  reg [31:0] _zz_28__string;
  reg [31:0] writeBack_ENV_CTRL_string;
  reg [31:0] _zz_29__string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_30__string;
  reg [71:0] memory_SHIFT_CTRL_string;
  reg [71:0] _zz_33__string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_34__string;
  reg [23:0] execute_SRC2_CTRL_string;
  reg [23:0] _zz_36__string;
  reg [95:0] execute_SRC1_CTRL_string;
  reg [95:0] _zz_37__string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_38__string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_39__string;
  reg [31:0] _zz_43__string;
  reg [23:0] _zz_44__string;
  reg [31:0] _zz_45__string;
  reg [71:0] _zz_46__string;
  reg [63:0] _zz_47__string;
  reg [39:0] _zz_48__string;
  reg [95:0] _zz_49__string;
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_52__string;
  reg [95:0] _zz_93__string;
  reg [39:0] _zz_94__string;
  reg [63:0] _zz_95__string;
  reg [71:0] _zz_96__string;
  reg [31:0] _zz_97__string;
  reg [23:0] _zz_98__string;
  reg [31:0] _zz_99__string;
  reg [23:0] decode_to_execute_SRC2_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] execute_to_memory_SHIFT_CTRL_string;
  reg [95:0] decode_to_execute_SRC1_CTRL_string;
  reg [31:0] decode_to_execute_ENV_CTRL_string;
  reg [31:0] execute_to_memory_ENV_CTRL_string;
  reg [31:0] memory_to_writeBack_ENV_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  `endif

  reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_175_ = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_176_ = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_177_ = 1'b1;
  assign _zz_178_ = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_179_ = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_180_ = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_181_ = ((_zz_159_ && IBusCachedPlugin_cache_io_cpu_decode_error) && (! _zz_51__2));
  assign _zz_182_ = ((_zz_159_ && IBusCachedPlugin_cache_io_cpu_decode_cacheMiss) && (! _zz_51__1));
  assign _zz_183_ = ((_zz_159_ && IBusCachedPlugin_cache_io_cpu_decode_mmuException) && (! _zz_51__0));
  assign _zz_184_ = ((_zz_159_ && IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_185_ = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != (2'b00));
  assign _zz_186_ = (execute_arbitration_isValid && execute_DO_EBREAK);
  assign _zz_187_ = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00)) == 1'b0);
  assign _zz_188_ = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_189_ = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_190_ = (DebugPlugin_stepIt && IBusCachedPlugin_incomingInstruction);
  assign _zz_191_ = writeBack_INSTRUCTION[29 : 28];
  assign _zz_192_ = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_193_ = execute_INSTRUCTION[13 : 12];
  assign _zz_194_ = (memory_DivPlugin_frontendOk && (! memory_DivPlugin_div_done));
  assign _zz_195_ = (! memory_arbitration_isStuck);
  assign _zz_196_ = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_197_ = (1'b0 || (! 1'b1));
  assign _zz_198_ = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_199_ = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign _zz_200_ = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_201_ = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_202_ = debug_bus_cmd_payload_address[7 : 2];
  assign _zz_203_ = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < (2'b11)));
  assign _zz_204_ = ((_zz_142_ && 1'b1) && (! 1'b0));
  assign _zz_205_ = ((_zz_143_ && 1'b1) && (! 1'b0));
  assign _zz_206_ = ((_zz_144_ && 1'b1) && (! 1'b0));
  assign _zz_207_ = writeBack_INSTRUCTION[13 : 12];
  assign _zz_208_ = writeBack_INSTRUCTION[13 : 12];
  assign _zz_209_ = execute_INSTRUCTION[13];
  assign _zz_210_ = _zz_88_[0 : 0];
  assign _zz_211_ = _zz_88_[3 : 3];
  assign _zz_212_ = ($signed(_zz_213_) + $signed(_zz_218_));
  assign _zz_213_ = ($signed(_zz_214_) + $signed(_zz_216_));
  assign _zz_214_ = 52'h0;
  assign _zz_215_ = {1'b0,memory_MUL_LL};
  assign _zz_216_ = {{19{_zz_215_[32]}}, _zz_215_};
  assign _zz_217_ = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_218_ = {{2{_zz_217_[49]}}, _zz_217_};
  assign _zz_219_ = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_220_ = {{2{_zz_219_[49]}}, _zz_219_};
  assign _zz_221_ = _zz_88_[30 : 30];
  assign _zz_222_ = _zz_88_[16 : 16];
  assign _zz_223_ = _zz_88_[20 : 20];
  assign _zz_224_ = _zz_88_[18 : 18];
  assign _zz_225_ = ($signed(_zz_227_) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_226_ = _zz_225_[31 : 0];
  assign _zz_227_ = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_228_ = _zz_88_[23 : 23];
  assign _zz_229_ = _zz_88_[21 : 21];
  assign _zz_230_ = _zz_88_[10 : 10];
  assign _zz_231_ = _zz_88_[31 : 31];
  assign _zz_232_ = _zz_88_[19 : 19];
  assign _zz_233_ = _zz_88_[22 : 22];
  assign _zz_234_ = _zz_88_[11 : 11];
  assign _zz_235_ = _zz_88_[9 : 9];
  assign _zz_236_ = _zz_88_[17 : 17];
  assign _zz_237_ = _zz_88_[15 : 15];
  assign _zz_238_ = _zz_88_[4 : 4];
  assign _zz_239_ = _zz_88_[25 : 25];
  assign _zz_240_ = (_zz_56_ - (4'b0001));
  assign _zz_241_ = {IBusCachedPlugin_fetchPc_inc,(2'b00)};
  assign _zz_242_ = {29'd0, _zz_241_};
  assign _zz_243_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_244_ = {{_zz_71_,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_245_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_246_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_247_ = {{_zz_73_,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_248_ = {{_zz_75_,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_249_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_250_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_251_ = (writeBack_MEMORY_WR ? (3'b111) : (3'b101));
  assign _zz_252_ = (writeBack_MEMORY_WR ? (3'b110) : (3'b100));
  assign _zz_253_ = execute_SRC_LESS;
  assign _zz_254_ = (3'b100);
  assign _zz_255_ = execute_INSTRUCTION[19 : 15];
  assign _zz_256_ = execute_INSTRUCTION[31 : 20];
  assign _zz_257_ = {execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]};
  assign _zz_258_ = ($signed(_zz_259_) + $signed(_zz_262_));
  assign _zz_259_ = ($signed(_zz_260_) + $signed(_zz_261_));
  assign _zz_260_ = execute_SRC1;
  assign _zz_261_ = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_262_ = (execute_SRC_USE_SUB_LESS ? _zz_263_ : _zz_264_);
  assign _zz_263_ = 32'h00000001;
  assign _zz_264_ = 32'h0;
  assign _zz_265_ = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_266_ = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz_267_ = writeBack_MUL_LOW[31 : 0];
  assign _zz_268_ = writeBack_MulPlugin_result[63 : 32];
  assign _zz_269_ = memory_DivPlugin_div_counter_willIncrement;
  assign _zz_270_ = {5'd0, _zz_269_};
  assign _zz_271_ = {1'd0, memory_DivPlugin_rs2};
  assign _zz_272_ = memory_DivPlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_273_ = memory_DivPlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_274_ = {_zz_110_,(! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_275_ = _zz_276_;
  assign _zz_276_ = _zz_277_;
  assign _zz_277_ = ({1'b0,(memory_DivPlugin_div_needRevert ? (~ _zz_111_) : _zz_111_)} + _zz_279_);
  assign _zz_278_ = memory_DivPlugin_div_needRevert;
  assign _zz_279_ = {32'd0, _zz_278_};
  assign _zz_280_ = _zz_113_;
  assign _zz_281_ = {32'd0, _zz_280_};
  assign _zz_282_ = _zz_112_;
  assign _zz_283_ = {31'd0, _zz_282_};
  assign _zz_284_ = execute_INSTRUCTION[31 : 20];
  assign _zz_285_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_286_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_287_ = {_zz_130_,execute_INSTRUCTION[31 : 20]};
  assign _zz_288_ = {{_zz_132_,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_289_ = {{_zz_134_,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_290_ = execute_INSTRUCTION[31 : 20];
  assign _zz_291_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_292_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_293_ = (3'b100);
  assign _zz_294_ = (_zz_145_ & (~ _zz_295_));
  assign _zz_295_ = (_zz_145_ - (2'b01));
  assign _zz_296_ = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_297_ = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_298_ = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_299_ = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_300_ = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_301_ = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_302_ = 1'b1;
  assign _zz_303_ = 1'b1;
  assign _zz_304_ = {_zz_60_,_zz_59_};
  assign _zz_305_ = 32'h0000107f;
  assign _zz_306_ = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_307_ = 32'h00002073;
  assign _zz_308_ = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_309_ = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_310_ = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_311_) == 32'h00000003),{(_zz_312_ == _zz_313_),{_zz_314_,{_zz_315_,_zz_316_}}}}}};
  assign _zz_311_ = 32'h0000505f;
  assign _zz_312_ = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_313_ = 32'h00000063;
  assign _zz_314_ = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_315_ = ((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033);
  assign _zz_316_ = {((decode_INSTRUCTION & 32'h01f0707f) == 32'h0000500f),{((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013),{((decode_INSTRUCTION & _zz_317_) == 32'h00001013),{(_zz_318_ == _zz_319_),{_zz_320_,{_zz_321_,_zz_322_}}}}}};
  assign _zz_317_ = 32'hfc00307f;
  assign _zz_318_ = (decode_INSTRUCTION & 32'hbe00707f);
  assign _zz_319_ = 32'h00005033;
  assign _zz_320_ = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033);
  assign _zz_321_ = ((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073);
  assign _zz_322_ = ((decode_INSTRUCTION & 32'hffffffff) == 32'h00100073);
  assign _zz_323_ = decode_INSTRUCTION[31];
  assign _zz_324_ = decode_INSTRUCTION[31];
  assign _zz_325_ = decode_INSTRUCTION[7];
  assign _zz_326_ = 32'h02004064;
  assign _zz_327_ = ((decode_INSTRUCTION & _zz_336_) == 32'h00002010);
  assign _zz_328_ = {(_zz_337_ == _zz_338_),{_zz_339_,_zz_340_}};
  assign _zz_329_ = _zz_91_;
  assign _zz_330_ = ((decode_INSTRUCTION & _zz_341_) == 32'h00000004);
  assign _zz_331_ = ((decode_INSTRUCTION & _zz_342_) == 32'h00000040);
  assign _zz_332_ = (1'b0);
  assign _zz_333_ = ({_zz_89_,_zz_343_} != (2'b00));
  assign _zz_334_ = ({_zz_344_,_zz_345_} != (2'b00));
  assign _zz_335_ = {(_zz_346_ != _zz_347_),{_zz_348_,{_zz_349_,_zz_350_}}};
  assign _zz_336_ = 32'h00002030;
  assign _zz_337_ = (decode_INSTRUCTION & 32'h00001030);
  assign _zz_338_ = 32'h00000010;
  assign _zz_339_ = ((decode_INSTRUCTION & 32'h02002060) == 32'h00002020);
  assign _zz_340_ = ((decode_INSTRUCTION & 32'h02003020) == 32'h00000020);
  assign _zz_341_ = 32'h0000001c;
  assign _zz_342_ = 32'h00000058;
  assign _zz_343_ = ((decode_INSTRUCTION & 32'h00000070) == 32'h00000020);
  assign _zz_344_ = _zz_89_;
  assign _zz_345_ = ((decode_INSTRUCTION & _zz_351_) == 32'h0);
  assign _zz_346_ = ((decode_INSTRUCTION & _zz_352_) == 32'h00001008);
  assign _zz_347_ = (1'b0);
  assign _zz_348_ = ((_zz_353_ == _zz_354_) != (1'b0));
  assign _zz_349_ = (_zz_92_ != (1'b0));
  assign _zz_350_ = {(_zz_355_ != _zz_356_),{_zz_357_,{_zz_358_,_zz_359_}}};
  assign _zz_351_ = 32'h00000020;
  assign _zz_352_ = 32'h00005048;
  assign _zz_353_ = (decode_INSTRUCTION & 32'h00103050);
  assign _zz_354_ = 32'h00000050;
  assign _zz_355_ = {((decode_INSTRUCTION & _zz_360_) == 32'h00000020),((decode_INSTRUCTION & _zz_361_) == 32'h00000020)};
  assign _zz_356_ = (2'b00);
  assign _zz_357_ = (_zz_92_ != (1'b0));
  assign _zz_358_ = ({_zz_362_,_zz_363_} != (2'b00));
  assign _zz_359_ = {(_zz_364_ != (1'b0)),{(_zz_365_ != _zz_366_),{_zz_367_,{_zz_368_,_zz_369_}}}};
  assign _zz_360_ = 32'h00000034;
  assign _zz_361_ = 32'h00000064;
  assign _zz_362_ = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002000);
  assign _zz_363_ = ((decode_INSTRUCTION & 32'h00005000) == 32'h00001000);
  assign _zz_364_ = ((decode_INSTRUCTION & 32'h10003050) == 32'h00000050);
  assign _zz_365_ = ((decode_INSTRUCTION & _zz_370_) == 32'h00004008);
  assign _zz_366_ = (1'b0);
  assign _zz_367_ = ((_zz_371_ == _zz_372_) != (1'b0));
  assign _zz_368_ = ({_zz_373_,_zz_374_} != (2'b00));
  assign _zz_369_ = {(_zz_375_ != _zz_376_),{_zz_377_,{_zz_378_,_zz_379_}}};
  assign _zz_370_ = 32'h00004048;
  assign _zz_371_ = (decode_INSTRUCTION & 32'h00000064);
  assign _zz_372_ = 32'h00000024;
  assign _zz_373_ = ((decode_INSTRUCTION & _zz_380_) == 32'h00001050);
  assign _zz_374_ = ((decode_INSTRUCTION & _zz_381_) == 32'h00002050);
  assign _zz_375_ = {_zz_91_,{_zz_382_,{_zz_383_,_zz_384_}}};
  assign _zz_376_ = 6'h0;
  assign _zz_377_ = ({_zz_385_,_zz_386_} != (2'b00));
  assign _zz_378_ = ({_zz_387_,_zz_388_} != (3'b000));
  assign _zz_379_ = {(_zz_389_ != _zz_390_),{_zz_391_,{_zz_392_,_zz_393_}}};
  assign _zz_380_ = 32'h00001050;
  assign _zz_381_ = 32'h00002050;
  assign _zz_382_ = ((decode_INSTRUCTION & _zz_394_) == 32'h00001010);
  assign _zz_383_ = (_zz_395_ == _zz_396_);
  assign _zz_384_ = {_zz_397_,{_zz_398_,_zz_399_}};
  assign _zz_385_ = ((decode_INSTRUCTION & _zz_400_) == 32'h00005010);
  assign _zz_386_ = ((decode_INSTRUCTION & _zz_401_) == 32'h00005020);
  assign _zz_387_ = (_zz_402_ == _zz_403_);
  assign _zz_388_ = {_zz_404_,_zz_405_};
  assign _zz_389_ = {_zz_406_,{_zz_407_,_zz_408_}};
  assign _zz_390_ = (3'b000);
  assign _zz_391_ = ({_zz_409_,_zz_410_} != (4'b0000));
  assign _zz_392_ = (_zz_411_ != _zz_412_);
  assign _zz_393_ = {_zz_413_,{_zz_414_,_zz_415_}};
  assign _zz_394_ = 32'h00001010;
  assign _zz_395_ = (decode_INSTRUCTION & 32'h00002010);
  assign _zz_396_ = 32'h00002010;
  assign _zz_397_ = ((decode_INSTRUCTION & _zz_416_) == 32'h00000010);
  assign _zz_398_ = (_zz_417_ == _zz_418_);
  assign _zz_399_ = (_zz_419_ == _zz_420_);
  assign _zz_400_ = 32'h00007034;
  assign _zz_401_ = 32'h02007064;
  assign _zz_402_ = (decode_INSTRUCTION & 32'h40003054);
  assign _zz_403_ = 32'h40001010;
  assign _zz_404_ = ((decode_INSTRUCTION & _zz_421_) == 32'h00001010);
  assign _zz_405_ = ((decode_INSTRUCTION & _zz_422_) == 32'h00001010);
  assign _zz_406_ = ((decode_INSTRUCTION & _zz_423_) == 32'h00000040);
  assign _zz_407_ = (_zz_424_ == _zz_425_);
  assign _zz_408_ = (_zz_426_ == _zz_427_);
  assign _zz_409_ = (_zz_428_ == _zz_429_);
  assign _zz_410_ = {_zz_430_,{_zz_431_,_zz_432_}};
  assign _zz_411_ = (_zz_433_ == _zz_434_);
  assign _zz_412_ = (1'b0);
  assign _zz_413_ = ({_zz_435_,_zz_436_} != (3'b000));
  assign _zz_414_ = (_zz_437_ != _zz_438_);
  assign _zz_415_ = {_zz_439_,{_zz_440_,_zz_441_}};
  assign _zz_416_ = 32'h00000050;
  assign _zz_417_ = (decode_INSTRUCTION & 32'h0000000c);
  assign _zz_418_ = 32'h00000004;
  assign _zz_419_ = (decode_INSTRUCTION & 32'h00000028);
  assign _zz_420_ = 32'h0;
  assign _zz_421_ = 32'h00007034;
  assign _zz_422_ = 32'h02007054;
  assign _zz_423_ = 32'h00000050;
  assign _zz_424_ = (decode_INSTRUCTION & 32'h00000038);
  assign _zz_425_ = 32'h0;
  assign _zz_426_ = (decode_INSTRUCTION & 32'h00103040);
  assign _zz_427_ = 32'h00000040;
  assign _zz_428_ = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_429_ = 32'h0;
  assign _zz_430_ = ((decode_INSTRUCTION & _zz_442_) == 32'h0);
  assign _zz_431_ = (_zz_443_ == _zz_444_);
  assign _zz_432_ = (_zz_445_ == _zz_446_);
  assign _zz_433_ = (decode_INSTRUCTION & 32'h02004074);
  assign _zz_434_ = 32'h02000030;
  assign _zz_435_ = (_zz_447_ == _zz_448_);
  assign _zz_436_ = {_zz_449_,_zz_450_};
  assign _zz_437_ = (_zz_451_ == _zz_452_);
  assign _zz_438_ = (1'b0);
  assign _zz_439_ = (_zz_453_ != (1'b0));
  assign _zz_440_ = (_zz_454_ != _zz_455_);
  assign _zz_441_ = {_zz_456_,{_zz_457_,_zz_458_}};
  assign _zz_442_ = 32'h00000018;
  assign _zz_443_ = (decode_INSTRUCTION & 32'h00006004);
  assign _zz_444_ = 32'h00002000;
  assign _zz_445_ = (decode_INSTRUCTION & 32'h00005004);
  assign _zz_446_ = 32'h00001000;
  assign _zz_447_ = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_448_ = 32'h00000040;
  assign _zz_449_ = ((decode_INSTRUCTION & 32'h00002014) == 32'h00002010);
  assign _zz_450_ = ((decode_INSTRUCTION & 32'h40000034) == 32'h40000030);
  assign _zz_451_ = (decode_INSTRUCTION & 32'h00004014);
  assign _zz_452_ = 32'h00004010;
  assign _zz_453_ = ((decode_INSTRUCTION & 32'h00006014) == 32'h00002010);
  assign _zz_454_ = ((decode_INSTRUCTION & _zz_459_) == 32'h00001000);
  assign _zz_455_ = (1'b0);
  assign _zz_456_ = ((_zz_460_ == _zz_461_) != (1'b0));
  assign _zz_457_ = (_zz_462_ != (1'b0));
  assign _zz_458_ = {(_zz_463_ != _zz_464_),{_zz_465_,{_zz_466_,_zz_467_}}};
  assign _zz_459_ = 32'h00001000;
  assign _zz_460_ = (decode_INSTRUCTION & 32'h00003000);
  assign _zz_461_ = 32'h00002000;
  assign _zz_462_ = ((decode_INSTRUCTION & 32'h00000058) == 32'h0);
  assign _zz_463_ = ((decode_INSTRUCTION & 32'h00000020) == 32'h00000020);
  assign _zz_464_ = (1'b0);
  assign _zz_465_ = ({((decode_INSTRUCTION & _zz_468_) == 32'h00000004),_zz_90_} != (2'b00));
  assign _zz_466_ = ({(_zz_469_ == _zz_470_),_zz_90_} != (2'b00));
  assign _zz_467_ = ({(_zz_471_ == _zz_472_),{_zz_89_,{_zz_473_,_zz_474_}}} != 5'h0);
  assign _zz_468_ = 32'h00000014;
  assign _zz_469_ = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_470_ = 32'h00000004;
  assign _zz_471_ = (decode_INSTRUCTION & 32'h00000040);
  assign _zz_472_ = 32'h00000040;
  assign _zz_473_ = ((decode_INSTRUCTION & 32'h00004020) == 32'h00004020);
  assign _zz_474_ = {((decode_INSTRUCTION & 32'h00000030) == 32'h00000010),((decode_INSTRUCTION & 32'h02000020) == 32'h00000020)};
  assign _zz_475_ = execute_INSTRUCTION[31];
  assign _zz_476_ = execute_INSTRUCTION[31];
  assign _zz_477_ = execute_INSTRUCTION[7];
  always @ (posedge io_axiClk) begin
    if(_zz_302_) begin
      _zz_172_ <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_303_) begin
      _zz_173_ <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_42_) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache ( 
    .io_flush                                     (_zz_155_                                                             ), //i
    .io_cpu_prefetch_isValid                      (_zz_156_                                                             ), //i
    .io_cpu_prefetch_haltIt                       (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt                        ), //o
    .io_cpu_prefetch_pc                           (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]                ), //i
    .io_cpu_fetch_isValid                         (_zz_157_                                                             ), //i
    .io_cpu_fetch_isStuck                         (_zz_158_                                                             ), //i
    .io_cpu_fetch_isRemoved                       (IBusCachedPlugin_externalFlush                                       ), //i
    .io_cpu_fetch_pc                              (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]                ), //i
    .io_cpu_fetch_data                            (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]                       ), //o
    .io_cpu_fetch_mmuBus_cmd_isValid              (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_isValid               ), //o
    .io_cpu_fetch_mmuBus_cmd_virtualAddress       (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_virtualAddress[31:0]  ), //o
    .io_cpu_fetch_mmuBus_cmd_bypassTranslation    (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_bypassTranslation     ), //o
    .io_cpu_fetch_mmuBus_rsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]                    ), //i
    .io_cpu_fetch_mmuBus_rsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                               ), //i
    .io_cpu_fetch_mmuBus_rsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                                ), //i
    .io_cpu_fetch_mmuBus_rsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                               ), //i
    .io_cpu_fetch_mmuBus_rsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute                             ), //i
    .io_cpu_fetch_mmuBus_rsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                                ), //i
    .io_cpu_fetch_mmuBus_rsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                                ), //i
    .io_cpu_fetch_mmuBus_end                      (IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_end                       ), //o
    .io_cpu_fetch_mmuBus_busy                     (IBusCachedPlugin_mmuBus_busy                                         ), //i
    .io_cpu_fetch_physicalAddress                 (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]            ), //o
    .io_cpu_fetch_haltIt                          (IBusCachedPlugin_cache_io_cpu_fetch_haltIt                           ), //o
    .io_cpu_decode_isValid                        (_zz_159_                                                             ), //i
    .io_cpu_decode_isStuck                        (_zz_160_                                                             ), //i
    .io_cpu_decode_pc                             (IBusCachedPlugin_iBusRsp_stages_2_input_payload[31:0]                ), //i
    .io_cpu_decode_physicalAddress                (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]           ), //o
    .io_cpu_decode_data                           (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]                      ), //o
    .io_cpu_decode_cacheMiss                      (IBusCachedPlugin_cache_io_cpu_decode_cacheMiss                       ), //o
    .io_cpu_decode_error                          (IBusCachedPlugin_cache_io_cpu_decode_error                           ), //o
    .io_cpu_decode_mmuRefilling                   (IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling                    ), //o
    .io_cpu_decode_mmuException                   (IBusCachedPlugin_cache_io_cpu_decode_mmuException                    ), //o
    .io_cpu_decode_isUser                         (_zz_161_                                                             ), //i
    .io_cpu_fill_valid                            (_zz_162_                                                             ), //i
    .io_cpu_fill_payload                          (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]           ), //i
    .io_mem_cmd_valid                             (IBusCachedPlugin_cache_io_mem_cmd_valid                              ), //o
    .io_mem_cmd_ready                             (iBus_cmd_ready                                                       ), //i
    .io_mem_cmd_payload_address                   (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]              ), //o
    .io_mem_cmd_payload_size                      (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]                  ), //o
    .io_mem_rsp_valid                             (iBus_rsp_valid                                                       ), //i
    .io_mem_rsp_payload_data                      (iBus_rsp_payload_data[31:0]                                          ), //i
    .io_mem_rsp_payload_error                     (iBus_rsp_payload_error                                               ), //i
    ._zz_11_                                      (_zz_148_[2:0]                                                        ), //i
    ._zz_12_                                      (IBusCachedPlugin_injectionPort_payload[31:0]                         ), //i
    .io_axiClk                                    (io_axiClk                                                            ), //i
    .resetCtrl_axiReset                           (resetCtrl_axiReset                                                   )  //i
  );
  DataCache dataCache_1_ ( 
    .io_cpu_execute_isValid                        (_zz_163_                                                    ), //i
    .io_cpu_execute_address                        (_zz_164_[31:0]                                              ), //i
    .io_cpu_execute_args_wr                        (execute_MEMORY_WR                                           ), //i
    .io_cpu_execute_args_data                      (_zz_83_[31:0]                                               ), //i
    .io_cpu_execute_args_size                      (execute_DBusCachedPlugin_size[1:0]                          ), //i
    .io_cpu_memory_isValid                         (_zz_165_                                                    ), //i
    .io_cpu_memory_isStuck                         (memory_arbitration_isStuck                                  ), //i
    .io_cpu_memory_isRemoved                       (memory_arbitration_removeIt                                 ), //i
    .io_cpu_memory_isWrite                         (dataCache_1__io_cpu_memory_isWrite                          ), //o
    .io_cpu_memory_address                         (_zz_166_[31:0]                                              ), //i
    .io_cpu_memory_mmuBus_cmd_isValid              (dataCache_1__io_cpu_memory_mmuBus_cmd_isValid               ), //o
    .io_cpu_memory_mmuBus_cmd_virtualAddress       (dataCache_1__io_cpu_memory_mmuBus_cmd_virtualAddress[31:0]  ), //o
    .io_cpu_memory_mmuBus_cmd_bypassTranslation    (dataCache_1__io_cpu_memory_mmuBus_cmd_bypassTranslation     ), //o
    .io_cpu_memory_mmuBus_rsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]           ), //i
    .io_cpu_memory_mmuBus_rsp_isIoAccess           (_zz_167_                                                    ), //i
    .io_cpu_memory_mmuBus_rsp_allowRead            (DBusCachedPlugin_mmuBus_rsp_allowRead                       ), //i
    .io_cpu_memory_mmuBus_rsp_allowWrite           (DBusCachedPlugin_mmuBus_rsp_allowWrite                      ), //i
    .io_cpu_memory_mmuBus_rsp_allowExecute         (DBusCachedPlugin_mmuBus_rsp_allowExecute                    ), //i
    .io_cpu_memory_mmuBus_rsp_exception            (DBusCachedPlugin_mmuBus_rsp_exception                       ), //i
    .io_cpu_memory_mmuBus_rsp_refilling            (DBusCachedPlugin_mmuBus_rsp_refilling                       ), //i
    .io_cpu_memory_mmuBus_end                      (dataCache_1__io_cpu_memory_mmuBus_end                       ), //o
    .io_cpu_memory_mmuBus_busy                     (DBusCachedPlugin_mmuBus_busy                                ), //i
    .io_cpu_writeBack_isValid                      (_zz_168_                                                    ), //i
    .io_cpu_writeBack_isStuck                      (writeBack_arbitration_isStuck                               ), //i
    .io_cpu_writeBack_isUser                       (_zz_169_                                                    ), //i
    .io_cpu_writeBack_haltIt                       (dataCache_1__io_cpu_writeBack_haltIt                        ), //o
    .io_cpu_writeBack_isWrite                      (dataCache_1__io_cpu_writeBack_isWrite                       ), //o
    .io_cpu_writeBack_data                         (dataCache_1__io_cpu_writeBack_data[31:0]                    ), //o
    .io_cpu_writeBack_address                      (_zz_170_[31:0]                                              ), //i
    .io_cpu_writeBack_mmuException                 (dataCache_1__io_cpu_writeBack_mmuException                  ), //o
    .io_cpu_writeBack_unalignedAccess              (dataCache_1__io_cpu_writeBack_unalignedAccess               ), //o
    .io_cpu_writeBack_accessError                  (dataCache_1__io_cpu_writeBack_accessError                   ), //o
    .io_cpu_redo                                   (dataCache_1__io_cpu_redo                                    ), //o
    .io_cpu_flush_valid                            (_zz_171_                                                    ), //i
    .io_cpu_flush_ready                            (dataCache_1__io_cpu_flush_ready                             ), //o
    .io_mem_cmd_valid                              (dataCache_1__io_mem_cmd_valid                               ), //o
    .io_mem_cmd_ready                              (dBus_cmd_ready                                              ), //i
    .io_mem_cmd_payload_wr                         (dataCache_1__io_mem_cmd_payload_wr                          ), //o
    .io_mem_cmd_payload_address                    (dataCache_1__io_mem_cmd_payload_address[31:0]               ), //o
    .io_mem_cmd_payload_data                       (dataCache_1__io_mem_cmd_payload_data[31:0]                  ), //o
    .io_mem_cmd_payload_mask                       (dataCache_1__io_mem_cmd_payload_mask[3:0]                   ), //o
    .io_mem_cmd_payload_length                     (dataCache_1__io_mem_cmd_payload_length[2:0]                 ), //o
    .io_mem_cmd_payload_last                       (dataCache_1__io_mem_cmd_payload_last                        ), //o
    .io_mem_rsp_valid                              (dBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                       (dBus_rsp_payload_data[31:0]                                 ), //i
    .io_mem_rsp_payload_error                      (dBus_rsp_payload_error                                      ), //i
    .io_axiClk                                     (io_axiClk                                                   ), //i
    .resetCtrl_axiReset                            (resetCtrl_axiReset                                          )  //i
  );
  always @(*) begin
    case(_zz_304_)
      2'b00 : begin
        _zz_174_ = DBusCachedPlugin_redoBranch_payload;
      end
      2'b01 : begin
        _zz_174_ = CsrPlugin_jumpInterface_payload;
      end
      2'b10 : begin
        _zz_174_ = BranchPlugin_jumpInterface_payload;
      end
      default : begin
        _zz_174_ = IBusCachedPlugin_predictionJumpInterface_payload;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_1_)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_1__string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_1__string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_1__string = "AND_1";
      default : _zz_1__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_2_)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_2__string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_2__string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_2__string = "AND_1";
      default : _zz_2__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_3_)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_3__string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_3__string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_3__string = "AND_1";
      default : _zz_3__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_4_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_4__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_4__string = "XRET";
      default : _zz_4__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_5_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_5__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_5__string = "XRET";
      default : _zz_5__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_6_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_6__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_6__string = "XRET";
      default : _zz_6__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_7_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_7__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_7__string = "XRET";
      default : _zz_7__string = "????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_ENV_CTRL_string = "XRET";
      default : decode_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_8_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_8__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_8__string = "XRET";
      default : _zz_8__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_9_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_9__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_9__string = "XRET";
      default : _zz_9__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_10_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_10__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_10__string = "XRET";
      default : _zz_10__string = "????";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_11_)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_11__string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_11__string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_11__string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_11__string = "URS1        ";
      default : _zz_11__string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_12_)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_12__string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_12__string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_12__string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_12__string = "URS1        ";
      default : _zz_12__string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_13_)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_13__string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_13__string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_13__string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_13__string = "URS1        ";
      default : _zz_13__string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_14_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_14__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_14__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_14__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_14__string = "SRA_1    ";
      default : _zz_14__string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_15_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_15__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_15__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_15__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_15__string = "SRA_1    ";
      default : _zz_15__string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_16_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_16__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_16__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_16__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_16__string = "SRA_1    ";
      default : _zz_16__string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_17_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_17__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_17__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_17__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_17__string = "SRA_1    ";
      default : _zz_17__string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_18_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_18__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_18__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_18__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_18__string = "SRA_1    ";
      default : _zz_18__string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_19_)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_19__string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_19__string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_19__string = "BITWISE ";
      default : _zz_19__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_20_)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_20__string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_20__string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_20__string = "BITWISE ";
      default : _zz_20__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_21_)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_21__string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_21__string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_21__string = "BITWISE ";
      default : _zz_21__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_22_)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_22__string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_22__string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_22__string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_22__string = "JALR";
      default : _zz_22__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_23_)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_23__string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_23__string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_23__string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_23__string = "JALR";
      default : _zz_23__string = "????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_24_)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_24__string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_24__string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_24__string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_24__string = "PC ";
      default : _zz_24__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_25_)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_25__string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_25__string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_25__string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_25__string = "PC ";
      default : _zz_25__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_26_)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_26__string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_26__string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_26__string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_26__string = "PC ";
      default : _zz_26__string = "???";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_ENV_CTRL_string = "XRET";
      default : memory_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_27_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_27__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_27__string = "XRET";
      default : _zz_27__string = "????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_ENV_CTRL_string = "XRET";
      default : execute_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_28_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_28__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_28__string = "XRET";
      default : _zz_28__string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : writeBack_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : writeBack_ENV_CTRL_string = "XRET";
      default : writeBack_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_29_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_29__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_29__string = "XRET";
      default : _zz_29__string = "????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_30_)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_30__string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_30__string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_30__string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_30__string = "JALR";
      default : _zz_30__string = "????";
    endcase
  end
  always @(*) begin
    case(memory_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : memory_SHIFT_CTRL_string = "SRA_1    ";
      default : memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_33_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_33__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_33__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_33__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_33__string = "SRA_1    ";
      default : _zz_33__string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_34_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_34__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_34__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_34__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_34__string = "SRA_1    ";
      default : _zz_34__string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : execute_SRC2_CTRL_string = "PC ";
      default : execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_36_)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_36__string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_36__string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_36__string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_36__string = "PC ";
      default : _zz_36__string = "???";
    endcase
  end
  always @(*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : execute_SRC1_CTRL_string = "URS1        ";
      default : execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_37_)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_37__string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_37__string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_37__string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_37__string = "URS1        ";
      default : _zz_37__string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_38_)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_38__string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_38__string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_38__string = "BITWISE ";
      default : _zz_38__string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_39_)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_39__string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_39__string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_39__string = "AND_1";
      default : _zz_39__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_43_)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_43__string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_43__string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_43__string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_43__string = "JALR";
      default : _zz_43__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_44_)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_44__string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_44__string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_44__string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_44__string = "PC ";
      default : _zz_44__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_45_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_45__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_45__string = "XRET";
      default : _zz_45__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_46_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_46__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_46__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_46__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_46__string = "SRA_1    ";
      default : _zz_46__string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_47_)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_47__string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_47__string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_47__string = "BITWISE ";
      default : _zz_47__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_48_)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_48__string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_48__string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_48__string = "AND_1";
      default : _zz_48__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_49_)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_49__string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_49__string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_49__string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_49__string = "URS1        ";
      default : _zz_49__string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_52_)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_52__string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_52__string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_52__string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_52__string = "JALR";
      default : _zz_52__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_93_)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_93__string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_93__string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_93__string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_93__string = "URS1        ";
      default : _zz_93__string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_94_)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_94__string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_94__string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_94__string = "AND_1";
      default : _zz_94__string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_95_)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_95__string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_95__string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_95__string = "BITWISE ";
      default : _zz_95__string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_96_)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_96__string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_96__string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_96__string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_96__string = "SRA_1    ";
      default : _zz_96__string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_97_)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_97__string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_97__string = "XRET";
      default : _zz_97__string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_98_)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_98__string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_98__string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_98__string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_98__string = "PC ";
      default : _zz_98__string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_99_)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_99__string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_99__string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_99__string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_99__string = "JALR";
      default : _zz_99__string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_to_execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_to_execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_to_execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_to_execute_SRC2_CTRL_string = "PC ";
      default : decode_to_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_to_execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_to_execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_to_execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_to_execute_SRC1_CTRL_string = "URS1        ";
      default : decode_to_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_to_execute_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_to_execute_ENV_CTRL_string = "XRET";
      default : decode_to_execute_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_to_memory_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_to_memory_ENV_CTRL_string = "XRET";
      default : execute_to_memory_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET";
      default : memory_to_writeBack_ENV_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  `endif

  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bHigh));
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_210_[0];
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == (2'b01)) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == (2'b11)) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_ALU_BITWISE_CTRL = _zz_1_;
  assign _zz_2_ = _zz_3_;
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_211_[0];
  assign memory_MUL_LOW = ($signed(_zz_212_) + $signed(_zz_220_));
  assign memory_PC = execute_to_memory_PC;
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],(1'b0)};
  assign _zz_4_ = _zz_5_;
  assign _zz_6_ = _zz_7_;
  assign decode_ENV_CTRL = _zz_8_;
  assign _zz_9_ = _zz_10_;
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_221_[0];
  assign execute_MUL_HL = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bSLow));
  assign decode_IS_CSR = _zz_222_[0];
  assign decode_SRC1_CTRL = _zz_11_;
  assign _zz_12_ = _zz_13_;
  assign decode_DO_EBREAK = ((! DebugPlugin_haltIt) && (decode_IS_EBREAK || 1'b0));
  assign decode_SRC_LESS_UNSIGNED = _zz_223_[0];
  assign decode_MEMORY_MANAGMENT = _zz_224_[0];
  assign execute_SHIFT_RIGHT = _zz_226_;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = _zz_164_[1 : 0];
  assign decode_IS_RS2_SIGNED = _zz_228_[0];
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_IS_RS1_SIGNED = _zz_229_[0];
  assign execute_MUL_LH = ($signed(execute_MulPlugin_aSLow) * $signed(execute_MulPlugin_bHigh));
  assign execute_BRANCH_DO = ((execute_PREDICTION_HAD_BRANCHED2 != execute_BRANCH_COND_RESULT) || execute_BranchPlugin_missAlignedTarget);
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign decode_IS_MUL = _zz_230_[0];
  assign _zz_14_ = _zz_15_;
  assign decode_SHIFT_CTRL = _zz_16_;
  assign _zz_17_ = _zz_18_;
  assign execute_REGFILE_WRITE_DATA = _zz_101_;
  assign decode_ALU_CTRL = _zz_19_;
  assign _zz_20_ = _zz_21_;
  assign decode_IS_DIV = _zz_231_[0];
  assign execute_MUL_LL = (execute_MulPlugin_aULow * execute_MulPlugin_bULow);
  assign decode_PREDICTION_HAD_BRANCHED2 = IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  assign _zz_22_ = _zz_23_;
  assign decode_SRC2_CTRL = _zz_24_;
  assign _zz_25_ = _zz_26_;
  assign execute_DO_EBREAK = decode_to_execute_DO_EBREAK;
  assign decode_IS_EBREAK = _zz_232_[0];
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_27_;
  assign execute_ENV_CTRL = _zz_28_;
  assign writeBack_ENV_CTRL = _zz_29_;
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_PC = decode_to_execute_PC;
  assign execute_PREDICTION_HAD_BRANCHED2 = decode_to_execute_PREDICTION_HAD_BRANCHED2;
  assign execute_BRANCH_COND_RESULT = _zz_128_;
  assign execute_BRANCH_CTRL = _zz_30_;
  assign decode_RS2_USE = _zz_233_[0];
  assign decode_RS1_USE = _zz_234_[0];
  always @ (*) begin
    _zz_31_ = execute_REGFILE_WRITE_DATA;
    if(_zz_175_)begin
      _zz_31_ = execute_CsrPlugin_readData;
    end
  end

  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(_zz_117_)begin
      if((_zz_118_ == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_119_;
      end
    end
    if(_zz_176_)begin
      if(_zz_177_)begin
        if(_zz_121_)begin
          decode_RS2 = _zz_50_;
        end
      end
    end
    if(_zz_178_)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_123_)begin
          decode_RS2 = _zz_32_;
        end
      end
    end
    if(_zz_179_)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_125_)begin
          decode_RS2 = _zz_31_;
        end
      end
    end
  end

  always @ (*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(_zz_117_)begin
      if((_zz_118_ == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_119_;
      end
    end
    if(_zz_176_)begin
      if(_zz_177_)begin
        if(_zz_120_)begin
          decode_RS1 = _zz_50_;
        end
      end
    end
    if(_zz_178_)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_122_)begin
          decode_RS1 = _zz_32_;
        end
      end
    end
    if(_zz_179_)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_124_)begin
          decode_RS1 = _zz_31_;
        end
      end
    end
  end

  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign writeBack_IS_MUL = memory_to_writeBack_IS_MUL;
  assign writeBack_MUL_HH = memory_to_writeBack_MUL_HH;
  assign writeBack_MUL_LOW = memory_to_writeBack_MUL_LOW;
  assign memory_MUL_HL = execute_to_memory_MUL_HL;
  assign memory_MUL_LH = execute_to_memory_MUL_LH;
  assign memory_MUL_LL = execute_to_memory_MUL_LL;
  assign execute_RS1 = decode_to_execute_RS1;
  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  always @ (*) begin
    _zz_32_ = memory_REGFILE_WRITE_DATA;
    if(memory_arbitration_isValid)begin
      case(memory_SHIFT_CTRL)
        `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
          _zz_32_ = _zz_109_;
        end
        `ShiftCtrlEnum_defaultEncoding_SRL_1, `ShiftCtrlEnum_defaultEncoding_SRA_1 : begin
          _zz_32_ = memory_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(_zz_180_)begin
      _zz_32_ = memory_DivPlugin_div_result;
    end
  end

  assign memory_SHIFT_CTRL = _zz_33_;
  assign execute_SHIFT_CTRL = _zz_34_;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_35_ = execute_PC;
  assign execute_SRC2_CTRL = _zz_36_;
  assign execute_SRC1_CTRL = _zz_37_;
  assign decode_SRC_USE_SUB_LESS = _zz_235_[0];
  assign decode_SRC_ADD_ZERO = _zz_236_[0];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_38_;
  assign execute_SRC2 = _zz_107_;
  assign execute_SRC1 = _zz_102_;
  assign execute_ALU_BITWISE_CTRL = _zz_39_;
  assign _zz_40_ = writeBack_INSTRUCTION;
  assign _zz_41_ = writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_42_ = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_42_ = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusCachedPlugin_cache_io_cpu_fetch_data);
  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_237_[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_305_) == 32'h00001073),{(_zz_306_ == _zz_307_),{_zz_308_,{_zz_309_,_zz_310_}}}}}}} != 20'h0);
  always @ (*) begin
    _zz_50_ = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      _zz_50_ = writeBack_DBusCachedPlugin_rspFormated;
    end
    if((writeBack_arbitration_isValid && writeBack_IS_MUL))begin
      case(_zz_208_)
        2'b00 : begin
          _zz_50_ = _zz_267_;
        end
        default : begin
          _zz_50_ = _zz_268_;
        end
      endcase
    end
  end

  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_MEMORY_MANAGMENT;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_MEMORY_WR = decode_to_execute_MEMORY_WR;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign decode_MEMORY_ENABLE = _zz_238_[0];
  assign decode_FLUSH_ALL = _zz_239_[0];
  always @ (*) begin
    _zz_51_ = _zz_51__2;
    if(_zz_181_)begin
      _zz_51_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_51__2 = _zz_51__1;
    if(_zz_182_)begin
      _zz_51__2 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_51__1 = _zz_51__0;
    if(_zz_183_)begin
      _zz_51__1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_51__0 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_184_)begin
      _zz_51__0 = 1'b1;
    end
  end

  assign decode_BRANCH_CTRL = _zz_52_;
  assign decode_INSTRUCTION = IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  always @ (*) begin
    _zz_53_ = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_53_ = BranchPlugin_jumpInterface_payload;
    end
  end

  always @ (*) begin
    _zz_54_ = decode_FORMAL_PC_NEXT;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      _zz_54_ = IBusCachedPlugin_predictionJumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_iBusRsp_output_payload_pc;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @ (*) begin
    decode_arbitration_haltItself = 1'b0;
    if(((DBusCachedPlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE))begin
      decode_arbitration_haltItself = 1'b1;
    end
    case(_zz_148_)
      3'b000 : begin
      end
      3'b001 : begin
      end
      3'b010 : begin
        decode_arbitration_haltItself = 1'b1;
      end
      3'b011 : begin
      end
      3'b100 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if((decode_arbitration_isValid && (_zz_115_ || _zz_116_)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(({(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET))}} != (3'b000)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_185_)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      decode_arbitration_flushNext = 1'b1;
    end
    if(_zz_185_)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if((_zz_171_ && (! dataCache_1__io_cpu_flush_ready)))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(((dataCache_1__io_cpu_redo && execute_arbitration_isValid) && execute_MEMORY_ENABLE))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_175_)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_haltByOther = 1'b0;
    if(_zz_186_)begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_flushIt = 1'b0;
    if(_zz_186_)begin
      if(_zz_187_)begin
        execute_arbitration_flushIt = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(_zz_186_)begin
      if(_zz_187_)begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if(_zz_180_)begin
      if(((! memory_DivPlugin_frontendOk) || (! memory_DivPlugin_div_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(BranchPlugin_branchExceptionPort_valid)begin
      memory_arbitration_removeIt = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @ (*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_jumpInterface_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(BranchPlugin_branchExceptionPort_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(dataCache_1__io_cpu_writeBack_haltIt)begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushIt = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_188_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_189_)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @ (*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}} != (4'b0000)))begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_188_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_189_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_186_)begin
      if(_zz_187_)begin
        IBusCachedPlugin_fetcherHalt = 1'b1;
      end
    end
    if(DebugPlugin_haltIt)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_190_)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if((IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_iBusRsp_stages_2_input_valid))begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  always @ (*) begin
    _zz_55_ = 1'b0;
    if(DebugPlugin_godmode)begin
      _zz_55_ = 1'b1;
    end
  end

  assign CsrPlugin_inWfi = 1'b0;
  always @ (*) begin
    CsrPlugin_thirdPartyWake = 1'b0;
    if(DebugPlugin_haltIt)begin
      CsrPlugin_thirdPartyWake = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(_zz_188_)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_189_)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_188_)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,(2'b00)};
    end
    if(_zz_189_)begin
      case(_zz_191_)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        default : begin
        end
      endcase
    end
  end

  always @ (*) begin
    CsrPlugin_forceMachineWire = 1'b0;
    if(DebugPlugin_godmode)begin
      CsrPlugin_forceMachineWire = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_allowInterrupts = 1'b1;
    if((DebugPlugin_haltIt || DebugPlugin_stepIt))begin
      CsrPlugin_allowInterrupts = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_allowException = 1'b1;
    if(DebugPlugin_godmode)begin
      CsrPlugin_allowException = 1'b0;
    end
  end

  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != (4'b0000));
  assign IBusCachedPlugin_jump_pcLoad_valid = ({CsrPlugin_jumpInterface_valid,{BranchPlugin_jumpInterface_valid,{DBusCachedPlugin_redoBranch_valid,IBusCachedPlugin_predictionJumpInterface_valid}}} != (4'b0000));
  assign _zz_56_ = {IBusCachedPlugin_predictionJumpInterface_valid,{BranchPlugin_jumpInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}};
  assign _zz_57_ = (_zz_56_ & (~ _zz_240_));
  assign _zz_58_ = _zz_57_[3];
  assign _zz_59_ = (_zz_57_[1] || _zz_58_);
  assign _zz_60_ = (_zz_57_[2] || _zz_58_);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_174_;
  always @ (*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  always @ (*) begin
    IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_242_);
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
    IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch)begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_61_ = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_61_);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_61_);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_fetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_62_ = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_62_);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_62_);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b0;
    if((_zz_51_ || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_2_halt = 1'b1;
    end
  end

  assign _zz_63_ = (! IBusCachedPlugin_iBusRsp_stages_2_halt);
  assign IBusCachedPlugin_iBusRsp_stages_2_input_ready = (IBusCachedPlugin_iBusRsp_stages_2_output_ready && _zz_63_);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_valid = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && _zz_63_);
  assign IBusCachedPlugin_iBusRsp_stages_2_output_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = ((decode_arbitration_removeIt || (decode_arbitration_flushNext && (! decode_arbitration_isStuck))) || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_64_;
  assign _zz_64_ = ((1'b0 && (! _zz_65_)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_65_ = _zz_66_;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_65_;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_67_)) || IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_67_ = _zz_68_;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_valid = _zz_67_;
  assign IBusCachedPlugin_iBusRsp_stages_2_input_payload = _zz_69_;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_iBusRsp_output_ready = (! decode_arbitration_isStuck);
  always @ (*) begin
    decode_arbitration_isValid = IBusCachedPlugin_iBusRsp_output_valid;
    case(_zz_148_)
      3'b000 : begin
      end
      3'b001 : begin
      end
      3'b010 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b011 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b100 : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_70_ = _zz_243_[11];
  always @ (*) begin
    _zz_71_[18] = _zz_70_;
    _zz_71_[17] = _zz_70_;
    _zz_71_[16] = _zz_70_;
    _zz_71_[15] = _zz_70_;
    _zz_71_[14] = _zz_70_;
    _zz_71_[13] = _zz_70_;
    _zz_71_[12] = _zz_70_;
    _zz_71_[11] = _zz_70_;
    _zz_71_[10] = _zz_70_;
    _zz_71_[9] = _zz_70_;
    _zz_71_[8] = _zz_70_;
    _zz_71_[7] = _zz_70_;
    _zz_71_[6] = _zz_70_;
    _zz_71_[5] = _zz_70_;
    _zz_71_[4] = _zz_70_;
    _zz_71_[3] = _zz_70_;
    _zz_71_[2] = _zz_70_;
    _zz_71_[1] = _zz_70_;
    _zz_71_[0] = _zz_70_;
  end

  always @ (*) begin
    IBusCachedPlugin_decodePrediction_cmd_hadBranch = ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) || ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_B) && _zz_244_[31]));
    if(_zz_76_)begin
      IBusCachedPlugin_decodePrediction_cmd_hadBranch = 1'b0;
    end
  end

  assign _zz_72_ = _zz_245_[19];
  always @ (*) begin
    _zz_73_[10] = _zz_72_;
    _zz_73_[9] = _zz_72_;
    _zz_73_[8] = _zz_72_;
    _zz_73_[7] = _zz_72_;
    _zz_73_[6] = _zz_72_;
    _zz_73_[5] = _zz_72_;
    _zz_73_[4] = _zz_72_;
    _zz_73_[3] = _zz_72_;
    _zz_73_[2] = _zz_72_;
    _zz_73_[1] = _zz_72_;
    _zz_73_[0] = _zz_72_;
  end

  assign _zz_74_ = _zz_246_[11];
  always @ (*) begin
    _zz_75_[18] = _zz_74_;
    _zz_75_[17] = _zz_74_;
    _zz_75_[16] = _zz_74_;
    _zz_75_[15] = _zz_74_;
    _zz_75_[14] = _zz_74_;
    _zz_75_[13] = _zz_74_;
    _zz_75_[12] = _zz_74_;
    _zz_75_[11] = _zz_74_;
    _zz_75_[10] = _zz_74_;
    _zz_75_[9] = _zz_74_;
    _zz_75_[8] = _zz_74_;
    _zz_75_[7] = _zz_74_;
    _zz_75_[6] = _zz_74_;
    _zz_75_[5] = _zz_74_;
    _zz_75_[4] = _zz_74_;
    _zz_75_[3] = _zz_74_;
    _zz_75_[2] = _zz_74_;
    _zz_75_[1] = _zz_74_;
    _zz_75_[0] = _zz_74_;
  end

  always @ (*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_76_ = _zz_247_[1];
      end
      default : begin
        _zz_76_ = _zz_248_[1];
      end
    endcase
  end

  assign IBusCachedPlugin_predictionJumpInterface_valid = (decode_arbitration_isValid && IBusCachedPlugin_decodePrediction_cmd_hadBranch);
  assign _zz_77_ = _zz_249_[19];
  always @ (*) begin
    _zz_78_[10] = _zz_77_;
    _zz_78_[9] = _zz_77_;
    _zz_78_[8] = _zz_77_;
    _zz_78_[7] = _zz_77_;
    _zz_78_[6] = _zz_77_;
    _zz_78_[5] = _zz_77_;
    _zz_78_[4] = _zz_77_;
    _zz_78_[3] = _zz_77_;
    _zz_78_[2] = _zz_77_;
    _zz_78_[1] = _zz_77_;
    _zz_78_[0] = _zz_77_;
  end

  assign _zz_79_ = _zz_250_[11];
  always @ (*) begin
    _zz_80_[18] = _zz_79_;
    _zz_80_[17] = _zz_79_;
    _zz_80_[16] = _zz_79_;
    _zz_80_[15] = _zz_79_;
    _zz_80_[14] = _zz_79_;
    _zz_80_[13] = _zz_79_;
    _zz_80_[12] = _zz_79_;
    _zz_80_[11] = _zz_79_;
    _zz_80_[10] = _zz_79_;
    _zz_80_[9] = _zz_79_;
    _zz_80_[8] = _zz_79_;
    _zz_80_[7] = _zz_79_;
    _zz_80_[6] = _zz_79_;
    _zz_80_[5] = _zz_79_;
    _zz_80_[4] = _zz_79_;
    _zz_80_[3] = _zz_79_;
    _zz_80_[2] = _zz_79_;
    _zz_80_[1] = _zz_79_;
    _zz_80_[0] = _zz_79_;
  end

  assign IBusCachedPlugin_predictionJumpInterface_payload = (decode_PC + ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_78_,{{{_zz_323_,decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_80_,{{{_zz_324_,_zz_325_},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0}));
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_156_ = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign _zz_157_ = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_158_ = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_159_ = (IBusCachedPlugin_iBusRsp_stages_2_input_valid && (! IBusCachedPlugin_s2_tightlyCoupledHit));
  assign _zz_160_ = (! IBusCachedPlugin_iBusRsp_stages_2_input_ready);
  assign _zz_161_ = (CsrPlugin_privilege == (2'b00));
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_184_)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_182_)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @ (*) begin
    _zz_162_ = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_decode_mmuRefilling));
    if(_zz_182_)begin
      _zz_162_ = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_183_)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_181_)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = (4'bxxxx);
    if(_zz_183_)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = (4'b1100);
    end
    if(_zz_181_)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = (4'b0001);
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_2_input_payload[31 : 2],(2'b00)};
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_2_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_2_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_decode_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_2_output_payload;
  assign IBusCachedPlugin_mmuBus_cmd_isValid = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_isValid;
  assign IBusCachedPlugin_mmuBus_cmd_virtualAddress = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_virtualAddress;
  assign IBusCachedPlugin_mmuBus_cmd_bypassTranslation = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_cmd_bypassTranslation;
  assign IBusCachedPlugin_mmuBus_end = IBusCachedPlugin_cache_io_cpu_fetch_mmuBus_end;
  assign _zz_155_ = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign dBus_cmd_valid = dataCache_1__io_mem_cmd_valid;
  assign dBus_cmd_payload_wr = dataCache_1__io_mem_cmd_payload_wr;
  assign dBus_cmd_payload_address = dataCache_1__io_mem_cmd_payload_address;
  assign dBus_cmd_payload_data = dataCache_1__io_mem_cmd_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1__io_mem_cmd_payload_mask;
  assign dBus_cmd_payload_length = dataCache_1__io_mem_cmd_payload_length;
  assign dBus_cmd_payload_last = dataCache_1__io_mem_cmd_payload_last;
  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  assign _zz_163_ = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
  assign _zz_164_ = execute_SRC_ADD;
  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_83_ = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_83_ = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_83_ = execute_RS2[31 : 0];
      end
    endcase
  end

  assign _zz_171_ = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  assign _zz_165_ = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
  assign _zz_166_ = memory_REGFILE_WRITE_DATA;
  assign DBusCachedPlugin_mmuBus_cmd_isValid = dataCache_1__io_cpu_memory_mmuBus_cmd_isValid;
  assign DBusCachedPlugin_mmuBus_cmd_virtualAddress = dataCache_1__io_cpu_memory_mmuBus_cmd_virtualAddress;
  assign DBusCachedPlugin_mmuBus_cmd_bypassTranslation = dataCache_1__io_cpu_memory_mmuBus_cmd_bypassTranslation;
  always @ (*) begin
    _zz_167_ = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if((_zz_55_ && (! dataCache_1__io_cpu_memory_isWrite)))begin
      _zz_167_ = 1'b1;
    end
  end

  assign DBusCachedPlugin_mmuBus_end = dataCache_1__io_cpu_memory_mmuBus_end;
  assign _zz_168_ = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_169_ = (CsrPlugin_privilege == (2'b00));
  assign _zz_170_ = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(_zz_192_)begin
      if(dataCache_1__io_cpu_redo)begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(_zz_192_)begin
      if(dataCache_1__io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1__io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1__io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1__io_cpu_redo)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b0;
      end
    end
  end

  assign DBusCachedPlugin_exceptionBus_payload_badAddr = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_payload_code = (4'bxxxx);
    if(_zz_192_)begin
      if(dataCache_1__io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_251_};
      end
      if(dataCache_1__io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_252_};
      end
      if(dataCache_1__io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? (4'b1111) : (4'b1101));
      end
    end
  end

  always @ (*) begin
    writeBack_DBusCachedPlugin_rspShifted = dataCache_1__io_cpu_writeBack_data;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1__io_cpu_writeBack_data[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusCachedPlugin_rspShifted[15 : 0] = dataCache_1__io_cpu_writeBack_data[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1__io_cpu_writeBack_data[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign _zz_84_ = (writeBack_DBusCachedPlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_85_[31] = _zz_84_;
    _zz_85_[30] = _zz_84_;
    _zz_85_[29] = _zz_84_;
    _zz_85_[28] = _zz_84_;
    _zz_85_[27] = _zz_84_;
    _zz_85_[26] = _zz_84_;
    _zz_85_[25] = _zz_84_;
    _zz_85_[24] = _zz_84_;
    _zz_85_[23] = _zz_84_;
    _zz_85_[22] = _zz_84_;
    _zz_85_[21] = _zz_84_;
    _zz_85_[20] = _zz_84_;
    _zz_85_[19] = _zz_84_;
    _zz_85_[18] = _zz_84_;
    _zz_85_[17] = _zz_84_;
    _zz_85_[16] = _zz_84_;
    _zz_85_[15] = _zz_84_;
    _zz_85_[14] = _zz_84_;
    _zz_85_[13] = _zz_84_;
    _zz_85_[12] = _zz_84_;
    _zz_85_[11] = _zz_84_;
    _zz_85_[10] = _zz_84_;
    _zz_85_[9] = _zz_84_;
    _zz_85_[8] = _zz_84_;
    _zz_85_[7 : 0] = writeBack_DBusCachedPlugin_rspShifted[7 : 0];
  end

  assign _zz_86_ = (writeBack_DBusCachedPlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_87_[31] = _zz_86_;
    _zz_87_[30] = _zz_86_;
    _zz_87_[29] = _zz_86_;
    _zz_87_[28] = _zz_86_;
    _zz_87_[27] = _zz_86_;
    _zz_87_[26] = _zz_86_;
    _zz_87_[25] = _zz_86_;
    _zz_87_[24] = _zz_86_;
    _zz_87_[23] = _zz_86_;
    _zz_87_[22] = _zz_86_;
    _zz_87_[21] = _zz_86_;
    _zz_87_[20] = _zz_86_;
    _zz_87_[19] = _zz_86_;
    _zz_87_[18] = _zz_86_;
    _zz_87_[17] = _zz_86_;
    _zz_87_[16] = _zz_86_;
    _zz_87_[15 : 0] = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_207_)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_85_;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_87_;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspShifted;
      end
    endcase
  end

  assign IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_virtualAddress;
  assign IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == (4'b1111));
  assign IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign IBusCachedPlugin_mmuBus_busy = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_physicalAddress = DBusCachedPlugin_mmuBus_cmd_virtualAddress;
  assign DBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_isIoAccess = (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31 : 28] == (4'b1111));
  assign DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign DBusCachedPlugin_mmuBus_busy = 1'b0;
  assign _zz_89_ = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_90_ = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_91_ = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_92_ = ((decode_INSTRUCTION & 32'h00001000) == 32'h0);
  assign _zz_88_ = {(((decode_INSTRUCTION & _zz_326_) == 32'h02004020) != (1'b0)),{({_zz_89_,{_zz_327_,_zz_328_}} != 5'h0),{({_zz_329_,_zz_330_} != (2'b00)),{(_zz_331_ != _zz_332_),{_zz_333_,{_zz_334_,_zz_335_}}}}}};
  assign _zz_93_ = _zz_88_[2 : 1];
  assign _zz_49_ = _zz_93_;
  assign _zz_94_ = _zz_88_[6 : 5];
  assign _zz_48_ = _zz_94_;
  assign _zz_95_ = _zz_88_[8 : 7];
  assign _zz_47_ = _zz_95_;
  assign _zz_96_ = _zz_88_[14 : 13];
  assign _zz_46_ = _zz_96_;
  assign _zz_97_ = _zz_88_[24 : 24];
  assign _zz_45_ = _zz_97_;
  assign _zz_98_ = _zz_88_[27 : 26];
  assign _zz_44_ = _zz_98_;
  assign _zz_99_ = _zz_88_[29 : 28];
  assign _zz_43_ = _zz_99_;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = (4'b0010);
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_172_;
  assign decode_RegFilePlugin_rs2Data = _zz_173_;
  always @ (*) begin
    lastStageRegFileWrite_valid = (_zz_41_ && writeBack_arbitration_isFiring);
    if(_zz_100_)begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  assign lastStageRegFileWrite_payload_address = _zz_40_[11 : 7];
  assign lastStageRegFileWrite_payload_data = _zz_50_;
  always @ (*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @ (*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_BITWISE : begin
        _zz_101_ = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_101_ = {31'd0, _zz_253_};
      end
      default : begin
        _zz_101_ = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @ (*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_102_ = execute_RS1;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_102_ = {29'd0, _zz_254_};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_102_ = {execute_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_102_ = {27'd0, _zz_255_};
      end
    endcase
  end

  assign _zz_103_ = _zz_256_[11];
  always @ (*) begin
    _zz_104_[19] = _zz_103_;
    _zz_104_[18] = _zz_103_;
    _zz_104_[17] = _zz_103_;
    _zz_104_[16] = _zz_103_;
    _zz_104_[15] = _zz_103_;
    _zz_104_[14] = _zz_103_;
    _zz_104_[13] = _zz_103_;
    _zz_104_[12] = _zz_103_;
    _zz_104_[11] = _zz_103_;
    _zz_104_[10] = _zz_103_;
    _zz_104_[9] = _zz_103_;
    _zz_104_[8] = _zz_103_;
    _zz_104_[7] = _zz_103_;
    _zz_104_[6] = _zz_103_;
    _zz_104_[5] = _zz_103_;
    _zz_104_[4] = _zz_103_;
    _zz_104_[3] = _zz_103_;
    _zz_104_[2] = _zz_103_;
    _zz_104_[1] = _zz_103_;
    _zz_104_[0] = _zz_103_;
  end

  assign _zz_105_ = _zz_257_[11];
  always @ (*) begin
    _zz_106_[19] = _zz_105_;
    _zz_106_[18] = _zz_105_;
    _zz_106_[17] = _zz_105_;
    _zz_106_[16] = _zz_105_;
    _zz_106_[15] = _zz_105_;
    _zz_106_[14] = _zz_105_;
    _zz_106_[13] = _zz_105_;
    _zz_106_[12] = _zz_105_;
    _zz_106_[11] = _zz_105_;
    _zz_106_[10] = _zz_105_;
    _zz_106_[9] = _zz_105_;
    _zz_106_[8] = _zz_105_;
    _zz_106_[7] = _zz_105_;
    _zz_106_[6] = _zz_105_;
    _zz_106_[5] = _zz_105_;
    _zz_106_[4] = _zz_105_;
    _zz_106_[3] = _zz_105_;
    _zz_106_[2] = _zz_105_;
    _zz_106_[1] = _zz_105_;
    _zz_106_[0] = _zz_105_;
  end

  always @ (*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_107_ = execute_RS2;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_107_ = {_zz_104_,execute_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_107_ = {_zz_106_,{execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_107_ = _zz_35_;
      end
    endcase
  end

  always @ (*) begin
    execute_SrcPlugin_addSub = _zz_258_;
    if(execute_SRC2_FORCE_ZERO)begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (*) begin
    _zz_108_[0] = execute_SRC1[31];
    _zz_108_[1] = execute_SRC1[30];
    _zz_108_[2] = execute_SRC1[29];
    _zz_108_[3] = execute_SRC1[28];
    _zz_108_[4] = execute_SRC1[27];
    _zz_108_[5] = execute_SRC1[26];
    _zz_108_[6] = execute_SRC1[25];
    _zz_108_[7] = execute_SRC1[24];
    _zz_108_[8] = execute_SRC1[23];
    _zz_108_[9] = execute_SRC1[22];
    _zz_108_[10] = execute_SRC1[21];
    _zz_108_[11] = execute_SRC1[20];
    _zz_108_[12] = execute_SRC1[19];
    _zz_108_[13] = execute_SRC1[18];
    _zz_108_[14] = execute_SRC1[17];
    _zz_108_[15] = execute_SRC1[16];
    _zz_108_[16] = execute_SRC1[15];
    _zz_108_[17] = execute_SRC1[14];
    _zz_108_[18] = execute_SRC1[13];
    _zz_108_[19] = execute_SRC1[12];
    _zz_108_[20] = execute_SRC1[11];
    _zz_108_[21] = execute_SRC1[10];
    _zz_108_[22] = execute_SRC1[9];
    _zz_108_[23] = execute_SRC1[8];
    _zz_108_[24] = execute_SRC1[7];
    _zz_108_[25] = execute_SRC1[6];
    _zz_108_[26] = execute_SRC1[5];
    _zz_108_[27] = execute_SRC1[4];
    _zz_108_[28] = execute_SRC1[3];
    _zz_108_[29] = execute_SRC1[2];
    _zz_108_[30] = execute_SRC1[1];
    _zz_108_[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SLL_1) ? _zz_108_ : execute_SRC1);
  always @ (*) begin
    _zz_109_[0] = memory_SHIFT_RIGHT[31];
    _zz_109_[1] = memory_SHIFT_RIGHT[30];
    _zz_109_[2] = memory_SHIFT_RIGHT[29];
    _zz_109_[3] = memory_SHIFT_RIGHT[28];
    _zz_109_[4] = memory_SHIFT_RIGHT[27];
    _zz_109_[5] = memory_SHIFT_RIGHT[26];
    _zz_109_[6] = memory_SHIFT_RIGHT[25];
    _zz_109_[7] = memory_SHIFT_RIGHT[24];
    _zz_109_[8] = memory_SHIFT_RIGHT[23];
    _zz_109_[9] = memory_SHIFT_RIGHT[22];
    _zz_109_[10] = memory_SHIFT_RIGHT[21];
    _zz_109_[11] = memory_SHIFT_RIGHT[20];
    _zz_109_[12] = memory_SHIFT_RIGHT[19];
    _zz_109_[13] = memory_SHIFT_RIGHT[18];
    _zz_109_[14] = memory_SHIFT_RIGHT[17];
    _zz_109_[15] = memory_SHIFT_RIGHT[16];
    _zz_109_[16] = memory_SHIFT_RIGHT[15];
    _zz_109_[17] = memory_SHIFT_RIGHT[14];
    _zz_109_[18] = memory_SHIFT_RIGHT[13];
    _zz_109_[19] = memory_SHIFT_RIGHT[12];
    _zz_109_[20] = memory_SHIFT_RIGHT[11];
    _zz_109_[21] = memory_SHIFT_RIGHT[10];
    _zz_109_[22] = memory_SHIFT_RIGHT[9];
    _zz_109_[23] = memory_SHIFT_RIGHT[8];
    _zz_109_[24] = memory_SHIFT_RIGHT[7];
    _zz_109_[25] = memory_SHIFT_RIGHT[6];
    _zz_109_[26] = memory_SHIFT_RIGHT[5];
    _zz_109_[27] = memory_SHIFT_RIGHT[4];
    _zz_109_[28] = memory_SHIFT_RIGHT[3];
    _zz_109_[29] = memory_SHIFT_RIGHT[2];
    _zz_109_[30] = memory_SHIFT_RIGHT[1];
    _zz_109_[31] = memory_SHIFT_RIGHT[0];
  end

  assign execute_MulPlugin_a = execute_RS1;
  assign execute_MulPlugin_b = execute_RS2;
  always @ (*) begin
    case(_zz_193_)
      2'b01 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      default : begin
        execute_MulPlugin_aSigned = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    case(_zz_193_)
      2'b01 : begin
        execute_MulPlugin_bSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
      default : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
    endcase
  end

  assign execute_MulPlugin_aULow = execute_MulPlugin_a[15 : 0];
  assign execute_MulPlugin_bULow = execute_MulPlugin_b[15 : 0];
  assign execute_MulPlugin_aSLow = {1'b0,execute_MulPlugin_a[15 : 0]};
  assign execute_MulPlugin_bSLow = {1'b0,execute_MulPlugin_b[15 : 0]};
  assign execute_MulPlugin_aHigh = {(execute_MulPlugin_aSigned && execute_MulPlugin_a[31]),execute_MulPlugin_a[31 : 16]};
  assign execute_MulPlugin_bHigh = {(execute_MulPlugin_bSigned && execute_MulPlugin_b[31]),execute_MulPlugin_b[31 : 16]};
  assign writeBack_MulPlugin_result = ($signed(_zz_265_) + $signed(_zz_266_));
  assign memory_DivPlugin_frontendOk = 1'b1;
  always @ (*) begin
    memory_DivPlugin_div_counter_willIncrement = 1'b0;
    if(_zz_180_)begin
      if(_zz_194_)begin
        memory_DivPlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_DivPlugin_div_counter_willClear = 1'b0;
    if(_zz_195_)begin
      memory_DivPlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_DivPlugin_div_counter_willOverflowIfInc = (memory_DivPlugin_div_counter_value == 6'h21);
  assign memory_DivPlugin_div_counter_willOverflow = (memory_DivPlugin_div_counter_willOverflowIfInc && memory_DivPlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_DivPlugin_div_counter_willOverflow)begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_DivPlugin_div_counter_valueNext = (memory_DivPlugin_div_counter_value + _zz_270_);
    end
    if(memory_DivPlugin_div_counter_willClear)begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_110_ = memory_DivPlugin_rs1[31 : 0];
  assign memory_DivPlugin_div_stage_0_remainderShifted = {memory_DivPlugin_accumulator[31 : 0],_zz_110_[31]};
  assign memory_DivPlugin_div_stage_0_remainderMinusDenominator = (memory_DivPlugin_div_stage_0_remainderShifted - _zz_271_);
  assign memory_DivPlugin_div_stage_0_outRemainder = ((! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_272_ : _zz_273_);
  assign memory_DivPlugin_div_stage_0_outNumerator = _zz_274_[31:0];
  assign _zz_111_ = (memory_INSTRUCTION[13] ? memory_DivPlugin_accumulator[31 : 0] : memory_DivPlugin_rs1[31 : 0]);
  assign _zz_112_ = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_113_ = (1'b0 || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_114_[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_114_[31 : 0] = execute_RS1;
  end

  always @ (*) begin
    _zz_115_ = 1'b0;
    if(_zz_196_)begin
      if(_zz_197_)begin
        if(_zz_120_)begin
          _zz_115_ = 1'b1;
        end
      end
    end
    if(_zz_198_)begin
      if(_zz_199_)begin
        if(_zz_122_)begin
          _zz_115_ = 1'b1;
        end
      end
    end
    if(_zz_200_)begin
      if(_zz_201_)begin
        if(_zz_124_)begin
          _zz_115_ = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_115_ = 1'b0;
    end
  end

  always @ (*) begin
    _zz_116_ = 1'b0;
    if(_zz_196_)begin
      if(_zz_197_)begin
        if(_zz_121_)begin
          _zz_116_ = 1'b1;
        end
      end
    end
    if(_zz_198_)begin
      if(_zz_199_)begin
        if(_zz_123_)begin
          _zz_116_ = 1'b1;
        end
      end
    end
    if(_zz_200_)begin
      if(_zz_201_)begin
        if(_zz_125_)begin
          _zz_116_ = 1'b1;
        end
      end
    end
    if((! decode_RS2_USE))begin
      _zz_116_ = 1'b0;
    end
  end

  assign _zz_120_ = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_121_ = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_122_ = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_123_ = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_124_ = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_125_ = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign _zz_126_ = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_126_ == (3'b000))) begin
        _zz_127_ = execute_BranchPlugin_eq;
    end else if((_zz_126_ == (3'b001))) begin
        _zz_127_ = (! execute_BranchPlugin_eq);
    end else if((((_zz_126_ & (3'b101)) == (3'b101)))) begin
        _zz_127_ = (! execute_SRC_LESS);
    end else begin
        _zz_127_ = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_128_ = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_128_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_128_ = 1'b1;
      end
      default : begin
        _zz_128_ = _zz_127_;
      end
    endcase
  end

  assign _zz_129_ = _zz_284_[11];
  always @ (*) begin
    _zz_130_[19] = _zz_129_;
    _zz_130_[18] = _zz_129_;
    _zz_130_[17] = _zz_129_;
    _zz_130_[16] = _zz_129_;
    _zz_130_[15] = _zz_129_;
    _zz_130_[14] = _zz_129_;
    _zz_130_[13] = _zz_129_;
    _zz_130_[12] = _zz_129_;
    _zz_130_[11] = _zz_129_;
    _zz_130_[10] = _zz_129_;
    _zz_130_[9] = _zz_129_;
    _zz_130_[8] = _zz_129_;
    _zz_130_[7] = _zz_129_;
    _zz_130_[6] = _zz_129_;
    _zz_130_[5] = _zz_129_;
    _zz_130_[4] = _zz_129_;
    _zz_130_[3] = _zz_129_;
    _zz_130_[2] = _zz_129_;
    _zz_130_[1] = _zz_129_;
    _zz_130_[0] = _zz_129_;
  end

  assign _zz_131_ = _zz_285_[19];
  always @ (*) begin
    _zz_132_[10] = _zz_131_;
    _zz_132_[9] = _zz_131_;
    _zz_132_[8] = _zz_131_;
    _zz_132_[7] = _zz_131_;
    _zz_132_[6] = _zz_131_;
    _zz_132_[5] = _zz_131_;
    _zz_132_[4] = _zz_131_;
    _zz_132_[3] = _zz_131_;
    _zz_132_[2] = _zz_131_;
    _zz_132_[1] = _zz_131_;
    _zz_132_[0] = _zz_131_;
  end

  assign _zz_133_ = _zz_286_[11];
  always @ (*) begin
    _zz_134_[18] = _zz_133_;
    _zz_134_[17] = _zz_133_;
    _zz_134_[16] = _zz_133_;
    _zz_134_[15] = _zz_133_;
    _zz_134_[14] = _zz_133_;
    _zz_134_[13] = _zz_133_;
    _zz_134_[12] = _zz_133_;
    _zz_134_[11] = _zz_133_;
    _zz_134_[10] = _zz_133_;
    _zz_134_[9] = _zz_133_;
    _zz_134_[8] = _zz_133_;
    _zz_134_[7] = _zz_133_;
    _zz_134_[6] = _zz_133_;
    _zz_134_[5] = _zz_133_;
    _zz_134_[4] = _zz_133_;
    _zz_134_[3] = _zz_133_;
    _zz_134_[2] = _zz_133_;
    _zz_134_[1] = _zz_133_;
    _zz_134_[0] = _zz_133_;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_135_ = (_zz_287_[1] ^ execute_RS1[1]);
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_135_ = _zz_288_[1];
      end
      default : begin
        _zz_135_ = _zz_289_[1];
      end
    endcase
  end

  assign execute_BranchPlugin_missAlignedTarget = (execute_BRANCH_COND_RESULT && _zz_135_);
  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src1 = execute_RS1;
      end
      default : begin
        execute_BranchPlugin_branch_src1 = execute_PC;
      end
    endcase
  end

  assign _zz_136_ = _zz_290_[11];
  always @ (*) begin
    _zz_137_[19] = _zz_136_;
    _zz_137_[18] = _zz_136_;
    _zz_137_[17] = _zz_136_;
    _zz_137_[16] = _zz_136_;
    _zz_137_[15] = _zz_136_;
    _zz_137_[14] = _zz_136_;
    _zz_137_[13] = _zz_136_;
    _zz_137_[12] = _zz_136_;
    _zz_137_[11] = _zz_136_;
    _zz_137_[10] = _zz_136_;
    _zz_137_[9] = _zz_136_;
    _zz_137_[8] = _zz_136_;
    _zz_137_[7] = _zz_136_;
    _zz_137_[6] = _zz_136_;
    _zz_137_[5] = _zz_136_;
    _zz_137_[4] = _zz_136_;
    _zz_137_[3] = _zz_136_;
    _zz_137_[2] = _zz_136_;
    _zz_137_[1] = _zz_136_;
    _zz_137_[0] = _zz_136_;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src2 = {_zz_137_,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        execute_BranchPlugin_branch_src2 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_139_,{{{_zz_475_,execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_141_,{{{_zz_476_,_zz_477_},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0});
        if(execute_PREDICTION_HAD_BRANCHED2)begin
          execute_BranchPlugin_branch_src2 = {29'd0, _zz_293_};
        end
      end
    endcase
  end

  assign _zz_138_ = _zz_291_[19];
  always @ (*) begin
    _zz_139_[10] = _zz_138_;
    _zz_139_[9] = _zz_138_;
    _zz_139_[8] = _zz_138_;
    _zz_139_[7] = _zz_138_;
    _zz_139_[6] = _zz_138_;
    _zz_139_[5] = _zz_138_;
    _zz_139_[4] = _zz_138_;
    _zz_139_[3] = _zz_138_;
    _zz_139_[2] = _zz_138_;
    _zz_139_[1] = _zz_138_;
    _zz_139_[0] = _zz_138_;
  end

  assign _zz_140_ = _zz_292_[11];
  always @ (*) begin
    _zz_141_[18] = _zz_140_;
    _zz_141_[17] = _zz_140_;
    _zz_141_[16] = _zz_140_;
    _zz_141_[15] = _zz_140_;
    _zz_141_[14] = _zz_140_;
    _zz_141_[13] = _zz_140_;
    _zz_141_[12] = _zz_140_;
    _zz_141_[11] = _zz_140_;
    _zz_141_[10] = _zz_140_;
    _zz_141_[9] = _zz_140_;
    _zz_141_[8] = _zz_140_;
    _zz_141_[7] = _zz_140_;
    _zz_141_[6] = _zz_140_;
    _zz_141_[5] = _zz_140_;
    _zz_141_[4] = _zz_140_;
    _zz_141_[3] = _zz_140_;
    _zz_141_[2] = _zz_140_;
    _zz_141_[1] = _zz_140_;
    _zz_141_[0] = _zz_140_;
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = memory_BRANCH_CALC;
  assign BranchPlugin_branchExceptionPort_valid = (memory_arbitration_isValid && (memory_BRANCH_DO && memory_BRANCH_CALC[1]));
  assign BranchPlugin_branchExceptionPort_payload_code = (4'b0000);
  assign BranchPlugin_branchExceptionPort_payload_badAddr = memory_BRANCH_CALC;
  assign IBusCachedPlugin_decodePrediction_rsp_wasWrong = BranchPlugin_jumpInterface_valid;
  always @ (*) begin
    CsrPlugin_privilege = (2'b11);
    if(CsrPlugin_forceMachineWire)begin
      CsrPlugin_privilege = (2'b11);
    end
  end

  assign CsrPlugin_misa_base = (2'b01);
  assign CsrPlugin_misa_extensions = 26'h0000042;
  assign CsrPlugin_mtvec_mode = (2'b00);
  assign CsrPlugin_mtvec_base = 30'h20000008;
  assign _zz_142_ = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_143_ = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_144_ = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = (2'b11);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_145_ = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_146_ = _zz_294_[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_185_)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(BranchPlugin_branchExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_lastStageWasWfi = 1'b0;
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  always @ (*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != (3'b000)))begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException)begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @ (*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException)begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @ (*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException)begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  always @ (*) begin
    CsrPlugin_xtvec_mode = (2'bxx);
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    CsrPlugin_xtvec_base = 30'h0;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign execute_CsrPlugin_blockedBySideEffects = ({writeBack_arbitration_isValid,memory_arbitration_isValid} != (2'b00));
  always @ (*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_768)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_836)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_833)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_835)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if((CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]))begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(((! execute_arbitration_isValid) || (! execute_IS_CSR)))begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)))begin
      if((CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]))begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  assign execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
  assign execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
  assign execute_CsrPlugin_writeEnable = ((execute_CsrPlugin_writeInstruction && (! execute_CsrPlugin_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  assign execute_CsrPlugin_readEnable = ((execute_CsrPlugin_readInstruction && (! execute_CsrPlugin_blockedBySideEffects)) && (! execute_arbitration_isStuckByOthers));
  assign execute_CsrPlugin_readToWriteData = execute_CsrPlugin_readData;
  always @ (*) begin
    case(_zz_209_)
      1'b0 : begin
        execute_CsrPlugin_writeData = execute_SRC1;
      end
      default : begin
        execute_CsrPlugin_writeData = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  always @ (*) begin
    debug_bus_cmd_ready = 1'b1;
    if(debug_bus_cmd_valid)begin
      case(_zz_202_)
        6'b000000 : begin
        end
        6'b000001 : begin
          if(debug_bus_cmd_payload_wr)begin
            debug_bus_cmd_ready = IBusCachedPlugin_injectionPort_ready;
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (*) begin
    debug_bus_rsp_data = DebugPlugin_busReadDataReg;
    if((! _zz_147_))begin
      debug_bus_rsp_data[0] = DebugPlugin_resetIt;
      debug_bus_rsp_data[1] = DebugPlugin_haltIt;
      debug_bus_rsp_data[2] = DebugPlugin_isPipBusy;
      debug_bus_rsp_data[3] = DebugPlugin_haltedByBreak;
      debug_bus_rsp_data[4] = DebugPlugin_stepIt;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_injectionPort_valid = 1'b0;
    if(debug_bus_cmd_valid)begin
      case(_zz_202_)
        6'b000000 : begin
        end
        6'b000001 : begin
          if(debug_bus_cmd_payload_wr)begin
            IBusCachedPlugin_injectionPort_valid = 1'b1;
          end
        end
        default : begin
        end
      endcase
    end
  end

  assign IBusCachedPlugin_injectionPort_payload = debug_bus_cmd_payload_data;
  assign debug_resetOut = DebugPlugin_resetIt_regNext;
  assign _zz_26_ = decode_SRC2_CTRL;
  assign _zz_24_ = _zz_44_;
  assign _zz_36_ = decode_to_execute_SRC2_CTRL;
  assign _zz_23_ = decode_BRANCH_CTRL;
  assign _zz_52_ = _zz_43_;
  assign _zz_30_ = decode_to_execute_BRANCH_CTRL;
  assign _zz_21_ = decode_ALU_CTRL;
  assign _zz_19_ = _zz_47_;
  assign _zz_38_ = decode_to_execute_ALU_CTRL;
  assign _zz_18_ = decode_SHIFT_CTRL;
  assign _zz_15_ = execute_SHIFT_CTRL;
  assign _zz_16_ = _zz_46_;
  assign _zz_34_ = decode_to_execute_SHIFT_CTRL;
  assign _zz_33_ = execute_to_memory_SHIFT_CTRL;
  assign _zz_13_ = decode_SRC1_CTRL;
  assign _zz_11_ = _zz_49_;
  assign _zz_37_ = decode_to_execute_SRC1_CTRL;
  assign _zz_10_ = decode_ENV_CTRL;
  assign _zz_7_ = execute_ENV_CTRL;
  assign _zz_5_ = memory_ENV_CTRL;
  assign _zz_8_ = _zz_45_;
  assign _zz_28_ = decode_to_execute_ENV_CTRL;
  assign _zz_27_ = execute_to_memory_ENV_CTRL;
  assign _zz_29_ = memory_to_writeBack_ENV_CTRL;
  assign _zz_3_ = decode_ALU_BITWISE_CTRL;
  assign _zz_1_ = _zz_48_;
  assign _zz_39_ = decode_to_execute_ALU_BITWISE_CTRL;
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != (3'b000)) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != (4'b0000)));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != (2'b00)) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != (3'b000)));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != (1'b0)) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != (2'b00)));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != (1'b0)));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  always @ (*) begin
    IBusCachedPlugin_injectionPort_ready = 1'b0;
    case(_zz_148_)
      3'b000 : begin
      end
      3'b001 : begin
      end
      3'b010 : begin
      end
      3'b011 : begin
      end
      3'b100 : begin
        IBusCachedPlugin_injectionPort_ready = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_149_ = 32'h0;
    if(execute_CsrPlugin_csr_768)begin
      _zz_149_[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_149_[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_149_[3 : 3] = CsrPlugin_mstatus_MIE;
    end
  end

  always @ (*) begin
    _zz_150_ = 32'h0;
    if(execute_CsrPlugin_csr_836)begin
      _zz_150_[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_150_[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_150_[3 : 3] = CsrPlugin_mip_MSIP;
    end
  end

  always @ (*) begin
    _zz_151_ = 32'h0;
    if(execute_CsrPlugin_csr_772)begin
      _zz_151_[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_151_[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_151_[3 : 3] = CsrPlugin_mie_MSIE;
    end
  end

  always @ (*) begin
    _zz_152_ = 32'h0;
    if(execute_CsrPlugin_csr_833)begin
      _zz_152_[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @ (*) begin
    _zz_153_ = 32'h0;
    if(execute_CsrPlugin_csr_834)begin
      _zz_153_[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_153_[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_154_ = 32'h0;
    if(execute_CsrPlugin_csr_835)begin
      _zz_154_[31 : 0] = CsrPlugin_mtval;
    end
  end

  assign execute_CsrPlugin_readData = (((_zz_149_ | _zz_150_) | (_zz_151_ | _zz_152_)) | (_zz_153_ | _zz_154_));
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      IBusCachedPlugin_fetchPc_pcReg <= 32'h80000000;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_66_ <= 1'b0;
      _zz_68_ <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_81_;
      IBusCachedPlugin_rspCounter <= 32'h0;
      DBusCachedPlugin_rspCounter <= _zz_82_;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_100_ <= 1'b1;
      memory_DivPlugin_div_counter_value <= 6'h0;
      _zz_117_ <= 1'b0;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= (2'b11);
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      _zz_148_ <= (3'b000);
      memory_to_writeBack_REGFILE_WRITE_DATA <= 32'h0;
      memory_to_writeBack_INSTRUCTION <= 32'h0;
    end else begin
      if(IBusCachedPlugin_fetchPc_correction)begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if((IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate)))begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_66_ <= 1'b0;
      end
      if(_zz_64_)begin
        _zz_66_ <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_68_ <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_68_ <= (IBusCachedPlugin_iBusRsp_stages_1_output_valid && (! IBusCachedPlugin_iBusRsp_flush));
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_2_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(dBus_rsp_valid)begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_100_ <= 1'b0;
      memory_DivPlugin_div_counter_value <= memory_DivPlugin_div_counter_valueNext;
      _zz_117_ <= (_zz_41_ && writeBack_arbitration_isFiring);
      if((! decode_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if((! execute_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if((! memory_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if((! writeBack_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(_zz_203_)begin
        if(_zz_204_)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_205_)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_206_)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(CsrPlugin_pipelineLiberator_active)begin
        if((! execute_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if((! memory_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if((! writeBack_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt))begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump)begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(_zz_188_)begin
        case(CsrPlugin_targetPrivilege)
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(_zz_189_)begin
        case(_zz_191_)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= (2'b00);
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_144_,{_zz_143_,_zz_142_}} != (3'b000)) || CsrPlugin_thirdPartyWake);
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_32_;
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
      end
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      case(_zz_148_)
        3'b000 : begin
          if(IBusCachedPlugin_injectionPort_valid)begin
            _zz_148_ <= (3'b001);
          end
        end
        3'b001 : begin
          _zz_148_ <= (3'b010);
        end
        3'b010 : begin
          _zz_148_ <= (3'b011);
        end
        3'b011 : begin
          if((! decode_arbitration_isStuck))begin
            _zz_148_ <= (3'b100);
          end
        end
        3'b100 : begin
          _zz_148_ <= (3'b000);
        end
        default : begin
        end
      endcase
      if(execute_CsrPlugin_csr_768)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
          CsrPlugin_mstatus_MPIE <= _zz_296_[0];
          CsrPlugin_mstatus_MIE <= _zz_297_[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_299_[0];
          CsrPlugin_mie_MTIE <= _zz_300_[0];
          CsrPlugin_mie_MSIE <= _zz_301_[0];
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      _zz_69_ <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(IBusCachedPlugin_iBusRsp_stages_2_input_ready)begin
      IBusCachedPlugin_s2_tightlyCoupledHit <= IBusCachedPlugin_s1_tightlyCoupledHit;
    end
    if((memory_DivPlugin_div_counter_value == 6'h20))begin
      memory_DivPlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_DivPlugin_div_done <= 1'b0;
    end
    if(_zz_180_)begin
      if(_zz_194_)begin
        memory_DivPlugin_rs1[31 : 0] <= memory_DivPlugin_div_stage_0_outNumerator;
        memory_DivPlugin_accumulator[31 : 0] <= memory_DivPlugin_div_stage_0_outRemainder;
        if((memory_DivPlugin_div_counter_value == 6'h20))begin
          memory_DivPlugin_div_result <= _zz_275_[31:0];
        end
      end
    end
    if(_zz_195_)begin
      memory_DivPlugin_accumulator <= 65'h0;
      memory_DivPlugin_rs1 <= ((_zz_113_ ? (~ _zz_114_) : _zz_114_) + _zz_281_);
      memory_DivPlugin_rs2 <= ((_zz_112_ ? (~ execute_RS2) : execute_RS2) + _zz_283_);
      memory_DivPlugin_div_needRevert <= ((_zz_113_ ^ (_zz_112_ && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    _zz_118_ <= _zz_40_[11 : 7];
    _zz_119_ <= _zz_50_;
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_185_)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_146_ ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_146_ ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(BranchPlugin_branchExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= BranchPlugin_branchExceptionPort_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= BranchPlugin_branchExceptionPort_payload_badAddr;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
    end
    if(_zz_203_)begin
      if(_zz_204_)begin
        CsrPlugin_interrupt_code <= (4'b0111);
        CsrPlugin_interrupt_targetPrivilege <= (2'b11);
      end
      if(_zz_205_)begin
        CsrPlugin_interrupt_code <= (4'b0011);
        CsrPlugin_interrupt_targetPrivilege <= (2'b11);
      end
      if(_zz_206_)begin
        CsrPlugin_interrupt_code <= (4'b1011);
        CsrPlugin_interrupt_targetPrivilege <= (2'b11);
      end
    end
    if(_zz_188_)begin
      case(CsrPlugin_targetPrivilege)
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= writeBack_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_CTRL <= _zz_25_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_22_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PREDICTION_HAD_BRANCHED2 <= decode_PREDICTION_HAD_BRANCHED2;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LL <= execute_MUL_LL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_CTRL <= _zz_20_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_31_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_17_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_CTRL <= _zz_14_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_IS_MUL <= memory_IS_MUL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LH <= execute_MUL_LH;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= decode_RS1;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= decode_RS2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DO_EBREAK <= decode_DO_EBREAK;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC1_CTRL <= _zz_12_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HL <= execute_MUL_HL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ENV_CTRL <= _zz_9_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_6_;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_ENV_CTRL <= _zz_4_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= decode_PC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PC <= _zz_35_;
    end
    if(((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack)))begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_LOW <= memory_MUL_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_WR <= decode_MEMORY_WR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_WR <= execute_MEMORY_WR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_WR <= memory_MEMORY_WR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_2_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HH <= execute_MUL_HH;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_HH <= memory_MUL_HH;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= _zz_54_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_53_;
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if(execute_CsrPlugin_csr_836)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mip_MSIP <= _zz_298_[0];
      end
    end
    if(execute_CsrPlugin_csr_833)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mepc <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
  end

  always @ (posedge io_axiClk) begin
    DebugPlugin_firstCycle <= 1'b0;
    if(debug_bus_cmd_ready)begin
      DebugPlugin_firstCycle <= 1'b1;
    end
    DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
    DebugPlugin_isPipBusy <= (({writeBack_arbitration_isValid,{memory_arbitration_isValid,{execute_arbitration_isValid,decode_arbitration_isValid}}} != (4'b0000)) || IBusCachedPlugin_incomingInstruction);
    if(writeBack_arbitration_isValid)begin
      DebugPlugin_busReadDataReg <= _zz_50_;
    end
    _zz_147_ <= debug_bus_cmd_payload_address[2];
    if(_zz_186_)begin
      DebugPlugin_busReadDataReg <= execute_PC;
    end
    DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
  end

  always @ (posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if (resetCtrl_systemReset) begin
      DebugPlugin_resetIt <= 1'b0;
      DebugPlugin_haltIt <= 1'b0;
      DebugPlugin_stepIt <= 1'b0;
      DebugPlugin_godmode <= 1'b0;
      DebugPlugin_haltedByBreak <= 1'b0;
    end else begin
      if((DebugPlugin_haltIt && (! DebugPlugin_isPipBusy)))begin
        DebugPlugin_godmode <= 1'b1;
      end
      if(debug_bus_cmd_valid)begin
        case(_zz_202_)
          6'b000000 : begin
            if(debug_bus_cmd_payload_wr)begin
              DebugPlugin_stepIt <= debug_bus_cmd_payload_data[4];
              if(debug_bus_cmd_payload_data[16])begin
                DebugPlugin_resetIt <= 1'b1;
              end
              if(debug_bus_cmd_payload_data[24])begin
                DebugPlugin_resetIt <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[17])begin
                DebugPlugin_haltIt <= 1'b1;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_haltIt <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_haltedByBreak <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_godmode <= 1'b0;
              end
            end
          end
          6'b000001 : begin
          end
          default : begin
          end
        endcase
      end
      if(_zz_186_)begin
        if(_zz_187_)begin
          DebugPlugin_haltIt <= 1'b1;
          DebugPlugin_haltedByBreak <= 1'b1;
        end
      end
      if(_zz_190_)begin
        if(decode_arbitration_isValid)begin
          DebugPlugin_haltIt <= 1'b1;
        end
      end
    end
  end


endmodule

module StreamFork_3_ (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_wr,
  input      [31:0]   io_input_payload_address,
  input      [31:0]   io_input_payload_data,
  input      [3:0]    io_input_payload_mask,
  input      [2:0]    io_input_payload_length,
  input               io_input_payload_last,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_wr,
  output     [31:0]   io_outputs_0_payload_address,
  output     [31:0]   io_outputs_0_payload_data,
  output     [3:0]    io_outputs_0_payload_mask,
  output     [2:0]    io_outputs_0_payload_length,
  output              io_outputs_0_payload_last,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_wr,
  output     [31:0]   io_outputs_1_payload_address,
  output     [31:0]   io_outputs_1_payload_data,
  output     [3:0]    io_outputs_1_payload_mask,
  output     [2:0]    io_outputs_1_payload_length,
  output              io_outputs_1_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_1_;
  reg                 _zz_2_;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1_))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2_))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1_);
  assign io_outputs_0_payload_wr = io_input_payload_wr;
  assign io_outputs_0_payload_address = io_input_payload_address;
  assign io_outputs_0_payload_data = io_input_payload_data;
  assign io_outputs_0_payload_mask = io_input_payload_mask;
  assign io_outputs_0_payload_length = io_input_payload_length;
  assign io_outputs_0_payload_last = io_input_payload_last;
  assign io_outputs_1_valid = (io_input_valid && _zz_2_);
  assign io_outputs_1_payload_wr = io_input_payload_wr;
  assign io_outputs_1_payload_address = io_input_payload_address;
  assign io_outputs_1_payload_data = io_input_payload_data;
  assign io_outputs_1_payload_mask = io_input_payload_mask;
  assign io_outputs_1_payload_length = io_input_payload_length;
  assign io_outputs_1_payload_last = io_input_payload_last;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1_ <= 1'b1;
      _zz_2_ <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1_ <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2_ <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1_ <= 1'b1;
        _zz_2_ <= 1'b1;
      end
    end
  end


endmodule

module BufferCC_12_ (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 buffers_0;
  reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module JtagBridge (
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output              io_remote_cmd_valid,
  input               io_remote_cmd_ready,
  output              io_remote_cmd_payload_last,
  output     [0:0]    io_remote_cmd_payload_fragment,
  input               io_remote_rsp_valid,
  output              io_remote_rsp_ready,
  input               io_remote_rsp_payload_error,
  input      [31:0]   io_remote_rsp_payload_data,
  input               io_axiClk,
  input               resetCtrl_systemReset 
);
  wire                flowCCByToggle_1__io_output_valid;
  wire                flowCCByToggle_1__io_output_payload_last;
  wire       [0:0]    flowCCByToggle_1__io_output_payload_fragment;
  wire                _zz_2_;
  wire                _zz_3_;
  wire       [0:0]    _zz_4_;
  wire       [3:0]    _zz_5_;
  wire       [1:0]    _zz_6_;
  wire       [3:0]    _zz_7_;
  wire       [1:0]    _zz_8_;
  wire       [3:0]    _zz_9_;
  wire       [0:0]    _zz_10_;
  wire                system_cmd_valid;
  wire                system_cmd_payload_last;
  wire       [0:0]    system_cmd_payload_fragment;
  reg                 system_rsp_valid;
  reg                 system_rsp_payload_error;
  reg        [31:0]   system_rsp_payload_data;
  wire       `JtagState_defaultEncoding_type jtag_tap_fsm_stateNext;
  reg        `JtagState_defaultEncoding_type jtag_tap_fsm_state = `JtagState_defaultEncoding_RESET;
  reg        `JtagState_defaultEncoding_type _zz_1_;
  reg        [3:0]    jtag_tap_instruction;
  reg        [3:0]    jtag_tap_instructionShift;
  reg                 jtag_tap_bypass;
  reg                 jtag_tap_tdoUnbufferd;
  reg                 jtag_tap_tdoUnbufferd_regNext;
  wire                jtag_idcodeArea_instructionHit;
  reg        [31:0]   jtag_idcodeArea_shifter;
  wire                jtag_writeArea_instructionHit;
  reg                 jtag_writeArea_source_valid;
  wire                jtag_writeArea_source_payload_last;
  wire       [0:0]    jtag_writeArea_source_payload_fragment;
  wire                jtag_readArea_instructionHit;
  reg        [33:0]   jtag_readArea_shifter;
  `ifndef SYNTHESIS
  reg [79:0] jtag_tap_fsm_stateNext_string;
  reg [79:0] jtag_tap_fsm_state_string;
  reg [79:0] _zz_1__string;
  `endif


  assign _zz_2_ = (jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_SHIFT);
  assign _zz_3_ = (jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_SHIFT);
  assign _zz_4_ = (1'b1);
  assign _zz_5_ = {3'd0, _zz_4_};
  assign _zz_6_ = (2'b10);
  assign _zz_7_ = {2'd0, _zz_6_};
  assign _zz_8_ = (2'b11);
  assign _zz_9_ = {2'd0, _zz_8_};
  assign _zz_10_ = (1'b1);
  FlowCCByToggle flowCCByToggle_1_ ( 
    .io_input_valid                (jtag_writeArea_source_valid                   ), //i
    .io_input_payload_last         (jtag_writeArea_source_payload_last            ), //i
    .io_input_payload_fragment     (jtag_writeArea_source_payload_fragment        ), //i
    .io_output_valid               (flowCCByToggle_1__io_output_valid             ), //o
    .io_output_payload_last        (flowCCByToggle_1__io_output_payload_last      ), //o
    .io_output_payload_fragment    (flowCCByToggle_1__io_output_payload_fragment  ), //o
    .io_jtag_tck                   (io_jtag_tck                                   ), //i
    .io_axiClk                     (io_axiClk                                     ), //i
    .resetCtrl_systemReset         (resetCtrl_systemReset                         )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(jtag_tap_fsm_stateNext)
      `JtagState_defaultEncoding_RESET : jtag_tap_fsm_stateNext_string = "RESET     ";
      `JtagState_defaultEncoding_IDLE : jtag_tap_fsm_stateNext_string = "IDLE      ";
      `JtagState_defaultEncoding_IR_SELECT : jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      `JtagState_defaultEncoding_IR_CAPTURE : jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      `JtagState_defaultEncoding_IR_SHIFT : jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      `JtagState_defaultEncoding_IR_EXIT1 : jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      `JtagState_defaultEncoding_IR_PAUSE : jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      `JtagState_defaultEncoding_IR_EXIT2 : jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      `JtagState_defaultEncoding_IR_UPDATE : jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      `JtagState_defaultEncoding_DR_SELECT : jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      `JtagState_defaultEncoding_DR_CAPTURE : jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      `JtagState_defaultEncoding_DR_SHIFT : jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      `JtagState_defaultEncoding_DR_EXIT1 : jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      `JtagState_defaultEncoding_DR_PAUSE : jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      `JtagState_defaultEncoding_DR_EXIT2 : jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      `JtagState_defaultEncoding_DR_UPDATE : jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(jtag_tap_fsm_state)
      `JtagState_defaultEncoding_RESET : jtag_tap_fsm_state_string = "RESET     ";
      `JtagState_defaultEncoding_IDLE : jtag_tap_fsm_state_string = "IDLE      ";
      `JtagState_defaultEncoding_IR_SELECT : jtag_tap_fsm_state_string = "IR_SELECT ";
      `JtagState_defaultEncoding_IR_CAPTURE : jtag_tap_fsm_state_string = "IR_CAPTURE";
      `JtagState_defaultEncoding_IR_SHIFT : jtag_tap_fsm_state_string = "IR_SHIFT  ";
      `JtagState_defaultEncoding_IR_EXIT1 : jtag_tap_fsm_state_string = "IR_EXIT1  ";
      `JtagState_defaultEncoding_IR_PAUSE : jtag_tap_fsm_state_string = "IR_PAUSE  ";
      `JtagState_defaultEncoding_IR_EXIT2 : jtag_tap_fsm_state_string = "IR_EXIT2  ";
      `JtagState_defaultEncoding_IR_UPDATE : jtag_tap_fsm_state_string = "IR_UPDATE ";
      `JtagState_defaultEncoding_DR_SELECT : jtag_tap_fsm_state_string = "DR_SELECT ";
      `JtagState_defaultEncoding_DR_CAPTURE : jtag_tap_fsm_state_string = "DR_CAPTURE";
      `JtagState_defaultEncoding_DR_SHIFT : jtag_tap_fsm_state_string = "DR_SHIFT  ";
      `JtagState_defaultEncoding_DR_EXIT1 : jtag_tap_fsm_state_string = "DR_EXIT1  ";
      `JtagState_defaultEncoding_DR_PAUSE : jtag_tap_fsm_state_string = "DR_PAUSE  ";
      `JtagState_defaultEncoding_DR_EXIT2 : jtag_tap_fsm_state_string = "DR_EXIT2  ";
      `JtagState_defaultEncoding_DR_UPDATE : jtag_tap_fsm_state_string = "DR_UPDATE ";
      default : jtag_tap_fsm_state_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_1_)
      `JtagState_defaultEncoding_RESET : _zz_1__string = "RESET     ";
      `JtagState_defaultEncoding_IDLE : _zz_1__string = "IDLE      ";
      `JtagState_defaultEncoding_IR_SELECT : _zz_1__string = "IR_SELECT ";
      `JtagState_defaultEncoding_IR_CAPTURE : _zz_1__string = "IR_CAPTURE";
      `JtagState_defaultEncoding_IR_SHIFT : _zz_1__string = "IR_SHIFT  ";
      `JtagState_defaultEncoding_IR_EXIT1 : _zz_1__string = "IR_EXIT1  ";
      `JtagState_defaultEncoding_IR_PAUSE : _zz_1__string = "IR_PAUSE  ";
      `JtagState_defaultEncoding_IR_EXIT2 : _zz_1__string = "IR_EXIT2  ";
      `JtagState_defaultEncoding_IR_UPDATE : _zz_1__string = "IR_UPDATE ";
      `JtagState_defaultEncoding_DR_SELECT : _zz_1__string = "DR_SELECT ";
      `JtagState_defaultEncoding_DR_CAPTURE : _zz_1__string = "DR_CAPTURE";
      `JtagState_defaultEncoding_DR_SHIFT : _zz_1__string = "DR_SHIFT  ";
      `JtagState_defaultEncoding_DR_EXIT1 : _zz_1__string = "DR_EXIT1  ";
      `JtagState_defaultEncoding_DR_PAUSE : _zz_1__string = "DR_PAUSE  ";
      `JtagState_defaultEncoding_DR_EXIT2 : _zz_1__string = "DR_EXIT2  ";
      `JtagState_defaultEncoding_DR_UPDATE : _zz_1__string = "DR_UPDATE ";
      default : _zz_1__string = "??????????";
    endcase
  end
  `endif

  assign io_remote_cmd_valid = system_cmd_valid;
  assign io_remote_cmd_payload_last = system_cmd_payload_last;
  assign io_remote_cmd_payload_fragment = system_cmd_payload_fragment;
  assign io_remote_rsp_ready = 1'b1;
  always @ (*) begin
    case(jtag_tap_fsm_state)
      `JtagState_defaultEncoding_IDLE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_SELECT : `JtagState_defaultEncoding_IDLE);
      end
      `JtagState_defaultEncoding_IR_SELECT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_RESET : `JtagState_defaultEncoding_IR_CAPTURE);
      end
      `JtagState_defaultEncoding_IR_CAPTURE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_EXIT1 : `JtagState_defaultEncoding_IR_SHIFT);
      end
      `JtagState_defaultEncoding_IR_SHIFT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_EXIT1 : `JtagState_defaultEncoding_IR_SHIFT);
      end
      `JtagState_defaultEncoding_IR_EXIT1 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_UPDATE : `JtagState_defaultEncoding_IR_PAUSE);
      end
      `JtagState_defaultEncoding_IR_PAUSE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_EXIT2 : `JtagState_defaultEncoding_IR_PAUSE);
      end
      `JtagState_defaultEncoding_IR_EXIT2 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_UPDATE : `JtagState_defaultEncoding_IR_SHIFT);
      end
      `JtagState_defaultEncoding_IR_UPDATE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_SELECT : `JtagState_defaultEncoding_IDLE);
      end
      `JtagState_defaultEncoding_DR_SELECT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_SELECT : `JtagState_defaultEncoding_DR_CAPTURE);
      end
      `JtagState_defaultEncoding_DR_CAPTURE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_EXIT1 : `JtagState_defaultEncoding_DR_SHIFT);
      end
      `JtagState_defaultEncoding_DR_SHIFT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_EXIT1 : `JtagState_defaultEncoding_DR_SHIFT);
      end
      `JtagState_defaultEncoding_DR_EXIT1 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_UPDATE : `JtagState_defaultEncoding_DR_PAUSE);
      end
      `JtagState_defaultEncoding_DR_PAUSE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_EXIT2 : `JtagState_defaultEncoding_DR_PAUSE);
      end
      `JtagState_defaultEncoding_DR_EXIT2 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_UPDATE : `JtagState_defaultEncoding_DR_SHIFT);
      end
      `JtagState_defaultEncoding_DR_UPDATE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_SELECT : `JtagState_defaultEncoding_IDLE);
      end
      default : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_RESET : `JtagState_defaultEncoding_IDLE);
      end
    endcase
  end

  assign jtag_tap_fsm_stateNext = _zz_1_;
  always @ (*) begin
    jtag_tap_tdoUnbufferd = jtag_tap_bypass;
    case(jtag_tap_fsm_state)
      `JtagState_defaultEncoding_IR_CAPTURE : begin
      end
      `JtagState_defaultEncoding_IR_SHIFT : begin
        jtag_tap_tdoUnbufferd = jtag_tap_instructionShift[0];
      end
      `JtagState_defaultEncoding_IR_UPDATE : begin
      end
      default : begin
      end
    endcase
    if(jtag_idcodeArea_instructionHit)begin
      if(_zz_2_)begin
        jtag_tap_tdoUnbufferd = jtag_idcodeArea_shifter[0];
      end
    end
    if(jtag_readArea_instructionHit)begin
      if(_zz_3_)begin
        jtag_tap_tdoUnbufferd = jtag_readArea_shifter[0];
      end
    end
  end

  assign io_jtag_tdo = jtag_tap_tdoUnbufferd_regNext;
  assign jtag_idcodeArea_instructionHit = (jtag_tap_instruction == _zz_5_);
  assign jtag_writeArea_instructionHit = (jtag_tap_instruction == _zz_7_);
  always @ (*) begin
    jtag_writeArea_source_valid = 1'b0;
    if(jtag_writeArea_instructionHit)begin
      if((jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_SHIFT))begin
        jtag_writeArea_source_valid = 1'b1;
      end
    end
  end

  assign jtag_writeArea_source_payload_last = io_jtag_tms;
  assign jtag_writeArea_source_payload_fragment[0] = io_jtag_tdi;
  assign system_cmd_valid = flowCCByToggle_1__io_output_valid;
  assign system_cmd_payload_last = flowCCByToggle_1__io_output_payload_last;
  assign system_cmd_payload_fragment = flowCCByToggle_1__io_output_payload_fragment;
  assign jtag_readArea_instructionHit = (jtag_tap_instruction == _zz_9_);
  always @ (posedge io_axiClk) begin
    if(io_remote_cmd_valid)begin
      system_rsp_valid <= 1'b0;
    end
    if((io_remote_rsp_valid && io_remote_rsp_ready))begin
      system_rsp_valid <= 1'b1;
      system_rsp_payload_error <= io_remote_rsp_payload_error;
      system_rsp_payload_data <= io_remote_rsp_payload_data;
    end
  end

  always @ (posedge io_jtag_tck) begin
    jtag_tap_fsm_state <= jtag_tap_fsm_stateNext;
    jtag_tap_bypass <= io_jtag_tdi;
    case(jtag_tap_fsm_state)
      `JtagState_defaultEncoding_IR_CAPTURE : begin
        jtag_tap_instructionShift <= jtag_tap_instruction;
      end
      `JtagState_defaultEncoding_IR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      `JtagState_defaultEncoding_IR_UPDATE : begin
        jtag_tap_instruction <= jtag_tap_instructionShift;
      end
      default : begin
      end
    endcase
    if(jtag_idcodeArea_instructionHit)begin
      if(_zz_2_)begin
        jtag_idcodeArea_shifter <= ({io_jtag_tdi,jtag_idcodeArea_shifter} >>> 1);
      end
    end
    if((jtag_tap_fsm_state == `JtagState_defaultEncoding_RESET))begin
      jtag_idcodeArea_shifter <= 32'h10001fff;
      jtag_tap_instruction <= {3'd0, _zz_10_};
    end
    if(jtag_readArea_instructionHit)begin
      if((jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_CAPTURE))begin
        jtag_readArea_shifter <= {{system_rsp_payload_data,system_rsp_payload_error},system_rsp_valid};
      end
      if(_zz_3_)begin
        jtag_readArea_shifter <= ({io_jtag_tdi,jtag_readArea_shifter} >>> 1);
      end
    end
  end

  always @ (negedge io_jtag_tck) begin
    jtag_tap_tdoUnbufferd_regNext <= jtag_tap_tdoUnbufferd;
  end


endmodule

module SystemDebugger (
  input               io_remote_cmd_valid,
  output              io_remote_cmd_ready,
  input               io_remote_cmd_payload_last,
  input      [0:0]    io_remote_cmd_payload_fragment,
  output              io_remote_rsp_valid,
  input               io_remote_rsp_ready,
  output              io_remote_rsp_payload_error,
  output     [31:0]   io_remote_rsp_payload_data,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output              io_mem_cmd_payload_wr,
  output     [1:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload,
  input               io_axiClk,
  input               resetCtrl_systemReset 
);
  wire                _zz_2_;
  wire       [0:0]    _zz_3_;
  reg        [66:0]   dispatcher_dataShifter;
  reg                 dispatcher_dataLoaded;
  reg        [7:0]    dispatcher_headerShifter;
  wire       [7:0]    dispatcher_header;
  reg                 dispatcher_headerLoaded;
  reg        [2:0]    dispatcher_counter;
  wire       [66:0]   _zz_1_;

  assign _zz_2_ = (dispatcher_headerLoaded == 1'b0);
  assign _zz_3_ = _zz_1_[64 : 64];
  assign dispatcher_header = dispatcher_headerShifter[7 : 0];
  assign io_remote_cmd_ready = (! dispatcher_dataLoaded);
  assign _zz_1_ = dispatcher_dataShifter[66 : 0];
  assign io_mem_cmd_payload_address = _zz_1_[31 : 0];
  assign io_mem_cmd_payload_data = _zz_1_[63 : 32];
  assign io_mem_cmd_payload_wr = _zz_3_[0];
  assign io_mem_cmd_payload_size = _zz_1_[66 : 65];
  assign io_mem_cmd_valid = (dispatcher_dataLoaded && (dispatcher_header == 8'h0));
  assign io_remote_rsp_valid = io_mem_rsp_valid;
  assign io_remote_rsp_payload_error = 1'b0;
  assign io_remote_rsp_payload_data = io_mem_rsp_payload;
  always @ (posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if (resetCtrl_systemReset) begin
      dispatcher_dataLoaded <= 1'b0;
      dispatcher_headerLoaded <= 1'b0;
      dispatcher_counter <= (3'b000);
    end else begin
      if(io_remote_cmd_valid)begin
        if(_zz_2_)begin
          dispatcher_counter <= (dispatcher_counter + (3'b001));
          if((dispatcher_counter == (3'b111)))begin
            dispatcher_headerLoaded <= 1'b1;
          end
        end
        if(io_remote_cmd_payload_last)begin
          dispatcher_headerLoaded <= 1'b1;
          dispatcher_dataLoaded <= 1'b1;
          dispatcher_counter <= (3'b000);
        end
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        dispatcher_headerLoaded <= 1'b0;
        dispatcher_dataLoaded <= 1'b0;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_remote_cmd_valid)begin
      if(_zz_2_)begin
        dispatcher_headerShifter <= ({io_remote_cmd_payload_fragment,dispatcher_headerShifter} >>> 1);
      end else begin
        dispatcher_dataShifter <= ({io_remote_cmd_payload_fragment,dispatcher_dataShifter} >>> 1);
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [31:0]   io_input_ar_payload_addr,
  input      [7:0]    io_input_ar_payload_len,
  input      [1:0]    io_input_ar_payload_burst,
  input      [3:0]    io_input_ar_payload_cache,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [31:0]   io_outputs_0_ar_payload_addr,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [1:0]    io_outputs_0_ar_payload_burst,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input      [1:0]    io_outputs_0_r_payload_resp,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [31:0]   io_outputs_1_ar_payload_addr,
  output     [7:0]    io_outputs_1_ar_payload_len,
  output     [1:0]    io_outputs_1_ar_payload_burst,
  output     [3:0]    io_outputs_1_ar_payload_cache,
  output     [2:0]    io_outputs_1_ar_payload_prot,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [31:0]   io_outputs_1_r_payload_data,
  input      [1:0]    io_outputs_1_r_payload_resp,
  input               io_outputs_1_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_3_;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [1:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [1:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_1_;
  wire       [0:0]    readRspIndex;
  wire                _zz_2_;

  Axi4ReadOnlyErrorSlave errorSlave ( 
    .io_axi_ar_valid            (_zz_3_                                  ), //i
    .io_axi_ar_ready            (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr     (io_input_ar_payload_addr[31:0]          ), //i
    .io_axi_ar_payload_len      (io_input_ar_payload_len[7:0]            ), //i
    .io_axi_ar_payload_burst    (io_input_ar_payload_burst[1:0]          ), //i
    .io_axi_ar_payload_cache    (io_input_ar_payload_cache[3:0]          ), //i
    .io_axi_ar_payload_prot     (io_input_ar_payload_prot[2:0]           ), //i
    .io_axi_r_valid             (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready             (io_input_r_ready                        ), //i
    .io_axi_r_payload_data      (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_resp      (errorSlave_io_axi_r_payload_resp[1:0]   ), //o
    .io_axi_r_payload_last      (errorSlave_io_axi_r_payload_last        ), //o
    .io_axiClk                  (io_axiClk                               ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                      )  //i
  );
  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == (3'b111)) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = (3'b001);
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = (3'b111);
      end else begin
        pendingCmdCounter_finalIncrement = (3'b000);
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 32'h00000fff)) == 32'h80000000) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 32'h03ffffff)) == 32'h40000000) && io_input_ar_valid)};
  assign decodedCmdError = (decodedCmdSels == (2'b00));
  assign allowCmd = ((pendingCmdCounter_value == (3'b000)) || ((pendingCmdCounter_value != (3'b111)) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & {io_outputs_1_ar_ready,io_outputs_0_ar_ready}) != (2'b00)) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_3_ = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_1_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_1_ = pendingSels[1];
  assign readRspIndex = _zz_1_;
  always @ (*) begin
    io_input_r_valid = ({io_outputs_1_r_valid,io_outputs_0_r_valid} != (2'b00));
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign _zz_2_ = pendingSels[0];
  assign io_input_r_payload_data = (_zz_2_ ? io_outputs_0_r_payload_data : io_outputs_1_r_payload_data);
  always @ (*) begin
    io_input_r_payload_resp = (_zz_2_ ? io_outputs_0_r_payload_resp : io_outputs_1_r_payload_resp);
    if(pendingError)begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @ (*) begin
    io_input_r_payload_last = (_zz_2_ ? io_outputs_0_r_payload_last : io_outputs_1_r_payload_last);
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingCmdCounter_value <= (3'b000);
      pendingSels <= (2'b00);
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Axi4SharedDecoder (
  input               io_input_arw_valid,
  output              io_input_arw_ready,
  input      [31:0]   io_input_arw_payload_addr,
  input      [7:0]    io_input_arw_payload_len,
  input      [2:0]    io_input_arw_payload_size,
  input      [3:0]    io_input_arw_payload_cache,
  input      [2:0]    io_input_arw_payload_prot,
  input               io_input_arw_payload_write,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_sharedOutputs_0_arw_valid,
  input               io_sharedOutputs_0_arw_ready,
  output     [31:0]   io_sharedOutputs_0_arw_payload_addr,
  output     [7:0]    io_sharedOutputs_0_arw_payload_len,
  output     [2:0]    io_sharedOutputs_0_arw_payload_size,
  output     [3:0]    io_sharedOutputs_0_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_0_arw_payload_prot,
  output              io_sharedOutputs_0_arw_payload_write,
  output              io_sharedOutputs_0_w_valid,
  input               io_sharedOutputs_0_w_ready,
  output     [31:0]   io_sharedOutputs_0_w_payload_data,
  output     [3:0]    io_sharedOutputs_0_w_payload_strb,
  output              io_sharedOutputs_0_w_payload_last,
  input               io_sharedOutputs_0_b_valid,
  output              io_sharedOutputs_0_b_ready,
  input      [1:0]    io_sharedOutputs_0_b_payload_resp,
  input               io_sharedOutputs_0_r_valid,
  output              io_sharedOutputs_0_r_ready,
  input      [31:0]   io_sharedOutputs_0_r_payload_data,
  input      [1:0]    io_sharedOutputs_0_r_payload_resp,
  input               io_sharedOutputs_0_r_payload_last,
  output              io_sharedOutputs_1_arw_valid,
  input               io_sharedOutputs_1_arw_ready,
  output     [31:0]   io_sharedOutputs_1_arw_payload_addr,
  output     [7:0]    io_sharedOutputs_1_arw_payload_len,
  output     [2:0]    io_sharedOutputs_1_arw_payload_size,
  output     [3:0]    io_sharedOutputs_1_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_1_arw_payload_prot,
  output              io_sharedOutputs_1_arw_payload_write,
  output              io_sharedOutputs_1_w_valid,
  input               io_sharedOutputs_1_w_ready,
  output     [31:0]   io_sharedOutputs_1_w_payload_data,
  output     [3:0]    io_sharedOutputs_1_w_payload_strb,
  output              io_sharedOutputs_1_w_payload_last,
  input               io_sharedOutputs_1_b_valid,
  output              io_sharedOutputs_1_b_ready,
  input      [1:0]    io_sharedOutputs_1_b_payload_resp,
  input               io_sharedOutputs_1_r_valid,
  output              io_sharedOutputs_1_r_ready,
  input      [31:0]   io_sharedOutputs_1_r_payload_data,
  input      [1:0]    io_sharedOutputs_1_r_payload_resp,
  input               io_sharedOutputs_1_r_payload_last,
  output              io_sharedOutputs_2_arw_valid,
  input               io_sharedOutputs_2_arw_ready,
  output     [31:0]   io_sharedOutputs_2_arw_payload_addr,
  output     [7:0]    io_sharedOutputs_2_arw_payload_len,
  output     [2:0]    io_sharedOutputs_2_arw_payload_size,
  output     [3:0]    io_sharedOutputs_2_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_2_arw_payload_prot,
  output              io_sharedOutputs_2_arw_payload_write,
  output              io_sharedOutputs_2_w_valid,
  input               io_sharedOutputs_2_w_ready,
  output     [31:0]   io_sharedOutputs_2_w_payload_data,
  output     [3:0]    io_sharedOutputs_2_w_payload_strb,
  output              io_sharedOutputs_2_w_payload_last,
  input               io_sharedOutputs_2_b_valid,
  output              io_sharedOutputs_2_b_ready,
  input      [1:0]    io_sharedOutputs_2_b_payload_resp,
  input               io_sharedOutputs_2_r_valid,
  output              io_sharedOutputs_2_r_ready,
  input      [31:0]   io_sharedOutputs_2_r_payload_data,
  input      [1:0]    io_sharedOutputs_2_r_payload_resp,
  input               io_sharedOutputs_2_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_12_;
  wire                _zz_13_;
  reg        [1:0]    _zz_14_;
  reg        [31:0]   _zz_15_;
  reg        [1:0]    _zz_16_;
  reg                 _zz_17_;
  wire                errorSlave_io_axi_arw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  reg        [2:0]    _zz_1_;
  reg        [2:0]    _zz_1__1;
  reg        [2:0]    _zz_1__0;
  wire                cmdAllowedStart;
  reg        [2:0]    pendingCmdCounter;
  wire       [2:0]    _zz_2_;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_3_;
  wire       [2:0]    _zz_4_;
  wire       [2:0]    _zz_5_;
  wire       [2:0]    _zz_6_;
  wire                _zz_7_;
  wire                _zz_8_;
  wire       [1:0]    writeRspIndex;
  wire       [2:0]    _zz_9_;
  wire                _zz_10_;
  wire                _zz_11_;
  wire       [1:0]    readRspIndex;

  Axi4SharedErrorSlave errorSlave ( 
    .io_axi_arw_valid            (_zz_12_                                 ), //i
    .io_axi_arw_ready            (errorSlave_io_axi_arw_ready             ), //o
    .io_axi_arw_payload_addr     (io_input_arw_payload_addr[31:0]         ), //i
    .io_axi_arw_payload_len      (io_input_arw_payload_len[7:0]           ), //i
    .io_axi_arw_payload_size     (io_input_arw_payload_size[2:0]          ), //i
    .io_axi_arw_payload_cache    (io_input_arw_payload_cache[3:0]         ), //i
    .io_axi_arw_payload_prot     (io_input_arw_payload_prot[2:0]          ), //i
    .io_axi_arw_payload_write    (io_input_arw_payload_write              ), //i
    .io_axi_w_valid              (_zz_13_                                 ), //i
    .io_axi_w_ready              (errorSlave_io_axi_w_ready               ), //o
    .io_axi_w_payload_data       (io_input_w_payload_data[31:0]           ), //i
    .io_axi_w_payload_strb       (io_input_w_payload_strb[3:0]            ), //i
    .io_axi_w_payload_last       (io_input_w_payload_last                 ), //i
    .io_axi_b_valid              (errorSlave_io_axi_b_valid               ), //o
    .io_axi_b_ready              (io_input_b_ready                        ), //i
    .io_axi_b_payload_resp       (errorSlave_io_axi_b_payload_resp[1:0]   ), //o
    .io_axi_r_valid              (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready              (io_input_r_ready                        ), //i
    .io_axi_r_payload_data       (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_resp       (errorSlave_io_axi_r_payload_resp[1:0]   ), //o
    .io_axi_r_payload_last       (errorSlave_io_axi_r_payload_last        ), //o
    .io_axiClk                   (io_axiClk                               ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                      )  //i
  );
  always @(*) begin
    case(writeRspIndex)
      2'b00 : begin
        _zz_14_ = io_sharedOutputs_0_b_payload_resp;
      end
      2'b01 : begin
        _zz_14_ = io_sharedOutputs_1_b_payload_resp;
      end
      default : begin
        _zz_14_ = io_sharedOutputs_2_b_payload_resp;
      end
    endcase
  end

  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_15_ = io_sharedOutputs_0_r_payload_data;
        _zz_16_ = io_sharedOutputs_0_r_payload_resp;
        _zz_17_ = io_sharedOutputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_15_ = io_sharedOutputs_1_r_payload_data;
        _zz_16_ = io_sharedOutputs_1_r_payload_resp;
        _zz_17_ = io_sharedOutputs_1_r_payload_last;
      end
      default : begin
        _zz_15_ = io_sharedOutputs_2_r_payload_data;
        _zz_16_ = io_sharedOutputs_2_r_payload_resp;
        _zz_17_ = io_sharedOutputs_2_r_payload_last;
      end
    endcase
  end

  always @ (*) begin
    _zz_1_ = _zz_1__1;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      _zz_1_ = (_zz_1__1 - (3'b001));
    end
  end

  always @ (*) begin
    _zz_1__1 = _zz_1__0;
    if((io_input_b_valid && io_input_b_ready))begin
      _zz_1__1 = (_zz_1__0 - (3'b001));
    end
  end

  always @ (*) begin
    _zz_1__0 = _zz_2_;
    if((io_input_arw_valid && io_input_arw_ready))begin
      _zz_1__0 = (_zz_2_ + (3'b001));
    end
  end

  assign _zz_2_ = pendingCmdCounter;
  always @ (*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if((cmdAllowedStart && io_input_arw_payload_write))begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(((io_input_w_valid && io_input_w_ready) && io_input_w_payload_last))begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == (3'b111)) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  always @ (*) begin
    if((pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt)))begin
      pendingDataCounter_finalIncrement = (3'b001);
    end else begin
      if(((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt))begin
        pendingDataCounter_finalIncrement = (3'b111);
      end else begin
        pendingDataCounter_finalIncrement = (3'b000);
      end
    end
  end

  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {((io_input_arw_payload_addr & (~ 32'h00000fff)) == 32'h80000000),{((io_input_arw_payload_addr & (~ 32'h000fffff)) == 32'hf0000000),((io_input_arw_payload_addr & (~ 32'h03ffffff)) == 32'h40000000)}};
  assign decodedCmdError = (decodedCmdSels == (3'b000));
  assign allowCmd = ((pendingCmdCounter == (3'b000)) || ((pendingCmdCounter != (3'b111)) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != (3'b000));
  assign cmdAllowedStart = ((io_input_arw_valid && allowCmd) && _zz_3_);
  assign io_input_arw_ready = ((((decodedCmdSels & {io_sharedOutputs_2_arw_ready,{io_sharedOutputs_1_arw_ready,io_sharedOutputs_0_arw_ready}}) != (3'b000)) || (decodedCmdError && errorSlave_io_axi_arw_ready)) && allowCmd);
  assign _zz_12_ = ((io_input_arw_valid && decodedCmdError) && allowCmd);
  assign _zz_4_ = decodedCmdSels[2 : 0];
  assign io_sharedOutputs_0_arw_valid = ((io_input_arw_valid && _zz_4_[0]) && allowCmd);
  assign io_sharedOutputs_0_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_0_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_0_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_0_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_0_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_0_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_1_arw_valid = ((io_input_arw_valid && _zz_4_[1]) && allowCmd);
  assign io_sharedOutputs_1_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_1_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_1_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_1_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_1_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_1_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_2_arw_valid = ((io_input_arw_valid && _zz_4_[2]) && allowCmd);
  assign io_sharedOutputs_2_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_2_arw_payload_len = io_input_arw_payload_len;
  assign io_sharedOutputs_2_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_2_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_2_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_2_arw_payload_write = io_input_arw_payload_write;
  assign io_input_w_ready = ((((pendingSels[2 : 0] & {io_sharedOutputs_2_w_ready,{io_sharedOutputs_1_w_ready,io_sharedOutputs_0_w_ready}}) != (3'b000)) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign _zz_13_ = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_5_ = pendingSels[2 : 0];
  assign io_sharedOutputs_0_w_valid = ((io_input_w_valid && _zz_5_[0]) && allowData);
  assign io_sharedOutputs_0_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_0_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_1_w_valid = ((io_input_w_valid && _zz_5_[1]) && allowData);
  assign io_sharedOutputs_1_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_1_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_2_w_valid = ((io_input_w_valid && _zz_5_[2]) && allowData);
  assign io_sharedOutputs_2_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_2_w_payload_last = io_input_w_payload_last;
  assign _zz_6_ = pendingSels[2 : 0];
  assign _zz_7_ = _zz_6_[1];
  assign _zz_8_ = _zz_6_[2];
  assign writeRspIndex = {_zz_8_,_zz_7_};
  assign io_input_b_valid = (({io_sharedOutputs_2_b_valid,{io_sharedOutputs_1_b_valid,io_sharedOutputs_0_b_valid}} != (3'b000)) || errorSlave_io_axi_b_valid);
  always @ (*) begin
    io_input_b_payload_resp = _zz_14_;
    if(pendingError)begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_sharedOutputs_0_b_ready = io_input_b_ready;
  assign io_sharedOutputs_1_b_ready = io_input_b_ready;
  assign io_sharedOutputs_2_b_ready = io_input_b_ready;
  assign _zz_9_ = pendingSels[2 : 0];
  assign _zz_10_ = _zz_9_[1];
  assign _zz_11_ = _zz_9_[2];
  assign readRspIndex = {_zz_11_,_zz_10_};
  assign io_input_r_valid = (({io_sharedOutputs_2_r_valid,{io_sharedOutputs_1_r_valid,io_sharedOutputs_0_r_valid}} != (3'b000)) || errorSlave_io_axi_r_valid);
  assign io_input_r_payload_data = _zz_15_;
  always @ (*) begin
    io_input_r_payload_resp = _zz_16_;
    if(pendingError)begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @ (*) begin
    io_input_r_payload_last = _zz_17_;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_sharedOutputs_0_r_ready = io_input_r_ready;
  assign io_sharedOutputs_1_r_ready = io_input_r_ready;
  assign io_sharedOutputs_2_r_ready = io_input_r_ready;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingCmdCounter <= (3'b000);
      pendingDataCounter_value <= (3'b000);
      pendingSels <= (3'b000);
      pendingError <= 1'b0;
      _zz_3_ <= 1'b1;
    end else begin
      pendingCmdCounter <= _zz_1_;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart)begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart)begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart)begin
        _zz_3_ <= 1'b0;
      end
      if(io_input_arw_ready)begin
        _zz_3_ <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder_1_ (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [31:0]   io_input_ar_payload_addr,
  input      [7:0]    io_input_ar_payload_len,
  input      [2:0]    io_input_ar_payload_size,
  input      [3:0]    io_input_ar_payload_cache,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [31:0]   io_outputs_0_ar_payload_addr,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [2:0]    io_outputs_0_ar_payload_size,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input               io_outputs_0_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  wire                _zz_1_;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [0:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [0:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;

  Axi4ReadOnlyErrorSlave_1_ errorSlave ( 
    .io_axi_ar_valid            (_zz_1_                                  ), //i
    .io_axi_ar_ready            (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr     (io_input_ar_payload_addr[31:0]          ), //i
    .io_axi_ar_payload_len      (io_input_ar_payload_len[7:0]            ), //i
    .io_axi_ar_payload_size     (io_input_ar_payload_size[2:0]           ), //i
    .io_axi_ar_payload_cache    (io_input_ar_payload_cache[3:0]          ), //i
    .io_axi_ar_payload_prot     (io_input_ar_payload_prot[2:0]           ), //i
    .io_axi_r_valid             (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready             (io_input_r_ready                        ), //i
    .io_axi_r_payload_data      (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_last      (errorSlave_io_axi_r_payload_last        ), //o
    .io_axiClk                  (io_axiClk                               ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                      )  //i
  );
  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == (3'b111)) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = (3'b001);
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = (3'b111);
      end else begin
        pendingCmdCounter_finalIncrement = (3'b000);
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = (((io_input_ar_payload_addr & (~ 32'h03ffffff)) == 32'h40000000) && io_input_ar_valid);
  assign decodedCmdError = (decodedCmdSels == (1'b0));
  assign allowCmd = ((pendingCmdCounter_value == (3'b000)) || ((pendingCmdCounter_value != (3'b111)) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & io_outputs_0_ar_ready) != (1'b0)) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_1_ = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  always @ (*) begin
    io_input_r_valid = (io_outputs_0_r_valid != (1'b0));
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = io_outputs_0_r_payload_data;
  always @ (*) begin
    io_input_r_payload_last = io_outputs_0_r_payload_last;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingCmdCounter_value <= (3'b000);
      pendingSels <= (1'b0);
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Axi4SharedArbiter (
  input               io_readInputs_0_ar_valid,
  output              io_readInputs_0_ar_ready,
  input      [11:0]   io_readInputs_0_ar_payload_addr,
  input      [2:0]    io_readInputs_0_ar_payload_id,
  input      [7:0]    io_readInputs_0_ar_payload_len,
  input      [2:0]    io_readInputs_0_ar_payload_size,
  input      [1:0]    io_readInputs_0_ar_payload_burst,
  output              io_readInputs_0_r_valid,
  input               io_readInputs_0_r_ready,
  output     [31:0]   io_readInputs_0_r_payload_data,
  output     [2:0]    io_readInputs_0_r_payload_id,
  output     [1:0]    io_readInputs_0_r_payload_resp,
  output              io_readInputs_0_r_payload_last,
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [11:0]   io_sharedInputs_0_arw_payload_addr,
  input      [2:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [2:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [2:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [11:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_2_;
  wire                _zz_3_;
  wire                _zz_4_;
  reg                 _zz_5_;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [11:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                streamFork_4__io_input_ready;
  wire                streamFork_4__io_outputs_0_valid;
  wire       [11:0]   streamFork_4__io_outputs_0_payload_addr;
  wire       [2:0]    streamFork_4__io_outputs_0_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_0_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_0_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_0_payload_burst;
  wire                streamFork_4__io_outputs_0_payload_write;
  wire                streamFork_4__io_outputs_1_valid;
  wire       [11:0]   streamFork_4__io_outputs_1_payload_addr;
  wire       [2:0]    streamFork_4__io_outputs_1_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_1_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_1_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_1_payload_burst;
  wire                streamFork_4__io_outputs_1_payload_write;
  wire                streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                _zz_6_;
  wire       [1:0]    _zz_7_;
  wire       [2:0]    _zz_8_;
  wire       [3:0]    _zz_9_;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [11:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [11:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  wire                _zz_1_;
  reg                 streamFork_4__io_outputs_1_thrown_valid;
  wire                streamFork_4__io_outputs_1_thrown_ready;
  wire       [11:0]   streamFork_4__io_outputs_1_thrown_payload_addr;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_1_thrown_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_1_thrown_payload_burst;
  wire                streamFork_4__io_outputs_1_thrown_payload_write;
  wire                streamFork_4__io_outputs_1_thrown_translated_valid;
  wire                streamFork_4__io_outputs_1_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                writeLogic_writeRspSels_0;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz_6_ = (! streamFork_4__io_outputs_1_payload_write);
  assign _zz_7_ = {cmdArbiter_io_chosenOH[1 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_8_ = streamFork_4__io_outputs_0_payload_id;
  assign _zz_9_ = {1'd0, _zz_8_};
  StreamArbiter cmdArbiter ( 
    .io_inputs_0_valid            (inputsCmd_0_valid                        ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready             ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr[11:0]           ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id[2:0]              ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len[7:0]             ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size[2:0]            ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst[1:0]           ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                        ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready             ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr[11:0]           ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id[2:0]              ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len[7:0]             ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size[2:0]            ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst[1:0]           ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                ), //i
    .io_output_valid              (cmdArbiter_io_output_valid               ), //o
    .io_output_ready              (streamFork_4__io_input_ready             ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr[11:0]  ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id[2:0]     ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len[7:0]    ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size[2:0]   ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst[1:0]  ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write       ), //o
    .io_chosen                    (cmdArbiter_io_chosen                     ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH[1:0]              ), //o
    .io_axiClk                    (io_axiClk                                ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                       )  //i
  );
  StreamFork streamFork_4_ ( 
    .io_input_valid                (cmdArbiter_io_output_valid                     ), //i
    .io_input_ready                (streamFork_4__io_input_ready                   ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr[11:0]        ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id[2:0]           ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len[7:0]          ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size[2:0]         ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst[1:0]        ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write             ), //i
    .io_outputs_0_valid            (streamFork_4__io_outputs_0_valid               ), //o
    .io_outputs_0_ready            (io_output_arw_ready                            ), //i
    .io_outputs_0_payload_addr     (streamFork_4__io_outputs_0_payload_addr[11:0]  ), //o
    .io_outputs_0_payload_id       (streamFork_4__io_outputs_0_payload_id[2:0]     ), //o
    .io_outputs_0_payload_len      (streamFork_4__io_outputs_0_payload_len[7:0]    ), //o
    .io_outputs_0_payload_size     (streamFork_4__io_outputs_0_payload_size[2:0]   ), //o
    .io_outputs_0_payload_burst    (streamFork_4__io_outputs_0_payload_burst[1:0]  ), //o
    .io_outputs_0_payload_write    (streamFork_4__io_outputs_0_payload_write       ), //o
    .io_outputs_1_valid            (streamFork_4__io_outputs_1_valid               ), //o
    .io_outputs_1_ready            (_zz_2_                                         ), //i
    .io_outputs_1_payload_addr     (streamFork_4__io_outputs_1_payload_addr[11:0]  ), //o
    .io_outputs_1_payload_id       (streamFork_4__io_outputs_1_payload_id[2:0]     ), //o
    .io_outputs_1_payload_len      (streamFork_4__io_outputs_1_payload_len[7:0]    ), //o
    .io_outputs_1_payload_size     (streamFork_4__io_outputs_1_payload_size[2:0]   ), //o
    .io_outputs_1_payload_burst    (streamFork_4__io_outputs_1_payload_burst[1:0]  ), //o
    .io_outputs_1_payload_write    (streamFork_4__io_outputs_1_payload_write       ), //o
    .io_axiClk                     (io_axiClk                                      ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                             )  //i
  );
  StreamFifoLowLatency_1_ streamFork_4__io_outputs_1_thrown_translated_fifo ( 
    .io_push_valid         (streamFork_4__io_outputs_1_thrown_translated_valid                   ), //i
    .io_push_ready         (streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready      ), //o
    .io_pop_valid          (streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready          (_zz_3_                                                               ), //i
    .io_flush              (_zz_4_                                                               ), //i
    .io_occupancy          (streamFork_4__io_outputs_1_thrown_translated_fifo_io_occupancy[2:0]  ), //o
    .io_axiClk             (io_axiClk                                                            ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                   )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : begin
        _zz_5_ = io_readInputs_0_r_ready;
      end
      default : begin
        _zz_5_ = io_sharedInputs_0_r_ready;
      end
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_arw_valid = streamFork_4__io_outputs_0_valid;
  assign io_output_arw_payload_addr = streamFork_4__io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = streamFork_4__io_outputs_0_payload_len;
  assign io_output_arw_payload_size = streamFork_4__io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = streamFork_4__io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = streamFork_4__io_outputs_0_payload_write;
  assign _zz_1_ = _zz_7_[1];
  assign io_output_arw_payload_id = (streamFork_4__io_outputs_0_payload_write ? _zz_9_ : {_zz_1_,streamFork_4__io_outputs_0_payload_id});
  always @ (*) begin
    streamFork_4__io_outputs_1_thrown_valid = streamFork_4__io_outputs_1_valid;
    if(_zz_6_)begin
      streamFork_4__io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_2_ = streamFork_4__io_outputs_1_thrown_ready;
    if(_zz_6_)begin
      _zz_2_ = 1'b1;
    end
  end

  assign streamFork_4__io_outputs_1_thrown_payload_addr = streamFork_4__io_outputs_1_payload_addr;
  assign streamFork_4__io_outputs_1_thrown_payload_id = streamFork_4__io_outputs_1_payload_id;
  assign streamFork_4__io_outputs_1_thrown_payload_len = streamFork_4__io_outputs_1_payload_len;
  assign streamFork_4__io_outputs_1_thrown_payload_size = streamFork_4__io_outputs_1_payload_size;
  assign streamFork_4__io_outputs_1_thrown_payload_burst = streamFork_4__io_outputs_1_payload_burst;
  assign streamFork_4__io_outputs_1_thrown_payload_write = streamFork_4__io_outputs_1_payload_write;
  assign streamFork_4__io_outputs_1_thrown_translated_valid = streamFork_4__io_outputs_1_thrown_valid;
  assign streamFork_4__io_outputs_1_thrown_ready = streamFork_4__io_outputs_1_thrown_translated_ready;
  assign streamFork_4__io_outputs_1_thrown_translated_ready = streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign _zz_3_ = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == (1'b0));
  assign readRspSels_1 = (readRspIndex == (1'b1));
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_5_;
  assign _zz_4_ = 1'b0;

endmodule

module Axi4SharedArbiter_1_ (
  input               io_readInputs_0_ar_valid,
  output              io_readInputs_0_ar_ready,
  input      [25:0]   io_readInputs_0_ar_payload_addr,
  input      [1:0]    io_readInputs_0_ar_payload_id,
  input      [7:0]    io_readInputs_0_ar_payload_len,
  input      [2:0]    io_readInputs_0_ar_payload_size,
  input      [1:0]    io_readInputs_0_ar_payload_burst,
  output              io_readInputs_0_r_valid,
  input               io_readInputs_0_r_ready,
  output     [31:0]   io_readInputs_0_r_payload_data,
  output     [1:0]    io_readInputs_0_r_payload_id,
  output     [1:0]    io_readInputs_0_r_payload_resp,
  output              io_readInputs_0_r_payload_last,
  input               io_readInputs_1_ar_valid,
  output              io_readInputs_1_ar_ready,
  input      [25:0]   io_readInputs_1_ar_payload_addr,
  input      [1:0]    io_readInputs_1_ar_payload_id,
  input      [7:0]    io_readInputs_1_ar_payload_len,
  input      [2:0]    io_readInputs_1_ar_payload_size,
  input      [1:0]    io_readInputs_1_ar_payload_burst,
  output              io_readInputs_1_r_valid,
  input               io_readInputs_1_r_ready,
  output     [31:0]   io_readInputs_1_r_payload_data,
  output     [1:0]    io_readInputs_1_r_payload_id,
  output     [1:0]    io_readInputs_1_r_payload_resp,
  output              io_readInputs_1_r_payload_last,
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [25:0]   io_sharedInputs_0_arw_payload_addr,
  input      [1:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [1:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [1:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [25:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_4_;
  wire                _zz_5_;
  wire                _zz_6_;
  reg                 _zz_7_;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_inputs_2_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [25:0]   cmdArbiter_io_output_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [1:0]    cmdArbiter_io_chosen;
  wire       [2:0]    cmdArbiter_io_chosenOH;
  wire                streamFork_4__io_input_ready;
  wire                streamFork_4__io_outputs_0_valid;
  wire       [25:0]   streamFork_4__io_outputs_0_payload_addr;
  wire       [1:0]    streamFork_4__io_outputs_0_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_0_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_0_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_0_payload_burst;
  wire                streamFork_4__io_outputs_0_payload_write;
  wire                streamFork_4__io_outputs_1_valid;
  wire       [25:0]   streamFork_4__io_outputs_1_payload_addr;
  wire       [1:0]    streamFork_4__io_outputs_1_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_1_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_1_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_1_payload_burst;
  wire                streamFork_4__io_outputs_1_payload_write;
  wire                streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                _zz_8_;
  wire       [1:0]    _zz_9_;
  wire       [3:0]    _zz_10_;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [25:0]   inputsCmd_0_payload_addr;
  wire       [1:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [25:0]   inputsCmd_1_payload_addr;
  wire       [1:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  wire                inputsCmd_2_valid;
  wire                inputsCmd_2_ready;
  wire       [25:0]   inputsCmd_2_payload_addr;
  wire       [1:0]    inputsCmd_2_payload_id;
  wire       [7:0]    inputsCmd_2_payload_len;
  wire       [2:0]    inputsCmd_2_payload_size;
  wire       [1:0]    inputsCmd_2_payload_burst;
  wire                inputsCmd_2_payload_write;
  wire       [2:0]    _zz_1_;
  wire                _zz_2_;
  wire                _zz_3_;
  reg                 streamFork_4__io_outputs_1_thrown_valid;
  wire                streamFork_4__io_outputs_1_thrown_ready;
  wire       [25:0]   streamFork_4__io_outputs_1_thrown_payload_addr;
  wire       [1:0]    streamFork_4__io_outputs_1_thrown_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_1_thrown_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_1_thrown_payload_burst;
  wire                streamFork_4__io_outputs_1_thrown_payload_write;
  wire                streamFork_4__io_outputs_1_thrown_translated_valid;
  wire                streamFork_4__io_outputs_1_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                writeLogic_writeRspSels_0;
  wire       [1:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;
  wire                readRspSels_2;

  assign _zz_8_ = (! streamFork_4__io_outputs_1_payload_write);
  assign _zz_9_ = streamFork_4__io_outputs_0_payload_id;
  assign _zz_10_ = {2'd0, _zz_9_};
  StreamArbiter_1_ cmdArbiter ( 
    .io_inputs_0_valid            (inputsCmd_0_valid                        ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready             ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr[25:0]           ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id[1:0]              ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len[7:0]             ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size[2:0]            ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst[1:0]           ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                        ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready             ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr[25:0]           ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id[1:0]              ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len[7:0]             ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size[2:0]            ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst[1:0]           ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                ), //i
    .io_inputs_2_valid            (inputsCmd_2_valid                        ), //i
    .io_inputs_2_ready            (cmdArbiter_io_inputs_2_ready             ), //o
    .io_inputs_2_payload_addr     (inputsCmd_2_payload_addr[25:0]           ), //i
    .io_inputs_2_payload_id       (inputsCmd_2_payload_id[1:0]              ), //i
    .io_inputs_2_payload_len      (inputsCmd_2_payload_len[7:0]             ), //i
    .io_inputs_2_payload_size     (inputsCmd_2_payload_size[2:0]            ), //i
    .io_inputs_2_payload_burst    (inputsCmd_2_payload_burst[1:0]           ), //i
    .io_inputs_2_payload_write    (inputsCmd_2_payload_write                ), //i
    .io_output_valid              (cmdArbiter_io_output_valid               ), //o
    .io_output_ready              (streamFork_4__io_input_ready             ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr[25:0]  ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id[1:0]     ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len[7:0]    ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size[2:0]   ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst[1:0]  ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write       ), //o
    .io_chosen                    (cmdArbiter_io_chosen[1:0]                ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH[2:0]              ), //o
    .io_axiClk                    (io_axiClk                                ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                       )  //i
  );
  StreamFork_1_ streamFork_4_ ( 
    .io_input_valid                (cmdArbiter_io_output_valid                     ), //i
    .io_input_ready                (streamFork_4__io_input_ready                   ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr[25:0]        ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id[1:0]           ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len[7:0]          ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size[2:0]         ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst[1:0]        ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write             ), //i
    .io_outputs_0_valid            (streamFork_4__io_outputs_0_valid               ), //o
    .io_outputs_0_ready            (io_output_arw_ready                            ), //i
    .io_outputs_0_payload_addr     (streamFork_4__io_outputs_0_payload_addr[25:0]  ), //o
    .io_outputs_0_payload_id       (streamFork_4__io_outputs_0_payload_id[1:0]     ), //o
    .io_outputs_0_payload_len      (streamFork_4__io_outputs_0_payload_len[7:0]    ), //o
    .io_outputs_0_payload_size     (streamFork_4__io_outputs_0_payload_size[2:0]   ), //o
    .io_outputs_0_payload_burst    (streamFork_4__io_outputs_0_payload_burst[1:0]  ), //o
    .io_outputs_0_payload_write    (streamFork_4__io_outputs_0_payload_write       ), //o
    .io_outputs_1_valid            (streamFork_4__io_outputs_1_valid               ), //o
    .io_outputs_1_ready            (_zz_4_                                         ), //i
    .io_outputs_1_payload_addr     (streamFork_4__io_outputs_1_payload_addr[25:0]  ), //o
    .io_outputs_1_payload_id       (streamFork_4__io_outputs_1_payload_id[1:0]     ), //o
    .io_outputs_1_payload_len      (streamFork_4__io_outputs_1_payload_len[7:0]    ), //o
    .io_outputs_1_payload_size     (streamFork_4__io_outputs_1_payload_size[2:0]   ), //o
    .io_outputs_1_payload_burst    (streamFork_4__io_outputs_1_payload_burst[1:0]  ), //o
    .io_outputs_1_payload_write    (streamFork_4__io_outputs_1_payload_write       ), //o
    .io_axiClk                     (io_axiClk                                      ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                             )  //i
  );
  StreamFifoLowLatency_1_ streamFork_4__io_outputs_1_thrown_translated_fifo ( 
    .io_push_valid         (streamFork_4__io_outputs_1_thrown_translated_valid                   ), //i
    .io_push_ready         (streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready      ), //o
    .io_pop_valid          (streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready          (_zz_5_                                                               ), //i
    .io_flush              (_zz_6_                                                               ), //i
    .io_occupancy          (streamFork_4__io_outputs_1_thrown_translated_fifo_io_occupancy[2:0]  ), //o
    .io_axiClk             (io_axiClk                                                            ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                   )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_7_ = io_readInputs_0_r_ready;
      end
      2'b01 : begin
        _zz_7_ = io_readInputs_1_r_ready;
      end
      default : begin
        _zz_7_ = io_sharedInputs_0_r_ready;
      end
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_readInputs_1_ar_valid;
  assign io_readInputs_1_ar_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_readInputs_1_ar_payload_addr;
  assign inputsCmd_1_payload_id = io_readInputs_1_ar_payload_id;
  assign inputsCmd_1_payload_len = io_readInputs_1_ar_payload_len;
  assign inputsCmd_1_payload_size = io_readInputs_1_ar_payload_size;
  assign inputsCmd_1_payload_burst = io_readInputs_1_ar_payload_burst;
  assign inputsCmd_1_payload_write = 1'b0;
  assign inputsCmd_2_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_2_ready;
  assign inputsCmd_2_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_2_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_2_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_2_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_2_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_2_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign inputsCmd_2_ready = cmdArbiter_io_inputs_2_ready;
  assign io_output_arw_valid = streamFork_4__io_outputs_0_valid;
  assign io_output_arw_payload_addr = streamFork_4__io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = streamFork_4__io_outputs_0_payload_len;
  assign io_output_arw_payload_size = streamFork_4__io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = streamFork_4__io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = streamFork_4__io_outputs_0_payload_write;
  assign _zz_1_ = {cmdArbiter_io_chosenOH[2 : 2],cmdArbiter_io_chosenOH[1 : 0]};
  assign _zz_2_ = _zz_1_[1];
  assign _zz_3_ = _zz_1_[2];
  assign io_output_arw_payload_id = (streamFork_4__io_outputs_0_payload_write ? _zz_10_ : {{_zz_3_,_zz_2_},streamFork_4__io_outputs_0_payload_id});
  always @ (*) begin
    streamFork_4__io_outputs_1_thrown_valid = streamFork_4__io_outputs_1_valid;
    if(_zz_8_)begin
      streamFork_4__io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_4_ = streamFork_4__io_outputs_1_thrown_ready;
    if(_zz_8_)begin
      _zz_4_ = 1'b1;
    end
  end

  assign streamFork_4__io_outputs_1_thrown_payload_addr = streamFork_4__io_outputs_1_payload_addr;
  assign streamFork_4__io_outputs_1_thrown_payload_id = streamFork_4__io_outputs_1_payload_id;
  assign streamFork_4__io_outputs_1_thrown_payload_len = streamFork_4__io_outputs_1_payload_len;
  assign streamFork_4__io_outputs_1_thrown_payload_size = streamFork_4__io_outputs_1_payload_size;
  assign streamFork_4__io_outputs_1_thrown_payload_burst = streamFork_4__io_outputs_1_payload_burst;
  assign streamFork_4__io_outputs_1_thrown_payload_write = streamFork_4__io_outputs_1_payload_write;
  assign streamFork_4__io_outputs_1_thrown_translated_valid = streamFork_4__io_outputs_1_thrown_valid;
  assign streamFork_4__io_outputs_1_thrown_ready = streamFork_4__io_outputs_1_thrown_translated_ready;
  assign streamFork_4__io_outputs_1_thrown_translated_ready = streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign _zz_5_ = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[1:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 2];
  assign readRspSels_0 = (readRspIndex == (2'b00));
  assign readRspSels_1 = (readRspIndex == (2'b01));
  assign readRspSels_2 = (readRspIndex == (2'b10));
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[1:0];
  assign io_readInputs_1_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_readInputs_1_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_1_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_1_r_payload_id = io_output_r_payload_id[1:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_2);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[1:0];
  assign io_output_r_ready = _zz_7_;
  assign _zz_6_ = 1'b0;

endmodule

module Axi4SharedArbiter_2_ (
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [19:0]   io_sharedInputs_0_arw_payload_addr,
  input      [3:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [3:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [3:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [19:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_1_;
  wire                _zz_2_;
  wire                _zz_3_;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [19:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosenOH;
  wire                streamFork_4__io_input_ready;
  wire                streamFork_4__io_outputs_0_valid;
  wire       [19:0]   streamFork_4__io_outputs_0_payload_addr;
  wire       [3:0]    streamFork_4__io_outputs_0_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_0_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_0_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_0_payload_burst;
  wire                streamFork_4__io_outputs_0_payload_write;
  wire                streamFork_4__io_outputs_1_valid;
  wire       [19:0]   streamFork_4__io_outputs_1_payload_addr;
  wire       [3:0]    streamFork_4__io_outputs_1_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_1_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_1_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_1_payload_burst;
  wire                streamFork_4__io_outputs_1_payload_write;
  wire                streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                _zz_4_;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [19:0]   inputsCmd_0_payload_addr;
  wire       [3:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  reg                 streamFork_4__io_outputs_1_thrown_valid;
  wire                streamFork_4__io_outputs_1_thrown_ready;
  wire       [19:0]   streamFork_4__io_outputs_1_thrown_payload_addr;
  wire       [3:0]    streamFork_4__io_outputs_1_thrown_payload_id;
  wire       [7:0]    streamFork_4__io_outputs_1_thrown_payload_len;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_payload_size;
  wire       [1:0]    streamFork_4__io_outputs_1_thrown_payload_burst;
  wire                streamFork_4__io_outputs_1_thrown_payload_write;
  wire                streamFork_4__io_outputs_1_thrown_translated_valid;
  wire                streamFork_4__io_outputs_1_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                writeLogic_writeRspSels_0;
  wire                readRspSels_0;

  assign _zz_4_ = (! streamFork_4__io_outputs_1_payload_write);
  StreamArbiter_2_ cmdArbiter ( 
    .io_inputs_0_valid            (inputsCmd_0_valid                        ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready             ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr[19:0]           ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id[3:0]              ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len[7:0]             ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size[2:0]            ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst[1:0]           ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                ), //i
    .io_output_valid              (cmdArbiter_io_output_valid               ), //o
    .io_output_ready              (streamFork_4__io_input_ready             ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr[19:0]  ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id[3:0]     ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len[7:0]    ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size[2:0]   ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst[1:0]  ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write       ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH                   ), //o
    .io_axiClk                    (io_axiClk                                ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                       )  //i
  );
  StreamFork_2_ streamFork_4_ ( 
    .io_input_valid                (cmdArbiter_io_output_valid                     ), //i
    .io_input_ready                (streamFork_4__io_input_ready                   ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr[19:0]        ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id[3:0]           ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len[7:0]          ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size[2:0]         ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst[1:0]        ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write             ), //i
    .io_outputs_0_valid            (streamFork_4__io_outputs_0_valid               ), //o
    .io_outputs_0_ready            (io_output_arw_ready                            ), //i
    .io_outputs_0_payload_addr     (streamFork_4__io_outputs_0_payload_addr[19:0]  ), //o
    .io_outputs_0_payload_id       (streamFork_4__io_outputs_0_payload_id[3:0]     ), //o
    .io_outputs_0_payload_len      (streamFork_4__io_outputs_0_payload_len[7:0]    ), //o
    .io_outputs_0_payload_size     (streamFork_4__io_outputs_0_payload_size[2:0]   ), //o
    .io_outputs_0_payload_burst    (streamFork_4__io_outputs_0_payload_burst[1:0]  ), //o
    .io_outputs_0_payload_write    (streamFork_4__io_outputs_0_payload_write       ), //o
    .io_outputs_1_valid            (streamFork_4__io_outputs_1_valid               ), //o
    .io_outputs_1_ready            (_zz_1_                                         ), //i
    .io_outputs_1_payload_addr     (streamFork_4__io_outputs_1_payload_addr[19:0]  ), //o
    .io_outputs_1_payload_id       (streamFork_4__io_outputs_1_payload_id[3:0]     ), //o
    .io_outputs_1_payload_len      (streamFork_4__io_outputs_1_payload_len[7:0]    ), //o
    .io_outputs_1_payload_size     (streamFork_4__io_outputs_1_payload_size[2:0]   ), //o
    .io_outputs_1_payload_burst    (streamFork_4__io_outputs_1_payload_burst[1:0]  ), //o
    .io_outputs_1_payload_write    (streamFork_4__io_outputs_1_payload_write       ), //o
    .io_axiClk                     (io_axiClk                                      ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                             )  //i
  );
  StreamFifoLowLatency_1_ streamFork_4__io_outputs_1_thrown_translated_fifo ( 
    .io_push_valid         (streamFork_4__io_outputs_1_thrown_translated_valid                   ), //i
    .io_push_ready         (streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready      ), //o
    .io_pop_valid          (streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready          (_zz_2_                                                               ), //i
    .io_flush              (_zz_3_                                                               ), //i
    .io_occupancy          (streamFork_4__io_outputs_1_thrown_translated_fifo_io_occupancy[2:0]  ), //o
    .io_axiClk             (io_axiClk                                                            ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                   )  //i
  );
  assign inputsCmd_0_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_0_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_0_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_0_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_0_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_0_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign io_output_arw_valid = streamFork_4__io_outputs_0_valid;
  assign io_output_arw_payload_addr = streamFork_4__io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = streamFork_4__io_outputs_0_payload_len;
  assign io_output_arw_payload_size = streamFork_4__io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = streamFork_4__io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = streamFork_4__io_outputs_0_payload_write;
  assign io_output_arw_payload_id = (streamFork_4__io_outputs_0_payload_write ? streamFork_4__io_outputs_0_payload_id : streamFork_4__io_outputs_0_payload_id);
  always @ (*) begin
    streamFork_4__io_outputs_1_thrown_valid = streamFork_4__io_outputs_1_valid;
    if(_zz_4_)begin
      streamFork_4__io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_1_ = streamFork_4__io_outputs_1_thrown_ready;
    if(_zz_4_)begin
      _zz_1_ = 1'b1;
    end
  end

  assign streamFork_4__io_outputs_1_thrown_payload_addr = streamFork_4__io_outputs_1_payload_addr;
  assign streamFork_4__io_outputs_1_thrown_payload_id = streamFork_4__io_outputs_1_payload_id;
  assign streamFork_4__io_outputs_1_thrown_payload_len = streamFork_4__io_outputs_1_payload_len;
  assign streamFork_4__io_outputs_1_thrown_payload_size = streamFork_4__io_outputs_1_payload_size;
  assign streamFork_4__io_outputs_1_thrown_payload_burst = streamFork_4__io_outputs_1_payload_burst;
  assign streamFork_4__io_outputs_1_thrown_payload_write = streamFork_4__io_outputs_1_payload_write;
  assign streamFork_4__io_outputs_1_thrown_translated_valid = streamFork_4__io_outputs_1_thrown_valid;
  assign streamFork_4__io_outputs_1_thrown_ready = streamFork_4__io_outputs_1_thrown_translated_ready;
  assign streamFork_4__io_outputs_1_thrown_translated_ready = streamFork_4__io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((streamFork_4__io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign _zz_2_ = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id;
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspSels_0 = 1'b1;
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id;
  assign io_output_r_ready = io_sharedInputs_0_r_ready;
  assign _zz_3_ = 1'b0;

endmodule

module Apb3Decoder (
  input      [19:0]   io_input_PADDR,
  input      [0:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output reg          io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output reg          io_input_PSLVERROR,
  output     [19:0]   io_output_PADDR,
  output reg [4:0]    io_output_PSEL,
  output              io_output_PENABLE,
  input               io_output_PREADY,
  output              io_output_PWRITE,
  output     [31:0]   io_output_PWDATA,
  input      [31:0]   io_output_PRDATA,
  input               io_output_PSLVERROR 
);
  wire                _zz_1_;

  assign _zz_1_ = (io_input_PSEL[0] && (io_output_PSEL == 5'h0));
  assign io_output_PADDR = io_input_PADDR;
  assign io_output_PENABLE = io_input_PENABLE;
  assign io_output_PWRITE = io_input_PWRITE;
  assign io_output_PWDATA = io_input_PWDATA;
  always @ (*) begin
    io_output_PSEL[0] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h0) && io_input_PSEL[0]);
    io_output_PSEL[1] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h01000) && io_input_PSEL[0]);
    io_output_PSEL[2] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h10000) && io_input_PSEL[0]);
    io_output_PSEL[3] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h20000) && io_input_PSEL[0]);
    io_output_PSEL[4] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h30000) && io_input_PSEL[0]);
  end

  always @ (*) begin
    io_input_PREADY = io_output_PREADY;
    if(_zz_1_)begin
      io_input_PREADY = 1'b1;
    end
  end

  assign io_input_PRDATA = io_output_PRDATA;
  always @ (*) begin
    io_input_PSLVERROR = io_output_PSLVERROR;
    if(_zz_1_)begin
      io_input_PSLVERROR = 1'b1;
    end
  end


endmodule

module Apb3Router (
  input      [19:0]   io_input_PADDR,
  input      [4:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output              io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output              io_input_PSLVERROR,
  output     [19:0]   io_outputs_0_PADDR,
  output     [0:0]    io_outputs_0_PSEL,
  output              io_outputs_0_PENABLE,
  input               io_outputs_0_PREADY,
  output              io_outputs_0_PWRITE,
  output     [31:0]   io_outputs_0_PWDATA,
  input      [31:0]   io_outputs_0_PRDATA,
  input               io_outputs_0_PSLVERROR,
  output     [19:0]   io_outputs_1_PADDR,
  output     [0:0]    io_outputs_1_PSEL,
  output              io_outputs_1_PENABLE,
  input               io_outputs_1_PREADY,
  output              io_outputs_1_PWRITE,
  output     [31:0]   io_outputs_1_PWDATA,
  input      [31:0]   io_outputs_1_PRDATA,
  input               io_outputs_1_PSLVERROR,
  output     [19:0]   io_outputs_2_PADDR,
  output     [0:0]    io_outputs_2_PSEL,
  output              io_outputs_2_PENABLE,
  input               io_outputs_2_PREADY,
  output              io_outputs_2_PWRITE,
  output     [31:0]   io_outputs_2_PWDATA,
  input      [31:0]   io_outputs_2_PRDATA,
  input               io_outputs_2_PSLVERROR,
  output     [19:0]   io_outputs_3_PADDR,
  output     [0:0]    io_outputs_3_PSEL,
  output              io_outputs_3_PENABLE,
  input               io_outputs_3_PREADY,
  output              io_outputs_3_PWRITE,
  output     [31:0]   io_outputs_3_PWDATA,
  input      [31:0]   io_outputs_3_PRDATA,
  input               io_outputs_3_PSLVERROR,
  output     [19:0]   io_outputs_4_PADDR,
  output     [0:0]    io_outputs_4_PSEL,
  output              io_outputs_4_PENABLE,
  input               io_outputs_4_PREADY,
  output              io_outputs_4_PWRITE,
  output     [31:0]   io_outputs_4_PWDATA,
  input      [31:0]   io_outputs_4_PRDATA,
  input               io_outputs_4_PSLVERROR,
  input               io_axiClk,
  input               resetCtrl_axiReset 
);
  reg                 _zz_5_;
  reg        [31:0]   _zz_6_;
  reg                 _zz_7_;
  wire                _zz_1_;
  wire                _zz_2_;
  wire                _zz_3_;
  wire                _zz_4_;
  reg        [2:0]    selIndex;

  always @(*) begin
    case(selIndex)
      3'b000 : begin
        _zz_5_ = io_outputs_0_PREADY;
        _zz_6_ = io_outputs_0_PRDATA;
        _zz_7_ = io_outputs_0_PSLVERROR;
      end
      3'b001 : begin
        _zz_5_ = io_outputs_1_PREADY;
        _zz_6_ = io_outputs_1_PRDATA;
        _zz_7_ = io_outputs_1_PSLVERROR;
      end
      3'b010 : begin
        _zz_5_ = io_outputs_2_PREADY;
        _zz_6_ = io_outputs_2_PRDATA;
        _zz_7_ = io_outputs_2_PSLVERROR;
      end
      3'b011 : begin
        _zz_5_ = io_outputs_3_PREADY;
        _zz_6_ = io_outputs_3_PRDATA;
        _zz_7_ = io_outputs_3_PSLVERROR;
      end
      default : begin
        _zz_5_ = io_outputs_4_PREADY;
        _zz_6_ = io_outputs_4_PRDATA;
        _zz_7_ = io_outputs_4_PSLVERROR;
      end
    endcase
  end

  assign io_outputs_0_PADDR = io_input_PADDR;
  assign io_outputs_0_PENABLE = io_input_PENABLE;
  assign io_outputs_0_PSEL[0] = io_input_PSEL[0];
  assign io_outputs_0_PWRITE = io_input_PWRITE;
  assign io_outputs_0_PWDATA = io_input_PWDATA;
  assign io_outputs_1_PADDR = io_input_PADDR;
  assign io_outputs_1_PENABLE = io_input_PENABLE;
  assign io_outputs_1_PSEL[0] = io_input_PSEL[1];
  assign io_outputs_1_PWRITE = io_input_PWRITE;
  assign io_outputs_1_PWDATA = io_input_PWDATA;
  assign io_outputs_2_PADDR = io_input_PADDR;
  assign io_outputs_2_PENABLE = io_input_PENABLE;
  assign io_outputs_2_PSEL[0] = io_input_PSEL[2];
  assign io_outputs_2_PWRITE = io_input_PWRITE;
  assign io_outputs_2_PWDATA = io_input_PWDATA;
  assign io_outputs_3_PADDR = io_input_PADDR;
  assign io_outputs_3_PENABLE = io_input_PENABLE;
  assign io_outputs_3_PSEL[0] = io_input_PSEL[3];
  assign io_outputs_3_PWRITE = io_input_PWRITE;
  assign io_outputs_3_PWDATA = io_input_PWDATA;
  assign io_outputs_4_PADDR = io_input_PADDR;
  assign io_outputs_4_PENABLE = io_input_PENABLE;
  assign io_outputs_4_PSEL[0] = io_input_PSEL[4];
  assign io_outputs_4_PWRITE = io_input_PWRITE;
  assign io_outputs_4_PWDATA = io_input_PWDATA;
  assign _zz_1_ = io_input_PSEL[3];
  assign _zz_2_ = io_input_PSEL[4];
  assign _zz_3_ = (io_input_PSEL[1] || _zz_1_);
  assign _zz_4_ = (io_input_PSEL[2] || _zz_1_);
  assign io_input_PREADY = _zz_5_;
  assign io_input_PRDATA = _zz_6_;
  assign io_input_PSLVERROR = _zz_7_;
  always @ (posedge io_axiClk) begin
    selIndex <= {_zz_2_,{_zz_4_,_zz_3_}};
  end


endmodule

module Briey (
  input               io_asyncReset,
  input               io_axiClk,
  input               io_vgaClk,
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input      [31:0]   io_gpioA_read,
  output     [31:0]   io_gpioA_write,
  output     [31:0]   io_gpioA_writeEnable,
  input      [31:0]   io_gpioB_read,
  output     [31:0]   io_gpioB_write,
  output     [31:0]   io_gpioB_writeEnable,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_vga_vSync,
  output              io_vga_hSync,
  output              io_vga_colorEn,
  output     [4:0]    io_vga_color_r,
  output     [5:0]    io_vga_color_g,
  output     [4:0]    io_vga_color_b,
  input               io_timerExternal_clear,
  input               io_timerExternal_tick,
  input               io_coreInterrupt 
);
  wire       [3:0]    _zz_33_;
  wire       [3:0]    _zz_34_;
  wire       [7:0]    _zz_35_;
  wire       [4:0]    _zz_36_;
  wire       [7:0]    _zz_37_;
  wire                _zz_38_;
  wire       [7:0]    _zz_39_;
  wire                _zz_40_;
  wire                _zz_41_;
  wire                _zz_42_;
  wire                _zz_43_;
  reg                 _zz_44_;
  reg                 _zz_45_;
  wire       [7:0]    _zz_46_;
  wire       [1:0]    _zz_47_;
  wire       [3:0]    _zz_48_;
  wire       [2:0]    _zz_49_;
  wire                _zz_50_;
  wire                _zz_51_;
  wire                _zz_52_;
  wire       [7:0]    _zz_53_;
  wire       [2:0]    _zz_54_;
  wire       [3:0]    _zz_55_;
  wire       [2:0]    _zz_56_;
  wire                _zz_57_;
  wire                _zz_58_;
  wire                _zz_59_;
  wire                _zz_60_;
  wire                _zz_61_;
  wire                _zz_62_;
  wire       [11:0]   _zz_63_;
  wire       [2:0]    _zz_64_;
  wire       [11:0]   _zz_65_;
  wire       [1:0]    _zz_66_;
  wire                _zz_67_;
  wire       [25:0]   _zz_68_;
  wire       [2:0]    _zz_69_;
  wire       [25:0]   _zz_70_;
  wire       [1:0]    _zz_71_;
  wire       [25:0]   _zz_72_;
  wire       [1:0]    _zz_73_;
  wire                _zz_74_;
  wire       [19:0]   _zz_75_;
  wire       [1:0]    _zz_76_;
  wire                _zz_77_;
  wire                _zz_78_;
  wire                io_asyncReset_buffercc_io_dataOut;
  wire                resetCtrl_axiReset_buffercc_io_dataOut;
  wire                axi_ram_io_axi_arw_ready;
  wire                axi_ram_io_axi_w_ready;
  wire                axi_ram_io_axi_b_valid;
  wire       [3:0]    axi_ram_io_axi_b_payload_id;
  wire       [1:0]    axi_ram_io_axi_b_payload_resp;
  wire                axi_ram_io_axi_r_valid;
  wire       [31:0]   axi_ram_io_axi_r_payload_data;
  wire       [3:0]    axi_ram_io_axi_r_payload_id;
  wire       [1:0]    axi_ram_io_axi_r_payload_resp;
  wire                axi_ram_io_axi_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arw_ready;
  wire                axi_sdramCtrl_io_axi_w_ready;
  wire                axi_sdramCtrl_io_axi_b_valid;
  wire       [3:0]    axi_sdramCtrl_io_axi_b_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_b_payload_resp;
  wire                axi_sdramCtrl_io_axi_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_r_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_r_payload_last;
  wire       [12:0]   axi_sdramCtrl_io_sdram_ADDR;
  wire       [1:0]    axi_sdramCtrl_io_sdram_BA;
  wire                axi_sdramCtrl_io_sdram_CASn;
  wire                axi_sdramCtrl_io_sdram_CKE;
  wire                axi_sdramCtrl_io_sdram_CSn;
  wire       [1:0]    axi_sdramCtrl_io_sdram_DQM;
  wire                axi_sdramCtrl_io_sdram_RASn;
  wire                axi_sdramCtrl_io_sdram_WEn;
  wire       [15:0]   axi_sdramCtrl_io_sdram_DQ_write;
  wire       [15:0]   axi_sdramCtrl_io_sdram_DQ_writeEnable;
  wire                axi_apbBridge_io_axi_arw_ready;
  wire                axi_apbBridge_io_axi_w_ready;
  wire                axi_apbBridge_io_axi_b_valid;
  wire       [3:0]    axi_apbBridge_io_axi_b_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_b_payload_resp;
  wire                axi_apbBridge_io_axi_r_valid;
  wire       [31:0]   axi_apbBridge_io_axi_r_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_r_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_r_payload_resp;
  wire                axi_apbBridge_io_axi_r_payload_last;
  wire       [19:0]   axi_apbBridge_io_apb_PADDR;
  wire       [0:0]    axi_apbBridge_io_apb_PSEL;
  wire                axi_apbBridge_io_apb_PENABLE;
  wire                axi_apbBridge_io_apb_PWRITE;
  wire       [31:0]   axi_apbBridge_io_apb_PWDATA;
  wire                axi_gpioACtrl_io_apb_PREADY;
  wire       [31:0]   axi_gpioACtrl_io_apb_PRDATA;
  wire                axi_gpioACtrl_io_apb_PSLVERROR;
  wire       [31:0]   axi_gpioACtrl_io_gpio_write;
  wire       [31:0]   axi_gpioACtrl_io_gpio_writeEnable;
  wire       [31:0]   axi_gpioACtrl_io_value;
  wire                axi_gpioBCtrl_io_apb_PREADY;
  wire       [31:0]   axi_gpioBCtrl_io_apb_PRDATA;
  wire                axi_gpioBCtrl_io_apb_PSLVERROR;
  wire       [31:0]   axi_gpioBCtrl_io_gpio_write;
  wire       [31:0]   axi_gpioBCtrl_io_gpio_writeEnable;
  wire       [31:0]   axi_gpioBCtrl_io_value;
  wire                axi_timerCtrl_io_apb_PREADY;
  wire       [31:0]   axi_timerCtrl_io_apb_PRDATA;
  wire                axi_timerCtrl_io_apb_PSLVERROR;
  wire                axi_timerCtrl_io_interrupt;
  wire                axi_uartCtrl_io_apb_PREADY;
  wire       [31:0]   axi_uartCtrl_io_apb_PRDATA;
  wire                axi_uartCtrl_io_uart_txd;
  wire                axi_uartCtrl_io_interrupt;
  wire                axi_vgaCtrl_io_axi_ar_valid;
  wire       [31:0]   axi_vgaCtrl_io_axi_ar_payload_addr;
  wire       [7:0]    axi_vgaCtrl_io_axi_ar_payload_len;
  wire       [2:0]    axi_vgaCtrl_io_axi_ar_payload_size;
  wire       [3:0]    axi_vgaCtrl_io_axi_ar_payload_cache;
  wire       [2:0]    axi_vgaCtrl_io_axi_ar_payload_prot;
  wire                axi_vgaCtrl_io_axi_r_ready;
  wire                axi_vgaCtrl_io_apb_PREADY;
  wire       [31:0]   axi_vgaCtrl_io_apb_PRDATA;
  wire                axi_vgaCtrl_io_vga_vSync;
  wire                axi_vgaCtrl_io_vga_hSync;
  wire                axi_vgaCtrl_io_vga_colorEn;
  wire       [4:0]    axi_vgaCtrl_io_vga_color_r;
  wire       [5:0]    axi_vgaCtrl_io_vga_color_g;
  wire       [4:0]    axi_vgaCtrl_io_vga_color_b;
  wire                axi_core_cpu_debug_bus_cmd_ready;
  wire       [31:0]   axi_core_cpu_debug_bus_rsp_data;
  wire                axi_core_cpu_debug_resetOut;
  wire                axi_core_cpu_iBus_cmd_valid;
  wire       [31:0]   axi_core_cpu_iBus_cmd_payload_address;
  wire       [2:0]    axi_core_cpu_iBus_cmd_payload_size;
  wire                axi_core_cpu_dBus_cmd_valid;
  wire                axi_core_cpu_dBus_cmd_payload_wr;
  wire       [31:0]   axi_core_cpu_dBus_cmd_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_payload_length;
  wire                axi_core_cpu_dBus_cmd_payload_last;
  wire                streamFork_4__io_input_ready;
  wire                streamFork_4__io_outputs_0_valid;
  wire                streamFork_4__io_outputs_0_payload_wr;
  wire       [31:0]   streamFork_4__io_outputs_0_payload_address;
  wire       [31:0]   streamFork_4__io_outputs_0_payload_data;
  wire       [3:0]    streamFork_4__io_outputs_0_payload_mask;
  wire       [2:0]    streamFork_4__io_outputs_0_payload_length;
  wire                streamFork_4__io_outputs_0_payload_last;
  wire                streamFork_4__io_outputs_1_valid;
  wire                streamFork_4__io_outputs_1_payload_wr;
  wire       [31:0]   streamFork_4__io_outputs_1_payload_address;
  wire       [31:0]   streamFork_4__io_outputs_1_payload_data;
  wire       [3:0]    streamFork_4__io_outputs_1_payload_mask;
  wire       [2:0]    streamFork_4__io_outputs_1_payload_length;
  wire                streamFork_4__io_outputs_1_payload_last;
  wire                io_coreInterrupt_buffercc_io_dataOut;
  wire                jtagBridge_1__io_jtag_tdo;
  wire                jtagBridge_1__io_remote_cmd_valid;
  wire                jtagBridge_1__io_remote_cmd_payload_last;
  wire       [0:0]    jtagBridge_1__io_remote_cmd_payload_fragment;
  wire                jtagBridge_1__io_remote_rsp_ready;
  wire                systemDebugger_1__io_remote_cmd_ready;
  wire                systemDebugger_1__io_remote_rsp_valid;
  wire                systemDebugger_1__io_remote_rsp_payload_error;
  wire       [31:0]   systemDebugger_1__io_remote_rsp_payload_data;
  wire                systemDebugger_1__io_mem_cmd_valid;
  wire       [31:0]   systemDebugger_1__io_mem_cmd_payload_address;
  wire       [31:0]   systemDebugger_1__io_mem_cmd_payload_data;
  wire                systemDebugger_1__io_mem_cmd_payload_wr;
  wire       [1:0]    systemDebugger_1__io_mem_cmd_payload_size;
  wire                axi4ReadOnlyDecoder_2__io_input_ar_ready;
  wire                axi4ReadOnlyDecoder_2__io_input_r_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_2__io_input_r_payload_data;
  wire       [1:0]    axi4ReadOnlyDecoder_2__io_input_r_payload_resp;
  wire                axi4ReadOnlyDecoder_2__io_input_r_payload_last;
  wire                axi4ReadOnlyDecoder_2__io_outputs_0_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_addr;
  wire       [7:0]    axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_len;
  wire       [1:0]    axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_burst;
  wire       [3:0]    axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_2__io_outputs_0_r_ready;
  wire                axi4ReadOnlyDecoder_2__io_outputs_1_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_addr;
  wire       [7:0]    axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_len;
  wire       [1:0]    axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_burst;
  wire       [3:0]    axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_2__io_outputs_1_r_ready;
  wire                axi4SharedDecoder_1__io_input_arw_ready;
  wire                axi4SharedDecoder_1__io_input_w_ready;
  wire                axi4SharedDecoder_1__io_input_b_valid;
  wire       [1:0]    axi4SharedDecoder_1__io_input_b_payload_resp;
  wire                axi4SharedDecoder_1__io_input_r_valid;
  wire       [31:0]   axi4SharedDecoder_1__io_input_r_payload_data;
  wire       [1:0]    axi4SharedDecoder_1__io_input_r_payload_resp;
  wire                axi4SharedDecoder_1__io_input_r_payload_last;
  wire                axi4SharedDecoder_1__io_sharedOutputs_0_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_addr;
  wire       [7:0]    axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_len;
  wire       [2:0]    axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_prot;
  wire                axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_write;
  wire                axi4SharedDecoder_1__io_sharedOutputs_0_w_valid;
  wire       [31:0]   axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_strb;
  wire                axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_last;
  wire                axi4SharedDecoder_1__io_sharedOutputs_0_b_ready;
  wire                axi4SharedDecoder_1__io_sharedOutputs_0_r_ready;
  wire                axi4SharedDecoder_1__io_sharedOutputs_1_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_addr;
  wire       [7:0]    axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_len;
  wire       [2:0]    axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_prot;
  wire                axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_write;
  wire                axi4SharedDecoder_1__io_sharedOutputs_1_w_valid;
  wire       [31:0]   axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_strb;
  wire                axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_last;
  wire                axi4SharedDecoder_1__io_sharedOutputs_1_b_ready;
  wire                axi4SharedDecoder_1__io_sharedOutputs_1_r_ready;
  wire                axi4SharedDecoder_1__io_sharedOutputs_2_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_addr;
  wire       [7:0]    axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_len;
  wire       [2:0]    axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_prot;
  wire                axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_write;
  wire                axi4SharedDecoder_1__io_sharedOutputs_2_w_valid;
  wire       [31:0]   axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_strb;
  wire                axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_last;
  wire                axi4SharedDecoder_1__io_sharedOutputs_2_b_ready;
  wire                axi4SharedDecoder_1__io_sharedOutputs_2_r_ready;
  wire                axi_vgaCtrl_io_axi_decoder_io_input_ar_ready;
  wire                axi_vgaCtrl_io_axi_decoder_io_input_r_valid;
  wire       [31:0]   axi_vgaCtrl_io_axi_decoder_io_input_r_payload_data;
  wire                axi_vgaCtrl_io_axi_decoder_io_input_r_payload_last;
  wire                axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_valid;
  wire       [31:0]   axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_addr;
  wire       [7:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_len;
  wire       [2:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_size;
  wire       [3:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_cache;
  wire       [2:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_prot;
  wire                axi_vgaCtrl_io_axi_decoder_io_outputs_0_r_ready;
  wire                axi_ram_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                axi_ram_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [2:0]    axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_ram_io_axi_arbiter_io_output_arw_valid;
  wire       [11:0]   axi_ram_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_ram_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_ram_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_ram_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_ram_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_ram_io_axi_arbiter_io_output_b_ready;
  wire                axi_ram_io_axi_arbiter_io_output_r_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_ar_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_data;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid;
  wire       [25:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_b_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_r_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_valid;
  wire       [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_apbBridge_io_axi_arbiter_io_output_b_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_output_r_ready;
  wire                io_apb_decoder_io_input_PREADY;
  wire       [31:0]   io_apb_decoder_io_input_PRDATA;
  wire                io_apb_decoder_io_input_PSLVERROR;
  wire       [19:0]   io_apb_decoder_io_output_PADDR;
  wire       [4:0]    io_apb_decoder_io_output_PSEL;
  wire                io_apb_decoder_io_output_PENABLE;
  wire                io_apb_decoder_io_output_PWRITE;
  wire       [31:0]   io_apb_decoder_io_output_PWDATA;
  wire                apb3Router_1__io_input_PREADY;
  wire       [31:0]   apb3Router_1__io_input_PRDATA;
  wire                apb3Router_1__io_input_PSLVERROR;
  wire       [19:0]   apb3Router_1__io_outputs_0_PADDR;
  wire       [0:0]    apb3Router_1__io_outputs_0_PSEL;
  wire                apb3Router_1__io_outputs_0_PENABLE;
  wire                apb3Router_1__io_outputs_0_PWRITE;
  wire       [31:0]   apb3Router_1__io_outputs_0_PWDATA;
  wire       [19:0]   apb3Router_1__io_outputs_1_PADDR;
  wire       [0:0]    apb3Router_1__io_outputs_1_PSEL;
  wire                apb3Router_1__io_outputs_1_PENABLE;
  wire                apb3Router_1__io_outputs_1_PWRITE;
  wire       [31:0]   apb3Router_1__io_outputs_1_PWDATA;
  wire       [19:0]   apb3Router_1__io_outputs_2_PADDR;
  wire       [0:0]    apb3Router_1__io_outputs_2_PSEL;
  wire                apb3Router_1__io_outputs_2_PENABLE;
  wire                apb3Router_1__io_outputs_2_PWRITE;
  wire       [31:0]   apb3Router_1__io_outputs_2_PWDATA;
  wire       [19:0]   apb3Router_1__io_outputs_3_PADDR;
  wire       [0:0]    apb3Router_1__io_outputs_3_PSEL;
  wire                apb3Router_1__io_outputs_3_PENABLE;
  wire                apb3Router_1__io_outputs_3_PWRITE;
  wire       [31:0]   apb3Router_1__io_outputs_3_PWDATA;
  wire       [19:0]   apb3Router_1__io_outputs_4_PADDR;
  wire       [0:0]    apb3Router_1__io_outputs_4_PSEL;
  wire                apb3Router_1__io_outputs_4_PENABLE;
  wire                apb3Router_1__io_outputs_4_PWRITE;
  wire       [31:0]   apb3Router_1__io_outputs_4_PWDATA;
  wire                _zz_79_;
  wire                _zz_80_;
  wire                _zz_81_;
  wire                _zz_82_;
  wire                _zz_83_;
  wire                _zz_84_;
  wire                _zz_85_;
  wire                _zz_86_;
  wire                _zz_87_;
  wire                _zz_88_;
  reg                 resetCtrl_systemResetUnbuffered;
  reg        [5:0]    resetCtrl_systemResetCounter = 6'h0;
  wire       [5:0]    _zz_1_;
  reg                 resetCtrl_systemReset;
  reg                 resetCtrl_axiReset;
  wire                resetCtrl_vgaReset;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_valid;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_ready;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_payload_wr;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_payload_length;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_payload_last;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_rValid;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_rData_wr;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_rData_address;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_rData_data;
  reg        [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_rData_mask;
  reg        [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_rData_length;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_rData_last;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_length;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_wr;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_address;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_data;
  reg        [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_mask;
  reg        [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_length;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_last;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_address;
  wire       [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_data;
  wire       [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_mask;
  wire       [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_length;
  wire                axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_last;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_wr;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_address;
  reg        [31:0]   axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_data;
  reg        [3:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_mask;
  reg        [2:0]    axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_length;
  reg                 axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_last;
  reg                 _zz_2_;
  reg                 _zz_3_;
  reg        [2:0]    _zz_4_;
  reg        [2:0]    _zz_5_;
  wire                _zz_6_;
  reg                 _zz_7_;
  reg                 streamFork_4__io_outputs_0_thrown_valid;
  wire                streamFork_4__io_outputs_0_thrown_ready;
  wire                streamFork_4__io_outputs_0_thrown_payload_wr;
  wire       [31:0]   streamFork_4__io_outputs_0_thrown_payload_address;
  wire       [31:0]   streamFork_4__io_outputs_0_thrown_payload_data;
  wire       [3:0]    streamFork_4__io_outputs_0_thrown_payload_mask;
  wire       [2:0]    streamFork_4__io_outputs_0_thrown_payload_length;
  wire                streamFork_4__io_outputs_0_thrown_payload_last;
  reg                 streamFork_4__io_outputs_1_thrown_valid;
  wire                streamFork_4__io_outputs_1_thrown_ready;
  wire                streamFork_4__io_outputs_1_thrown_payload_wr;
  wire       [31:0]   streamFork_4__io_outputs_1_thrown_payload_address;
  wire       [31:0]   streamFork_4__io_outputs_1_thrown_payload_data;
  wire       [3:0]    streamFork_4__io_outputs_1_thrown_payload_mask;
  wire       [2:0]    streamFork_4__io_outputs_1_thrown_payload_length;
  wire                streamFork_4__io_outputs_1_thrown_payload_last;
  reg                 axi_core_cpu_debug_resetOut_regNext;
  reg                 _zz_8_;
  wire                _zz_9_;
  wire                _zz_10_;
  reg                 _zz_11_;
  wire                _zz_12_;
  wire                _zz_13_;
  reg                 _zz_14_;
  wire                _zz_15_;
  wire                _zz_16_;
  reg                 _zz_17_;
  wire                _zz_18_;
  wire                _zz_19_;
  reg                 _zz_20_;
  wire                _zz_21_;
  wire                _zz_22_;
  reg                 _zz_23_;
  wire                axi4SharedDecoder_1__io_input_r_m2sPipe_valid;
  wire                axi4SharedDecoder_1__io_input_r_m2sPipe_ready;
  wire       [31:0]   axi4SharedDecoder_1__io_input_r_m2sPipe_payload_data;
  wire       [1:0]    axi4SharedDecoder_1__io_input_r_m2sPipe_payload_resp;
  wire                axi4SharedDecoder_1__io_input_r_m2sPipe_payload_last;
  reg                 axi4SharedDecoder_1__io_input_r_m2sPipe_rValid;
  reg        [31:0]   axi4SharedDecoder_1__io_input_r_m2sPipe_rData_data;
  reg        [1:0]    axi4SharedDecoder_1__io_input_r_m2sPipe_rData_resp;
  reg                 axi4SharedDecoder_1__io_input_r_m2sPipe_rData_last;
  wire                _zz_24_;
  wire                _zz_25_;
  reg                 _zz_26_;
  wire                axi_vgaCtrl_io_axi_ar_halfPipe_valid;
  wire                axi_vgaCtrl_io_axi_ar_halfPipe_ready;
  wire       [31:0]   axi_vgaCtrl_io_axi_ar_halfPipe_payload_addr;
  wire       [7:0]    axi_vgaCtrl_io_axi_ar_halfPipe_payload_len;
  wire       [2:0]    axi_vgaCtrl_io_axi_ar_halfPipe_payload_size;
  wire       [3:0]    axi_vgaCtrl_io_axi_ar_halfPipe_payload_cache;
  wire       [2:0]    axi_vgaCtrl_io_axi_ar_halfPipe_payload_prot;
  reg                 axi_vgaCtrl_io_axi_ar_halfPipe_regs_valid;
  reg                 axi_vgaCtrl_io_axi_ar_halfPipe_regs_ready;
  reg        [31:0]   axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_addr;
  reg        [7:0]    axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_len;
  reg        [2:0]    axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_size;
  reg        [3:0]    axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_cache;
  reg        [2:0]    axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_prot;
  wire       [2:0]    _zz_27_;
  wire       [2:0]    _zz_28_;
  wire                axi_ram_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_ram_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [11:0]   axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  reg                 axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready;
  reg        [11:0]   axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  reg        [3:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  reg        [7:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  reg        [2:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  reg        [1:0]    axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  reg                 axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  wire                axi_ram_io_axi_arbiter_io_output_w_s2mPipe_valid;
  wire                axi_ram_io_axi_arbiter_io_output_w_s2mPipe_ready;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
  wire       [3:0]    axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
  wire                axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
  reg                 axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  reg        [31:0]   axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  reg        [3:0]    axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  reg                 axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  wire                axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid;
  wire                axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb;
  wire                axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last;
  reg                 axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  reg        [31:0]   axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  reg        [3:0]    axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  reg                 axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  wire       [1:0]    _zz_29_;
  wire       [1:0]    _zz_30_;
  wire       [1:0]    _zz_31_;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [25:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready;
  reg        [25:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  reg        [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  reg        [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  reg        [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  reg        [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  reg        [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  wire       [3:0]    _zz_32_;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready;
  reg        [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  reg        [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  reg        [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  reg        [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  reg        [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready;
  reg        [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_data;
  reg        [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_strb;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_last;

  assign _zz_79_ = (resetCtrl_systemResetCounter != _zz_1_);
  assign _zz_80_ = (! streamFork_4__io_outputs_1_payload_wr);
  assign _zz_81_ = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready && (! axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready));
  assign _zz_82_ = (! axi_vgaCtrl_io_axi_ar_halfPipe_regs_valid);
  assign _zz_83_ = (! axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid);
  assign _zz_84_ = (_zz_67_ && (! axi_ram_io_axi_arbiter_io_output_w_s2mPipe_ready));
  assign _zz_85_ = (! axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid);
  assign _zz_86_ = (_zz_74_ && (! axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready));
  assign _zz_87_ = (! axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid);
  assign _zz_88_ = (! axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid);
  BufferCC_10_ io_asyncReset_buffercc ( 
    .io_dataIn     (io_asyncReset                      ), //i
    .io_dataOut    (io_asyncReset_buffercc_io_dataOut  ), //o
    .io_axiClk     (io_axiClk                          )  //i
  );
  BufferCC_10_ resetCtrl_axiReset_buffercc ( 
    .io_dataIn     (resetCtrl_axiReset                      ), //i
    .io_dataOut    (resetCtrl_axiReset_buffercc_io_dataOut  ), //o
    .io_axiClk     (io_axiClk                               )  //i
  );
  Axi4SharedOnChipRam axi_ram ( 
    .io_axi_arw_valid            (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_valid                    ), //i
    .io_axi_arw_ready            (axi_ram_io_axi_arw_ready                                               ), //o
    .io_axi_arw_payload_addr     (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr[11:0]       ), //i
    .io_axi_arw_payload_id       (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_id[3:0]          ), //i
    .io_axi_arw_payload_len      (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_len[7:0]         ), //i
    .io_axi_arw_payload_size     (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_size[2:0]        ), //i
    .io_axi_arw_payload_burst    (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst[1:0]       ), //i
    .io_axi_arw_payload_write    (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_write            ), //i
    .io_axi_w_valid              (axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid               ), //i
    .io_axi_w_ready              (axi_ram_io_axi_w_ready                                                 ), //o
    .io_axi_w_payload_data       (axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data[31:0]  ), //i
    .io_axi_w_payload_strb       (axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb[3:0]   ), //i
    .io_axi_w_payload_last       (axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last        ), //i
    .io_axi_b_valid              (axi_ram_io_axi_b_valid                                                 ), //o
    .io_axi_b_ready              (axi_ram_io_axi_arbiter_io_output_b_ready                               ), //i
    .io_axi_b_payload_id         (axi_ram_io_axi_b_payload_id[3:0]                                       ), //o
    .io_axi_b_payload_resp       (axi_ram_io_axi_b_payload_resp[1:0]                                     ), //o
    .io_axi_r_valid              (axi_ram_io_axi_r_valid                                                 ), //o
    .io_axi_r_ready              (axi_ram_io_axi_arbiter_io_output_r_ready                               ), //i
    .io_axi_r_payload_data       (axi_ram_io_axi_r_payload_data[31:0]                                    ), //o
    .io_axi_r_payload_id         (axi_ram_io_axi_r_payload_id[3:0]                                       ), //o
    .io_axi_r_payload_resp       (axi_ram_io_axi_r_payload_resp[1:0]                                     ), //o
    .io_axi_r_payload_last       (axi_ram_io_axi_r_payload_last                                          ), //o
    .io_axiClk                   (io_axiClk                                                              ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                     )  //i
  );
  Axi4SharedSdramCtrl axi_sdramCtrl ( 
    .io_axi_arw_valid            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid                    ), //i
    .io_axi_arw_ready            (axi_sdramCtrl_io_axi_arw_ready                                               ), //o
    .io_axi_arw_payload_addr     (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr[25:0]       ), //i
    .io_axi_arw_payload_id       (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id[3:0]          ), //i
    .io_axi_arw_payload_len      (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len[7:0]         ), //i
    .io_axi_arw_payload_size     (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size[2:0]        ), //i
    .io_axi_arw_payload_burst    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst[1:0]       ), //i
    .io_axi_arw_payload_write    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write            ), //i
    .io_axi_w_valid              (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid               ), //i
    .io_axi_w_ready              (axi_sdramCtrl_io_axi_w_ready                                                 ), //o
    .io_axi_w_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data[31:0]  ), //i
    .io_axi_w_payload_strb       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb[3:0]   ), //i
    .io_axi_w_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last        ), //i
    .io_axi_b_valid              (axi_sdramCtrl_io_axi_b_valid                                                 ), //o
    .io_axi_b_ready              (axi_sdramCtrl_io_axi_arbiter_io_output_b_ready                               ), //i
    .io_axi_b_payload_id         (axi_sdramCtrl_io_axi_b_payload_id[3:0]                                       ), //o
    .io_axi_b_payload_resp       (axi_sdramCtrl_io_axi_b_payload_resp[1:0]                                     ), //o
    .io_axi_r_valid              (axi_sdramCtrl_io_axi_r_valid                                                 ), //o
    .io_axi_r_ready              (axi_sdramCtrl_io_axi_arbiter_io_output_r_ready                               ), //i
    .io_axi_r_payload_data       (axi_sdramCtrl_io_axi_r_payload_data[31:0]                                    ), //o
    .io_axi_r_payload_id         (axi_sdramCtrl_io_axi_r_payload_id[3:0]                                       ), //o
    .io_axi_r_payload_resp       (axi_sdramCtrl_io_axi_r_payload_resp[1:0]                                     ), //o
    .io_axi_r_payload_last       (axi_sdramCtrl_io_axi_r_payload_last                                          ), //o
    .io_sdram_ADDR               (axi_sdramCtrl_io_sdram_ADDR[12:0]                                            ), //o
    .io_sdram_BA                 (axi_sdramCtrl_io_sdram_BA[1:0]                                               ), //o
    .io_sdram_DQ_read            (io_sdram_DQ_read[15:0]                                                       ), //i
    .io_sdram_DQ_write           (axi_sdramCtrl_io_sdram_DQ_write[15:0]                                        ), //o
    .io_sdram_DQ_writeEnable     (axi_sdramCtrl_io_sdram_DQ_writeEnable[15:0]                                  ), //o
    .io_sdram_DQM                (axi_sdramCtrl_io_sdram_DQM[1:0]                                              ), //o
    .io_sdram_CASn               (axi_sdramCtrl_io_sdram_CASn                                                  ), //o
    .io_sdram_CKE                (axi_sdramCtrl_io_sdram_CKE                                                   ), //o
    .io_sdram_CSn                (axi_sdramCtrl_io_sdram_CSn                                                   ), //o
    .io_sdram_RASn               (axi_sdramCtrl_io_sdram_RASn                                                  ), //o
    .io_sdram_WEn                (axi_sdramCtrl_io_sdram_WEn                                                   ), //o
    .io_axiClk                   (io_axiClk                                                                    ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                           )  //i
  );
  Axi4SharedToApb3Bridge axi_apbBridge ( 
    .io_axi_arw_valid            (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid               ), //i
    .io_axi_arw_ready            (axi_apbBridge_io_axi_arw_ready                                          ), //o
    .io_axi_arw_payload_addr     (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr[19:0]  ), //i
    .io_axi_arw_payload_id       (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id[3:0]     ), //i
    .io_axi_arw_payload_len      (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len[7:0]    ), //i
    .io_axi_arw_payload_size     (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size[2:0]   ), //i
    .io_axi_arw_payload_burst    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst[1:0]  ), //i
    .io_axi_arw_payload_write    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write       ), //i
    .io_axi_w_valid              (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid                 ), //i
    .io_axi_w_ready              (axi_apbBridge_io_axi_w_ready                                            ), //o
    .io_axi_w_payload_data       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data[31:0]    ), //i
    .io_axi_w_payload_strb       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb[3:0]     ), //i
    .io_axi_w_payload_last       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last          ), //i
    .io_axi_b_valid              (axi_apbBridge_io_axi_b_valid                                            ), //o
    .io_axi_b_ready              (axi_apbBridge_io_axi_arbiter_io_output_b_ready                          ), //i
    .io_axi_b_payload_id         (axi_apbBridge_io_axi_b_payload_id[3:0]                                  ), //o
    .io_axi_b_payload_resp       (axi_apbBridge_io_axi_b_payload_resp[1:0]                                ), //o
    .io_axi_r_valid              (axi_apbBridge_io_axi_r_valid                                            ), //o
    .io_axi_r_ready              (axi_apbBridge_io_axi_arbiter_io_output_r_ready                          ), //i
    .io_axi_r_payload_data       (axi_apbBridge_io_axi_r_payload_data[31:0]                               ), //o
    .io_axi_r_payload_id         (axi_apbBridge_io_axi_r_payload_id[3:0]                                  ), //o
    .io_axi_r_payload_resp       (axi_apbBridge_io_axi_r_payload_resp[1:0]                                ), //o
    .io_axi_r_payload_last       (axi_apbBridge_io_axi_r_payload_last                                     ), //o
    .io_apb_PADDR                (axi_apbBridge_io_apb_PADDR[19:0]                                        ), //o
    .io_apb_PSEL                 (axi_apbBridge_io_apb_PSEL                                               ), //o
    .io_apb_PENABLE              (axi_apbBridge_io_apb_PENABLE                                            ), //o
    .io_apb_PREADY               (io_apb_decoder_io_input_PREADY                                          ), //i
    .io_apb_PWRITE               (axi_apbBridge_io_apb_PWRITE                                             ), //o
    .io_apb_PWDATA               (axi_apbBridge_io_apb_PWDATA[31:0]                                       ), //o
    .io_apb_PRDATA               (io_apb_decoder_io_input_PRDATA[31:0]                                    ), //i
    .io_apb_PSLVERROR            (io_apb_decoder_io_input_PSLVERROR                                       ), //i
    .io_axiClk                   (io_axiClk                                                               ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                      )  //i
  );
  Apb3Gpio axi_gpioACtrl ( 
    .io_apb_PADDR           (_zz_33_[3:0]                             ), //i
    .io_apb_PSEL            (apb3Router_1__io_outputs_0_PSEL          ), //i
    .io_apb_PENABLE         (apb3Router_1__io_outputs_0_PENABLE       ), //i
    .io_apb_PREADY          (axi_gpioACtrl_io_apb_PREADY              ), //o
    .io_apb_PWRITE          (apb3Router_1__io_outputs_0_PWRITE        ), //i
    .io_apb_PWDATA          (apb3Router_1__io_outputs_0_PWDATA[31:0]  ), //i
    .io_apb_PRDATA          (axi_gpioACtrl_io_apb_PRDATA[31:0]        ), //o
    .io_apb_PSLVERROR       (axi_gpioACtrl_io_apb_PSLVERROR           ), //o
    .io_gpio_read           (io_gpioA_read[31:0]                      ), //i
    .io_gpio_write          (axi_gpioACtrl_io_gpio_write[31:0]        ), //o
    .io_gpio_writeEnable    (axi_gpioACtrl_io_gpio_writeEnable[31:0]  ), //o
    .io_value               (axi_gpioACtrl_io_value[31:0]             ), //o
    .io_axiClk              (io_axiClk                                ), //i
    .resetCtrl_axiReset     (resetCtrl_axiReset                       )  //i
  );
  Apb3Gpio axi_gpioBCtrl ( 
    .io_apb_PADDR           (_zz_34_[3:0]                             ), //i
    .io_apb_PSEL            (apb3Router_1__io_outputs_1_PSEL          ), //i
    .io_apb_PENABLE         (apb3Router_1__io_outputs_1_PENABLE       ), //i
    .io_apb_PREADY          (axi_gpioBCtrl_io_apb_PREADY              ), //o
    .io_apb_PWRITE          (apb3Router_1__io_outputs_1_PWRITE        ), //i
    .io_apb_PWDATA          (apb3Router_1__io_outputs_1_PWDATA[31:0]  ), //i
    .io_apb_PRDATA          (axi_gpioBCtrl_io_apb_PRDATA[31:0]        ), //o
    .io_apb_PSLVERROR       (axi_gpioBCtrl_io_apb_PSLVERROR           ), //o
    .io_gpio_read           (io_gpioB_read[31:0]                      ), //i
    .io_gpio_write          (axi_gpioBCtrl_io_gpio_write[31:0]        ), //o
    .io_gpio_writeEnable    (axi_gpioBCtrl_io_gpio_writeEnable[31:0]  ), //o
    .io_value               (axi_gpioBCtrl_io_value[31:0]             ), //o
    .io_axiClk              (io_axiClk                                ), //i
    .resetCtrl_axiReset     (resetCtrl_axiReset                       )  //i
  );
  PinsecTimerCtrl axi_timerCtrl ( 
    .io_apb_PADDR          (_zz_35_[7:0]                             ), //i
    .io_apb_PSEL           (apb3Router_1__io_outputs_3_PSEL          ), //i
    .io_apb_PENABLE        (apb3Router_1__io_outputs_3_PENABLE       ), //i
    .io_apb_PREADY         (axi_timerCtrl_io_apb_PREADY              ), //o
    .io_apb_PWRITE         (apb3Router_1__io_outputs_3_PWRITE        ), //i
    .io_apb_PWDATA         (apb3Router_1__io_outputs_3_PWDATA[31:0]  ), //i
    .io_apb_PRDATA         (axi_timerCtrl_io_apb_PRDATA[31:0]        ), //o
    .io_apb_PSLVERROR      (axi_timerCtrl_io_apb_PSLVERROR           ), //o
    .io_external_clear     (io_timerExternal_clear                   ), //i
    .io_external_tick      (io_timerExternal_tick                    ), //i
    .io_interrupt          (axi_timerCtrl_io_interrupt               ), //o
    .io_axiClk             (io_axiClk                                ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                       )  //i
  );
  Apb3UartCtrl axi_uartCtrl ( 
    .io_apb_PADDR          (_zz_36_[4:0]                             ), //i
    .io_apb_PSEL           (apb3Router_1__io_outputs_2_PSEL          ), //i
    .io_apb_PENABLE        (apb3Router_1__io_outputs_2_PENABLE       ), //i
    .io_apb_PREADY         (axi_uartCtrl_io_apb_PREADY               ), //o
    .io_apb_PWRITE         (apb3Router_1__io_outputs_2_PWRITE        ), //i
    .io_apb_PWDATA         (apb3Router_1__io_outputs_2_PWDATA[31:0]  ), //i
    .io_apb_PRDATA         (axi_uartCtrl_io_apb_PRDATA[31:0]         ), //o
    .io_uart_txd           (axi_uartCtrl_io_uart_txd                 ), //o
    .io_uart_rxd           (io_uart_rxd                              ), //i
    .io_interrupt          (axi_uartCtrl_io_interrupt                ), //o
    .io_axiClk             (io_axiClk                                ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                       )  //i
  );
  Axi4VgaCtrl axi_vgaCtrl ( 
    .io_axi_ar_valid            (axi_vgaCtrl_io_axi_ar_valid                               ), //o
    .io_axi_ar_ready            (axi_vgaCtrl_io_axi_ar_halfPipe_regs_ready                 ), //i
    .io_axi_ar_payload_addr     (axi_vgaCtrl_io_axi_ar_payload_addr[31:0]                  ), //o
    .io_axi_ar_payload_len      (axi_vgaCtrl_io_axi_ar_payload_len[7:0]                    ), //o
    .io_axi_ar_payload_size     (axi_vgaCtrl_io_axi_ar_payload_size[2:0]                   ), //o
    .io_axi_ar_payload_cache    (axi_vgaCtrl_io_axi_ar_payload_cache[3:0]                  ), //o
    .io_axi_ar_payload_prot     (axi_vgaCtrl_io_axi_ar_payload_prot[2:0]                   ), //o
    .io_axi_r_valid             (axi_vgaCtrl_io_axi_decoder_io_input_r_valid               ), //i
    .io_axi_r_ready             (axi_vgaCtrl_io_axi_r_ready                                ), //o
    .io_axi_r_payload_data      (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_data[31:0]  ), //i
    .io_axi_r_payload_last      (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_last        ), //i
    .io_apb_PADDR               (_zz_37_[7:0]                                              ), //i
    .io_apb_PSEL                (apb3Router_1__io_outputs_4_PSEL                           ), //i
    .io_apb_PENABLE             (apb3Router_1__io_outputs_4_PENABLE                        ), //i
    .io_apb_PREADY              (axi_vgaCtrl_io_apb_PREADY                                 ), //o
    .io_apb_PWRITE              (apb3Router_1__io_outputs_4_PWRITE                         ), //i
    .io_apb_PWDATA              (apb3Router_1__io_outputs_4_PWDATA[31:0]                   ), //i
    .io_apb_PRDATA              (axi_vgaCtrl_io_apb_PRDATA[31:0]                           ), //o
    .io_vga_vSync               (axi_vgaCtrl_io_vga_vSync                                  ), //o
    .io_vga_hSync               (axi_vgaCtrl_io_vga_hSync                                  ), //o
    .io_vga_colorEn             (axi_vgaCtrl_io_vga_colorEn                                ), //o
    .io_vga_color_r             (axi_vgaCtrl_io_vga_color_r[4:0]                           ), //o
    .io_vga_color_g             (axi_vgaCtrl_io_vga_color_g[5:0]                           ), //o
    .io_vga_color_b             (axi_vgaCtrl_io_vga_color_b[4:0]                           ), //o
    .io_axiClk                  (io_axiClk                                                 ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                                        ), //i
    .io_vgaClk                  (io_vgaClk                                                 ), //i
    .resetCtrl_vgaReset         (resetCtrl_vgaReset                                        )  //i
  );
  VexRiscv axi_core_cpu ( 
    .timerInterrupt                   (axi_timerCtrl_io_interrupt                                  ), //i
    .externalInterrupt                (io_coreInterrupt_buffercc_io_dataOut                        ), //i
    .softwareInterrupt                (_zz_38_                                                     ), //i
    .debug_bus_cmd_valid              (systemDebugger_1__io_mem_cmd_valid                          ), //i
    .debug_bus_cmd_ready              (axi_core_cpu_debug_bus_cmd_ready                            ), //o
    .debug_bus_cmd_payload_wr         (systemDebugger_1__io_mem_cmd_payload_wr                     ), //i
    .debug_bus_cmd_payload_address    (_zz_39_[7:0]                                                ), //i
    .debug_bus_cmd_payload_data       (systemDebugger_1__io_mem_cmd_payload_data[31:0]             ), //i
    .debug_bus_rsp_data               (axi_core_cpu_debug_bus_rsp_data[31:0]                       ), //o
    .debug_resetOut                   (axi_core_cpu_debug_resetOut                                 ), //o
    .iBus_cmd_valid                   (axi_core_cpu_iBus_cmd_valid                                 ), //o
    .iBus_cmd_ready                   (axi4ReadOnlyDecoder_2__io_input_ar_ready                    ), //i
    .iBus_cmd_payload_address         (axi_core_cpu_iBus_cmd_payload_address[31:0]                 ), //o
    .iBus_cmd_payload_size            (axi_core_cpu_iBus_cmd_payload_size[2:0]                     ), //o
    .iBus_rsp_valid                   (axi4ReadOnlyDecoder_2__io_input_r_valid                     ), //i
    .iBus_rsp_payload_data            (axi4ReadOnlyDecoder_2__io_input_r_payload_data[31:0]        ), //i
    .iBus_rsp_payload_error           (_zz_40_                                                     ), //i
    .dBus_cmd_valid                   (axi_core_cpu_dBus_cmd_valid                                 ), //o
    .dBus_cmd_ready                   (_zz_41_                                                     ), //i
    .dBus_cmd_payload_wr              (axi_core_cpu_dBus_cmd_payload_wr                            ), //o
    .dBus_cmd_payload_address         (axi_core_cpu_dBus_cmd_payload_address[31:0]                 ), //o
    .dBus_cmd_payload_data            (axi_core_cpu_dBus_cmd_payload_data[31:0]                    ), //o
    .dBus_cmd_payload_mask            (axi_core_cpu_dBus_cmd_payload_mask[3:0]                     ), //o
    .dBus_cmd_payload_length          (axi_core_cpu_dBus_cmd_payload_length[2:0]                   ), //o
    .dBus_cmd_payload_last            (axi_core_cpu_dBus_cmd_payload_last                          ), //o
    .dBus_rsp_valid                   (axi4SharedDecoder_1__io_input_r_m2sPipe_valid               ), //i
    .dBus_rsp_payload_data            (axi4SharedDecoder_1__io_input_r_m2sPipe_payload_data[31:0]  ), //i
    .dBus_rsp_payload_error           (_zz_42_                                                     ), //i
    .io_axiClk                        (io_axiClk                                                   ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                                          ), //i
    .resetCtrl_systemReset            (resetCtrl_systemReset                                       )  //i
  );
  StreamFork_3_ streamFork_4_ ( 
    .io_input_valid                  (_zz_43_                                                              ), //i
    .io_input_ready                  (streamFork_4__io_input_ready                                         ), //o
    .io_input_payload_wr             (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr             ), //i
    .io_input_payload_address        (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_address[31:0]  ), //i
    .io_input_payload_data           (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_data[31:0]     ), //i
    .io_input_payload_mask           (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_mask[3:0]      ), //i
    .io_input_payload_length         (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_length[2:0]    ), //i
    .io_input_payload_last           (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_last           ), //i
    .io_outputs_0_valid              (streamFork_4__io_outputs_0_valid                                     ), //o
    .io_outputs_0_ready              (_zz_44_                                                              ), //i
    .io_outputs_0_payload_wr         (streamFork_4__io_outputs_0_payload_wr                                ), //o
    .io_outputs_0_payload_address    (streamFork_4__io_outputs_0_payload_address[31:0]                     ), //o
    .io_outputs_0_payload_data       (streamFork_4__io_outputs_0_payload_data[31:0]                        ), //o
    .io_outputs_0_payload_mask       (streamFork_4__io_outputs_0_payload_mask[3:0]                         ), //o
    .io_outputs_0_payload_length     (streamFork_4__io_outputs_0_payload_length[2:0]                       ), //o
    .io_outputs_0_payload_last       (streamFork_4__io_outputs_0_payload_last                              ), //o
    .io_outputs_1_valid              (streamFork_4__io_outputs_1_valid                                     ), //o
    .io_outputs_1_ready              (_zz_45_                                                              ), //i
    .io_outputs_1_payload_wr         (streamFork_4__io_outputs_1_payload_wr                                ), //o
    .io_outputs_1_payload_address    (streamFork_4__io_outputs_1_payload_address[31:0]                     ), //o
    .io_outputs_1_payload_data       (streamFork_4__io_outputs_1_payload_data[31:0]                        ), //o
    .io_outputs_1_payload_mask       (streamFork_4__io_outputs_1_payload_mask[3:0]                         ), //o
    .io_outputs_1_payload_length     (streamFork_4__io_outputs_1_payload_length[2:0]                       ), //o
    .io_outputs_1_payload_last       (streamFork_4__io_outputs_1_payload_last                              ), //o
    .io_axiClk                       (io_axiClk                                                            ), //i
    .resetCtrl_axiReset              (resetCtrl_axiReset                                                   )  //i
  );
  BufferCC_12_ io_coreInterrupt_buffercc ( 
    .io_dataIn             (io_coreInterrupt                      ), //i
    .io_dataOut            (io_coreInterrupt_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                             ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                    )  //i
  );
  JtagBridge jtagBridge_1_ ( 
    .io_jtag_tms                       (io_jtag_tms                                         ), //i
    .io_jtag_tdi                       (io_jtag_tdi                                         ), //i
    .io_jtag_tdo                       (jtagBridge_1__io_jtag_tdo                           ), //o
    .io_jtag_tck                       (io_jtag_tck                                         ), //i
    .io_remote_cmd_valid               (jtagBridge_1__io_remote_cmd_valid                   ), //o
    .io_remote_cmd_ready               (systemDebugger_1__io_remote_cmd_ready               ), //i
    .io_remote_cmd_payload_last        (jtagBridge_1__io_remote_cmd_payload_last            ), //o
    .io_remote_cmd_payload_fragment    (jtagBridge_1__io_remote_cmd_payload_fragment        ), //o
    .io_remote_rsp_valid               (systemDebugger_1__io_remote_rsp_valid               ), //i
    .io_remote_rsp_ready               (jtagBridge_1__io_remote_rsp_ready                   ), //o
    .io_remote_rsp_payload_error       (systemDebugger_1__io_remote_rsp_payload_error       ), //i
    .io_remote_rsp_payload_data        (systemDebugger_1__io_remote_rsp_payload_data[31:0]  ), //i
    .io_axiClk                         (io_axiClk                                           ), //i
    .resetCtrl_systemReset             (resetCtrl_systemReset                               )  //i
  );
  SystemDebugger systemDebugger_1_ ( 
    .io_remote_cmd_valid               (jtagBridge_1__io_remote_cmd_valid                   ), //i
    .io_remote_cmd_ready               (systemDebugger_1__io_remote_cmd_ready               ), //o
    .io_remote_cmd_payload_last        (jtagBridge_1__io_remote_cmd_payload_last            ), //i
    .io_remote_cmd_payload_fragment    (jtagBridge_1__io_remote_cmd_payload_fragment        ), //i
    .io_remote_rsp_valid               (systemDebugger_1__io_remote_rsp_valid               ), //o
    .io_remote_rsp_ready               (jtagBridge_1__io_remote_rsp_ready                   ), //i
    .io_remote_rsp_payload_error       (systemDebugger_1__io_remote_rsp_payload_error       ), //o
    .io_remote_rsp_payload_data        (systemDebugger_1__io_remote_rsp_payload_data[31:0]  ), //o
    .io_mem_cmd_valid                  (systemDebugger_1__io_mem_cmd_valid                  ), //o
    .io_mem_cmd_ready                  (axi_core_cpu_debug_bus_cmd_ready                    ), //i
    .io_mem_cmd_payload_address        (systemDebugger_1__io_mem_cmd_payload_address[31:0]  ), //o
    .io_mem_cmd_payload_data           (systemDebugger_1__io_mem_cmd_payload_data[31:0]     ), //o
    .io_mem_cmd_payload_wr             (systemDebugger_1__io_mem_cmd_payload_wr             ), //o
    .io_mem_cmd_payload_size           (systemDebugger_1__io_mem_cmd_payload_size[1:0]      ), //o
    .io_mem_rsp_valid                  (_zz_8_                                              ), //i
    .io_mem_rsp_payload                (axi_core_cpu_debug_bus_rsp_data[31:0]               ), //i
    .io_axiClk                         (io_axiClk                                           ), //i
    .resetCtrl_systemReset             (resetCtrl_systemReset                               )  //i
  );
  Axi4ReadOnlyDecoder axi4ReadOnlyDecoder_2_ ( 
    .io_input_ar_valid                (axi_core_cpu_iBus_cmd_valid                                        ), //i
    .io_input_ar_ready                (axi4ReadOnlyDecoder_2__io_input_ar_ready                           ), //o
    .io_input_ar_payload_addr         (axi_core_cpu_iBus_cmd_payload_address[31:0]                        ), //i
    .io_input_ar_payload_len          (_zz_46_[7:0]                                                       ), //i
    .io_input_ar_payload_burst        (_zz_47_[1:0]                                                       ), //i
    .io_input_ar_payload_cache        (_zz_48_[3:0]                                                       ), //i
    .io_input_ar_payload_prot         (_zz_49_[2:0]                                                       ), //i
    .io_input_r_valid                 (axi4ReadOnlyDecoder_2__io_input_r_valid                            ), //o
    .io_input_r_ready                 (_zz_50_                                                            ), //i
    .io_input_r_payload_data          (axi4ReadOnlyDecoder_2__io_input_r_payload_data[31:0]               ), //o
    .io_input_r_payload_resp          (axi4ReadOnlyDecoder_2__io_input_r_payload_resp[1:0]                ), //o
    .io_input_r_payload_last          (axi4ReadOnlyDecoder_2__io_input_r_payload_last                     ), //o
    .io_outputs_0_ar_valid            (axi4ReadOnlyDecoder_2__io_outputs_0_ar_valid                       ), //o
    .io_outputs_0_ar_ready            (_zz_51_                                                            ), //i
    .io_outputs_0_ar_payload_addr     (axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_addr[31:0]          ), //o
    .io_outputs_0_ar_payload_len      (axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_len[7:0]            ), //o
    .io_outputs_0_ar_payload_burst    (axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_burst[1:0]          ), //o
    .io_outputs_0_ar_payload_cache    (axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_cache[3:0]          ), //o
    .io_outputs_0_ar_payload_prot     (axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_prot[2:0]           ), //o
    .io_outputs_0_r_valid             (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid               ), //i
    .io_outputs_0_r_ready             (axi4ReadOnlyDecoder_2__io_outputs_0_r_ready                        ), //o
    .io_outputs_0_r_payload_data      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]  ), //i
    .io_outputs_0_r_payload_resp      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]   ), //i
    .io_outputs_0_r_payload_last      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last        ), //i
    .io_outputs_1_ar_valid            (axi4ReadOnlyDecoder_2__io_outputs_1_ar_valid                       ), //o
    .io_outputs_1_ar_ready            (_zz_52_                                                            ), //i
    .io_outputs_1_ar_payload_addr     (axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_addr[31:0]          ), //o
    .io_outputs_1_ar_payload_len      (axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_len[7:0]            ), //o
    .io_outputs_1_ar_payload_burst    (axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_burst[1:0]          ), //o
    .io_outputs_1_ar_payload_cache    (axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_cache[3:0]          ), //o
    .io_outputs_1_ar_payload_prot     (axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_prot[2:0]           ), //o
    .io_outputs_1_r_valid             (axi_ram_io_axi_arbiter_io_readInputs_0_r_valid                     ), //i
    .io_outputs_1_r_ready             (axi4ReadOnlyDecoder_2__io_outputs_1_r_ready                        ), //o
    .io_outputs_1_r_payload_data      (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]        ), //i
    .io_outputs_1_r_payload_resp      (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]         ), //i
    .io_outputs_1_r_payload_last      (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_last              ), //i
    .io_axiClk                        (io_axiClk                                                          ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                                                 )  //i
  );
  Axi4SharedDecoder axi4SharedDecoder_1_ ( 
    .io_input_arw_valid                      (streamFork_4__io_outputs_0_thrown_valid                              ), //i
    .io_input_arw_ready                      (axi4SharedDecoder_1__io_input_arw_ready                              ), //o
    .io_input_arw_payload_addr               (streamFork_4__io_outputs_0_thrown_payload_address[31:0]              ), //i
    .io_input_arw_payload_len                (_zz_53_[7:0]                                                         ), //i
    .io_input_arw_payload_size               (_zz_54_[2:0]                                                         ), //i
    .io_input_arw_payload_cache              (_zz_55_[3:0]                                                         ), //i
    .io_input_arw_payload_prot               (_zz_56_[2:0]                                                         ), //i
    .io_input_arw_payload_write              (streamFork_4__io_outputs_0_thrown_payload_wr                         ), //i
    .io_input_w_valid                        (streamFork_4__io_outputs_1_thrown_valid                              ), //i
    .io_input_w_ready                        (axi4SharedDecoder_1__io_input_w_ready                                ), //o
    .io_input_w_payload_data                 (streamFork_4__io_outputs_1_thrown_payload_data[31:0]                 ), //i
    .io_input_w_payload_strb                 (streamFork_4__io_outputs_1_thrown_payload_mask[3:0]                  ), //i
    .io_input_w_payload_last                 (streamFork_4__io_outputs_1_thrown_payload_last                       ), //i
    .io_input_b_valid                        (axi4SharedDecoder_1__io_input_b_valid                                ), //o
    .io_input_b_ready                        (_zz_57_                                                              ), //i
    .io_input_b_payload_resp                 (axi4SharedDecoder_1__io_input_b_payload_resp[1:0]                    ), //o
    .io_input_r_valid                        (axi4SharedDecoder_1__io_input_r_valid                                ), //o
    .io_input_r_ready                        (_zz_58_                                                              ), //i
    .io_input_r_payload_data                 (axi4SharedDecoder_1__io_input_r_payload_data[31:0]                   ), //o
    .io_input_r_payload_resp                 (axi4SharedDecoder_1__io_input_r_payload_resp[1:0]                    ), //o
    .io_input_r_payload_last                 (axi4SharedDecoder_1__io_input_r_payload_last                         ), //o
    .io_sharedOutputs_0_arw_valid            (axi4SharedDecoder_1__io_sharedOutputs_0_arw_valid                    ), //o
    .io_sharedOutputs_0_arw_ready            (_zz_59_                                                              ), //i
    .io_sharedOutputs_0_arw_payload_addr     (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_0_arw_payload_len      (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_len[7:0]         ), //o
    .io_sharedOutputs_0_arw_payload_size     (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_0_arw_payload_cache    (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_0_arw_payload_prot     (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_0_arw_payload_write    (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_write            ), //o
    .io_sharedOutputs_0_w_valid              (axi4SharedDecoder_1__io_sharedOutputs_0_w_valid                      ), //o
    .io_sharedOutputs_0_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_0_w_payload_data       (axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_0_w_payload_strb       (axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_0_w_payload_last       (axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_last               ), //o
    .io_sharedOutputs_0_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_0_b_ready              (axi4SharedDecoder_1__io_sharedOutputs_0_b_ready                      ), //o
    .io_sharedOutputs_0_b_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //i
    .io_sharedOutputs_0_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_0_r_ready              (axi4SharedDecoder_1__io_sharedOutputs_0_r_ready                      ), //o
    .io_sharedOutputs_0_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_0_r_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //i
    .io_sharedOutputs_0_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_sharedOutputs_1_arw_valid            (axi4SharedDecoder_1__io_sharedOutputs_1_arw_valid                    ), //o
    .io_sharedOutputs_1_arw_ready            (_zz_60_                                                              ), //i
    .io_sharedOutputs_1_arw_payload_addr     (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_1_arw_payload_len      (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_len[7:0]         ), //o
    .io_sharedOutputs_1_arw_payload_size     (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_1_arw_payload_cache    (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_1_arw_payload_prot     (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_1_arw_payload_write    (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_write            ), //o
    .io_sharedOutputs_1_w_valid              (axi4SharedDecoder_1__io_sharedOutputs_1_w_valid                      ), //o
    .io_sharedOutputs_1_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_1_w_payload_data       (axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_1_w_payload_strb       (axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_1_w_payload_last       (axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_last               ), //o
    .io_sharedOutputs_1_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_1_b_ready              (axi4SharedDecoder_1__io_sharedOutputs_1_b_ready                      ), //o
    .io_sharedOutputs_1_b_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //i
    .io_sharedOutputs_1_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_1_r_ready              (axi4SharedDecoder_1__io_sharedOutputs_1_r_ready                      ), //o
    .io_sharedOutputs_1_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_1_r_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //i
    .io_sharedOutputs_1_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_sharedOutputs_2_arw_valid            (axi4SharedDecoder_1__io_sharedOutputs_2_arw_valid                    ), //o
    .io_sharedOutputs_2_arw_ready            (_zz_61_                                                              ), //i
    .io_sharedOutputs_2_arw_payload_addr     (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_2_arw_payload_len      (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_len[7:0]         ), //o
    .io_sharedOutputs_2_arw_payload_size     (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_2_arw_payload_cache    (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_2_arw_payload_prot     (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_2_arw_payload_write    (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_write            ), //o
    .io_sharedOutputs_2_w_valid              (axi4SharedDecoder_1__io_sharedOutputs_2_w_valid                      ), //o
    .io_sharedOutputs_2_w_ready              (axi_ram_io_axi_arbiter_io_sharedInputs_0_w_ready                     ), //i
    .io_sharedOutputs_2_w_payload_data       (axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_2_w_payload_strb       (axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_2_w_payload_last       (axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_last               ), //o
    .io_sharedOutputs_2_b_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_valid                     ), //i
    .io_sharedOutputs_2_b_ready              (axi4SharedDecoder_1__io_sharedOutputs_2_b_ready                      ), //o
    .io_sharedOutputs_2_b_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]         ), //i
    .io_sharedOutputs_2_r_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_valid                     ), //i
    .io_sharedOutputs_2_r_ready              (axi4SharedDecoder_1__io_sharedOutputs_2_r_ready                      ), //o
    .io_sharedOutputs_2_r_payload_data       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]        ), //i
    .io_sharedOutputs_2_r_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]         ), //i
    .io_sharedOutputs_2_r_payload_last       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_last              ), //i
    .io_axiClk                               (io_axiClk                                                            ), //i
    .resetCtrl_axiReset                      (resetCtrl_axiReset                                                   )  //i
  );
  Axi4ReadOnlyDecoder_1_ axi_vgaCtrl_io_axi_decoder ( 
    .io_input_ar_valid                (axi_vgaCtrl_io_axi_ar_halfPipe_valid                               ), //i
    .io_input_ar_ready                (axi_vgaCtrl_io_axi_decoder_io_input_ar_ready                       ), //o
    .io_input_ar_payload_addr         (axi_vgaCtrl_io_axi_ar_halfPipe_payload_addr[31:0]                  ), //i
    .io_input_ar_payload_len          (axi_vgaCtrl_io_axi_ar_halfPipe_payload_len[7:0]                    ), //i
    .io_input_ar_payload_size         (axi_vgaCtrl_io_axi_ar_halfPipe_payload_size[2:0]                   ), //i
    .io_input_ar_payload_cache        (axi_vgaCtrl_io_axi_ar_halfPipe_payload_cache[3:0]                  ), //i
    .io_input_ar_payload_prot         (axi_vgaCtrl_io_axi_ar_halfPipe_payload_prot[2:0]                   ), //i
    .io_input_r_valid                 (axi_vgaCtrl_io_axi_decoder_io_input_r_valid                        ), //o
    .io_input_r_ready                 (axi_vgaCtrl_io_axi_r_ready                                         ), //i
    .io_input_r_payload_data          (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_data[31:0]           ), //o
    .io_input_r_payload_last          (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_last                 ), //o
    .io_outputs_0_ar_valid            (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_valid                   ), //o
    .io_outputs_0_ar_ready            (_zz_62_                                                            ), //i
    .io_outputs_0_ar_payload_addr     (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_addr[31:0]      ), //o
    .io_outputs_0_ar_payload_len      (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_len[7:0]        ), //o
    .io_outputs_0_ar_payload_size     (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_size[2:0]       ), //o
    .io_outputs_0_ar_payload_cache    (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_cache[3:0]      ), //o
    .io_outputs_0_ar_payload_prot     (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_prot[2:0]       ), //o
    .io_outputs_0_r_valid             (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_valid               ), //i
    .io_outputs_0_r_ready             (axi_vgaCtrl_io_axi_decoder_io_outputs_0_r_ready                    ), //o
    .io_outputs_0_r_payload_data      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_data[31:0]  ), //i
    .io_outputs_0_r_payload_last      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_last        ), //i
    .io_axiClk                        (io_axiClk                                                          ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                                                 )  //i
  );
  Axi4SharedArbiter axi_ram_io_axi_arbiter ( 
    .io_readInputs_0_ar_valid               (_zz_12_                                                        ), //i
    .io_readInputs_0_ar_ready               (axi_ram_io_axi_arbiter_io_readInputs_0_ar_ready                ), //o
    .io_readInputs_0_ar_payload_addr        (_zz_63_[11:0]                                                  ), //i
    .io_readInputs_0_ar_payload_id          (_zz_27_[2:0]                                                   ), //i
    .io_readInputs_0_ar_payload_len         (axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_len[7:0]        ), //i
    .io_readInputs_0_ar_payload_size        (_zz_64_[2:0]                                                   ), //i
    .io_readInputs_0_ar_payload_burst       (axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_burst[1:0]      ), //i
    .io_readInputs_0_r_valid                (axi_ram_io_axi_arbiter_io_readInputs_0_r_valid                 ), //o
    .io_readInputs_0_r_ready                (axi4ReadOnlyDecoder_2__io_outputs_1_r_ready                    ), //i
    .io_readInputs_0_r_payload_data         (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]    ), //o
    .io_readInputs_0_r_payload_id           (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_id[2:0]       ), //o
    .io_readInputs_0_r_payload_resp         (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]     ), //o
    .io_readInputs_0_r_payload_last         (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_last          ), //o
    .io_sharedInputs_0_arw_valid            (_zz_21_                                                        ), //i
    .io_sharedInputs_0_arw_ready            (axi_ram_io_axi_arbiter_io_sharedInputs_0_arw_ready             ), //o
    .io_sharedInputs_0_arw_payload_addr     (_zz_65_[11:0]                                                  ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_28_[2:0]                                                   ), //i
    .io_sharedInputs_0_arw_payload_len      (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_len[7:0]   ), //i
    .io_sharedInputs_0_arw_payload_size     (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_size[2:0]  ), //i
    .io_sharedInputs_0_arw_payload_burst    (_zz_66_[1:0]                                                   ), //i
    .io_sharedInputs_0_arw_payload_write    (axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_write      ), //i
    .io_sharedInputs_0_w_valid              (axi4SharedDecoder_1__io_sharedOutputs_2_w_valid                ), //i
    .io_sharedInputs_0_w_ready              (axi_ram_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //o
    .io_sharedInputs_0_w_payload_data       (axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_data[31:0]   ), //i
    .io_sharedInputs_0_w_payload_strb       (axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_strb[3:0]    ), //i
    .io_sharedInputs_0_w_payload_last       (axi4SharedDecoder_1__io_sharedOutputs_2_w_payload_last         ), //i
    .io_sharedInputs_0_b_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //o
    .io_sharedInputs_0_b_ready              (axi4SharedDecoder_1__io_sharedOutputs_2_b_ready                ), //i
    .io_sharedInputs_0_b_payload_id         (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_id[2:0]     ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //o
    .io_sharedInputs_0_r_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //o
    .io_sharedInputs_0_r_ready              (axi4SharedDecoder_1__io_sharedOutputs_2_r_ready                ), //i
    .io_sharedInputs_0_r_payload_data       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //o
    .io_sharedInputs_0_r_payload_id         (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_id[2:0]     ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //o
    .io_sharedInputs_0_r_payload_last       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //o
    .io_output_arw_valid                    (axi_ram_io_axi_arbiter_io_output_arw_valid                     ), //o
    .io_output_arw_ready                    (axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready       ), //i
    .io_output_arw_payload_addr             (axi_ram_io_axi_arbiter_io_output_arw_payload_addr[11:0]        ), //o
    .io_output_arw_payload_id               (axi_ram_io_axi_arbiter_io_output_arw_payload_id[3:0]           ), //o
    .io_output_arw_payload_len              (axi_ram_io_axi_arbiter_io_output_arw_payload_len[7:0]          ), //o
    .io_output_arw_payload_size             (axi_ram_io_axi_arbiter_io_output_arw_payload_size[2:0]         ), //o
    .io_output_arw_payload_burst            (axi_ram_io_axi_arbiter_io_output_arw_payload_burst[1:0]        ), //o
    .io_output_arw_payload_write            (axi_ram_io_axi_arbiter_io_output_arw_payload_write             ), //o
    .io_output_w_valid                      (axi_ram_io_axi_arbiter_io_output_w_valid                       ), //o
    .io_output_w_ready                      (_zz_67_                                                        ), //i
    .io_output_w_payload_data               (axi_ram_io_axi_arbiter_io_output_w_payload_data[31:0]          ), //o
    .io_output_w_payload_strb               (axi_ram_io_axi_arbiter_io_output_w_payload_strb[3:0]           ), //o
    .io_output_w_payload_last               (axi_ram_io_axi_arbiter_io_output_w_payload_last                ), //o
    .io_output_b_valid                      (axi_ram_io_axi_b_valid                                         ), //i
    .io_output_b_ready                      (axi_ram_io_axi_arbiter_io_output_b_ready                       ), //o
    .io_output_b_payload_id                 (axi_ram_io_axi_b_payload_id[3:0]                               ), //i
    .io_output_b_payload_resp               (axi_ram_io_axi_b_payload_resp[1:0]                             ), //i
    .io_output_r_valid                      (axi_ram_io_axi_r_valid                                         ), //i
    .io_output_r_ready                      (axi_ram_io_axi_arbiter_io_output_r_ready                       ), //o
    .io_output_r_payload_data               (axi_ram_io_axi_r_payload_data[31:0]                            ), //i
    .io_output_r_payload_id                 (axi_ram_io_axi_r_payload_id[3:0]                               ), //i
    .io_output_r_payload_resp               (axi_ram_io_axi_r_payload_resp[1:0]                             ), //i
    .io_output_r_payload_last               (axi_ram_io_axi_r_payload_last                                  ), //i
    .io_axiClk                              (io_axiClk                                                      ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                             )  //i
  );
  Axi4SharedArbiter_1_ axi_sdramCtrl_io_axi_arbiter ( 
    .io_readInputs_0_ar_valid               (_zz_9_                                                               ), //i
    .io_readInputs_0_ar_ready               (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready                ), //o
    .io_readInputs_0_ar_payload_addr        (_zz_68_[25:0]                                                        ), //i
    .io_readInputs_0_ar_payload_id          (_zz_29_[1:0]                                                         ), //i
    .io_readInputs_0_ar_payload_len         (axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_len[7:0]              ), //i
    .io_readInputs_0_ar_payload_size        (_zz_69_[2:0]                                                         ), //i
    .io_readInputs_0_ar_payload_burst       (axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_burst[1:0]            ), //i
    .io_readInputs_0_r_valid                (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid                 ), //o
    .io_readInputs_0_r_ready                (axi4ReadOnlyDecoder_2__io_outputs_0_r_ready                          ), //i
    .io_readInputs_0_r_payload_data         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]    ), //o
    .io_readInputs_0_r_payload_id           (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_id[1:0]       ), //o
    .io_readInputs_0_r_payload_resp         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]     ), //o
    .io_readInputs_0_r_payload_last         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last          ), //o
    .io_readInputs_1_ar_valid               (_zz_24_                                                              ), //i
    .io_readInputs_1_ar_ready               (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_ar_ready                ), //o
    .io_readInputs_1_ar_payload_addr        (_zz_70_[25:0]                                                        ), //i
    .io_readInputs_1_ar_payload_id          (_zz_30_[1:0]                                                         ), //i
    .io_readInputs_1_ar_payload_len         (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_len[7:0]          ), //i
    .io_readInputs_1_ar_payload_size        (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_size[2:0]         ), //i
    .io_readInputs_1_ar_payload_burst       (_zz_71_[1:0]                                                         ), //i
    .io_readInputs_1_r_valid                (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_valid                 ), //o
    .io_readInputs_1_r_ready                (axi_vgaCtrl_io_axi_decoder_io_outputs_0_r_ready                      ), //i
    .io_readInputs_1_r_payload_data         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_data[31:0]    ), //o
    .io_readInputs_1_r_payload_id           (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_id[1:0]       ), //o
    .io_readInputs_1_r_payload_resp         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_resp[1:0]     ), //o
    .io_readInputs_1_r_payload_last         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_last          ), //o
    .io_sharedInputs_0_arw_valid            (_zz_15_                                                              ), //i
    .io_sharedInputs_0_arw_ready            (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready             ), //o
    .io_sharedInputs_0_arw_payload_addr     (_zz_72_[25:0]                                                        ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_31_[1:0]                                                         ), //i
    .io_sharedInputs_0_arw_payload_len      (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_len[7:0]         ), //i
    .io_sharedInputs_0_arw_payload_size     (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_size[2:0]        ), //i
    .io_sharedInputs_0_arw_payload_burst    (_zz_73_[1:0]                                                         ), //i
    .io_sharedInputs_0_arw_payload_write    (axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_write            ), //i
    .io_sharedInputs_0_w_valid              (axi4SharedDecoder_1__io_sharedOutputs_0_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //o
    .io_sharedInputs_0_w_payload_data       (axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_data[31:0]         ), //i
    .io_sharedInputs_0_w_payload_strb       (axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_strb[3:0]          ), //i
    .io_sharedInputs_0_w_payload_last       (axi4SharedDecoder_1__io_sharedOutputs_0_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //o
    .io_sharedInputs_0_b_ready              (axi4SharedDecoder_1__io_sharedOutputs_0_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_id[1:0]     ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //o
    .io_sharedInputs_0_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //o
    .io_sharedInputs_0_r_ready              (axi4SharedDecoder_1__io_sharedOutputs_0_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //o
    .io_sharedInputs_0_r_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_id[1:0]     ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //o
    .io_sharedInputs_0_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //o
    .io_output_arw_valid                    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid                     ), //o
    .io_output_arw_ready                    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready       ), //i
    .io_output_arw_payload_addr             (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr[25:0]        ), //o
    .io_output_arw_payload_id               (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id[3:0]           ), //o
    .io_output_arw_payload_len              (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len[7:0]          ), //o
    .io_output_arw_payload_size             (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size[2:0]         ), //o
    .io_output_arw_payload_burst            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst[1:0]        ), //o
    .io_output_arw_payload_write            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write             ), //o
    .io_output_w_valid                      (axi_sdramCtrl_io_axi_arbiter_io_output_w_valid                       ), //o
    .io_output_w_ready                      (_zz_74_                                                              ), //i
    .io_output_w_payload_data               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data[31:0]          ), //o
    .io_output_w_payload_strb               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb[3:0]           ), //o
    .io_output_w_payload_last               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last                ), //o
    .io_output_b_valid                      (axi_sdramCtrl_io_axi_b_valid                                         ), //i
    .io_output_b_ready                      (axi_sdramCtrl_io_axi_arbiter_io_output_b_ready                       ), //o
    .io_output_b_payload_id                 (axi_sdramCtrl_io_axi_b_payload_id[3:0]                               ), //i
    .io_output_b_payload_resp               (axi_sdramCtrl_io_axi_b_payload_resp[1:0]                             ), //i
    .io_output_r_valid                      (axi_sdramCtrl_io_axi_r_valid                                         ), //i
    .io_output_r_ready                      (axi_sdramCtrl_io_axi_arbiter_io_output_r_ready                       ), //o
    .io_output_r_payload_data               (axi_sdramCtrl_io_axi_r_payload_data[31:0]                            ), //i
    .io_output_r_payload_id                 (axi_sdramCtrl_io_axi_r_payload_id[3:0]                               ), //i
    .io_output_r_payload_resp               (axi_sdramCtrl_io_axi_r_payload_resp[1:0]                             ), //i
    .io_output_r_payload_last               (axi_sdramCtrl_io_axi_r_payload_last                                  ), //i
    .io_axiClk                              (io_axiClk                                                            ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                                   )  //i
  );
  Axi4SharedArbiter_2_ axi_apbBridge_io_axi_arbiter ( 
    .io_sharedInputs_0_arw_valid            (_zz_18_                                                              ), //i
    .io_sharedInputs_0_arw_ready            (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready             ), //o
    .io_sharedInputs_0_arw_payload_addr     (_zz_75_[19:0]                                                        ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_32_[3:0]                                                         ), //i
    .io_sharedInputs_0_arw_payload_len      (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_len[7:0]         ), //i
    .io_sharedInputs_0_arw_payload_size     (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_size[2:0]        ), //i
    .io_sharedInputs_0_arw_payload_burst    (_zz_76_[1:0]                                                         ), //i
    .io_sharedInputs_0_arw_payload_write    (axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_write            ), //i
    .io_sharedInputs_0_w_valid              (axi4SharedDecoder_1__io_sharedOutputs_1_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //o
    .io_sharedInputs_0_w_payload_data       (axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_data[31:0]         ), //i
    .io_sharedInputs_0_w_payload_strb       (axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_strb[3:0]          ), //i
    .io_sharedInputs_0_w_payload_last       (axi4SharedDecoder_1__io_sharedOutputs_1_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //o
    .io_sharedInputs_0_b_ready              (axi4SharedDecoder_1__io_sharedOutputs_1_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id[3:0]     ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //o
    .io_sharedInputs_0_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //o
    .io_sharedInputs_0_r_ready              (axi4SharedDecoder_1__io_sharedOutputs_1_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //o
    .io_sharedInputs_0_r_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id[3:0]     ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //o
    .io_sharedInputs_0_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //o
    .io_output_arw_valid                    (axi_apbBridge_io_axi_arbiter_io_output_arw_valid                     ), //o
    .io_output_arw_ready                    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready       ), //i
    .io_output_arw_payload_addr             (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr[19:0]        ), //o
    .io_output_arw_payload_id               (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id[3:0]           ), //o
    .io_output_arw_payload_len              (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len[7:0]          ), //o
    .io_output_arw_payload_size             (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size[2:0]         ), //o
    .io_output_arw_payload_burst            (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst[1:0]        ), //o
    .io_output_arw_payload_write            (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write             ), //o
    .io_output_w_valid                      (axi_apbBridge_io_axi_arbiter_io_output_w_valid                       ), //o
    .io_output_w_ready                      (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready         ), //i
    .io_output_w_payload_data               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_data[31:0]          ), //o
    .io_output_w_payload_strb               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb[3:0]           ), //o
    .io_output_w_payload_last               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_last                ), //o
    .io_output_b_valid                      (axi_apbBridge_io_axi_b_valid                                         ), //i
    .io_output_b_ready                      (axi_apbBridge_io_axi_arbiter_io_output_b_ready                       ), //o
    .io_output_b_payload_id                 (axi_apbBridge_io_axi_b_payload_id[3:0]                               ), //i
    .io_output_b_payload_resp               (axi_apbBridge_io_axi_b_payload_resp[1:0]                             ), //i
    .io_output_r_valid                      (axi_apbBridge_io_axi_r_valid                                         ), //i
    .io_output_r_ready                      (axi_apbBridge_io_axi_arbiter_io_output_r_ready                       ), //o
    .io_output_r_payload_data               (axi_apbBridge_io_axi_r_payload_data[31:0]                            ), //i
    .io_output_r_payload_id                 (axi_apbBridge_io_axi_r_payload_id[3:0]                               ), //i
    .io_output_r_payload_resp               (axi_apbBridge_io_axi_r_payload_resp[1:0]                             ), //i
    .io_output_r_payload_last               (axi_apbBridge_io_axi_r_payload_last                                  ), //i
    .io_axiClk                              (io_axiClk                                                            ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                                   )  //i
  );
  Apb3Decoder io_apb_decoder ( 
    .io_input_PADDR         (axi_apbBridge_io_apb_PADDR[19:0]       ), //i
    .io_input_PSEL          (axi_apbBridge_io_apb_PSEL              ), //i
    .io_input_PENABLE       (axi_apbBridge_io_apb_PENABLE           ), //i
    .io_input_PREADY        (io_apb_decoder_io_input_PREADY         ), //o
    .io_input_PWRITE        (axi_apbBridge_io_apb_PWRITE            ), //i
    .io_input_PWDATA        (axi_apbBridge_io_apb_PWDATA[31:0]      ), //i
    .io_input_PRDATA        (io_apb_decoder_io_input_PRDATA[31:0]   ), //o
    .io_input_PSLVERROR     (io_apb_decoder_io_input_PSLVERROR      ), //o
    .io_output_PADDR        (io_apb_decoder_io_output_PADDR[19:0]   ), //o
    .io_output_PSEL         (io_apb_decoder_io_output_PSEL[4:0]     ), //o
    .io_output_PENABLE      (io_apb_decoder_io_output_PENABLE       ), //o
    .io_output_PREADY       (apb3Router_1__io_input_PREADY          ), //i
    .io_output_PWRITE       (io_apb_decoder_io_output_PWRITE        ), //o
    .io_output_PWDATA       (io_apb_decoder_io_output_PWDATA[31:0]  ), //o
    .io_output_PRDATA       (apb3Router_1__io_input_PRDATA[31:0]    ), //i
    .io_output_PSLVERROR    (apb3Router_1__io_input_PSLVERROR       )  //i
  );
  Apb3Router apb3Router_1_ ( 
    .io_input_PADDR            (io_apb_decoder_io_output_PADDR[19:0]     ), //i
    .io_input_PSEL             (io_apb_decoder_io_output_PSEL[4:0]       ), //i
    .io_input_PENABLE          (io_apb_decoder_io_output_PENABLE         ), //i
    .io_input_PREADY           (apb3Router_1__io_input_PREADY            ), //o
    .io_input_PWRITE           (io_apb_decoder_io_output_PWRITE          ), //i
    .io_input_PWDATA           (io_apb_decoder_io_output_PWDATA[31:0]    ), //i
    .io_input_PRDATA           (apb3Router_1__io_input_PRDATA[31:0]      ), //o
    .io_input_PSLVERROR        (apb3Router_1__io_input_PSLVERROR         ), //o
    .io_outputs_0_PADDR        (apb3Router_1__io_outputs_0_PADDR[19:0]   ), //o
    .io_outputs_0_PSEL         (apb3Router_1__io_outputs_0_PSEL          ), //o
    .io_outputs_0_PENABLE      (apb3Router_1__io_outputs_0_PENABLE       ), //o
    .io_outputs_0_PREADY       (axi_gpioACtrl_io_apb_PREADY              ), //i
    .io_outputs_0_PWRITE       (apb3Router_1__io_outputs_0_PWRITE        ), //o
    .io_outputs_0_PWDATA       (apb3Router_1__io_outputs_0_PWDATA[31:0]  ), //o
    .io_outputs_0_PRDATA       (axi_gpioACtrl_io_apb_PRDATA[31:0]        ), //i
    .io_outputs_0_PSLVERROR    (axi_gpioACtrl_io_apb_PSLVERROR           ), //i
    .io_outputs_1_PADDR        (apb3Router_1__io_outputs_1_PADDR[19:0]   ), //o
    .io_outputs_1_PSEL         (apb3Router_1__io_outputs_1_PSEL          ), //o
    .io_outputs_1_PENABLE      (apb3Router_1__io_outputs_1_PENABLE       ), //o
    .io_outputs_1_PREADY       (axi_gpioBCtrl_io_apb_PREADY              ), //i
    .io_outputs_1_PWRITE       (apb3Router_1__io_outputs_1_PWRITE        ), //o
    .io_outputs_1_PWDATA       (apb3Router_1__io_outputs_1_PWDATA[31:0]  ), //o
    .io_outputs_1_PRDATA       (axi_gpioBCtrl_io_apb_PRDATA[31:0]        ), //i
    .io_outputs_1_PSLVERROR    (axi_gpioBCtrl_io_apb_PSLVERROR           ), //i
    .io_outputs_2_PADDR        (apb3Router_1__io_outputs_2_PADDR[19:0]   ), //o
    .io_outputs_2_PSEL         (apb3Router_1__io_outputs_2_PSEL          ), //o
    .io_outputs_2_PENABLE      (apb3Router_1__io_outputs_2_PENABLE       ), //o
    .io_outputs_2_PREADY       (axi_uartCtrl_io_apb_PREADY               ), //i
    .io_outputs_2_PWRITE       (apb3Router_1__io_outputs_2_PWRITE        ), //o
    .io_outputs_2_PWDATA       (apb3Router_1__io_outputs_2_PWDATA[31:0]  ), //o
    .io_outputs_2_PRDATA       (axi_uartCtrl_io_apb_PRDATA[31:0]         ), //i
    .io_outputs_2_PSLVERROR    (_zz_77_                                  ), //i
    .io_outputs_3_PADDR        (apb3Router_1__io_outputs_3_PADDR[19:0]   ), //o
    .io_outputs_3_PSEL         (apb3Router_1__io_outputs_3_PSEL          ), //o
    .io_outputs_3_PENABLE      (apb3Router_1__io_outputs_3_PENABLE       ), //o
    .io_outputs_3_PREADY       (axi_timerCtrl_io_apb_PREADY              ), //i
    .io_outputs_3_PWRITE       (apb3Router_1__io_outputs_3_PWRITE        ), //o
    .io_outputs_3_PWDATA       (apb3Router_1__io_outputs_3_PWDATA[31:0]  ), //o
    .io_outputs_3_PRDATA       (axi_timerCtrl_io_apb_PRDATA[31:0]        ), //i
    .io_outputs_3_PSLVERROR    (axi_timerCtrl_io_apb_PSLVERROR           ), //i
    .io_outputs_4_PADDR        (apb3Router_1__io_outputs_4_PADDR[19:0]   ), //o
    .io_outputs_4_PSEL         (apb3Router_1__io_outputs_4_PSEL          ), //o
    .io_outputs_4_PENABLE      (apb3Router_1__io_outputs_4_PENABLE       ), //o
    .io_outputs_4_PREADY       (axi_vgaCtrl_io_apb_PREADY                ), //i
    .io_outputs_4_PWRITE       (apb3Router_1__io_outputs_4_PWRITE        ), //o
    .io_outputs_4_PWDATA       (apb3Router_1__io_outputs_4_PWDATA[31:0]  ), //o
    .io_outputs_4_PRDATA       (axi_vgaCtrl_io_apb_PRDATA[31:0]          ), //i
    .io_outputs_4_PSLVERROR    (_zz_78_                                  ), //i
    .io_axiClk                 (io_axiClk                                ), //i
    .resetCtrl_axiReset        (resetCtrl_axiReset                       )  //i
  );
  always @ (*) begin
    resetCtrl_systemResetUnbuffered = 1'b0;
    if(_zz_79_)begin
      resetCtrl_systemResetUnbuffered = 1'b1;
    end
  end

  assign _zz_1_[5 : 0] = 6'h3f;
  assign resetCtrl_vgaReset = resetCtrl_axiReset_buffercc_io_dataOut;
  assign _zz_40_ = (! (axi4ReadOnlyDecoder_2__io_input_r_payload_resp == (2'b00)));
  assign _zz_41_ = ((1'b1 && (! axi_core_cpu_dBus_cmd_m2sPipe_valid)) || axi_core_cpu_dBus_cmd_m2sPipe_ready);
  assign axi_core_cpu_dBus_cmd_m2sPipe_valid = axi_core_cpu_dBus_cmd_m2sPipe_rValid;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_wr = axi_core_cpu_dBus_cmd_m2sPipe_rData_wr;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_address = axi_core_cpu_dBus_cmd_m2sPipe_rData_address;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_data = axi_core_cpu_dBus_cmd_m2sPipe_rData_data;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_mask = axi_core_cpu_dBus_cmd_m2sPipe_rData_mask;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_length = axi_core_cpu_dBus_cmd_m2sPipe_rData_length;
  assign axi_core_cpu_dBus_cmd_m2sPipe_payload_last = axi_core_cpu_dBus_cmd_m2sPipe_rData_last;
  assign axi_core_cpu_dBus_cmd_m2sPipe_ready = ((1'b1 && (! axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid)) || axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_wr;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_address;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_data;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_mask;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_length = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_length;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last = axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_last;
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid || axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_ready = (! axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_wr : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_address = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_address : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_data = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_data : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_mask = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_mask : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_length = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_length : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_length);
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_last = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid ? axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_last : axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last);
  always @ (*) begin
    _zz_2_ = 1'b0;
    if(((axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid && axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready) && axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr))begin
      _zz_2_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3_ = 1'b0;
    if((axi4SharedDecoder_1__io_input_b_valid && 1'b1))begin
      _zz_3_ = 1'b1;
    end
  end

  always @ (*) begin
    if((_zz_2_ && (! _zz_3_)))begin
      _zz_5_ = (3'b001);
    end else begin
      if(((! _zz_2_) && _zz_3_))begin
        _zz_5_ = (3'b111);
      end else begin
        _zz_5_ = (3'b000);
      end
    end
  end

  assign _zz_6_ = (! (((_zz_4_ != (3'b000)) && (! axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_payload_wr)) || (_zz_4_ == (3'b111))));
  assign axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready = (streamFork_4__io_input_ready && _zz_6_);
  assign _zz_43_ = (axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_valid && _zz_6_);
  always @ (*) begin
    streamFork_4__io_outputs_0_thrown_valid = streamFork_4__io_outputs_0_valid;
    if(_zz_7_)begin
      streamFork_4__io_outputs_0_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_44_ = streamFork_4__io_outputs_0_thrown_ready;
    if(_zz_7_)begin
      _zz_44_ = 1'b1;
    end
  end

  assign streamFork_4__io_outputs_0_thrown_payload_wr = streamFork_4__io_outputs_0_payload_wr;
  assign streamFork_4__io_outputs_0_thrown_payload_address = streamFork_4__io_outputs_0_payload_address;
  assign streamFork_4__io_outputs_0_thrown_payload_data = streamFork_4__io_outputs_0_payload_data;
  assign streamFork_4__io_outputs_0_thrown_payload_mask = streamFork_4__io_outputs_0_payload_mask;
  assign streamFork_4__io_outputs_0_thrown_payload_length = streamFork_4__io_outputs_0_payload_length;
  assign streamFork_4__io_outputs_0_thrown_payload_last = streamFork_4__io_outputs_0_payload_last;
  always @ (*) begin
    streamFork_4__io_outputs_1_thrown_valid = streamFork_4__io_outputs_1_valid;
    if(_zz_80_)begin
      streamFork_4__io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_45_ = streamFork_4__io_outputs_1_thrown_ready;
    if(_zz_80_)begin
      _zz_45_ = 1'b1;
    end
  end

  assign streamFork_4__io_outputs_1_thrown_payload_wr = streamFork_4__io_outputs_1_payload_wr;
  assign streamFork_4__io_outputs_1_thrown_payload_address = streamFork_4__io_outputs_1_payload_address;
  assign streamFork_4__io_outputs_1_thrown_payload_data = streamFork_4__io_outputs_1_payload_data;
  assign streamFork_4__io_outputs_1_thrown_payload_mask = streamFork_4__io_outputs_1_payload_mask;
  assign streamFork_4__io_outputs_1_thrown_payload_length = streamFork_4__io_outputs_1_payload_length;
  assign streamFork_4__io_outputs_1_thrown_payload_last = streamFork_4__io_outputs_1_payload_last;
  assign streamFork_4__io_outputs_0_thrown_ready = axi4SharedDecoder_1__io_input_arw_ready;
  assign streamFork_4__io_outputs_1_thrown_ready = axi4SharedDecoder_1__io_input_w_ready;
  assign _zz_42_ = (! (axi4SharedDecoder_1__io_input_r_m2sPipe_payload_resp == (2'b00)));
  assign _zz_39_ = systemDebugger_1__io_mem_cmd_payload_address[7:0];
  assign io_jtag_tdo = jtagBridge_1__io_jtag_tdo;
  assign _zz_9_ = _zz_11_;
  assign _zz_51_ = (_zz_10_ && _zz_11_);
  assign _zz_10_ = axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign _zz_12_ = _zz_14_;
  assign _zz_52_ = (_zz_13_ && _zz_14_);
  assign _zz_13_ = axi_ram_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign _zz_46_ = 8'h07;
  assign _zz_47_ = (2'b01);
  assign _zz_48_ = (4'b1111);
  assign _zz_49_ = (3'b110);
  assign _zz_50_ = 1'b1;
  assign _zz_15_ = _zz_17_;
  assign _zz_59_ = (_zz_16_ && _zz_17_);
  assign _zz_16_ = axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign _zz_18_ = _zz_20_;
  assign _zz_60_ = (_zz_19_ && _zz_20_);
  assign _zz_19_ = axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign _zz_21_ = _zz_23_;
  assign _zz_61_ = (_zz_22_ && _zz_23_);
  assign _zz_22_ = axi_ram_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign _zz_53_ = {5'd0, streamFork_4__io_outputs_0_thrown_payload_length};
  assign _zz_54_ = (3'b010);
  assign _zz_55_ = (4'b1111);
  assign _zz_56_ = (3'b010);
  assign _zz_57_ = 1'b1;
  assign _zz_58_ = ((1'b1 && (! axi4SharedDecoder_1__io_input_r_m2sPipe_valid)) || axi4SharedDecoder_1__io_input_r_m2sPipe_ready);
  assign axi4SharedDecoder_1__io_input_r_m2sPipe_valid = axi4SharedDecoder_1__io_input_r_m2sPipe_rValid;
  assign axi4SharedDecoder_1__io_input_r_m2sPipe_payload_data = axi4SharedDecoder_1__io_input_r_m2sPipe_rData_data;
  assign axi4SharedDecoder_1__io_input_r_m2sPipe_payload_resp = axi4SharedDecoder_1__io_input_r_m2sPipe_rData_resp;
  assign axi4SharedDecoder_1__io_input_r_m2sPipe_payload_last = axi4SharedDecoder_1__io_input_r_m2sPipe_rData_last;
  assign axi4SharedDecoder_1__io_input_r_m2sPipe_ready = 1'b1;
  assign _zz_24_ = _zz_26_;
  assign _zz_62_ = (_zz_25_ && _zz_26_);
  assign _zz_25_ = axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_ar_ready;
  assign axi_vgaCtrl_io_axi_ar_halfPipe_valid = axi_vgaCtrl_io_axi_ar_halfPipe_regs_valid;
  assign axi_vgaCtrl_io_axi_ar_halfPipe_payload_addr = axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_addr;
  assign axi_vgaCtrl_io_axi_ar_halfPipe_payload_len = axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_len;
  assign axi_vgaCtrl_io_axi_ar_halfPipe_payload_size = axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_size;
  assign axi_vgaCtrl_io_axi_ar_halfPipe_payload_cache = axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_cache;
  assign axi_vgaCtrl_io_axi_ar_halfPipe_payload_prot = axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_prot;
  assign axi_vgaCtrl_io_axi_ar_halfPipe_ready = axi_vgaCtrl_io_axi_decoder_io_input_ar_ready;
  assign _zz_63_ = axi4ReadOnlyDecoder_2__io_outputs_1_ar_payload_addr[11:0];
  assign _zz_27_[2 : 0] = (3'b000);
  assign _zz_64_ = (3'b010);
  assign _zz_65_ = axi4SharedDecoder_1__io_sharedOutputs_2_arw_payload_addr[11:0];
  assign _zz_28_[2 : 0] = (3'b000);
  assign _zz_66_ = (2'b01);
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  assign axi_ram_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_ram_io_axi_arw_ready;
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_valid = (axi_ram_io_axi_arbiter_io_output_w_valid || axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign _zz_67_ = (! axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_data = (axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_data : axi_ram_io_axi_arbiter_io_output_w_payload_data);
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb = (axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb : axi_ram_io_axi_arbiter_io_output_w_payload_strb);
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_last = (axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_last : axi_ram_io_axi_arbiter_io_output_w_payload_last);
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_ready = ((1'b1 && (! axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid)) || axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready);
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid = axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data = axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb = axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last = axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  assign axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready = axi_ram_io_axi_w_ready;
  assign _zz_68_ = axi4ReadOnlyDecoder_2__io_outputs_0_ar_payload_addr[25:0];
  assign _zz_29_[1 : 0] = (2'b00);
  assign _zz_69_ = (3'b010);
  assign _zz_70_ = axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_addr[25:0];
  assign _zz_30_[1 : 0] = (2'b00);
  assign _zz_71_ = (2'b01);
  assign _zz_72_ = axi4SharedDecoder_1__io_sharedOutputs_0_arw_payload_addr[25:0];
  assign _zz_31_[1 : 0] = (2'b00);
  assign _zz_73_ = (2'b01);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_sdramCtrl_io_axi_arw_ready;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid = (axi_sdramCtrl_io_axi_arbiter_io_output_w_valid || axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign _zz_74_ = (! axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data = (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb = (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last = (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready = ((1'b1 && (! axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid)) || axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready = axi_sdramCtrl_io_axi_w_ready;
  assign _zz_75_ = axi4SharedDecoder_1__io_sharedOutputs_1_arw_payload_addr[19:0];
  assign _zz_32_[3 : 0] = (4'b0000);
  assign _zz_76_ = (2'b01);
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_apbBridge_io_axi_arw_ready;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_data;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_strb;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_last;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready = axi_apbBridge_io_axi_w_ready;
  assign _zz_33_ = apb3Router_1__io_outputs_0_PADDR[3:0];
  assign _zz_34_ = apb3Router_1__io_outputs_1_PADDR[3:0];
  assign _zz_36_ = apb3Router_1__io_outputs_2_PADDR[4:0];
  assign _zz_77_ = 1'b0;
  assign _zz_35_ = apb3Router_1__io_outputs_3_PADDR[7:0];
  assign _zz_37_ = apb3Router_1__io_outputs_4_PADDR[7:0];
  assign _zz_78_ = 1'b0;
  assign io_gpioA_write = axi_gpioACtrl_io_gpio_write;
  assign io_gpioA_writeEnable = axi_gpioACtrl_io_gpio_writeEnable;
  assign io_gpioB_write = axi_gpioBCtrl_io_gpio_write;
  assign io_gpioB_writeEnable = axi_gpioBCtrl_io_gpio_writeEnable;
  assign io_uart_txd = axi_uartCtrl_io_uart_txd;
  assign io_sdram_ADDR = axi_sdramCtrl_io_sdram_ADDR;
  assign io_sdram_BA = axi_sdramCtrl_io_sdram_BA;
  assign io_sdram_DQ_write = axi_sdramCtrl_io_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = axi_sdramCtrl_io_sdram_DQ_writeEnable;
  assign io_sdram_DQM = axi_sdramCtrl_io_sdram_DQM;
  assign io_sdram_CASn = axi_sdramCtrl_io_sdram_CASn;
  assign io_sdram_CKE = axi_sdramCtrl_io_sdram_CKE;
  assign io_sdram_CSn = axi_sdramCtrl_io_sdram_CSn;
  assign io_sdram_RASn = axi_sdramCtrl_io_sdram_RASn;
  assign io_sdram_WEn = axi_sdramCtrl_io_sdram_WEn;
  assign io_vga_vSync = axi_vgaCtrl_io_vga_vSync;
  assign io_vga_hSync = axi_vgaCtrl_io_vga_hSync;
  assign io_vga_colorEn = axi_vgaCtrl_io_vga_colorEn;
  assign io_vga_color_r = axi_vgaCtrl_io_vga_color_r;
  assign io_vga_color_g = axi_vgaCtrl_io_vga_color_g;
  assign io_vga_color_b = axi_vgaCtrl_io_vga_color_b;
  assign _zz_38_ = 1'b0;
  always @ (posedge io_axiClk) begin
    if(_zz_79_)begin
      resetCtrl_systemResetCounter <= (resetCtrl_systemResetCounter + 6'h01);
    end
    if(io_asyncReset_buffercc_io_dataOut)begin
      resetCtrl_systemResetCounter <= 6'h0;
    end
  end

  always @ (posedge io_axiClk) begin
    resetCtrl_systemReset <= resetCtrl_systemResetUnbuffered;
    resetCtrl_axiReset <= resetCtrl_systemResetUnbuffered;
    if(axi_core_cpu_debug_resetOut_regNext)begin
      resetCtrl_axiReset <= 1'b1;
    end
  end

  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      axi_core_cpu_dBus_cmd_m2sPipe_rValid <= 1'b0;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid <= 1'b0;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid <= 1'b0;
      _zz_4_ <= (3'b000);
      _zz_7_ <= 1'b0;
      _zz_11_ <= 1'b0;
      _zz_14_ <= 1'b0;
      _zz_17_ <= 1'b0;
      _zz_20_ <= 1'b0;
      _zz_23_ <= 1'b0;
      axi4SharedDecoder_1__io_input_r_m2sPipe_rValid <= 1'b0;
      _zz_26_ <= 1'b0;
      axi_vgaCtrl_io_axi_ar_halfPipe_regs_valid <= 1'b0;
      axi_vgaCtrl_io_axi_ar_halfPipe_regs_ready <= 1'b1;
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= 1'b0;
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= 1'b1;
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= 1'b1;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= 1'b1;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready <= 1'b1;
    end else begin
      if(_zz_41_)begin
        axi_core_cpu_dBus_cmd_m2sPipe_rValid <= axi_core_cpu_dBus_cmd_valid;
      end
      if(axi_core_cpu_dBus_cmd_m2sPipe_ready)begin
        axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rValid <= axi_core_cpu_dBus_cmd_m2sPipe_valid;
      end
      if(axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_ready)begin
        axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_81_)begin
        axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rValid <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_valid;
      end
      _zz_4_ <= (_zz_4_ + _zz_5_);
      if((streamFork_4__io_outputs_0_valid && _zz_44_))begin
        _zz_7_ <= (! streamFork_4__io_outputs_0_payload_last);
      end
      if(axi4ReadOnlyDecoder_2__io_outputs_0_ar_valid)begin
        _zz_11_ <= 1'b1;
      end
      if((_zz_9_ && _zz_10_))begin
        _zz_11_ <= 1'b0;
      end
      if(axi4ReadOnlyDecoder_2__io_outputs_1_ar_valid)begin
        _zz_14_ <= 1'b1;
      end
      if((_zz_12_ && _zz_13_))begin
        _zz_14_ <= 1'b0;
      end
      if(axi4SharedDecoder_1__io_sharedOutputs_0_arw_valid)begin
        _zz_17_ <= 1'b1;
      end
      if((_zz_15_ && _zz_16_))begin
        _zz_17_ <= 1'b0;
      end
      if(axi4SharedDecoder_1__io_sharedOutputs_1_arw_valid)begin
        _zz_20_ <= 1'b1;
      end
      if((_zz_18_ && _zz_19_))begin
        _zz_20_ <= 1'b0;
      end
      if(axi4SharedDecoder_1__io_sharedOutputs_2_arw_valid)begin
        _zz_23_ <= 1'b1;
      end
      if((_zz_21_ && _zz_22_))begin
        _zz_23_ <= 1'b0;
      end
      if(_zz_58_)begin
        axi4SharedDecoder_1__io_input_r_m2sPipe_rValid <= axi4SharedDecoder_1__io_input_r_valid;
      end
      if(axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_valid)begin
        _zz_26_ <= 1'b1;
      end
      if((_zz_24_ && _zz_25_))begin
        _zz_26_ <= 1'b0;
      end
      if(_zz_82_)begin
        axi_vgaCtrl_io_axi_ar_halfPipe_regs_valid <= axi_vgaCtrl_io_axi_ar_valid;
        axi_vgaCtrl_io_axi_ar_halfPipe_regs_ready <= (! axi_vgaCtrl_io_axi_ar_valid);
      end else begin
        axi_vgaCtrl_io_axi_ar_halfPipe_regs_valid <= (! axi_vgaCtrl_io_axi_ar_halfPipe_ready);
        axi_vgaCtrl_io_axi_ar_halfPipe_regs_ready <= axi_vgaCtrl_io_axi_ar_halfPipe_ready;
      end
      if(_zz_83_)begin
        axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= axi_ram_io_axi_arbiter_io_output_arw_valid;
        axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= (! axi_ram_io_axi_arbiter_io_output_arw_valid);
      end else begin
        axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= (! axi_ram_io_axi_arbiter_io_output_arw_halfPipe_ready);
        axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= axi_ram_io_axi_arbiter_io_output_arw_halfPipe_ready;
      end
      if(axi_ram_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_84_)begin
        axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= axi_ram_io_axi_arbiter_io_output_w_valid;
      end
      if(axi_ram_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= axi_ram_io_axi_arbiter_io_output_w_s2mPipe_valid;
      end
      if(_zz_85_)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid;
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= (! axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid);
      end else begin
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= (! axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready);
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_86_)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= axi_sdramCtrl_io_axi_arbiter_io_output_w_valid;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid;
      end
      if(_zz_87_)begin
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= axi_apbBridge_io_axi_arbiter_io_output_arw_valid;
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= (! axi_apbBridge_io_axi_arbiter_io_output_arw_valid);
      end else begin
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= (! axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready);
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready;
      end
      if(_zz_88_)begin
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid <= axi_apbBridge_io_axi_arbiter_io_output_w_valid;
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready <= (! axi_apbBridge_io_axi_arbiter_io_output_w_valid);
      end else begin
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid <= (! axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready);
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready <= axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_41_)begin
      axi_core_cpu_dBus_cmd_m2sPipe_rData_wr <= axi_core_cpu_dBus_cmd_payload_wr;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_address <= axi_core_cpu_dBus_cmd_payload_address;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_data <= axi_core_cpu_dBus_cmd_payload_data;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_mask <= axi_core_cpu_dBus_cmd_payload_mask;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_length <= axi_core_cpu_dBus_cmd_payload_length;
      axi_core_cpu_dBus_cmd_m2sPipe_rData_last <= axi_core_cpu_dBus_cmd_payload_last;
    end
    if(axi_core_cpu_dBus_cmd_m2sPipe_ready)begin
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_wr <= axi_core_cpu_dBus_cmd_m2sPipe_payload_wr;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_address <= axi_core_cpu_dBus_cmd_m2sPipe_payload_address;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_data <= axi_core_cpu_dBus_cmd_m2sPipe_payload_data;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_mask <= axi_core_cpu_dBus_cmd_m2sPipe_payload_mask;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_length <= axi_core_cpu_dBus_cmd_m2sPipe_payload_length;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_rData_last <= axi_core_cpu_dBus_cmd_m2sPipe_payload_last;
    end
    if(_zz_81_)begin
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_wr <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_wr;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_address <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_address;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_data <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_data;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_mask <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_mask;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_length <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_length;
      axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_s2mPipe_rData_last <= axi_core_cpu_dBus_cmd_m2sPipe_m2sPipe_payload_last;
    end
    if(_zz_58_)begin
      axi4SharedDecoder_1__io_input_r_m2sPipe_rData_data <= axi4SharedDecoder_1__io_input_r_payload_data;
      axi4SharedDecoder_1__io_input_r_m2sPipe_rData_resp <= axi4SharedDecoder_1__io_input_r_payload_resp;
      axi4SharedDecoder_1__io_input_r_m2sPipe_rData_last <= axi4SharedDecoder_1__io_input_r_payload_last;
    end
    if(_zz_82_)begin
      axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_addr <= axi_vgaCtrl_io_axi_ar_payload_addr;
      axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_len <= axi_vgaCtrl_io_axi_ar_payload_len;
      axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_size <= axi_vgaCtrl_io_axi_ar_payload_size;
      axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_cache <= axi_vgaCtrl_io_axi_ar_payload_cache;
      axi_vgaCtrl_io_axi_ar_halfPipe_regs_payload_prot <= axi_vgaCtrl_io_axi_ar_payload_prot;
    end
    if(_zz_83_)begin
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr <= axi_ram_io_axi_arbiter_io_output_arw_payload_addr;
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id <= axi_ram_io_axi_arbiter_io_output_arw_payload_id;
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len <= axi_ram_io_axi_arbiter_io_output_arw_payload_len;
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size <= axi_ram_io_axi_arbiter_io_output_arw_payload_size;
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst <= axi_ram_io_axi_arbiter_io_output_arw_payload_burst;
      axi_ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write <= axi_ram_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(_zz_84_)begin
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_data <= axi_ram_io_axi_arbiter_io_output_w_payload_data;
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb <= axi_ram_io_axi_arbiter_io_output_w_payload_strb;
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_rData_last <= axi_ram_io_axi_arbiter_io_output_w_payload_last;
    end
    if(axi_ram_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data <= axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb <= axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
      axi_ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last <= axi_ram_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
    end
    if(_zz_85_)begin
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(_zz_86_)begin
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last;
    end
    if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
    end
    if(_zz_87_)begin
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(_zz_88_)begin
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_data <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_data;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_strb <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_last <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_last;
    end
  end

  always @ (posedge io_axiClk) begin
    axi_core_cpu_debug_resetOut_regNext <= axi_core_cpu_debug_resetOut;
  end

  always @ (posedge io_axiClk or posedge resetCtrl_systemReset) begin
    if (resetCtrl_systemReset) begin
      _zz_8_ <= 1'b0;
    end else begin
      _zz_8_ <= (systemDebugger_1__io_mem_cmd_valid && axi_core_cpu_debug_bus_cmd_ready);
    end
  end


endmodule
