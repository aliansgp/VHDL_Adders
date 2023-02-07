library IEEE;
use ieee.std_logic_1164.all;
entity carry_select4 is
port( c, d : in std_logic_vector( 3 downto 0);
C_input : in std_logic;
Result : out std_logic_vector( 3 downto 0);
C_output : out std_logic);
end carry_select4;
architecture RTL of carry_select4 is
component ripple_carry4
port( e, f : in std_logic_vector( 3 downto 0);
carry_in : in std_logic;
S : out std_logic_vector( 3 downto 0);
carry_out : out std_logic);
end component;

For S0: ripple_carry4 Use entity work.ripple_carry4(RTL);
For S1: ripple_carry4 Use entity work.ripple_carry4(RTL);
signal SUM0, SUM1 : std_logic_vector( 3 downto 0 );
signal carry0, carry1 : std_logic;
signal zero, one : std_logic;
begin
zero<='0';
one<='1';
S0: ripple_carry4 port map( e=>c, f=>d, carry_in=>zero, S=>SUM0, carry_out=>carry0 );
S1: ripple_carry4 port map( e=>c, f=>d, carry_in=>one, S=>SUM1, carry_out=>carry1 );
Result<=SUM0 when C_input='0' else
SUM1 when C_input='1' else
"ZZZZ";
C_output<= (C_input and carry1) or carry0;
end;