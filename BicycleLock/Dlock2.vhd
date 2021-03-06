----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:28 11/27/2015 
-- Design Name: 
-- Module Name:    Dlock2 - Behavioral 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Dlock2 is
	Port ( X : in  STD_LOGIC_VECTOR(4 downto 0);
			  Q : out STD_LOGIC_VECTOR (1 downto 0);
			  H : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  Clk : in STD_LOGIC);
end Dlock2;

architecture Behavioral of Dlock2 is
type state_type is (s63,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62);

SIGNAL state: state_type;

begin



PROCESS (Clk,state,X,H,reset)  -- process of the states when the latch is closed
BEGIN
  IF (Clk' EVENT AND Clk = '1') THEN
	CASE reset IS 
		WHEN '1' =>
		 CASE H IS
			WHEN '0' =>
			CASE state IS
				WHEN s0|s1|s2|s3|s4|s5|s6|s7|s8|s9|s10|s11|s13|s14|s15 =>
					IF X = "00000" THEN
						state <= s63;
					ELSE
						state <= s63;
					END IF;
				WHEN s12|s16|s17|s18|s19|s20|s21|s22|s23|s24|s25|s26|s27|s28|s29|s30|s31|s32|s33|s34|s35|s36|s37|s38|s39|s40|s41|s42|s43|s44|s45|s46|s47|s48|s49|s50=>
					IF X = "00000" THEN
						state <= s52;
					ELSE
						state <= s52;
					END IF;
				WHEN s63 =>
				WHEN s51=>
					IF X = "00000" THEN
						state <= s52;
					ELSE
						state <= s51;
					END IF;
				WHEN s52=>
					IF X = "00000" THEN
						state <= s52;
					Elsif X = "00100" THEN
						state <= s53;
					ELSE
						state <= s51;
						END IF;
			
				WHEN s53=>
					IF X = "00000" THEN
						state <= s54;
					Elsif X = "00100" THEN
						state <= s53;
					ELSE
						state <= s53;
						END IF;
			
				WHEN s54=>
					IF X = "00000" THEN
						state <= s54;
					Elsif X = "00001" THEN
						state <= s55;
					ELSE
						state <= s51;
						END IF;
			
				WHEN s55=>
					IF X = "00000" THEN
						state <= s56;
					Elsif X = "00001" THEN
						state <= s55;
					ELSE
						state <= s55;
						END IF;
			
				WHEN s56=>
					IF X = "00000" THEN
						state <= s56;
					Elsif X = "01000" THEN
						state <= s57;
					ELSE
						state <= s51;
						END IF;
			
				WHEN s57=>
					IF X = "00000" THEN
						state <= s58;
					Elsif X = "01000" THEN
						state <= s57;
					ELSE
						state <= s57;
					END IF;
			
				WHEN s58=>
					IF X = "00000" THEN
						state <= s58;
					Elsif X = "01000" THEN
						state <= s59;
					ELSE
						state <= s51;
						END IF;
			
				WHEN s59=>
					IF X = "00000" THEN
						state <= s60;
					Elsif X = "01000" THEN
						state <= s59;
					ELSE
						state <= s59;
						END IF;
			
				WHEN s60=>
					IF X = "00000" THEN
						state <= s60;
					Elsif X = "00010" THEN
						state <= s61;
					ELSE
						state <= s51;
					END IF;
			
				WHEN s61=>
					IF X = "00000" THEN
						state <= s62;
					Elsif X = "00010" THEN
						state <= s61;
					ELSE
						state <= s61;
						END IF;
			
				WHEN s62=>
					IF X = "00000" THEN
						state <= s62;
					Elsif X = "10000" THEN
						state <= s15;
					ELSE
						state <= s51;
						END IF;
				END CASE;
			WHEN '1' =>
			 CASE state IS
				WHEN s0=>
						IF X = "00000" THEN
							state <= state;
						Elsif X = "00100" THEN
							state <= s1;
						Elsif X = "10000" THEN
							state <= s15;
						Elsif X = "UUUUU" THEN
							state <= s0;	
						ELSE
							state <= s13;
						END IF;
            WHEN s1=>
               IF X = "00000" THEN
                  state <= s2;
               Elsif X = "00100" THEN
                  state <= s1;
					ELSE 
						state <= s1;
               END IF;
            WHEN s2=>
               IF X = "00000" THEN
                  state <= s2;
					Elsif X = "00001" THEN
						state <= s3;
					Elsif X = "10000" THEN
						state <= s15;
               ELSE
                  state <= s13;
                END IF;
				WHEN s3=>
					IF X = "00000" THEN
						state <= s4;
					Elsif X = "00001" THEN
						state <= s3;
					ELSE 
						state <= s3;
					END IF;
				WHEN s4=>
					IF X = "00000" THEN
						state <= s4;
					Elsif X = "01000" THEN
						state <= s5;
					Elsif X = "10000" THEN
						state <= s15;
					ELSE
						state <= s13;
					END IF;
				WHEN s5=>
					IF X = "00000" THEN
						state <= s6;
					Elsif X = "01000" THEN
						state <= s5;
					ELSE 
						state <= s5;
					END IF;
			
				WHEN s6=>
					IF X = "00000" THEN
						state <= s6;
					Elsif X = "01000" THEN
						state <= s7;
					Elsif X = "10000" THEN
						state <= s15;
					ELSE
						state <= s13;
					END IF;
		
				WHEN s7=>
					IF X = "00000" THEN
						state <= s8;
					Elsif X = "01000" THEN
						state <= s7;
					ELSE 
						state <= s7;
					END IF;
		
				WHEN s8=>
					IF X = "00000" THEN
						state <= s8;
					Elsif X = "00010" THEN
						state <= s9;
					Elsif X = "10000" THEN
						state <= s15;
					ELSE
						state <= s13;
					
					END IF;
			
			WHEN s9=>
				IF X = "00000" THEN
					state <= s10;
				Elsif X = "00010" THEN
					state <= s9;
				ELSE
					state <= s9;
					END IF;
			
			WHEN s10=>
				IF X = "00000" THEN
					state <= s10;
				Elsif X = "10000" THEN
					state <= s11;
				ELSE 
					state <= s13;
					END IF;
			
			WHEN s11=>
				IF X = "00000" THEN
					state <= s12;
				Elsif X = "10000" THEN
					state <= s11;
				ELSE
					state <= s11;
					END IF;
			
			WHEN s12=>
				IF X = "00000" THEN
					state <= s12;
				Elsif X = "00100" THEN
					state <= s16;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s28;
					END IF;
			
			WHEN s13=>
				IF X = "00000" THEN
					state <= s14;
				ELSE
					state <= s13;
					END IF;
			
			WHEN s14=>
				IF X = "00000" THEN
					state <= s14;
				Elsif X = "10000" THEN
					state <= s15;
				ELSE
					state <= s13;
					END IF;
			
			WHEN s15=>
				IF X = "00000" THEN
					state <= s0;
				Elsif X = "10000" THEN
					state <= s15;
				ELSE
					state <= s15;
					END IF;
			
			WHEN s16=>
				IF X = "00000" THEN
					state <= s17;
				Elsif X = "00100" THEN
					state <= s16;
				ELSE
					state <= s16;
					END IF;
			
			WHEN s17=>
				IF X = "00000" THEN
					state <= s17;
				Elsif X = "00001" THEN
					state <= s18;
				Elsif X = "00100" THEN
					state <= s38;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s42;
					END IF;
			
			WHEN s18=>
				IF X = "00000" THEN
					state <= s19;
				Elsif X = "00001" THEN
					state <= s18;
				ELSE
					state <= s18;
					END IF;
			
			WHEN s19=>
				IF X = "00000" THEN
					state <= s19;
				Elsif X = "00100" THEN
					state <= s39;
				Elsif X = "01000" THEN
					state <= s20;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s43;
					END IF;
			
			WHEN s20=>
				IF X = "00000" THEN
					state <= s21;
				Elsif X = "01000" THEN
					state <= s20;
				ELSE
					state <= s20;
					END IF;
			
			WHEN s21=>
				IF  X = "00000" THEN
					state <= s21;
				Elsif X = "00100" THEN --error state
					state <= s40;
				Elsif X = "01000" THEN
					state <= s22;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s44;
					END IF;
			
			WHEN s22=>
				IF X = "00000" THEN
					state <= s23;
				Elsif X = "01000" THEN
					state <= s22;
				ELSE
					state	<= s22;
					END IF;
			
			WHEN s23=>
				IF X = "00000" THEN
					state <= s23;
				Elsif X = "00010" THEN
					state <= s24;
				Elsif X = "00100" THEN
					state <= s41;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE 
					state <= s45;
					END IF;
			
			WHEN s24=>
				IF X = "00000" THEN
					state <= s25;
				Elsif X = "00010" THEN
					state <= s24;
				ELSE
					state <= s24;
					END IF;
			
			WHEN s25=>
				IF X = "00000" THEN
					state <= s25;
				Elsif X = "00100" THEN
					state <= s41;
				Elsif X = "10000" THEN
					state <= s26;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s26=>
				IF X = "00000" THEN
					state <= s0;
				Elsif X = "10000" THEN
					state <= s26;
				ELSE
					state <= s26;
					END IF;
			
			WHEN s27=>
				IF X = "00000" THEN
					state <= s12;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s27;
					END IF;
			
			WHEN s28=>
				IF X = "00000" THEN
					state <= s29;
				ELSE
					state <= s28;
					END IF;
			
			WHEN s29=>
				IF X = "00000"  THEN
					state <= s29;
				Elsif X = "00100" THEN
					state <= s38;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s30;
					END IF;
			
			WHEN s30=>
				IF X = "00000" THEN
					state <= s31;
				ELSE
					state <= s30;
					END IF;
			
			WHEN s31=>
				IF X = "00000" THEN
					state <= s31;
				Elsif X = "00100" THEN
					state <= s39;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s32;
					END IF;
			
			WHEN s32=>
				IF X = "00000" THEN
					state <= s33;
				ELSE
					state <= s32;
					END IF;
			
			WHEN s33=>
				IF X = "00000" THEN
					state <= s33;
				Elsif X = "00100" THEN
					state <= s40;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s34;
					END IF;
			
			WHEN s34=>
				IF X = "00000" THEN
					state <= s35;
				ELSE
					state <= s34;
					END IF;
			
			WHEN s35=>
				IF X = "00000" THEN
					state <= s35;
				Elsif X = "00100" THEN
					state <= s41;
				Elsif X = "10000" THEN
					state <= s27;
				ELSE
					state <= s36;
					END IF;
			
			WHEN s36=>
			IF X = "00000" THEN
				state <= s37;
			ELSE
				state <= s36;
					END IF;
			
			WHEN s37=>
				IF X = "00000" THEN
					state <= s37;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s38=>
				IF X = "00000" THEN
					state <= s46;
				Elsif X = "00100" THEN
					state <= s38;
				ELSE
					state <= s38;
					END IF;
			
			WHEN s39=>
				IF X = "00000" THEN
					state <= s48;
				Elsif X = "00100" THEN
					state <= s39;
				ELSE
					state <= s39;
					END IF;
			
			WHEN s40=>
				IF X = "00000" THEN
					state <= s49;
				Elsif X = "00100" THEN
					state <= s40;
				ELSE
					state <= s40;
					END IF;
			
			WHEN s41=>
				IF X = "00000" THEN
					state <= s50;
				Elsif X = "00100" THEN
					state <= s41;
				ELSE
					state <= s41;
					END IF;
			
			WHEN s42=>
				IF X = "00000" THEN
					state <= s31;
				Elsif X = "00100" THEN
					state <= s42;
				ELSE
					state <= s42;
					END IF;
			
			WHEN s43=>
				IF X = "00000" THEN
					state <= s34;
				Elsif X = "00100" THEN
					state <= s43;
				ELSE
					state <= s43;
					END IF;
			
			WHEN s44=>
				IF X = "00000" THEN
					state <= s35;
				Elsif X = "00100" THEN
					state <= s44;
				ELSE
					state <= s44;
					END IF;
			
			WHEN s45=>
				IF X = "00000" THEN
					state <= s37;
				ELSE
					state <= s45;
					END IF;
			
			WHEN s46=>
				IF X = "00000" THEN
					state <= s46;
				Elsif X = "00100" THEN
					state <= s47;
				Elsif X = "10000" THEN
					state <= s47;
				ELSE
					state <= s32;
					END IF;
			
			WHEN s47=>
				IF X = "00000" THEN
					state <= s12;
				Elsif X = "00100" THEN
					state <= s47;
				ELSE
					state <= s47;
					END IF;
			
			WHEN s48=>
				IF X = "00000" THEN
					state <= s48;
				Elsif X = "00100" THEN
					state <= s47;
				Elsif X = "10000" THEN
					state <= s47;
				ELSE
					state <= s34;
					END IF;
			
			WHEN s49=>
				IF X = "00000" THEN
					state <= s49;
				Elsif X = "00100" THEN
					state <= s47;
				Elsif X = "10000" THEN
					state <= s47;
				ELSE
					state <= s36;
					END IF;
			
			WHEN s50=>
				IF X = "00000" THEN
					state <= s50;
				Elsif X = "00100" THEN
					state <= s47;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s51=>
				IF X = "00000" THEN
					state <= s52;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s52=>
				IF X = "00000" THEN
					state <= s52;
				Elsif X = "00100" THEN
					state <= s53;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s53=>
				IF X = "00000" THEN
					state <= s54;
				Elsif X = "00100" THEN
					state <= s53;
				ELSE
					state <= s53;
					END IF;
			
			WHEN s54=>
				IF X = "00000" THEN
					state <= s54;
				Elsif X = "00001" THEN
					state <= s55;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s55=>
				IF X = "00000" THEN
					state <= s56;
				Elsif X = "00001" THEN
					state <= s55;
				ELSE
					state <= s55;
					END IF;
			
			WHEN s56=>
				IF X = "00000" THEN
					state <= s56;
				Elsif X = "01000" THEN
					state <= s57;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s57=>
				IF X = "00000" THEN
					state <= s58;
				Elsif X = "01000" THEN
					state <= s57;
				ELSE
					state <= s57;
					END IF;
			
			WHEN s58=>
				IF X = "00000" THEN
					state <= s58;
				Elsif X = "01000" THEN
					state <= s59;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s59=>
				IF X = "00000" THEN
					state <= s60;
				Elsif X = "01000" THEN
					state <= s59;
				ELSE
					state <= s59;
					END IF;
			
			WHEN s60=>
				IF X = "00000" THEN
					state <= s60;
				Elsif X = "00010" THEN
					state <= s61;
				ELSE
					state <= s51;
					END IF;
			
			WHEN s61=>
				IF X = "00000" THEN
					state <= s62;
				Elsif X = "00010" THEN
					state <= s61;
				ELSE
					state <= s61;
					END IF;
			
			WHEN s62=>
				IF X = "00000" THEN
					state <= s62;
				Elsif X = "10000" THEN
					state <= s15;
				ELSE
					state <= s51;
					END IF;
			WHEN s63=>
				IF X = "00000" THEN
					state <= s0;
				ELSE
					state <= s0;
				END IF;
	      END CASE;
	     
		 WHEN OTHERS =>
	  END CASE;
	 WHEN '0' =>
		state <= s63;
	 WHEN OTHERS =>
		state <= s63;
	 
   END CASE;
END IF;
END PROCESS;
   
   PROCESS (state)
   BEGIN
      CASE state IS
         WHEN s63|s0|s1|s2|s3|s4|s5|s6|s7|s8|s9|s10|s11|s13|s14|s15 => --reset
            Q <= "01";
         WHEN s12|s16|s17|s18|s19|s20|s21|s22|s23|s24|s25|s26|s27|s28|s29|s30|s31|s32|s33|s34|s35|s36|s37|s38|s39|s40|s41|s42|s43|s44|s45|s46|s47|s48|s49|s50 => --armed
            Q <= "10";
         WHEN s51|s52|s53|s54|s55|s56|s57|s58|s59|s60|s61|s62 => --alarm
            Q <= "11";
      END CASE;
   END PROCESS;

end Behavioral;

