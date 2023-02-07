
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity carry_generator is
	Port ( G : in  STD_LOGIC_VECTOR(3 downto 0);
			  P : in  STD_LOGIC_VECTOR(3 downto 0);
			  cin : STD_LOGIC;
           c : out  STD_LOGIC_VECTOR(3 downto 0));
end carry_generator;

architecture Behavioral of carry_generator is

begin
c(0) <= G(0) or (cin and P(0));
c(1) <= G(1) or (G(0) and P(1)) or (cin and P(0) and P(1));
c(2) <= G(2) or (G(1) and P(2)) or (G(0) and P(1) and P(2)) or (cin and P(0) and P(1) and P(2));
c(3) <= G(3) or (G(2) and P(3)) or (G(1) and P(2) and P(3)) or (G(0) and P(1) and P(2) and P(3)) or (cin and P(0) and P(1) and P(2) and P(3));
end Behavioral;

