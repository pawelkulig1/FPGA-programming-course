library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity multiply is
  port(
    sigin: in std_logic_vector(7 downto 0);
    sigout: out std_logic_vector(7 downto 0);
    clk : in std_logic:='0';
    mode : in std_logic:='0' -- 0 is addition
  );
end entity;

architecture behavioral of multiply is
  signal mem : std_logic_vector(7 downto 0):="00000000";
  begin
  process(clk)
  begin
    if rising_edge(clk) then
      if mode = '0' then
        mem<= (sigin(6 downto 0) & '0');
      else
        mem<= ('0' & sigin(7 downto 1));
      end if;
    end if;
  end process;
  sigout<=mem;
end architecture;
