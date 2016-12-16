library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sequence is
  port(
    --clk:in std_logic:='0';
    we : in std_logic_vector(3 downto 0):="0000";
    clk, reset : in std_logic;
    wy: out std_logic_vector(1 downto 0):="00"
  );
end entity;

architecture behavioral of sequence is
  type state is (R, O, G);
  signal now_state, next_state: state;
  begin
    process(clk, reset)
    begin
      if reset='1' then
        now_state<=R;
      elsif rising_edge(clk) then
        now_state<=next_state;
      end if;
    end process;

    --00 - RED
    --01 - ORANGE
    --10 - GREEN

    process(we, now_state)
    begin
      case now_state is
        when R=>
          if we = 2 then
            wy<="00";
            next_state<=O;
          else
            wy<="00";
            next_state<=R;
          end if;

        when O=>
          if we=3 then
            wy<="01";
            next_state<=G;
          elsif we=11 then
            wy<="01";
            next_state<=R;
          end if;

        when G=>
          wy<="10";
          if we = 10 then
            wy<="10";
            next_state<=O;
          else
            wy<="10";
            next_state<=G;
          end if;
        end case;
    end process;
end architecture;
