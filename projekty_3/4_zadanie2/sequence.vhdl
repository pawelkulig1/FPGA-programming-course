library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sequence is
  port(
    --clk:in std_logic:='0';
    we : in std_logic:='0';
    clk, reset : in std_logic;
    wy: out std_logic_vector(1 downto 0):="00"
  );
end entity;

architecture behavioral of sequence is
  type state is (s1,s2,s3,s4,s5);
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

    process(we, now_state)
    begin
      case now_state is
          when s1=>
            if we='0' then
              wy<="00";
              next_state<=s4;
            else
              wy<="00";
              next_state<=s2;
            end if;

          when s2=>
            if we='1' then
              wy<="00";
              next_state<=s3;
            else
              wy<="00";
              next_state<=s1;
            end if;

          when s3=>
            if we = '1' then
              wy<="10";
              next_state<=s3;
            else
              wy<="00";
              next_state<=s1;
            end if;

          when s4=>
            if we='0' then
              wy<="00";
              next_state<=s5;
            else
              wy<="00";
              next_state<=s1;
            end if;

          when s5=>
            if we = '0' then
              wy<="01";
              next_state<=s5;
            else
              wy<="00";
              next_state<=s1;
            end if;
        end case;
    end process;
end architecture;
