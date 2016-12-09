library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sipo is
  port(
    Dnum : in std_logic;
    Qout : out std_logic_vector(3 downto 0):="0000";
    clk: in std_logic:='0'
  );
end entity;


architecture behavioral of sipo is
  signal memory: std_logic_vector(3 downto 0):="0000";
  begin
    process(clk)
    begin
      if rising_edge(clk) then
        memory<=(Dnum & memory(3 downto 1));
      end if;
    end process;
    Qout<=memory;
  end architecture;
