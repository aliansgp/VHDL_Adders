
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
	Port ( a : in  STD_LOGIC_VECTOR(15 downto 0);
			  b : in  STD_LOGIC_VECTOR(15 downto 0);
			  cin : in STD_LOGIC;
           s : out  STD_LOGIC_VECTOR(15 downto 0);
			  cout : out STD_LOGIC);
end CLA;

architecture Behavioral of CLA is
component G_P_generate is
Port ( a : in  STD_LOGIC_VECTOR(15 downto 0);
           b : in  STD_LOGIC_VECTOR(15 downto 0);
           G : out  STD_LOGIC_VECTOR(15 downto 0);
           P : out  STD_LOGIC_VECTOR(15 downto 0));
end component;

component carry_generator is
Port ( G : in  STD_LOGIC_VECTOR(15 downto 0);
			  P : in  STD_LOGIC_VECTOR(15 downto 0);
			  cin : STD_LOGIC;
           c : out  STD_LOGIC_VECTOR(15 downto 0));
end component;

signal G,P,c : STD_LOGIC_VECTOR(15 downto 0);
begin
G_P_generate_ins0 : G_P_generate port map (a => a , b => b , G => G , P => P);
carry_generator_ins0 : carry_generator port map (G => G , P => P , cin => cin , c => c);

s(0) <= a(0) xor b(0) xor cin;
s(1) <= a(1) xor b(1) xor c(0);
s(2) <= a(2) xor b(2) xor c(1);
s(3) <= a(3) xor b(3) xor c(2);
s(4) <= a(4) xor b(4) xor c(3);
s(5) <= a(5) xor b(5) xor c(4);
s(6) <= a(6) xor b(6) xor c(5);
s(7) <= a(7) xor b(7) xor c(6);
s(8) <= a(8) xor b(8) xor c(7);
s(9) <= a(9) xor b(9) xor c(8);
s(10) <= a(10) xor b(10) xor c(9);
s(11) <= a(11) xor b(11) xor c(10);
s(12) <= a(12) xor b(12) xor c(11);
s(13) <= a(13) xor b(13) xor c(12);
s(14) <= a(14) xor b(14) xor c(13);
s(15) <= a(15) xor b(15) xor c(14);
cout <= c(15);

end Behavioral;

