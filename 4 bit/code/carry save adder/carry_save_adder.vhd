
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity carry_save_adder is
Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
			  b : in  STD_LOGIC_VECTOR(3 downto 0);
			  c : in  STD_LOGIC_VECTOR(3 downto 0);
           s : out  STD_LOGIC_VECTOR(4 downto 0);
			  cout : out STD_LOGIC);
end carry_save_adder;

architecture Behavioral of carry_save_adder is
component full_adder is
Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

component add_sub_4_bit is
port( a : in std_logic_vector (3 downto 0);
      b : in std_logic_vector (3 downto 0);
		k : in std_logic;
		s : out std_logic_vector (3 downto 0);
		cout : out std_logic
		);
end component;
signal sum,carry : STD_LOGIC_VECTOR(3 downto 0);
begin

full_adder_ins0 : full_adder port map (i0 => a(0), i1 => b(0), cin => c(0) , sum => sum(0), cout => carry(0));
full_adder_ins1 : full_adder port map (i0 => a(1), i1 => b(1), cin => c(1) , sum => sum(1), cout => carry(1));
full_adder_ins2 : full_adder port map (i0 => a(2), i1 => b(2), cin => c(2) , sum => sum(2), cout => carry(2));
full_adder_ins3 : full_adder port map (i0 => a(3), i1 => b(3) , cin => c(3) , sum => sum(3), cout => carry(3));

s(0) <= sum(0);

add_sub_4_bit_ins0 : add_sub_4_bit port map (a(3) => '0',a(2 downto 0) => sum(3 downto 1),b => carry,k => '0',s => s(4 downto 1),cout => cout);

end Behavioral;

