
-- VHDL Instantiation Created from source file add_sub_16_bit.vhd -- 19:00:34 01/10/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT add_sub_16_bit
	PORT(
		a : IN std_logic_vector(15 downto 0);
		b : IN std_logic_vector(15 downto 0);
		k : IN std_logic;          
		s : OUT std_logic_vector(15 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;

	Inst_add_sub_16_bit: add_sub_16_bit PORT MAP(
		a => ,
		b => ,
		k => ,
		s => ,
		cout => 
	);


