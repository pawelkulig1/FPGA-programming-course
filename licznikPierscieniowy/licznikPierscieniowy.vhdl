library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;
use ieee.std_logic_unsigned.all;

entity licznikPierscieniowy is
  PORT(
    CLK : in std_logic:='0';
    Q: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of licznikPierscieniowy is
  signal stanLicznika:std_logic_vector(7 downto 0):="00000000";
  begin
    process(CLK)
    begin
      if(rising_edge(CLK)) then
      case stanLicznika is
        when "00000000" => stanLicznika <= "00000001";
        when "00000001" => stanLicznika <= "00000010";
        when "00000010" => stanLicznika <= "00000100";
        when "00000100" => stanLicznika <= "00001000";
        when "00001000" => stanLicznika <= "00010000";
        when "00010000" => stanLicznika <= "00100000";
        when "00100000" => stanLicznika <= "01000000";
        when "01000000" => stanLicznika <= "10000000";
        when "10000000" => stanLicznika <= "00000000";
        when others => stanLicznika <="00000000";
      end case;
      end if;
    end process;
    Q<=stanLicznika;
  end architecture;
