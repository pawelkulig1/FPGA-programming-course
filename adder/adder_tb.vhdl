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
      A<="000000";
      B<="001010";
      wait for 10 ns;

      --y<="0000";
      A<="000101";
      B<="001010";
      wait for 10 ns;

      --y<="0000";
      A<="000101";
      B<="000101";
      wait for 10 ns;

      --y<="0000";
      A<="000111";
      B<="001110";
      wait for 10 ns;
      
      wait;
    end process;
  end testbench;
