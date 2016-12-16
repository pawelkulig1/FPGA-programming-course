library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity code_tb is
end entity;

architecture testbench of code_tb is
  component code
  port(
    we : in std_logic_vector(2 downto 0):="000";
    clk, reset : in std_logic;
    wy: out std_logic:='0' -- 0 is closed
  );
end component;

signal we :std_logic_vector(2 downto 0):="000";
signal clk: std_logic:='0';
signal reset : std_logic;
signal wy: std_logic:='0';
  begin
    uut: code port map(
      clk=>clk,
      we=>we,
      wy=>wy,
      reset=>reset
    );

    clock_proc : process
    begin
      clk<=not clk;
      wait for 1 ns;
    end process;

    tb_proc : process
    begin
      reset<='1';
      wait for 2 ns;
      reset<='0';
      wait for 2 ns;

      we<="000";
      wait for 2 ns;
      we<="111";
      wait for 2 ns;
      we<="101";
      wait for 2 ns;
      we<="001";
      wait for 2 ns;
      we<="011";
      wait for 2 ns;
      we<="000";
      wait for 2 ns;
      we<="111";
      wait for 2 ns;
      we<="001";
      wait;

    end process;
end architecture;
