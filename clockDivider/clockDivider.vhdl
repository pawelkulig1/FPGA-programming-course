library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity clockDivider is
  port(
    clk:in std_logic:='0';
    sout: out std_logic:='0'
  );
end entity;

architecture behavioral of clockDivider is
  signal counter:std_logic_vector(2 downto 0):="111";
  signal clkfornow : std_logic:='0';
  begin
    process(clk)
    begin
      --if rising_edge(clk) or falling_edge(clk) then
        if counter<4 then
          counter<=counter+1;
        else
          counter<="000";
          clkfornow<=clk;
        end if;
      --end if;
      end process;
    sout<=clkfornow;
  end architecture;
