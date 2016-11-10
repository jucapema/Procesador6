----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:22 05/13/2016 
-- Design Name: 
-- Module Name:    SEU_22 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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


entity SEU_22 is
    Port ( disp22 : in  STD_LOGIC_VECTOR (21 downto 0);
           simm32 : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU_22;

architecture Behavioral of SEU_22 is

begin
process(disp22)
	begin
	if(disp22(21) = '1')then
				simm32(21 downto 0) <= disp22;
				simm32(31 downto 22) <= (others=>'1');
			else
				simm32(21 downto 0) <= disp22;
				simm32(31 downto 22) <= (others=>'0');
			end if;
end process;

end Behavioral;
