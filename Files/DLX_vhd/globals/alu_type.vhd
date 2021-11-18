library ieee;
use ieee.std_logic_1164.all;

package alu_type is

    constant ALU_SIZE : integer :=  6;   
       
    constant NOP: std_logic_vector(ALU_SIZE - 1 downto 0)    :="000000"; 
    constant ADD : std_logic_vector(ALU_SIZE - 1 downto 0)   :="000001";     
    constant SUB : std_logic_vector(ALU_SIZE - 1 downto 0)   :="000010";     
    constant MULT : std_logic_vector(ALU_SIZE - 1 downto 0)  := "000011";   
    constant BITAND : std_logic_vector(ALU_SIZE - 1 downto 0):="000100"; 
    constant BITOR : std_logic_vector(ALU_SIZE - 1 downto 0) :="000101";
	constant BITXOR : std_logic_vector(ALU_SIZE - 1 downto 0):="000110"; 
    constant FUNCLSL: std_logic_vector(ALU_SIZE - 1 downto 0):="000111";
    constant FUNCRL : std_logic_vector(ALU_SIZE - 1 downto 0):="001000"; 
    constant FUNCRR : std_logic_vector(ALU_SIZE - 1 downto 0):="001001";
    constant FUNCLSR: std_logic_vector(ALU_SIZE - 1 downto 0):="001010"; 
 
-- Change the values of the instructions coding as you want, depending also on the type of control unit choosen

end alu_type;


