library IEEE; use IEEE.STD_LOGIC_1164.ALL;
entity tb_RSC_trigger is
end tb_RSC_trigger;
architecture Behavioral of tb_RSC_trigger is
    COMPONENT RSC_trigger
    PORT(KEY1,KEY2,KEY3: IN std_logic; LED1,LED2: OUT std_logic);
    END COMPONENT;
   --Inputs
   signal KEY1,KEY2,KEY3: std_logic := '0';
 	--Outputs
   signal LED1,LED2: std_logic;
begin
   uut: RSC_trigger PORT MAP (KEY1,KEY2,KEY3,LED1,LED2);
   clk_process: process begin KEY3<='1'; wait for 50ns; KEY3<='0'; wait for 50ns; end process;
   tb_process: process
   begin
     WAIT FOR 100ns;
     KEY1<='1'; KEY2<='0'; WAIT FOR 100ns;
     KEY1<='0'; KEY2<='0'; WAIT FOR 100ns;
     KEY1<='0'; KEY2<='1'; WAIT FOR 100ns;
     KEY1<='0'; KEY2<='0'; WAIT FOR 100ns;
     KEY1<='1'; KEY2<='0'; WAIT FOR 100ns;
     KEY1<='0'; KEY2<='0'; WAIT FOR 100ns;
     KEY1<='0'; KEY2<='1'; WAIT FOR 100ns;
     KEY1<='0'; KEY2<='0'; WAIT FOR 100ns;
   end process;
end Behavioral;