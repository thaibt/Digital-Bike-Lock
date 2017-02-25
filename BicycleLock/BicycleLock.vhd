----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:25 11/23/2015 
-- Design Name: 
-- Module Name:    BicycleLock - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any XilinX primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DLock is
    Port ( X : in  STD_LOGIC_VECTOR(4 downto 0);
			  Q : out STD_LOGIC_VECTOR (5 downto 0);
			  --reset : in STD_LOGIC;
			  Clk : in STD_LOGIC);
end DLock;

architecture Behavioral of DLock is

type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63);
SIGNAL current_state, next_state: state_type;


BEGIN

---PROCESS (Clk, reset, H)   --To declare whether the lock is turned on
--	BEGIN
--		CASE reset is -- When reset is 1 and the latch is closed, then current_state becomes reset state
--			WHEN '1' =>
--				IF H = '1' THEN
--					current_state <= s0;
--				ELSE
--					current_state <= current_state; --else current state remains
--				END IF;
--			WHEN others =>
--		END CASE;
--	END Process;

--PROCESS (Clk, H)
	--BEGIN
		--CASE current_state IS
			--WHEN s0|s1|s2|s3|s4|s5|s6|s7|s8|s9|s10|s11|s63=>
		--		IF H = '0' THEN
		--			current_state <= s0;
		--		END If;
		--WHEN s12|s13|s14|s15|s16|s17|s18|s19|s20|s21|s22|s23|s24|s25|s26|s27|s28|s29|s30|s31|s32|s33|s34|s35|s36|s37|s38|s39|s40|s41|s42|s43|s44|s45|s46|s47|s48|s49|s50|s51|s52|s53|s54|s55|s56|s57|s58|s59|s60|s61|s62=>
			--	IF H = '0' THEN
			--		current_state <= s52;
			--	Elsif (rising_edge(Clk)) THEN
			--		current_state <= next_state;
			--	END IF;
		-- END CASE;
--END PROCESS;

