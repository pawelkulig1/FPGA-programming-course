library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sync_counter_tb is
end entity;

architecture testbench of sync_counter_tb is
  component sync_counter
  port(
    Up: in std_logic:='0';
    clk : in std_logic;
    n: in std_logic_vector(5 downto 0):="000101";
    Q: out std_logic_vector(5 downto 0):="000000"
  );
  end component;


  signal Up: std_logic:='0';
  signal clk : std_logic;
  signal n: std_logic_vector(5 downto 0):="000101";
  signal Q: std_logic_vector(5 downto 0):="000000";

  begin
    uut:sync_counter port map(
    Up=>Up,
    clk=>clk,
    n=>n,
    Q=>Q
    );

    clk_process : process
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
      --wait for 10 ns;
      wait;
    end process;
    stim_process: process
    begin
      n<="001111";
      Up<='0';
      wait for 10 ns;

      n<="001111";
      Up<='0';
      wait for 10 ns;

      n<="001111";
      Up<='0';
      wait for 10 ns;
      n<="000101";

      n<="001111";
      Up<='0';
      wait for 10 ns;

      n<="000101";
      n<="001111";
      Up<='0';

      wait;
    end process;
  end testbench;
