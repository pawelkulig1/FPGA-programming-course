library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity multiply_tb is
end entity;

architecture testbench of multiply_tb is
  component multiply
  port(
    sigin: in std_logic_vector(7 downto 0);
    sigout: out std_logic_vector(7 downto 0);
    clk : in std_logic:='0';
    mode : in std_logic:='0' -- 0 is addition
  );
end component;
  signal sigin: std_logic_vector(7 downto 0);
  signal sigout:  std_logic_vector(7 downto 0);
  signal clk : std_logic:='0';
  signal mode : std_logic:='0'; -- 0 is addition

begin
  uut: multiply port map(
  sigin=>sigin,
  sigout=>sigout,
  clk=>clk,
  mode=>mode
  );

  clock_process : process
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
    clk<='1';
    wait for 5 ns;

  end process;

  test : process
  begin
    sigin<="00000101";
    mode<='0';
    wait for 10 ns;

    sigin<="00000111";
    mode<='0';
    wait for 10 ns;

    sigin<="00001101";
    mode<='0';
    wait for 10 ns;

    sigin<="00100101";
    mode<='0';
    wait for 10 ns;

    sigin<="01000101";
    mode<='1';
    wait for 10 ns;

    sigin<="00000010";
    mode<='1';
    wait for 10 ns;

    sigin<="10000101";
    mode<='1';
    wait for 10 ns;

    wait;

  end process;
end architecture;
