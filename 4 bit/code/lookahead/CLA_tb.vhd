
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use std.env.finish;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CLA_tb IS
END CLA_tb;
 
ARCHITECTURE behavior OF CLA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CLA
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLA PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s,
          cout => cout
        );
a <= "1111" , "1010" after 20 ns , "1110" after 40 ns, "0101" after 60 ns; --11111 10100 10001 01111
	b <= "1111" , "1010" after 20 ns , "0011" after 40 ns, "1010" after 60 ns;
	cin <= '1' , '0' after 20 ns;
	
	
end_process : process
begin
	wait for 80 ns;
	finish;
end process;

END;
