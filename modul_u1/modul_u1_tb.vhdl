library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modul_u1_tb is
end entity;

architecture tesbench of modul_u1_tb is
  component modul_u1
  port(
    x:in std_logic_vector(3 downto 0):="0000";
    y:out std_logic_vector(3 downto 0):="0000"
  );

end component;
signal x: std_logic_vector(3 downto 0):="0000";
signal y:std_logic_vector(3 downto 0):="0000";

begin
  uut: modul_u1 port map(x=>x, y=>y );
  stim : process
  begin
    x<="1111";
    wait for 10 ns;

    x<="1100";
    wait for 10 ns;

    x<="1011";
    wait for 10 ns;

    x<="0111";
    wait for 10 ns;

    x<="0000";
    wait for 10 ns;

    x<="0101";
    wait for 10 ns;

    wait;
  end process;
end architecture;
