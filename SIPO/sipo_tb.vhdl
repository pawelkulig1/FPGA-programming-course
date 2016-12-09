library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sipo_tb is
end entity;

architecture behavioral of sipo_tb is
  component sipo
  port(
  Dnum : in std_logic;
  Qout : out std_logic_vector(3 downto 0):="0000";
  clk: in std_logic:='0'
  );
end component;

signal Dnum : std_logic;
signal Qout : std_logic_vector(3 downto 0):="0000";
signal clk: std_logic:='0';

begin
  uut: sipo port map(
    Dnum=>Dnum,
    Qout=>Qout,
    clk=>clk
  );

  clk_proc : process
  begin
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
    wait;
  end process;

  test: process
  begin
    Dnum<='1';
    wait for 10 ns;
    Dnum<='0';
    wait for 10 ns;
    Dnum<='1';
    wait for 10 ns;
    Dnum<='0';
    wait for 10 ns;
    Dnum<='1';
    wait for 10 ns;
    Dnum<='1';
    wait for 10 ns;
    Dnum<='1';
    wait for 10 ns;
    Dnum<='0';
    wait for 10 ns;
    Dnum<='1';
    wait for 10 ns;
    Dnum<='0';
    wait for 10 ns;
    wait;
  end process;
end architecture;
