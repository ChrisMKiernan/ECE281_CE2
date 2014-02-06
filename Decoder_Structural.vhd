----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:58 02/05/2014 
-- Design Name: 
-- Module Name:    Decoder_Structural - Structural 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_Structural is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is

	COMPONENT And3
	Port(
		I0 : IN std_logic;
		I1 : IN STD_LOGIC;
		I2 : IN STD_LOGIC;
		O : Out STD_LOGIC
		);
		END COMPONENT;
	Component Inverter
	Port(
		I : IN STD_LOGIC;
		O : Out STD_LOGIC);
		END COMPONENT;
	SIGNAL I0_Not, I1_Not : STD_LOGIC;

begin

	I0_INV: Inverter PORT MAP(I0,I0_Not);
	I1_INV: Inverter PORT MAP(I1,I1_Not);
	Y0_and3: And3 PORT MAP(
		I0 => I0_Not,
		I1 => I1_Not,
		I2 =>	EN,
		O => Y0
	);
	Y1_and3: And3 PORT MAP(I0,I1_Not,EN,Y1);
	Y2_and3: And3 PORT MAP(I0_Not,I1,EN,Y2);
	Y3_and3: And3 PORT MAP(I0,I1,EN,Y3);

end Structural;

