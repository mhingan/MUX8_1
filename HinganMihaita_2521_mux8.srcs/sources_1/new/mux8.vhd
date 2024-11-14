----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2024 08:43:02 PM
-- Design Name: 
-- Module Name: mux8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i4 : in STD_LOGIC;
           i5 : in STD_LOGIC;
           i6 : in STD_LOGIC;
           i7 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           y : out STD_LOGIC);
end mux8;

architecture Behavioral of mux8 is

begin
    process(i0, i1, i2, i3, i4, i5, i6, i7, a1, a2, a3)
    begin
        if (a1 = '0' and a2 = '0' and a3 = '0') then y <= i0;
        elsif (a1 = '0' and a2 = '0' and a3 = '1') then y <= i1;
        elsif (a1 = '0' and a2 = '1' and a3 = '0') then y <= i2;
        elsif (a1 = '0' and a2 = '1' and a3 = '1') then y <= i3;
        elsif (a1 = '1' and a2 = '0' and a3 = '0') then y <= i4;
        elsif (a1 = '1' and a2 = '0' and a3 = '1') then y <= i5;
        elsif (a1 = '1' and a2 = '1' and a3 = '0') then y <= i6;
        else
            y <= i7;
        end if;
    end process;

end Behavioral;
