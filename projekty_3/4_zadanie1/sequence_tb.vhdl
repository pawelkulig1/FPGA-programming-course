library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sequence_tb is
end entity;

architecture testbench of sequence_tb is
  component sequence
  port(
    we : in std_logic_vector(3 downto 0):="0000";
    clk, reset : in std_logic;
    wy: out std_logic_vector(1 downto 0):="00"
  );
end component;

signal we :std_logic_vector(3 downto 0):="0000";
signal clk: std_logic:='0';
signal reset : std_logic;
signal wy: std_logic_vector(1 downto 0):="00";
  begin
    uut: sequence port map(
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
      we<="0000";
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;

      we<="0000";
      reset<='1';
      wait for 2 ns;
      reset<='0';

      we<=we+1;
      wait for 2 ns;

      we<=we+1;
      wait for 2 ns;
      we<=we+1;
      wait for 2 ns;
      we<=we+1;
      wait for 2 ns;
      we<=we+1;
      wait for 2 ns;
      we<=we+1;
      wait for 2 ns;
      we<=we+1;



      wait;

    end process;
end architecture;
