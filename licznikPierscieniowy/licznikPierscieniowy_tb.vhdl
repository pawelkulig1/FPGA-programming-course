library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity licznikPierscieniowy_tb is
end entity;

architecture testbench of licznikPierscieniowy_tb is
  component licznikPierscieniowy
  PORT(
    CLK : in std_logic:='0';
    Q: out std_logic_vector(7 downto 0)
  );
end component;
  signal CLK :std_logic:='0';
  signal Q: std_logic_vector(7 downto 0);

  begin
    uut: licznikPierscieniowy port map(
    CLK=>CLK,
    Q=>Q
    );

    clock_process: process
    begin
      clk<='0';
      wait for 10 ns;

      clk<='1';
      wait for 10 ns;

      clk<='0';
      wait for 10 ns;

      clk<='1';
      wait for 10 ns;

      clk<='0';
      wait for 10 ns;

      clk<='1';
      wait for 10 ns;

      clk<='0';
      wait for 10 ns;

      clk<='1';
      wait for 10 ns;

      clk<='0';
      wait for 10 ns;

      clk<='1';
      wait for 10 ns;

      clk<='0';
      wait for 10 ns;

      clk<='1';
      wait for 10 ns;
      wait;
    end process;
end testbench;
