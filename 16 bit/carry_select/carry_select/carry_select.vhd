library IEEE;
use ieee.std_logic_1164.all;
entity carry_select16 is

port( A, B : in std_logic_vector( 15 downto 0);
C_in : in std_logic;
SUM : out std_logic_vector( 15 downto 0);
C_out : out std_logic);
end carry_select16;
architecture RTL of carry_select16 is
component carry_select4
port( c, d : in std_logic_vector( 3 downto 0);
C_input : in std_logic;
Result : out std_logic_vector( 3 downto 0);
C_output : out std_logic);
end component;

For S0: carry_select4 Use entity work.carry_select4(RTL);
For S1: carry_select4 Use entity work.carry_select4(RTL);
For S2: carry_select4 Use entity work.carry_select4(RTL);
For S3: carry_select4 Use entity work.carry_select4(RTL);
signal tempc1, tempc2, tempc3 : std_logic;
begin
S0: carry_select4 port map( c=>A ( 3 downto 0 ), d =>B ( 3 downto 0 ), C_input=>C_in, Result=>SUM ( 3 downto 0 ), C_output=>tempc1 );
S1: carry_select4 port map( c=>A ( 7 downto 4 ), d =>B ( 7 downto 4 ), C_input=>tempc1, Result=>SUM ( 7 downto 4 ), C_output=>tempc2 );
S2: carry_select4 port map( c=>A ( 11 downto 8 ), d =>B ( 11 downto 8 ), C_input=>tempc2, Result=>SUM ( 11 downto 8 ), C_output=>tempc3 );
S3: carry_select4 port map( c=>A ( 15 downto 12 ), d =>B ( 15 downto 12 ), C_input=>tempc3, Result=>SUM ( 15 downto 12 ), C_output=>C_out );
end;