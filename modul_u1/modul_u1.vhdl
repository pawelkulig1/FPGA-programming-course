library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modul_u1 is
  port(
    x:in std_logic_vector(3 downto 0):="0000";
    y:out std_logic_vector(3 downto 0):="0000"
  );
end modul_u1;

architecture behavioral of modul_u1 is
  begin
    y(3)<='0';
    y(0)<= (x(3) nand x(0)) and (x(3) or x(0));
    y(1)<= (x(3) nand x(1)) and (x(3) or x(1));
    y(2)<= (x(3) nand x(2)) and (x(3) or x(2));
  end architecture;
