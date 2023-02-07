
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLA is
	Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
			  b : in  STD_LOGIC_VECTOR(3 downto 0);
			  cin : in STD_LOGIC;
           s : out  STD_LOGIC_VECTOR(3 downto 0);
			  cout : out STD_LOGIC);
end CLA;

architecture Behavioral of CLA is
component G_P_generate is
Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
           b : in  STD_LOGIC_VECTOR(3 downto 0);
           G : out  STD_LOGIC_VECTOR(3 downto 0);
           P : out  STD_LOGIC_VECTOR(3 downto 0));
end component;

component carry_generator is
Port ( G : in  STD_LOGIC_VECTOR(3 downto 0);
			  P : in  STD_LOGIC_VECTOR(3 downto 0);
			  cin : STD_LOGIC;
           c : out  STD_LOGIC_VECTOR(3 downto 0));
end component;

signal G,P,c : STD_LOGIC_VECTOR(3 downto 0);
begin
G_P_generate_ins0 : G_P_generate port map (a => a , b => b , G => G , P => P);
carry_generator_ins0 : carry_generator port map (G => G , P => P , cin => cin , c => c);

s(0) <= a(0) xor b(0) xor cin;
s(1) <= a(1) xor b(1) xor c(0);
s(2) <= a(2) xor b(2) xor c(1);
s(3) <= a(3) xor b(3) xor c(2);
cout <= c(3);

end Behavioral;

