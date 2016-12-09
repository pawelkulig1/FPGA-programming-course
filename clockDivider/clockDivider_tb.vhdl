library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity clockDivider_tb is
end entity;

architecture testbench of clockDivider_tb is
  component clockDivider
  port(
    clk:in std_logic:='0';
    sout: out std_logic:='0'
  );
end component;
signal clk: std_logic:='0';
signal sout: std_logic:='0';
  begin
    uut: clockDivider port map(
      clk=>clk,
      sout=>sout
    );

    clock_proc : process
    begin
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        clk<='1';
        wait for 5 ns;
        clk<='0';
        wait for 5 ns;
        wait;
      end process;
end architecture;
