library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_tb is
end entity;

architecture testbench of adder_tb is
  component adder
    port(
    A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    Cin: in std_logic:='0';
    y:out std_logic_vector(3 downto 0);
    Cout:out std_logic:='0'
    );
  end component;

  signal A:std_logic_vector(3 downto 0);
  signal B:std_logic_vector(3 downto 0);
  signal Cin:std_logic:='0';
  signal y: std_logic_vector(3 downto 0):="0000";
  signal Cout:std_logic:='0';

  begin
    uut: adder port map(
    A=>A,
    B=>B,
    Cin=>Cin,
    y=>y,
    Cout=>Cout
    );
    stim : process
    begin
      A<="0000";
      B<="1010";
      wait for 10 ns;

      --y<="0000";
      A<="0101";
      B<="1010";
      wait for 10 ns;

      --y<="0000";
      A<="0101";
      B<="0101";
      wait for 10 ns;

      --y<="0000";
      A<="0111";
      B<="1110";
      wait for 10 ns;
      wait;
    end process;
  end testbench;
