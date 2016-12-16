library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity code is
  port(
    --clk:in std_logic:='0';
    we : in std_logic_vector(2 downto 0):="000";
    clk, reset : in std_logic;
    wy: out std_logic:='0' -- 0 is closed
  );
end entity;

architecture behavioral of code is
  type state is (s1,s2,s3,s4);
  signal now_state, next_state: state;
  begin
    process(clk, reset)
    begin
      if reset='1' then
        now_state<=s1;
      elsif rising_edge(clk) then
        now_state<=next_state;
      end if;
    end process;
     -- MY CODE IS 0751
    process(we, now_state)
    begin
      case now_state is
        when s1=>
          if we=0 then
            wy<='0';
            next_state<=s2;
          else
            wy<='0';
            next_state<=s1;
          end if;

        when s2=>
          if we=7 then
            wy<='0';
            next_state<=s3;
          else
            wy<='0';
            next_state<=s1;
        end if;

        when s3=>
          if we=5 then
            wy<='0';
            next_state<=s4;
          else
            wy<='0';
            next_state<=s1;
          end if;

        when s4=>
          if we=1 then
            wy<='1';
            next_state<=s1;
          else
            wy<='0';
            next_state<=s1;
          end if;
      end case;
    end process;
end architecture;
