----------------------------------------------------------------------------------
--
-- Copyright 2019 Ruhr University Bochum, Horst Görtz Institute for IT Security
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software
-- and associated documentation files (the "Software"), to deal in the Software without restriction, 
-- including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
-- and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do 
-- so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies or substantial 
-- portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
-- LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
-- IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
-- WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
-- SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------
-- Entity 
------------------------------------------------------------------ 

entity sbox8 is
	port(
		encrypt	: in std_logic;
		input		: in std_logic_vector(7 downto 0);
		output	: out std_logic_vector(7 downto 0)
		);

end entity sbox8;

architecture canright of sbox8 is
	COMPONENT bSbox
	PORT(
		A : IN std_logic_vector(7 downto 0);
		encrypt : IN std_logic;          
		Q : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
begin
	Inst_bSbox: bSbox PORT MAP(
		A => input,
		encrypt => encrypt,
		Q => output
	);
end architecture;