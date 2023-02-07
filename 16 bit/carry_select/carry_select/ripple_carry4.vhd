library IEEE;
use ieee.std_logic_1164.all;
entity ripple_carry4 is
port( e, f : in std_logic_vector( 3 downto 0);
carry_in : in std_logic;
S : out std_logic_vector( 3 downto 0);
carry_out : out std_logic);
end ripple_carry4;
architecture RTL of ripple_carry4 is
begin
process(e, f, carry_in)
variable tempC : std_logic_vector( 4 downto 0 );
variable P : std_logic_vector( 3 downto 0 );
variable G : std_logic_vector( 3 downto 0 );
begin
tempC(0) := carry_in;
for i in 0 to 3 loop
P(i):=e(i) xor f(i);
G(i):=e(i) and f(i);
S(i)<= P(i) xor tempC(i);
tempC(i+1):=G(i) or (tempC(i) and P(i));
end loop;
carry_out <= tempC(4);
end process;
end;