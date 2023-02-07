
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use std.env.finish;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY carry_save_adder_tb IS
END carry_save_adder_tb;
 
ARCHITECTURE behavior OF carry_save_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_save_adder
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         c : IN  std_logic_vector(3 downto 0);
         s : OUT  std_logic_vector(4 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal c : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal s : std_logic_vector(4 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_save_adder PORT MAP (
          a => a,
          b => b,
          c => c,
          s => s,
          cout => cout
        );
a <= "1111" , "1010" after 20 ns , "0100" after 40 ns, "0101" after 60 ns; 
b <= "1010" , "1011" after 20 ns , "1001" after 40 ns, "1010" after 60 ns;
c <= "1100" , "0010" after 20 ns , "0111" after 40 ns, "1010" after 60 ns;

end_process : process
begin
	wait for 80 ns;
	finish;
end process;
  
END;
