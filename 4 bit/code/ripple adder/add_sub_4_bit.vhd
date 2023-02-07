----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:48 11/10/2021 
-- Design Name: 
-- Module Name:    add_sub_4_bit - Behavioral 
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

entity add_sub_4_bit is
port( a : in std_logic_vector (3 downto 0);
      b : in std_logic_vector (3 downto 0);
		k : in std_logic;
		s : out std_logic_vector (3 downto 0);
		cout : out std_logic
		);
end add_sub_4_bit;

architecture Behavioral of add_sub_4_bit is
component full_adder is
Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;
signal c1,c2,c3 : std_logic;
signal x : STD_LOGIC_VECTOR(3 downto 0);

begin
x(0) <= b(0) xor k;
x(1) <= b(1) xor k;
x(2) <= b(2) xor k;
x(3) <= b(3) xor k;
full_adder_ins0 : full_adder port map (i0 => a(0), i1 => x(0), cin => k , sum => s(0), cout => c1);
full_adder_ins1 : full_adder port map (i0 => a(1), i1 => x(1), cin => c1 , sum => s(1), cout => c2);
full_adder_ins2 : full_adder port map (i0 => a(2), i1 => x(2), cin => c2 , sum => s(2), cout => c3);
full_adder_ins3 : full_adder port map (i0 => a(3), i1 => x(3) , cin => c3 , sum => s(3), cout => cout);

end Behavioral;