process(Clk)
	begin
		if (Clk' event and Clk = '1') then 
			current_state <= next_state;
		end if;
end process;

PROCESS (current_state,X)  -- process of the states when the latch is closed
 BEGIN
	--CASE H IS
	  --WHEN '1' =>
      CASE current_state IS
           WHEN s0=>
            IF X = "00000" THEN
                  next_state <= s0;
				Elsif X = "00100" THEN
					next_state <= s1;
				Elsif X = "10000" THEN
					next_state <= s16;
               ELSE
                  next_state <= s13;
               END IF;
            WHEN s1=>
               IF X = "00000" THEN
                  next_state <= s2;
               Elsif X = "00100" THEN
                  next_state <= s1;
					ELSE 
						next_state <= s1;
               END IF;
            WHEN s2=>
               IF X = "00000" THEN
                  next_state <= s2;
					Elsif X = "00001" THEN
						next_state <= s3;
					Elsif X = "10000" THEN
						next_state <= s16;
               ELSE
                  next_state <= s13;
                END IF;
				WHEN s3=>
					IF X = "00000" THEN
						next_state <= s4;
					Elsif X = "00001" THEN
						next_state <= s3;
					ELSE 
						next_state <= s3;
					END IF;
				WHEN s4=>
					IF X = "00000" THEN
						next_state <= s4;
					Elsif X = "01000" THEN
						next_state <= s5;
					Elsif X = "10000" THEN
						next_state <= s16;
					ELSE
						next_state <= s13;
					END IF;
				WHEN s5=>
					IF X = "00000" THEN
						next_state <= s6;
					Elsif X = "01000" THEN
						next_state <= s5;
					ELSE 
						next_state <= s5;
					END IF;
			
				WHEN s6=>
					IF X = "00000" THEN
						next_state <= s6;
					Elsif X = "01000" THEN
						next_state <= s7;
					Elsif X = "10000" THEN
						next_state <= s16;
					ELSE
						next_state <= s13;
					END IF;
		
				WHEN s7=>
					IF X = "00000" THEN
						next_state <= s8;
					Elsif X = "01000" THEN
						next_state <= s7;
					ELSE 
						next_state <= s7;
					END IF;
		
				WHEN s8=>
					IF X = "00000" THEN
						next_state <= s8;
					Elsif X = "00010" THEN
						next_state <= s9;
					Elsif X = "10000" THEN
						next_state <= s16;
					ELSE
						next_state <= s13;
					
					END IF;
			
			WHEN s9=>
				IF X = "00000" THEN
					next_state <= s10;
				Elsif X = "00010" THEN
					next_state <= s9;
				ELSE
					next_state <= s9;
					END IF;
			
			WHEN s10=>
				IF X = "00000" THEN
					next_state <= s10;
				Elsif X = "10000" THEN
					next_state <= s11;
				ELSE 
					next_state <= s13;
					END IF;
			
			WHEN s11=>
				IF X = "00000" THEN
					next_state <= s12;
				Elsif X = "10000" THEN
					next_state <= s11;
				ELSE
					next_state <= s11;
					END IF;
			
			WHEN s12=>
				IF X = "00000" THEN
					next_state <= s12;
				Elsif X = "00100" THEN
					next_state <= s16;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s28;
					END IF;
			
			WHEN s13=>
				IF X = "00000" THEN
					next_state <= s14;
				ELSE
					next_state <= s13;
					END IF;
			
			WHEN s14=>
				IF X = "00000" THEN
					next_state <= s14;
				Elsif X = "10000" THEN
					next_state <= s15;
				ELSE
					next_state <= s13;
					END IF;
			
			WHEN s15=>
				IF X = "00000" THEN
					next_state <= s0;
				Elsif X = "10000" THEN
					next_state <= s15;
				ELSE
					next_state <= s15;
					END IF;
			
			WHEN s16=>
				IF X = "00000" THEN
					next_state <= s17;
				Elsif X = "00100" THEN
					next_state <= s16;
				ELSE
					next_state <= s16;
					END IF;
			
			WHEN s17=>
				IF X = "00000" THEN
					next_state <= s17;
				Elsif X = "00001" THEN
					next_state <= s18;
				Elsif X = "00100" THEN
					next_state <= s38;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s42;
					END IF;
			
			WHEN s18=>
				IF X = "00000" THEN
					next_state <= s19;
				Elsif X = "00001" THEN
					next_state <= s18;
				ELSE
					next_state <= s18;
					END IF;
			
			WHEN s19=>
				IF X = "00000" THEN
					next_state <= s19;
				Elsif X = "00100" THEN
					next_state <= s39;
				Elsif X = "01000" THEN
					next_state <= s20;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s43;
					END IF;
			
			WHEN s20=>
				IF X = "00000" THEN
					next_state <= s21;
				Elsif X = "01000" THEN
					next_state <= s20;
				ELSE
					next_state <= s20;
					END IF;
			
			WHEN s21=>
				IF  X = "00000" THEN
					next_state <= s21;
				Elsif X = "00100" THEN
					next_state <= s40;
				Elsif X = "01000" THEN
					next_state <= s22;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s44;
					END IF;
			
			WHEN s22=>
				IF X = "00000" THEN
					next_state <= s23;
				Elsif X = "01000" THEN
					next_state <= s22;
				ELSE
					next_state	<= s22;
					END IF;
			
			WHEN s23=>
				IF X = "00000" THEN
					next_state <= s23;
				Elsif X = "00010" THEN
					next_state <= s24;
				Elsif X = "00100" THEN
					next_state <= s41;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE 
					next_state <= s45;
					END IF;
			
			WHEN s24=>
				IF X = "00000" THEN
					next_state <= s25;
				Elsif X = "00010" THEN
					next_state <= s24;
				ELSE
					next_state <= s24;
					END IF;
			
			WHEN s25=>
				IF X = "00000" THEN
					next_state <= s25;
				Elsif X = "10000" THEN
					next_state <= s26;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s26=>
				IF X = "00000" THEN
					next_state <= s63;
				Elsif X = "10000" THEN
					next_state <= s26;
				ELSE
					next_state <= s26;
					END IF;
			
			WHEN s27=>
				IF X = "00000" THEN
					next_state <= s12;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s27;
					END IF;
			
			WHEN s28=>
				IF X = "00000" THEN
					next_state <= s29;
				ELSE
					next_state <= s28;
					END IF;
			
			WHEN s29=>
				IF X = "00000"  THEN
					next_state <= s29;
				Elsif X = "00100" THEN
					next_state <= s38;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s30;
					END IF;
			
			WHEN s30=>
				IF X = "00000" THEN
					next_state <= s31;
				ELSE
					next_state <= s30;
					END IF;
			
			WHEN s31=>
				IF X = "00000" THEN
					next_state <= s31;
				Elsif X = "00100" THEN
					next_state <= s39;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s32;
					END IF;
			
			WHEN s32=>
				IF X = "00000" THEN
					next_state <= s33;
				ELSE
					next_state <= s32;
					END IF;
			
			WHEN s33=>
				IF X = "00000" THEN
					next_state <= s33;
				Elsif X = "00100" THEN
					next_state <= s40;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s34;
					END IF;
			
			WHEN s34=>
				IF X = "00000" THEN
					next_state <= s35;
				ELSE
					next_state <= s34;
					END IF;
			
			WHEN s35=>
				IF X = "00000" THEN
					next_state <= s35;
				Elsif X = "00100" THEN
					next_state <= s41;
				Elsif X = "10000" THEN
					next_state <= s27;
				ELSE
					next_state <= s36;
					END IF;
			
			WHEN s36=>
			IF X = "00000" THEN
				next_state <= s37;
			ELSE
				next_state <= s36;
					END IF;
			
			WHEN s37=>
				IF X = "00000" THEN
					next_state <= s37;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s38=>
				IF X = "00000" THEN
					next_state <= s46;
				Elsif X = "00100" THEN
					next_state <= s38;
				ELSE
					next_state <= s38;
					END IF;
			
			WHEN s39=>
				IF X = "00000" THEN
					next_state <= s48;
				Elsif X = "00100" THEN
					next_state <= s39;
				ELSE
					next_state <= s39;
					END IF;
			
			WHEN s40=>
				IF X = "00000" THEN
					next_state <= s49;
				Elsif X = "00100" THEN
					next_state <= s40;
				ELSE
					next_state <= s40;
					END IF;
			
			WHEN s41=>
				IF X = "00000" THEN
					next_state <= s50;
				Elsif X = "00100" THEN
					next_state <= s41;
				ELSE
					next_state <= s41;
					END IF;
			
			WHEN s42=>
				IF X = "00000" THEN
					next_state <= s31;
				Elsif X = "00100" THEN
					next_state <= s42;
				ELSE
					next_state <= s42;
					END IF;
			
			WHEN s43=>
				IF X = "00000" THEN
					next_state <= s34;
				Elsif X = "00100" THEN
					next_state <= s43;
				ELSE
					next_state <= s43;
					END IF;
			
			WHEN s44=>
				IF X = "00000" THEN
					next_state <= s35;
				Elsif X = "00100" THEN
					next_state <= s44;
				ELSE
					next_state <= s44;
					END IF;
			
			WHEN s45=>
				IF X = "00000" THEN
					next_state <= s37;
				ELSE
					next_state <= s45;
					END IF;
			
			WHEN s46=>
				IF X = "00000" THEN
					next_state <= s46;
				Elsif X = "00100" THEN
					next_state <= s47;
				Elsif X = "10000" THEN
					next_state <= s47;
				ELSE
					next_state <= s32;
					END IF;
			
			WHEN s47=>
				IF X = "00000" THEN
					next_state <= s12;
				Elsif X = "00100" THEN
					next_state <= s47;
				ELSE
					next_state <= s47;
					END IF;
			
			WHEN s48=>
				IF X = "00000" THEN
					next_state <= s48;
				Elsif X = "00100" THEN
					next_state <= s40;
				Elsif X = "10000" THEN
					next_state <= s40;
				ELSE
					next_state <= s34;
					END IF;
			
			WHEN s49=>
				IF X = "00000" THEN
					next_state <= s49;
				Elsif X = "00100" THEN
					next_state <= s47;
				Elsif X = "10000" THEN
					next_state <= s47;
				ELSE
					next_state <= s36;
					END IF;
			
			WHEN s50=>
				IF X = "00000" THEN
					next_state <= s50;
				Elsif X = "00100" THEN
					next_state <= s47;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s51=>
				IF X = "00000" THEN
					next_state <= s52;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s52=>
				IF X = "00000" THEN
					next_state <= s52;
				Elsif X = "00100" THEN
					next_state <= s53;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s53=>
				IF X = "00000" THEN
					next_state <= s54;
				Elsif X = "00100" THEN
					next_state <= s53;
				ELSE
					next_state <= s53;
					END IF;
			
			WHEN s54=>
				IF X = "00000" THEN
					next_state <= s54;
				Elsif X = "00001" THEN
					next_state <= s55;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s55=>
				IF X = "00000" THEN
					next_state <= s56;
				Elsif X = "00001" THEN
					next_state <= s55;
				ELSE
					next_state <= s55;
					END IF;
			
			WHEN s56=>
				IF X = "00000" THEN
					next_state <= s56;
				Elsif X = "01000" THEN
					next_state <= s57;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s57=>
				IF X = "00000" THEN
					next_state <= s58;
				Elsif X = "01000" THEN
					next_state <= s57;
				ELSE
					next_state <= s57;
					END IF;
			
			WHEN s58=>
				IF X = "00000" THEN
					next_state <= s58;
				Elsif X = "01000" THEN
					next_state <= s59;
				ELSE
					next_state <= s51;
					END IF;
			
			WHEN s59=>
				IF X = "00000" THEN
					next_state <= s60;
				Elsif X = "01000" THEN
					next_state <= s59;
				ELSE
					next_state <= s59;
					END IF;
			
			WHEN s60=>
				IF X = "00000" THEN
					next_state <= s60;
				Elsif X = "00010" THEN
					next_state <= s61;
				ELSE
					next_state <= s61;
					END IF;
			
			WHEN s61=>
				IF X = "00000" THEN
					next_state <= s62;
				Elsif X = "00010" THEN
					next_state <= s61;
				ELSE
					next_state <= s61;
					END IF;
			
			WHEN s62=>
				IF X = "00000" THEN
					next_state <= s62;
				Elsif X = "10000" THEN
					next_state <= s15;
				ELSE
					next_state <= s51;
					END IF;
			WHEN s63=>
				IF X = "00000" THEN
					next_state <= s63;
				ELSE
					next_state <= s63;
				END IF;
	   END CASE;
	 --WHEN OTHERS =>
 --END CASE;
END PROCESS;
   
   PROCESS (next_state)
   BEGIN
      CASE next_state IS
         WHEN s0 =>
            Q <= "000000";
         WHEN s1 =>
            Q <= "000001";
         WHEN s2 =>
            Q <= "000010";
			WHEN s3 =>
            Q <= "000011";
			WHEN s4 =>
            Q <= "000100";
			WHEN s5 =>
            Q <= "000101";
			WHEN s6 =>
            Q <= "000110";
			WHEN s7 =>
            Q <= "000111";
			WHEN s8 =>
            Q <= "001000";
			WHEN s9 =>
            Q <= "001001";
			WHEN s10 =>
            Q <= "001010";
			WHEN s11 =>
            Q <= "001011";
			WHEN s12 =>
            Q <= "001100";
			WHEN s13 =>
            Q <= "001101";
			WHEN s14 =>
            Q <= "001110";
			WHEN s15 =>
            Q <= "001111";
			WHEN s16 =>
            Q <= "010000";
			WHEN s17 =>
            Q <= "010001";
			WHEN s18 =>
            Q <= "010010";
			WHEN s19 =>
            Q <= "010011";
			WHEN s20 =>
            Q <= "010100";
			WHEN s21 =>
            Q <= "010101";
			WHEN s22 =>
            Q <= "010110";
			WHEN s23 =>
            Q <= "010111";
			WHEN s24 =>
            Q <= "011000";
			WHEN s25 =>
            Q <= "011001";
			WHEN s26 =>
            Q <= "011010";
			WHEN s27 =>
            Q <= "011011";
			WHEN s28 =>
            Q <= "011100";
			WHEN s29 =>
            Q <= "011101";
			WHEN s30 =>
            Q <= "011110";
			WHEN s31 =>
            Q <= "011111";
			WHEN s32 =>
            Q <= "100000";
			WHEN s33 =>
            Q <= "100001";
			WHEN s34 =>
            Q <= "100010";
			WHEN s35 =>
            Q <= "100011";
			WHEN s36 =>
            Q <= "100100";
			WHEN s37 =>
            Q <= "100101";
			WHEN s38 =>
            Q <= "100110";
			WHEN s39 =>
            Q <= "100111";
			WHEN s40 =>
            Q <= "101000";
			WHEN s41 =>
            Q <= "101001";
			WHEN s42 =>
            Q <= "101010";
			WHEN s43 =>
            Q <= "101011";
			WHEN s44 =>
            Q <= "101100";
			WHEN s45 =>
            Q <= "101101";
			WHEN s46 =>
            Q <= "101110";
			WHEN s47 =>
            Q <= "101111";
			WHEN s48 =>
            Q <= "110000";
			WHEN s49 =>
            Q <= "110001";
			WHEN s50 =>
            Q <= "110010";
			WHEN s51 =>
            Q <= "110011";
			WHEN s52 =>
            Q <= "110100";
			WHEN s53 =>
            Q <= "110101";
			WHEN s54 =>
            Q <= "110110";
			WHEN s55 =>
            Q <= "110111";
			WHEN s56 =>
            Q <= "111000";
			WHEN s57 =>
            Q <= "111001";
			WHEN s58 =>
            Q <= "111010";
			WHEN s59 =>
            Q <= "111011";
			WHEN s60 =>
            Q <= "111100";
			WHEN s61 =>
            Q <= "111101";
			WHEN s62 =>
				Q <= "111110";
			WHEN s63 =>
				Q<= "111111";

      END CASE;
   END PROCESS;
end Behavioral;

