library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decrementator_tb is
end entity;

architecture testbench of decrementator_tb is
  component decrementator
  port(
    ster: in std_logic:='0';
    invec: in std_logic_vector(3 downto 0):="0000";
    y: out std_logic_vector(3 downto 0):="0000";
    Di: out std_logic:='0'
  );
  end component;

  signal ster: std_logic:='0';
  signal invec: std_logic_vector(3 downto 0):="0000";
  signal y: std_logic_vector(3 downto 0):="0000";
  signal Di: std_logic:='0';

  begin uut: decrementator port map(
  ster=>ster,
  invec=>invec,
  y=>y,
  Di=>Di
  );
  stim : process
  begin
    invec<="0001";
    wait for 10 ns;

    invec<="0010";
    wait for 10 ns;

    invec<="0100";
    wait for 10 ns;

    invec<="1010";
    wait for 10 ns;

    invec<="0000";
    wait for 10 ns;

    invec<="1101";
    wait for 10 ns;
    wait;
  end process;
end testbench;
