library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decrementator is
  port(
    ster: in std_logic:='0';
    invec: in std_logic_vector(3 downto 0):="0000";
    y: out std_logic_vector(3 downto 0):="0000";
    Di: out std_logic:='0'
  );
end decrementator;

architecture behavioral of decrementator is
  signal to_sub: std_logic_vector(3 downto 0):="0001";
  signal D:std_logic_vector(3 downto 0):="0000";
  begin
    y(0)<=(invec(0) xor to_sub(0)) xor '0';
    D(0)<=(not (invec(0) xor to_sub(0)) and '0') or (not invec(0) and to_sub(0));
    y(1)<=(invec(1) xor to_sub(1)) xor D(0);
    D(1)<=((not (invec(1) xor to_sub(1))) and D(0)) or (not invec(1) and to_sub(1));
    y(2)<=(invec(2) xor to_sub(2)) xor D(1);
    D(2)<=((not (invec(2) xor to_sub(2))) and D(1)) or (not invec(2) and to_sub(2));
    y(3)<=(invec(3) xor to_sub(3)) xor D(2);
    D(3)<=((not (invec(3) xor to_sub(3))) and D(2)) or (not invec(3) and to_sub(3));
    Di<=D(3);
  end behavioral;
