library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sync_counter is
  port(
    Up: in std_logic:='0';
    clk : in std_logic;
    n: in std_logic_vector(5 downto 0):="001111";
    Q: out std_logic_vector(5 downto 0):="000000"
  );
end sync_counter;

architecture behavioral of sync_counter is
  signal stanLicznika : std_logic_vector(5 downto 0):="000000";
  signal stanModulo : std_logic_vector(5 downto 0);
  begin
    process(CLK)
    begin
      stanModulo<=n;
      if(rising_edge(clk)) then
        if(Up='1') then
          stanLicznika<=stanLicznika+1;
        else
          stanLicznika<=stanLicznika-1;
        end if;
      end if;

      if(stanLicznika=15 AND Up='1' AND rising_edge(clk)) then
        stanLicznika<="000000";
      elsif(stanLicznika=0 and Up='0' AND rising_edge(clk)) then
        stanLicznika<=stanModulo;
      end if;
    end process;
    Q<=stanLicznika;
  end behavioral;
