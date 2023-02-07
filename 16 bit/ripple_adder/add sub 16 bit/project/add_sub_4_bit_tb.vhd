
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use std.env.finish;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY add_sub_16_bit_tb IS
END add_sub_16_bit_tb;
 
ARCHITECTURE behavior OF add_sub_16_bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add_sub_16_bit
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         b : IN  std_logic_vector(15 downto 0);
         k : IN  std_logic;
         s : OUT  std_logic_vector(15 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(15 downto 0) := (others => '0');
   signal b : std_logic_vector(15 downto 0) := (others => '0');
   signal k : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(15 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_sub_16_bit PORT MAP (
          a => a,
          b => b,
          k => k,
          s => s,
          cout => cout
        );

a <= "0000000000001111" , "0000000000001010" after 20 ns , "0000000000000110" after 40 ns, "0000000000000101" after 60 ns; 
b <= "0000000000000111" , "0000000000001000" after 20 ns , "0000000000000011" after 40 ns, "0000000000000110" after 60 ns;
k <= '1' ;
	
	
end_process : process
begin
	wait for 80 ns;
	finish;
end process;

END;
