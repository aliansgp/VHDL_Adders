----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity add_sub_16_bit is
port( a : in std_logic_vector (15 downto 0);
      b : in std_logic_vector (15 downto 0);
		k : in std_logic;
		s : out std_logic_vector (15 downto 0);
		cout : out std_logic
		);
end add_sub_16_bit;

architecture Behavioral of add_sub_16_bit is
component full_adder is
Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16 : std_logic;
signal x : STD_LOGIC_VECTOR(15 downto 0);

begin
x(0) <= b(0) xor k;
x(1) <= b(1) xor k;
x(2) <= b(2) xor k;
x(3) <= b(3) xor k;
x(4) <= b(4) xor k;
x(5) <= b(5) xor k;
x(6) <= b(6) xor k;
x(7) <= b(7) xor k;
x(8) <= b(8) xor k;
x(9) <= b(9) xor k;
x(10) <= b(10) xor k;
x(11) <= b(11) xor k;
x(12) <= b(12) xor k;
x(13) <= b(13) xor k;
x(14) <= b(14) xor k;
x(15) <= b(15) xor k;
full_adder_ins0  : full_adder port map (i0 => a(0) , i1 => x(0) , cin => k , sum => s(0), cout => c1);
full_adder_ins1  : full_adder port map (i0 => a(1) , i1 => x(1) , cin => c1 , sum => s(1), cout => c2);
full_adder_ins2  : full_adder port map (i0 => a(2) , i1 => x(2) , cin => c2 , sum => s(2), cout => c3);
full_adder_ins3  : full_adder port map (i0 => a(3) , i1 => x(3) , cin => c3 , sum => s(3), cout => c4);
full_adder_ins4  : full_adder port map (i0 => a(4) , i1 => x(4) , cin => c4 , sum => s(4), cout => c5);
full_adder_ins5  : full_adder port map (i0 => a(5) , i1 => x(5) , cin => c5 , sum => s(5), cout => c6);
full_adder_ins6  : full_adder port map (i0 => a(6) , i1 => x(6) , cin => c6 , sum => s(6), cout => c7);
full_adder_ins7  : full_adder port map (i0 => a(7) , i1 => x(7) , cin => c7 , sum => s(7), cout => c8);
full_adder_ins8  : full_adder port map (i0 => a(8) , i1 => x(8) , cin => c8 , sum => s(8), cout => c9);
full_adder_ins9  : full_adder port map (i0 => a(9) , i1 => x(9) , cin => c9 , sum => s(9), cout => c10);
full_adder_ins10 : full_adder port map (i0 => a(10), i1 => x(10), cin => c10 , sum => s(10), cout => c11);
full_adder_ins11 : full_adder port map (i0 => a(11), i1 => x(11), cin => c11 , sum => s(11), cout => c12);
full_adder_ins12 : full_adder port map (i0 => a(12), i1 => x(12), cin => c12 , sum => s(12), cout => c13);
full_adder_ins13 : full_adder port map (i0 => a(13), i1 => x(13), cin => c13 , sum => s(13), cout => c14);
full_adder_ins14 : full_adder port map (i0 => a(14), i1 => x(14), cin => c14 , sum => s(14), cout => c15);
full_adder_ins15 : full_adder port map (i0 => a(15), i1 => x(15), cin => c15 , sum => s(15), cout => cout);

end Behavioral;

