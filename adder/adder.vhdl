library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
  port(
  A: in std_logic_vector(5 downto 0);
  B: in std_logic_vector(5 downto 0);
  Cin: in std_logic:='0';
  y:out std_logic_vector(5 downto 0):="000000";
  Cout:out std_logic:='0'
  );
end adder;

architecture behavioral of adder is
  signal c:std_logic_vector(5 downto 0):="000000";
  begin
    y(0)<= (A(0) xor B(0)) xor Cin;
    c(0)<= (A(0) and B(0)) or ((A(0) or B(0)) and Cin);
    y(1)<= (A(1) xor B(1)) xor c(0);
    c(1)<= (A(1) and B(1)) or ((A(1) or B(1)) and c(0));
    y(2)<= (A(2) xor B(2)) xor c(1);
    c(2)<= (A(2) and B(2)) or ((A(2) or B(2)) and c(1));
    y(3)<= (A(3) xor B(3)) xor c(2);
    c(3)<= (A(3) and B(3)) or ((A(3) or B(3)) and c(2));
    y(4)<= (A(4) xor B(4)) xor c(3);
    c(4)<= (A(4) and B(4)) or ((A(4) or B(4)) and c(3));
    y(5)<= (A(5) xor B(5)) xor c(4);
    c(5)<= (A(5) and B(5)) or ((A(5) or B(5)) and c(4));
    Cout<=c(5);
  end architecture;
