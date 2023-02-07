
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity G_P_generate is
	Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
           b : in  STD_LOGIC_VECTOR(3 downto 0);
           G : out  STD_LOGIC_VECTOR(3 downto 0);
           P : out  STD_LOGIC_VECTOR(3 downto 0));
end G_P_generate;

architecture Behavioral of G_P_generate is
begin
G <= a and b;
P <= a or b;

end Behavioral;

