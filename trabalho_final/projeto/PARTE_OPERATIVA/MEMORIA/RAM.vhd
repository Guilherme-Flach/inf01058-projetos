LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY RAM IS
	PORT(
	   CLK, RST:  IN STD_LOGIC;
		READ_EN:   IN STD_LOGIC;
		WRITE_EN:  IN STD_LOGIC;
		ADDR :     IN  STD_LOGIC_VECTOR  (7 DOWNTO 0);
		DATA_IN :  IN  STD_LOGIC_VECTOR  (7 DOWNTO 0);
		DATA_OUT	: OUT STD_LOGIC_VECTOR  (7 DOWNTO 0));
END RAM;

ARCHITECTURE arch OF RAM IS

type tRAM is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);

constant initialData : tRAM := (
	-- PROGRAMA: compara posições 0x80 e 0x82. Carrega 1 no AC se são iguais e 0 c.c. (guarda o resultado em 0x85)
	x"20", x"80", x"60", x"30", x"81", x"30", x"82", x"A0", -- (0x00 a 0x07) LDA 0x80; NOT; ADD 0x81; ADD 0x82; JZ
	x"0D", x"20", x"83", x"80", x"0F", x"20", x"84", x"10", -- (0x08 a 0x0F) 0x0D; LDA 0x83; JMP 0x0F; LDA 0x84; STA
	x"85", x"40", x"86", x"20", x"85", x"F0", x"00", x"00", -- (0x10 a 0x17) 0x85; OR 0x86; LDA 0x85; HLT (fim)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x18 a 0x1F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x20 a 0x27)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x28 a 0x2F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x30 a 0x37)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x38 a 0x3F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x40 a 0x47)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x48 a 0x4F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x50 a 0x57)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x58 a 0x5F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x60 a 0x67)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x68 a 0x6F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x70 a 0x77)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x78 a 0x7F)
	x"0A", x"01", x"0A", x"00", x"01", x"00", x"FF", x"00", -- (0x80 a 0x87) 0x0A; 0x01; 0x0A; 0x00; 0x01; 0x00; 0xFF
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x88 a 0x8F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x90 a 0x97)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0x98 a 0x9F)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xA0 a 0xA7)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xA8 a 0xAF)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xB0 a 0xB7)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xB8 a 0xBF)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xC0 a 0xC7)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xC8 a 0xCF)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xD0 a 0xD7)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xD8 a 0xDF)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xE0 a 0xE7)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xE8 a 0xEF)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", -- (0xF0 a 0xF7)
	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"  -- (0xF8 a 0xFF)
);

signal sRAM: tRAM := initialData;

BEGIN

process(CLK, RST)
begin
	if RST = '0' then
		sRAM <= (others => (others => '0'));
	elsif rising_edge(CLK) then
		if READ_EN = '1' then
			DATA_OUT <= sRAM(conv_integer(unsigned(ADDR)));
		elsif WRITE_EN = '1' then
			sRAM(conv_integer(unsigned(ADDR))) <= DATA_IN;
		end if;
	end if;
end process;

END arch;