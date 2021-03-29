--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CPU_synthesis.vhd
-- /___/   /\     Timestamp: Sun Mar 28 18:59:18 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CPU -w -dir netgen/synthesis -ofmt vhdl -sim CPU.ngc CPU_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: CPU.ngc
-- Output file	: D:\UPB\Upb Sistemas\Arquitectura de Procesadores\Tercer Parcial\Final Combinado\lcd_cpu\netgen\synthesis\CPU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CPU
-- Xilinx	: D:\UPB\Xilin\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CPU is
  port (
    E : inout STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    RS : out STD_LOGIC; 
    RW : out STD_LOGIC; 
    activar_cpu : in STD_LOGIC := 'X'; 
    lcd_reset : in STD_LOGIC := 'X'; 
    DB : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end CPU;

architecture Structure of CPU is
  signal DB_0_OBUF_4 : STD_LOGIC; 
  signal DB_1_OBUF_5 : STD_LOGIC; 
  signal DB_2_OBUF_6 : STD_LOGIC; 
  signal DB_3_OBUF_7 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N383 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal N417 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal N419 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal N423 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N435 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N437 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N439 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N441 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal N465 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal N471 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N476 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N478 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N482 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal N536 : STD_LOGIC; 
  signal N537 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal N539 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal N543 : STD_LOGIC; 
  signal N545 : STD_LOGIC; 
  signal N547 : STD_LOGIC; 
  signal N549 : STD_LOGIC; 
  signal N551 : STD_LOGIC; 
  signal N553 : STD_LOGIC; 
  signal N555 : STD_LOGIC; 
  signal N557 : STD_LOGIC; 
  signal N563 : STD_LOGIC; 
  signal N565 : STD_LOGIC; 
  signal N567 : STD_LOGIC; 
  signal N569 : STD_LOGIC; 
  signal N571 : STD_LOGIC; 
  signal N573 : STD_LOGIC; 
  signal N575 : STD_LOGIC; 
  signal N577 : STD_LOGIC; 
  signal N583 : STD_LOGIC; 
  signal N599 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N601 : STD_LOGIC; 
  signal N605 : STD_LOGIC; 
  signal N607 : STD_LOGIC; 
  signal N609 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N611 : STD_LOGIC; 
  signal N613 : STD_LOGIC; 
  signal N615 : STD_LOGIC; 
  signal N617 : STD_LOGIC; 
  signal N619 : STD_LOGIC; 
  signal N627 : STD_LOGIC; 
  signal N629 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N631 : STD_LOGIC; 
  signal N633 : STD_LOGIC; 
  signal N635 : STD_LOGIC; 
  signal N637 : STD_LOGIC; 
  signal N639 : STD_LOGIC; 
  signal N641 : STD_LOGIC; 
  signal N643 : STD_LOGIC; 
  signal N645 : STD_LOGIC; 
  signal N647 : STD_LOGIC; 
  signal N649 : STD_LOGIC; 
  signal N651 : STD_LOGIC; 
  signal N653 : STD_LOGIC; 
  signal N657 : STD_LOGIC; 
  signal N659 : STD_LOGIC; 
  signal N661 : STD_LOGIC; 
  signal N663 : STD_LOGIC; 
  signal N665 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N671 : STD_LOGIC; 
  signal N673 : STD_LOGIC; 
  signal N675 : STD_LOGIC; 
  signal N677 : STD_LOGIC; 
  signal N679 : STD_LOGIC; 
  signal N683 : STD_LOGIC; 
  signal N685 : STD_LOGIC; 
  signal N686 : STD_LOGIC; 
  signal N687 : STD_LOGIC; 
  signal N688 : STD_LOGIC; 
  signal N689 : STD_LOGIC; 
  signal N690 : STD_LOGIC; 
  signal N691 : STD_LOGIC; 
  signal N692 : STD_LOGIC; 
  signal N693 : STD_LOGIC; 
  signal N694 : STD_LOGIC; 
  signal N695 : STD_LOGIC; 
  signal N696 : STD_LOGIC; 
  signal N697 : STD_LOGIC; 
  signal N698 : STD_LOGIC; 
  signal N699 : STD_LOGIC; 
  signal N700 : STD_LOGIC; 
  signal N701 : STD_LOGIC; 
  signal N702 : STD_LOGIC; 
  signal N703 : STD_LOGIC; 
  signal N704 : STD_LOGIC; 
  signal N705 : STD_LOGIC; 
  signal N706 : STD_LOGIC; 
  signal N707 : STD_LOGIC; 
  signal N708 : STD_LOGIC; 
  signal N709 : STD_LOGIC; 
  signal N710 : STD_LOGIC; 
  signal N711 : STD_LOGIC; 
  signal N712 : STD_LOGIC; 
  signal N713 : STD_LOGIC; 
  signal N714 : STD_LOGIC; 
  signal N715 : STD_LOGIC; 
  signal N716 : STD_LOGIC; 
  signal N717 : STD_LOGIC; 
  signal N718 : STD_LOGIC; 
  signal N719 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N720 : STD_LOGIC; 
  signal N721 : STD_LOGIC; 
  signal N722 : STD_LOGIC; 
  signal N723 : STD_LOGIC; 
  signal N724 : STD_LOGIC; 
  signal N725 : STD_LOGIC; 
  signal N726 : STD_LOGIC; 
  signal N727 : STD_LOGIC; 
  signal N728 : STD_LOGIC; 
  signal N729 : STD_LOGIC; 
  signal N730 : STD_LOGIC; 
  signal N731 : STD_LOGIC; 
  signal N732 : STD_LOGIC; 
  signal N733 : STD_LOGIC; 
  signal N734 : STD_LOGIC; 
  signal N735 : STD_LOGIC; 
  signal N736 : STD_LOGIC; 
  signal N737 : STD_LOGIC; 
  signal N738 : STD_LOGIC; 
  signal N739 : STD_LOGIC; 
  signal N740 : STD_LOGIC; 
  signal N741 : STD_LOGIC; 
  signal N742 : STD_LOGIC; 
  signal N743 : STD_LOGIC; 
  signal N744 : STD_LOGIC; 
  signal N745 : STD_LOGIC; 
  signal N746 : STD_LOGIC; 
  signal N747 : STD_LOGIC; 
  signal N748 : STD_LOGIC; 
  signal N749 : STD_LOGIC; 
  signal N750 : STD_LOGIC; 
  signal N751 : STD_LOGIC; 
  signal N752 : STD_LOGIC; 
  signal N753 : STD_LOGIC; 
  signal N754 : STD_LOGIC; 
  signal N755 : STD_LOGIC; 
  signal N756 : STD_LOGIC; 
  signal N757 : STD_LOGIC; 
  signal N758 : STD_LOGIC; 
  signal N759 : STD_LOGIC; 
  signal N760 : STD_LOGIC; 
  signal N761 : STD_LOGIC; 
  signal N762 : STD_LOGIC; 
  signal N763 : STD_LOGIC; 
  signal N764 : STD_LOGIC; 
  signal N765 : STD_LOGIC; 
  signal N766 : STD_LOGIC; 
  signal N767 : STD_LOGIC; 
  signal N768 : STD_LOGIC; 
  signal N769 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N770 : STD_LOGIC; 
  signal N771 : STD_LOGIC; 
  signal N772 : STD_LOGIC; 
  signal N773 : STD_LOGIC; 
  signal N774 : STD_LOGIC; 
  signal N775 : STD_LOGIC; 
  signal N776 : STD_LOGIC; 
  signal N777 : STD_LOGIC; 
  signal N778 : STD_LOGIC; 
  signal N779 : STD_LOGIC; 
  signal N780 : STD_LOGIC; 
  signal N781 : STD_LOGIC; 
  signal N782 : STD_LOGIC; 
  signal N783 : STD_LOGIC; 
  signal N784 : STD_LOGIC; 
  signal N785 : STD_LOGIC; 
  signal N786 : STD_LOGIC; 
  signal N787 : STD_LOGIC; 
  signal N788 : STD_LOGIC; 
  signal N789 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N790 : STD_LOGIC; 
  signal N791 : STD_LOGIC; 
  signal N792 : STD_LOGIC; 
  signal N793 : STD_LOGIC; 
  signal N794 : STD_LOGIC; 
  signal N795 : STD_LOGIC; 
  signal N796 : STD_LOGIC; 
  signal N797 : STD_LOGIC; 
  signal N798 : STD_LOGIC; 
  signal N799 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N800 : STD_LOGIC; 
  signal N801 : STD_LOGIC; 
  signal N802 : STD_LOGIC; 
  signal N803 : STD_LOGIC; 
  signal N804 : STD_LOGIC; 
  signal N805 : STD_LOGIC; 
  signal N806 : STD_LOGIC; 
  signal N807 : STD_LOGIC; 
  signal N808 : STD_LOGIC; 
  signal N809 : STD_LOGIC; 
  signal N810 : STD_LOGIC; 
  signal N811 : STD_LOGIC; 
  signal N812 : STD_LOGIC; 
  signal N813 : STD_LOGIC; 
  signal N814 : STD_LOGIC; 
  signal N815 : STD_LOGIC; 
  signal N816 : STD_LOGIC; 
  signal N817 : STD_LOGIC; 
  signal N818 : STD_LOGIC; 
  signal N819 : STD_LOGIC; 
  signal N820 : STD_LOGIC; 
  signal N821 : STD_LOGIC; 
  signal N822 : STD_LOGIC; 
  signal N823 : STD_LOGIC; 
  signal N824 : STD_LOGIC; 
  signal N825 : STD_LOGIC; 
  signal N826 : STD_LOGIC; 
  signal N827 : STD_LOGIC; 
  signal N828 : STD_LOGIC; 
  signal N829 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N830 : STD_LOGIC; 
  signal N831 : STD_LOGIC; 
  signal N832 : STD_LOGIC; 
  signal N833 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal RS_OBUF_495 : STD_LOGIC; 
  signal activar_cpu_IBUF_498 : STD_LOGIC; 
  signal clk_BUFGP_500 : STD_LOGIC; 
  signal irU_N01 : STD_LOGIC; 
  signal irU_N11 : STD_LOGIC; 
  signal irU_N2 : STD_LOGIC; 
  signal irU_ir_out_full_and0000 : STD_LOGIC; 
  signal irU_ir_out_full_not0001 : STD_LOGIC; 
  signal irU_ir_value_15_Q : STD_LOGIC; 
  signal irU_ir_value_16_Q : STD_LOGIC; 
  signal irU_ir_value_17_Q : STD_LOGIC; 
  signal irU_ir_value_18_Q : STD_LOGIC; 
  signal irU_ir_value_19_Q : STD_LOGIC; 
  signal irU_ir_value_20_Q : STD_LOGIC; 
  signal irU_ir_value_21_Q : STD_LOGIC; 
  signal irU_ir_value_22_Q : STD_LOGIC; 
  signal irU_ir_value_23_Q : STD_LOGIC; 
  signal irU_ir_value_8_Q : STD_LOGIC; 
  signal irU_ir_value_and0000 : STD_LOGIC; 
  signal lcdU_DB_0_21_549 : STD_LOGIC; 
  signal lcdU_DB_0_22_550 : STD_LOGIC; 
  signal lcdU_DB_0_30_551 : STD_LOGIC; 
  signal lcdU_DB_0_39_552 : STD_LOGIC; 
  signal lcdU_DB_0_4_553 : STD_LOGIC; 
  signal lcdU_DB_0_9_554 : STD_LOGIC; 
  signal lcdU_DB_1_wg_cy_0_Q_555 : STD_LOGIC; 
  signal lcdU_DB_1_wg_cy_1_Q_556 : STD_LOGIC; 
  signal lcdU_DB_1_wg_cy_2_Q_557 : STD_LOGIC; 
  signal lcdU_DB_1_wg_cy_3_Q_558 : STD_LOGIC; 
  signal lcdU_DB_1_wg_cy_4_Q_559 : STD_LOGIC; 
  signal lcdU_DB_1_wg_lut_0_Q_560 : STD_LOGIC; 
  signal lcdU_DB_1_wg_lut_1_Q_561 : STD_LOGIC; 
  signal lcdU_DB_1_wg_lut_2_Q_562 : STD_LOGIC; 
  signal lcdU_DB_1_wg_lut_3_Q_563 : STD_LOGIC; 
  signal lcdU_DB_1_wg_lut_4_Q_564 : STD_LOGIC; 
  signal lcdU_DB_1_wg_lut_5_Q_565 : STD_LOGIC; 
  signal lcdU_DB_2_23 : STD_LOGIC; 
  signal lcdU_DB_2_231_567 : STD_LOGIC; 
  signal lcdU_DB_2_29_568 : STD_LOGIC; 
  signal lcdU_DB_2_34_569 : STD_LOGIC; 
  signal lcdU_DB_2_35_570 : STD_LOGIC; 
  signal lcdU_DB_2_4_571 : STD_LOGIC; 
  signal lcdU_DB_2_55_572 : STD_LOGIC; 
  signal lcdU_DB_2_73_573 : STD_LOGIC; 
  signal lcdU_DB_2_9_574 : STD_LOGIC; 
  signal lcdU_DB_3_14_575 : STD_LOGIC; 
  signal lcdU_DB_3_15_576 : STD_LOGIC; 
  signal lcdU_DB_3_36_577 : STD_LOGIC; 
  signal lcdU_DB_3_4_578 : STD_LOGIC; 
  signal lcdU_DB_3_9_579 : STD_LOGIC; 
  signal lcdU_DB_3_93_580 : STD_LOGIC; 
  signal lcdU_DB_3_93_SW0 : STD_LOGIC; 
  signal lcdU_DB_3_93_SW01_582 : STD_LOGIC; 
  signal lcdU_E_583 : STD_LOGIC; 
  signal lcdU_E1 : STD_LOGIC; 
  signal lcdU_E_cmp_lt0000 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_10_rt_588 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_11_rt_590 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_12_rt_592 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_13_rt_594 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_14_rt_596 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_15_rt_598 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_1_rt_600 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_2_rt_602 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_3_rt_604 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_4_rt_606 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_5_rt_608 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_6_rt_610 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_7_rt_612 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_8_rt_614 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_cy_9_rt_616 : STD_LOGIC; 
  signal lcdU_Madd_cuenta_addsub0000_xor_16_rt_618 : STD_LOGIC; 
  signal lcdU_Mcompar_E_cmp_lt0000_lut_1_Q_627 : STD_LOGIC; 
  signal lcdU_Mcompar_E_cmp_lt0000_lut_3_Q_628 : STD_LOGIC; 
  signal lcdU_Mcompar_E_cmp_lt0000_lut_4_Q_629 : STD_LOGIC; 
  signal lcdU_Mcompar_E_cmp_lt0000_lut_5_Q_630 : STD_LOGIC; 
  signal lcdU_Mcompar_E_cmp_lt0000_lut_6_Q_631 : STD_LOGIC; 
  signal lcdU_Mcompar_E_cmp_lt0000_lut_7_Q_632 : STD_LOGIC; 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_cy_0_rt_634 : STD_LOGIC; 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_cy_2_rt_637 : STD_LOGIC; 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_lut_1_Q : STD_LOGIC; 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_lut_3_Q : STD_LOGIC; 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_lut_4_Q_644 : STD_LOGIC; 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_lut_5_Q_645 : STD_LOGIC; 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_lut_6_Q_646 : STD_LOGIC; 
  signal lcdU_Msub_dec0_addsub0000_lut_2_1_653 : STD_LOGIC; 
  signal lcdU_N0 : STD_LOGIC; 
  signal lcdU_N11 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_126 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_1261_722 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_1262_723 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_17_724 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_39 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_391_726 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_392_727 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_4_728 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_0_93_729 : STD_LOGIC; 
  signal lcdU_dec0_mux0008_2_118 : STD_LOGIC; 
  signal lcdU_decenas_0_Q : STD_LOGIC; 
  signal lcdU_decenas_3_Q : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd1_733 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd10_734 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd11_735 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd12_736 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd13_737 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd14_738 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd15_739 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd16_740 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd17_741 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd18_742 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd19_743 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd2_744 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd20_745 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd21_746 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd22_747 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd23_748 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd24_749 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd25_750 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd26_751 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd27_752 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd28_753 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd29_754 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd3_755 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd30_756 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd31_757 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd32_758 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd33_759 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd34_760 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd35_761 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd36_762 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd37_763 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd38_764 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd39_765 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd4_766 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd40_767 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd41_768 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd42_769 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd43_770 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd44_771 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd45_772 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd46_773 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd5_774 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd6_775 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd7_776 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd8_777 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_FFd9_778 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_Out4612_779 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_Out4625_780 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_Out4649_781 : STD_LOGIC; 
  signal lcdU_pr_estado_FSM_Out4662_782 : STD_LOGIC; 
  signal lcd_reset_IBUF_784 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_0_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_0_and0001 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_1_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_1_and0001 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_2_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_2_and0001 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_3_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_3_and0001 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_4_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_4_and0001 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_5_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_5_and0001 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_6_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_6_and0001 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_7_and0000 : STD_LOGIC; 
  signal marMuxU_mux_out_signal_7_and0001 : STD_LOGIC; 
  signal mbrMuxInU_N01 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_15_mux0001_826 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_16_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_16_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_16_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_17_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_17_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_17_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_18_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_18_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_18_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_19_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_19_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_19_mux00031 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_19_mux000311_843 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_19_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_20_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_20_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_20_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_21_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_21_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_21_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_22_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_22_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_22_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_23_and0000 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_23_and0001 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_23_mux00031 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_23_mux000311_861 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_23_mux0004 : STD_LOGIC; 
  signal mbrMuxInU_aux_mbr_in_8_mux0001_863 : STD_LOGIC; 
  signal mbrU_N01 : STD_LOGIC; 
  signal mbrU_mbr_ir_out_15_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_16_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_17_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_18_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_19_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_20_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_21_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_22_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_23_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_8_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_15_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_16_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_17_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_18_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_19_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_20_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_21_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_22_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_23_Q : STD_LOGIC; 
  signal mbrU_mbr_ir_out_mux0002_8_Q : STD_LOGIC; 
  signal mbrU_mbr_value_15_Q : STD_LOGIC; 
  signal mbrU_mbr_value_16_Q : STD_LOGIC; 
  signal mbrU_mbr_value_17_Q : STD_LOGIC; 
  signal mbrU_mbr_value_18_Q : STD_LOGIC; 
  signal mbrU_mbr_value_19_Q : STD_LOGIC; 
  signal mbrU_mbr_value_20_Q : STD_LOGIC; 
  signal mbrU_mbr_value_21_Q : STD_LOGIC; 
  signal mbrU_mbr_value_22_Q : STD_LOGIC; 
  signal mbrU_mbr_value_23_Q : STD_LOGIC; 
  signal mbrU_mbr_value_8_Q : STD_LOGIC; 
  signal pcU_Madd_pc_count_addsub0000_cy_1_rt_921 : STD_LOGIC; 
  signal pcU_Madd_pc_count_addsub0000_cy_2_rt_923 : STD_LOGIC; 
  signal pcU_Madd_pc_count_addsub0000_cy_3_rt_925 : STD_LOGIC; 
  signal pcU_Madd_pc_count_addsub0000_cy_4_rt_927 : STD_LOGIC; 
  signal pcU_Madd_pc_count_addsub0000_cy_5_rt_929 : STD_LOGIC; 
  signal pcU_Madd_pc_count_addsub0000_cy_6_rt_931 : STD_LOGIC; 
  signal pcU_Madd_pc_count_addsub0000_xor_7_rt_933 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux000114 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux00012 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux000126 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux000130 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux000132 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux000134 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux000136 : STD_LOGIC; 
  signal pcU_Mmux_pc_count_mux000138 : STD_LOGIC; 
  signal ramU_N0 : STD_LOGIC; 
  signal ramU_aux_out_15_Q : STD_LOGIC; 
  signal ramU_aux_out_15_mux0000 : STD_LOGIC; 
  signal ramU_aux_out_8_Q : STD_LOGIC; 
  signal ramU_aux_out_8_mux0000 : STD_LOGIC; 
  signal ramU_data_out_15_Q : STD_LOGIC; 
  signal ramU_data_out_8_Q : STD_LOGIC; 
  signal registersU_a_value_0_0_not0000 : STD_LOGIC; 
  signal registersU_b_value_cmp_eq0000 : STD_LOGIC; 
  signal registersU_c_value_cmp_eq0000 : STD_LOGIC; 
  signal registersU_d_value_cmp_eq0000 : STD_LOGIC; 
  signal registersU_d_value_not0000 : STD_LOGIC; 
  signal registersU_d_value_not00001_1042 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_0_48_1052 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_0_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_0_911_1054 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_1_48_1056 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_1_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_1_911_1058 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_2_48_1060 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_2_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_2_911_1062 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_3_48_1064 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_3_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_3_911_1066 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_4_48_1068 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_4_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_4_911_1070 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_5_48_1072 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_5_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_5_911_1074 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_6_48_1076 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_6_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_6_911_1078 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_7_48_1080 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_7_91 : STD_LOGIC; 
  signal registersU_reg_out_mux0001_7_911_1082 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_3 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_31 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_310 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_311 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_312 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_313 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_314 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_315 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_316 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_317 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_318 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_319 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_32 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_320 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_321 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_322 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_33 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_34 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_35 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_36 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_37 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_38 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_39 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_4 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_41 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_410 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_411 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_412 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_413 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_414 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_415 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_416 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_417 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_418 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_419 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_42 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_420 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_421 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_422 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_43 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_44 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_45 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_46 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_47 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_48 : STD_LOGIC; 
  signal unidadControlU_Mmux_n0024_49 : STD_LOGIC; 
  signal unidadControlU_N01 : STD_LOGIC; 
  signal unidadControlU_N02 : STD_LOGIC; 
  signal unidadControlU_N100 : STD_LOGIC; 
  signal unidadControlU_N101 : STD_LOGIC; 
  signal unidadControlU_N103 : STD_LOGIC; 
  signal unidadControlU_N106 : STD_LOGIC; 
  signal unidadControlU_N1091 : STD_LOGIC; 
  signal unidadControlU_N11 : STD_LOGIC; 
  signal unidadControlU_N1101 : STD_LOGIC; 
  signal unidadControlU_N112 : STD_LOGIC; 
  signal unidadControlU_N1131 : STD_LOGIC; 
  signal unidadControlU_N1211 : STD_LOGIC; 
  signal unidadControlU_N123 : STD_LOGIC; 
  signal unidadControlU_N1231 : STD_LOGIC; 
  signal unidadControlU_N1241 : STD_LOGIC; 
  signal unidadControlU_N125 : STD_LOGIC; 
  signal unidadControlU_N134 : STD_LOGIC; 
  signal unidadControlU_N1351 : STD_LOGIC; 
  signal unidadControlU_N138 : STD_LOGIC; 
  signal unidadControlU_N141 : STD_LOGIC; 
  signal unidadControlU_N144 : STD_LOGIC; 
  signal unidadControlU_N157 : STD_LOGIC; 
  signal unidadControlU_N158 : STD_LOGIC; 
  signal unidadControlU_N159 : STD_LOGIC; 
  signal unidadControlU_N16 : STD_LOGIC; 
  signal unidadControlU_N161 : STD_LOGIC; 
  signal unidadControlU_N1621 : STD_LOGIC; 
  signal unidadControlU_N1631 : STD_LOGIC; 
  signal unidadControlU_N168 : STD_LOGIC; 
  signal unidadControlU_N1681 : STD_LOGIC; 
  signal unidadControlU_N169 : STD_LOGIC; 
  signal unidadControlU_N17 : STD_LOGIC; 
  signal unidadControlU_N170 : STD_LOGIC; 
  signal unidadControlU_N176 : STD_LOGIC; 
  signal unidadControlU_N177 : STD_LOGIC; 
  signal unidadControlU_N178 : STD_LOGIC; 
  signal unidadControlU_N18 : STD_LOGIC; 
  signal unidadControlU_N185 : STD_LOGIC; 
  signal unidadControlU_N187 : STD_LOGIC; 
  signal unidadControlU_N1871 : STD_LOGIC; 
  signal unidadControlU_N189 : STD_LOGIC; 
  signal unidadControlU_N190 : STD_LOGIC; 
  signal unidadControlU_N192 : STD_LOGIC; 
  signal unidadControlU_N1931 : STD_LOGIC; 
  signal unidadControlU_N194 : STD_LOGIC; 
  signal unidadControlU_N1941 : STD_LOGIC; 
  signal unidadControlU_N195 : STD_LOGIC; 
  signal unidadControlU_N1951 : STD_LOGIC; 
  signal unidadControlU_N1971 : STD_LOGIC; 
  signal unidadControlU_N1991 : STD_LOGIC; 
  signal unidadControlU_N2 : STD_LOGIC; 
  signal unidadControlU_N200 : STD_LOGIC; 
  signal unidadControlU_N2001 : STD_LOGIC; 
  signal unidadControlU_N201 : STD_LOGIC; 
  signal unidadControlU_N2011 : STD_LOGIC; 
  signal unidadControlU_N2041 : STD_LOGIC; 
  signal unidadControlU_N2061 : STD_LOGIC; 
  signal unidadControlU_N207 : STD_LOGIC; 
  signal unidadControlU_N208 : STD_LOGIC; 
  signal unidadControlU_N2081 : STD_LOGIC; 
  signal unidadControlU_N2101 : STD_LOGIC; 
  signal unidadControlU_N211 : STD_LOGIC; 
  signal unidadControlU_N212 : STD_LOGIC; 
  signal unidadControlU_N2121 : STD_LOGIC; 
  signal unidadControlU_N2131 : STD_LOGIC; 
  signal unidadControlU_N2141 : STD_LOGIC; 
  signal unidadControlU_N215 : STD_LOGIC; 
  signal unidadControlU_N2161 : STD_LOGIC; 
  signal unidadControlU_N217 : STD_LOGIC; 
  signal unidadControlU_N2181 : STD_LOGIC; 
  signal unidadControlU_N2191 : STD_LOGIC; 
  signal unidadControlU_N220 : STD_LOGIC; 
  signal unidadControlU_N2201 : STD_LOGIC; 
  signal unidadControlU_N2241 : STD_LOGIC; 
  signal unidadControlU_N226 : STD_LOGIC; 
  signal unidadControlU_N227 : STD_LOGIC; 
  signal unidadControlU_N2271 : STD_LOGIC; 
  signal unidadControlU_N228 : STD_LOGIC; 
  signal unidadControlU_N2281 : STD_LOGIC; 
  signal unidadControlU_N229 : STD_LOGIC; 
  signal unidadControlU_N2291 : STD_LOGIC; 
  signal unidadControlU_N230 : STD_LOGIC; 
  signal unidadControlU_N231 : STD_LOGIC; 
  signal unidadControlU_N232 : STD_LOGIC; 
  signal unidadControlU_N233 : STD_LOGIC; 
  signal unidadControlU_N234 : STD_LOGIC; 
  signal unidadControlU_N236 : STD_LOGIC; 
  signal unidadControlU_N2361 : STD_LOGIC; 
  signal unidadControlU_N237 : STD_LOGIC; 
  signal unidadControlU_N239 : STD_LOGIC; 
  signal unidadControlU_N240 : STD_LOGIC; 
  signal unidadControlU_N2411 : STD_LOGIC; 
  signal unidadControlU_N242 : STD_LOGIC; 
  signal unidadControlU_N244 : STD_LOGIC; 
  signal unidadControlU_N247 : STD_LOGIC; 
  signal unidadControlU_N248 : STD_LOGIC; 
  signal unidadControlU_N249 : STD_LOGIC; 
  signal unidadControlU_N250 : STD_LOGIC; 
  signal unidadControlU_N251 : STD_LOGIC; 
  signal unidadControlU_N252 : STD_LOGIC; 
  signal unidadControlU_N254 : STD_LOGIC; 
  signal unidadControlU_N256 : STD_LOGIC; 
  signal unidadControlU_N257 : STD_LOGIC; 
  signal unidadControlU_N258 : STD_LOGIC; 
  signal unidadControlU_N29 : STD_LOGIC; 
  signal unidadControlU_N3 : STD_LOGIC; 
  signal unidadControlU_N30 : STD_LOGIC; 
  signal unidadControlU_N31 : STD_LOGIC; 
  signal unidadControlU_N32 : STD_LOGIC; 
  signal unidadControlU_N36 : STD_LOGIC; 
  signal unidadControlU_N41 : STD_LOGIC; 
  signal unidadControlU_N44 : STD_LOGIC; 
  signal unidadControlU_N45 : STD_LOGIC; 
  signal unidadControlU_N46 : STD_LOGIC; 
  signal unidadControlU_N48 : STD_LOGIC; 
  signal unidadControlU_N49 : STD_LOGIC; 
  signal unidadControlU_N5 : STD_LOGIC; 
  signal unidadControlU_N50 : STD_LOGIC; 
  signal unidadControlU_N51 : STD_LOGIC; 
  signal unidadControlU_N56 : STD_LOGIC; 
  signal unidadControlU_N59 : STD_LOGIC; 
  signal unidadControlU_N60 : STD_LOGIC; 
  signal unidadControlU_N72 : STD_LOGIC; 
  signal unidadControlU_N88 : STD_LOGIC; 
  signal unidadControlU_N89 : STD_LOGIC; 
  signal unidadControlU_N96 : STD_LOGIC; 
  signal unidadControlU_N961 : STD_LOGIC; 
  signal unidadControlU_n0008_1_Q : STD_LOGIC; 
  signal unidadControlU_n0008_1_10_1257 : STD_LOGIC; 
  signal unidadControlU_n0008_3_Q : STD_LOGIC; 
  signal unidadControlU_n0008_4_Q_1259 : STD_LOGIC; 
  signal unidadControlU_n0008_9_Q : STD_LOGIC; 
  signal unidadControlU_n0008_9_2_1261 : STD_LOGIC; 
  signal unidadControlU_n0008_9_26_1262 : STD_LOGIC; 
  signal unidadControlU_n0008_9_67_1263 : STD_LOGIC; 
  signal unidadControlU_n0024_101_Q : STD_LOGIC; 
  signal unidadControlU_n0024_102_Q : STD_LOGIC; 
  signal unidadControlU_n0024_103_Q : STD_LOGIC; 
  signal unidadControlU_n0024_105_Q : STD_LOGIC; 
  signal unidadControlU_n0024_106_Q : STD_LOGIC; 
  signal unidadControlU_n0024_107_Q : STD_LOGIC; 
  signal unidadControlU_n0024_10_Q : STD_LOGIC; 
  signal unidadControlU_n0024_11_Q : STD_LOGIC; 
  signal unidadControlU_n0024_15_Q : STD_LOGIC; 
  signal unidadControlU_n0024_16_Q : STD_LOGIC; 
  signal unidadControlU_n0024_3_Q : STD_LOGIC; 
  signal unidadControlU_n0024_6_Q : STD_LOGIC; 
  signal unidadControlU_n0024_7_Q : STD_LOGIC; 
  signal unidadControlU_n0024_8_Q : STD_LOGIC; 
  signal unidadControlU_n0025_101_Q : STD_LOGIC; 
  signal unidadControlU_n0025_102_Q : STD_LOGIC; 
  signal unidadControlU_n0025_103_Q : STD_LOGIC; 
  signal unidadControlU_n0025_104_Q : STD_LOGIC; 
  signal unidadControlU_n0025_105_Q : STD_LOGIC; 
  signal unidadControlU_n0025_106_Q : STD_LOGIC; 
  signal unidadControlU_n0025_107_Q : STD_LOGIC; 
  signal unidadControlU_n0025_108_Q : STD_LOGIC; 
  signal unidadControlU_n0025_10_Q : STD_LOGIC; 
  signal unidadControlU_n0025_11_Q : STD_LOGIC; 
  signal unidadControlU_n0025_15_Q : STD_LOGIC; 
  signal unidadControlU_n0025_16_Q : STD_LOGIC; 
  signal unidadControlU_n0025_1_Q : STD_LOGIC; 
  signal unidadControlU_n0025_2_Q : STD_LOGIC; 
  signal unidadControlU_n0025_3_Q : STD_LOGIC; 
  signal unidadControlU_n0025_4_Q : STD_LOGIC; 
  signal unidadControlU_n0025_5_Q : STD_LOGIC; 
  signal unidadControlU_n0025_6_Q : STD_LOGIC; 
  signal unidadControlU_n0025_7_Q : STD_LOGIC; 
  signal unidadControlU_n0025_8_Q : STD_LOGIC; 
  signal unidadControlU_n0026_100_Q : STD_LOGIC; 
  signal unidadControlU_n0026_101_Q : STD_LOGIC; 
  signal unidadControlU_n0026_102_Q : STD_LOGIC; 
  signal unidadControlU_n0026_103_Q : STD_LOGIC; 
  signal unidadControlU_n0026_104_Q : STD_LOGIC; 
  signal unidadControlU_n0026_105_Q : STD_LOGIC; 
  signal unidadControlU_n0026_106_Q : STD_LOGIC; 
  signal unidadControlU_n0026_107_Q : STD_LOGIC; 
  signal unidadControlU_n0026_108_Q : STD_LOGIC; 
  signal unidadControlU_n0026_10_Q : STD_LOGIC; 
  signal unidadControlU_n0026_11_Q : STD_LOGIC; 
  signal unidadControlU_n0026_15_Q : STD_LOGIC; 
  signal unidadControlU_n0026_16_Q : STD_LOGIC; 
  signal unidadControlU_n0026_1_Q : STD_LOGIC; 
  signal unidadControlU_n0026_2_Q : STD_LOGIC; 
  signal unidadControlU_n0026_3_Q : STD_LOGIC; 
  signal unidadControlU_n0026_4_Q : STD_LOGIC; 
  signal unidadControlU_n0026_5_Q : STD_LOGIC; 
  signal unidadControlU_n0026_6_Q : STD_LOGIC; 
  signal unidadControlU_n0026_7_Q : STD_LOGIC; 
  signal unidadControlU_n0026_8_Q : STD_LOGIC; 
  signal unidadControlU_n0027_0_Q : STD_LOGIC; 
  signal unidadControlU_n0027_100_Q : STD_LOGIC; 
  signal unidadControlU_n0027_101_Q : STD_LOGIC; 
  signal unidadControlU_n0027_102_Q : STD_LOGIC; 
  signal unidadControlU_n0027_103_Q : STD_LOGIC; 
  signal unidadControlU_n0027_104_Q : STD_LOGIC; 
  signal unidadControlU_n0027_105_Q : STD_LOGIC; 
  signal unidadControlU_n0027_107_Q : STD_LOGIC; 
  signal unidadControlU_n0027_108_Q : STD_LOGIC; 
  signal unidadControlU_n0027_10_Q : STD_LOGIC; 
  signal unidadControlU_n0027_11_Q : STD_LOGIC; 
  signal unidadControlU_n0027_15_Q : STD_LOGIC; 
  signal unidadControlU_n0027_6_Q : STD_LOGIC; 
  signal unidadControlU_n0027_8_Q : STD_LOGIC; 
  signal unidadControlU_n0028_0_Q : STD_LOGIC; 
  signal unidadControlU_n0028_100_Q : STD_LOGIC; 
  signal unidadControlU_n0028_101_Q : STD_LOGIC; 
  signal unidadControlU_n0028_102_Q : STD_LOGIC; 
  signal unidadControlU_n0028_103_Q : STD_LOGIC; 
  signal unidadControlU_n0028_104_Q : STD_LOGIC; 
  signal unidadControlU_n0028_106_Q : STD_LOGIC; 
  signal unidadControlU_n0028_107_Q : STD_LOGIC; 
  signal unidadControlU_n0028_108_Q : STD_LOGIC; 
  signal unidadControlU_n0028_10_Q : STD_LOGIC; 
  signal unidadControlU_n0028_11_Q : STD_LOGIC; 
  signal unidadControlU_n0028_15_Q : STD_LOGIC; 
  signal unidadControlU_n0028_6_Q : STD_LOGIC; 
  signal unidadControlU_n0028_8_Q : STD_LOGIC; 
  signal unidadControlU_n0029_0_Q : STD_LOGIC; 
  signal unidadControlU_n0029_100_Q : STD_LOGIC; 
  signal unidadControlU_n0029_101_Q : STD_LOGIC; 
  signal unidadControlU_n0029_102_Q : STD_LOGIC; 
  signal unidadControlU_n0029_103_Q : STD_LOGIC; 
  signal unidadControlU_n0029_104_Q : STD_LOGIC; 
  signal unidadControlU_n0029_105_Q : STD_LOGIC; 
  signal unidadControlU_n0029_106_Q : STD_LOGIC; 
  signal unidadControlU_n0029_107_Q : STD_LOGIC; 
  signal unidadControlU_n0029_108_Q : STD_LOGIC; 
  signal unidadControlU_n0029_10_Q : STD_LOGIC; 
  signal unidadControlU_n0029_11_Q : STD_LOGIC; 
  signal unidadControlU_n0029_15_Q : STD_LOGIC; 
  signal unidadControlU_n0029_2_Q : STD_LOGIC; 
  signal unidadControlU_n0029_5_Q : STD_LOGIC; 
  signal unidadControlU_n0029_6_Q : STD_LOGIC; 
  signal unidadControlU_n0029_7_Q : STD_LOGIC; 
  signal unidadControlU_n0029_8_Q : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_cy_0_Q_1365 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_cy_1_Q_1366 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_cy_2_Q_1367 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_cy_3_Q_1368 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_cy_4_Q_1369 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_cy_5_Q_1370 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_lut_0_Q : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_lut_1_Q_1372 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_lut_2_Q_1373 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_lut_3_Q_1374 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_lut_4_Q_1375 : STD_LOGIC; 
  signal unidadControlU_cMemory_mux0000_9_wg_lut_5_Q_1376 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd1_1377 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd1_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd1_In12_1379 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd10_1380 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd10_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd11_1382 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd11_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd11_In21_1384 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd11_In4_1385 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_1386 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_In24 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_In241_1389 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_In242_1390 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_In60_1391 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_In76_1392 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd12_1_1393 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd13_1394 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd13_In_1395 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd14_1396 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd14_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd14_In6_1398 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd15_1399 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd15_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd15_In15_1401 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd15_In25_1402 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd15_In38_1403 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd15_In57_1404 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd15_In82_1405 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd16_1406 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd16_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd16_In135_1408 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd16_In28 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd16_In281_1410 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd16_In282_1411 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd17_1412 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd17_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd18_1414 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd18_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd19_1416 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd19_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd2_1418 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd2_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd2_In8_1420 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd20_1421 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd20_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd21_1423 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd21_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd21_In10_1425 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd21_In36 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd21_In5_1427 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd3_1428 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd3_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd3_In14_1430 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd3_In29_1431 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd3_In48_1432 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd3_In6_1433 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_1434 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_In103_1436 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_In24_1437 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_In37_1438 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_In76_1439 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_In8_1440 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_In90_1441 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd4_1_1442 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd5_1443 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd5_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd5_In20_1445 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd5_In5_1446 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd6_1447 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd6_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd6_In5_1449 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd7_1450 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd7_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd7_In11_1452 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd7_In14_1453 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd7_In21_1454 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_1455 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In11_1457 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In17_1458 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In26_1459 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In66_1460 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In8_1461 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In80_1462 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_In82_1463 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd8_1_1464 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd9_1465 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_FFd9_In : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N15 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N18 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N2 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N22 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N27 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N28 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N41 : STD_LOGIC; 
  signal unidadControlU_current_st_FSM_N9 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0004 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0009 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0013 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0014 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0018 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0019 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0020 : STD_LOGIC; 
  signal unidadControlU_current_st_cmp_eq0021 : STD_LOGIC; 
  signal unidadControlU_n0026_or0000 : STD_LOGIC; 
  signal unidadControlU_n0026_or00001_1487 : STD_LOGIC; 
  signal unidadControlU_n0026_or0001 : STD_LOGIC; 
  signal unidadControlU_n0026_or00011_1489 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_1490 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In122_1492 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In1511_1493 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In154_1494 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In17_1495 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In27_1496 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In68_1497 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In7_1498 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd1_In71_1499 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd10_1500 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd10_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd10_In110_1502 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd10_In119_1503 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd10_In15_1504 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd10_In24_1505 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd11_1506 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd11_In_1507 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd12_1508 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd12_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd12_In15_1510 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd12_In19_1511 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd13_1512 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd13_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd13_In15_1514 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd13_In19_1515 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_1516 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In1 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In16_1519 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In24_1520 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In47_1521 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In7_1522 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In71_1523 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd14_In9 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_1525 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In100_1527 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In114_1528 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In128_1529 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In135_1530 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In142_1531 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In2_1532 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In247_1533 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In261_1534 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In294_1535 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In306_1536 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In311_1537 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In34_1538 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In340_1539 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In367_1540 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In375_1541 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In388_1542 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In456_1543 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In48_1544 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In80_1545 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd15_In83_1546 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_1547 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In13_1549 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In130_1550 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In161_1551 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In24_1552 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In31_1553 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In47_1554 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In64_1555 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In89_1556 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd16_In94_1557 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_1558 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In111_1560 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In130_1561 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In1322_1562 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In17_1563 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In25_1564 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In39_1565 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In4_1566 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In68_1567 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd17_In85_1568 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_1569 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In107_1571 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In136_1572 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In148_1573 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In15_1574 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In167_1575 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In188_1576 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In194_1577 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In215_1578 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In228_1579 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In250_1580 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In256_1581 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In298_1582 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In53_1583 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In53_SW0 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In53_SW01_1585 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In66_1586 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In84_1587 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd18_In9_1588 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_1589 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In102_1591 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In115_1592 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In12312 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In123121_1594 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In123122_1595 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In12345_1596 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In12349_1597 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In140_1598 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In153_1599 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In179_1600 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In207_1601 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In22_1602 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In50_1603 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In59_1604 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In6_1605 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd19_In80_1606 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_1607 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In12121_1609 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In1213_1610 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In12151_1611 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In129_1612 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In14_1613 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In145_1614 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In148_1615 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In57_1616 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd2_In99_1617 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd20_1618 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd20_In_1619 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd21_1620 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd21_In_1621 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_1622 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In102_1624 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In12_1625 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In123_1626 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In145_1627 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In173_1628 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In30_1629 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In34_1630 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In41_1631 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In77_1632 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd22_In94_1633 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd23_1634 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd23_In_1635 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_1636 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In124_1638 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In148_1639 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In163_1640 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In18_1641 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In31_1642 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In55_1643 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In74_1644 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd24_In91_1645 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_1646 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In132_1648 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In151_1649 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In154_1650 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In181_1651 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In43_1652 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In44_1653 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd3_In9_1654 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_1655 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In1_1657 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In121 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In1211_1659 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In1212_1660 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In131 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In133_1662 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In14_1663 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In26_1664 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In29_1665 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In53_1666 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd4_In97_1667 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_1668 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_In105_1670 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_In128_1671 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_In14_1672 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_In19_1673 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_In35_1674 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd5_In61_1675 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd6_1676 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd6_In_1677 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd7_1678 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd7_In_1679 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_1680 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In124_1682 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In1323_1683 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In135_1684 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In136_1685 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In152_1686 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In182_1687 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In183_1688 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In23_1689 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In42_1690 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In52 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In67_1692 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd8_In91_1693 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd9_1694 : STD_LOGIC; 
  signal unidadControlU_next_val_FSM_FFd9_In_1695 : STD_LOGIC; 
  signal unidadControlU_state_out_0_Q : STD_LOGIC; 
  signal unidadControlU_state_out_1_Q : STD_LOGIC; 
  signal unidadControlU_state_out_10_Q : STD_LOGIC; 
  signal unidadControlU_state_out_12_Q : STD_LOGIC; 
  signal unidadControlU_state_out_13_Q : STD_LOGIC; 
  signal unidadControlU_state_out_14_Q : STD_LOGIC; 
  signal unidadControlU_state_out_15_Q : STD_LOGIC; 
  signal unidadControlU_state_out_2_Q : STD_LOGIC; 
  signal unidadControlU_state_out_3_Q : STD_LOGIC; 
  signal unidadControlU_state_out_31 : STD_LOGIC; 
  signal unidadControlU_state_out_4_Q : STD_LOGIC; 
  signal unidadControlU_state_out_41 : STD_LOGIC; 
  signal unidadControlU_state_out_5_Q : STD_LOGIC; 
  signal unidadControlU_state_out_6_Q : STD_LOGIC; 
  signal unidadControlU_state_out_7_Q : STD_LOGIC; 
  signal unidadControlU_state_out_8_Q : STD_LOGIC; 
  signal unidadControlU_state_out_9_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_117_1714 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_15_1715 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_22_1716 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_30_1717 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_48_1718 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_5_1719 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_51_1720 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_59_1721 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_0_92_1722 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_116 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_15_1725 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_16_1726 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_2_1727 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_3_1728 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_47_1729 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_76_1730 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_9_1731 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_10_98_1732 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_112_1734 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_15_1735 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_2_1736 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_31_1737 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_34_1738 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_42_1739 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_52_1740 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_60_1741 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_68_1742 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_7_1743 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_12_80_1744 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_10_1746 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_111219_1747 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_111230_1748 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_111261_1749 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_24_1750 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_31_1751 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_314_1752 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_381_1753 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_58_1754 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_8_1755 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_13_92_1756 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_10_1758 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_19_1759 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_21_1760 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_34_1761 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_37_1762 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_45_1763 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_56_1764 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_7_1765 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_14_91_1766 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_107_1768 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_13_1769 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_20_1770 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_32_1771 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_38_1772 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_4_1773 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_44_1774 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_62_1775 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_66_1776 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_15_86_1777 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_1_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_1_17_1779 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_1_7_1780 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_2_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_126_1783 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_20_1784 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_2111_1785 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_49_1786 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_5_1787 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_60_1788 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_3_83_1789 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_102_1791 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_143_1792 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_17_1793 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_23_1794 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_36_1795 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_42_1796 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_5_1797 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_55_1798 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_6_1799 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_83_1800 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_4_89_1801 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_5_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_5_0_1803 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_5_123_1804 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_5_141_1805 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_5_151_1806 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_5_6_1807 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_5_8_1808 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_0_1810 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_103_1811 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_12_1812 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_125_1813 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_17_1814 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_25_1815 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_28_1816 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_36_1817 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_56_1818 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_59_1819 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_6_1820 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_6_67_1821 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_112_1823 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_131_1824 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_14_1825 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_162_1826 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_171_1827 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_27_1828 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_44_1829 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_5_1830 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_6_1831 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_7_75_1832 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_110_1834 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_1191_1835 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_1211_1836 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_127_1837 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_137_1838 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_19_1839 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_206_1840 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_22_1841 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_28_1842 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_311113_1843 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_31112_1844 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_31115_1845 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_312111_1846 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_312124_1847 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_31215_1848 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_314_1849 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_320_1850 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_323_1851 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_331_1852 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_350_1853 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_352_1854 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_363_1855 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_365_1856 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_387_1857 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_41113_1858 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_4112_1859 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_4115_1860 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_42113_1861 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_4212_1862 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_4215_1863 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_43113_1864 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_4312_1865 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_4315_1866 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_55_1867 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_69_1868 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_79_1869 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_85_1870 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_8_9_1871 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_Q : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_104_1873 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_110_1874 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_12_1875 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_131_1876 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_143_1877 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_169_1878 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_177_1879 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_191_1880 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_2_1881 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_210_1882 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_228_1883 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_235_1884 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_2411_1885 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_241213_1886 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_24122_1887 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_241241_1888 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_24125_1889 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_24133_1890 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_24140_1891 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_2417_1892 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_280_1893 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_283_1894 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_303_1895 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_308_1896 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_323_1897 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_333_1898 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_353_1899 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_358_1900 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_368_1901 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_373_1902 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_383_1903 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_405_1904 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_429_1905 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_460_1906 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_469_1907 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_480_1908 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_485_1909 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_505_1910 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_525_1911 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_534_1912 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_550_1913 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_570_1914 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_601_1915 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_610_1916 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_626_1917 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_64_1918 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_657_1919 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_665_1920 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_669_1921 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_691_1922 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_76_1923 : STD_LOGIC; 
  signal unidadControlU_state_out_mux0000_9_96_1924 : STD_LOGIC; 
  signal unidadControlU_state_out_or0000 : STD_LOGIC; 
  signal unidadControlU_state_out_or0020 : STD_LOGIC; 
  signal unidadControlU_state_out_or0024 : STD_LOGIC; 
  signal irU_ir_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal irU_ir_out_full : STD_LOGIC_VECTOR ( 23 downto 16 ); 
  signal irU_ir_out_full_mux0002 : STD_LOGIC_VECTOR ( 23 downto 16 ); 
  signal irU_ir_out_mux0005 : STD_LOGIC_VECTOR ( 23 downto 16 ); 
  signal lcdU_Madd_cuenta_addsub0000_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal lcdU_Madd_cuenta_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal lcdU_Mcompar_E_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal lcdU_Mcompar_cuenta_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal lcdU_Mmult_valor_completo_mult0001_Madd_lut : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal lcdU_Msub_dec0_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 2 ); 
  signal lcdU_Msub_dec0_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 3 ); 
  signal lcdU_Msub_unidades_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal lcdU_Msub_unidades_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal lcdU_centenas : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal lcdU_cuenta : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal lcdU_cuenta_addsub0000 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal lcdU_cuenta_mux0000 : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal lcdU_dec0_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal marMuxU_mux_out_signal : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal marMuxU_mux_out_signal_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal marU_mar_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mbrMuxInU_aux_mbr_in : STD_LOGIC_VECTOR ( 23 downto 16 ); 
  signal mbrU_mbr_out_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal mbrU_mbr_out_1_mux0003 : STD_LOGIC_VECTOR ( 23 downto 16 ); 
  signal mbr_mux_out : STD_LOGIC_VECTOR ( 23 downto 16 ); 
  signal pcU_Madd_pc_count_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal pcU_Madd_pc_count_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal pcU_pc_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal pcU_pc_count_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal pcU_pc_count_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_a_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_a_value_mux0002 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_b_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_b_value_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_c_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_c_value_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_d_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_d_value_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_reg_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal registersU_reg_out_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal unidadControlU_n0026_mux0001 : STD_LOGIC_VECTOR ( 251 downto 250 ); 
  signal unidadControlU_n0026_mux0002 : STD_LOGIC_VECTOR ( 246 downto 246 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  pcU_Madd_pc_count_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => pcU_Madd_pc_count_addsub0000_lut(0),
      O => pcU_Madd_pc_count_addsub0000_cy(0)
    );
  pcU_Madd_pc_count_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => pcU_Madd_pc_count_addsub0000_lut(0),
      O => pcU_pc_count_addsub0000(0)
    );
  pcU_Madd_pc_count_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(0),
      DI => N0,
      S => pcU_Madd_pc_count_addsub0000_cy_1_rt_921,
      O => pcU_Madd_pc_count_addsub0000_cy(1)
    );
  pcU_Madd_pc_count_addsub0000_xor_1_Q : XORCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(0),
      LI => pcU_Madd_pc_count_addsub0000_cy_1_rt_921,
      O => pcU_pc_count_addsub0000(1)
    );
  pcU_Madd_pc_count_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(1),
      DI => N0,
      S => pcU_Madd_pc_count_addsub0000_cy_2_rt_923,
      O => pcU_Madd_pc_count_addsub0000_cy(2)
    );
  pcU_Madd_pc_count_addsub0000_xor_2_Q : XORCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(1),
      LI => pcU_Madd_pc_count_addsub0000_cy_2_rt_923,
      O => pcU_pc_count_addsub0000(2)
    );
  pcU_Madd_pc_count_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(2),
      DI => N0,
      S => pcU_Madd_pc_count_addsub0000_cy_3_rt_925,
      O => pcU_Madd_pc_count_addsub0000_cy(3)
    );
  pcU_Madd_pc_count_addsub0000_xor_3_Q : XORCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(2),
      LI => pcU_Madd_pc_count_addsub0000_cy_3_rt_925,
      O => pcU_pc_count_addsub0000(3)
    );
  pcU_Madd_pc_count_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(3),
      DI => N0,
      S => pcU_Madd_pc_count_addsub0000_cy_4_rt_927,
      O => pcU_Madd_pc_count_addsub0000_cy(4)
    );
  pcU_Madd_pc_count_addsub0000_xor_4_Q : XORCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(3),
      LI => pcU_Madd_pc_count_addsub0000_cy_4_rt_927,
      O => pcU_pc_count_addsub0000(4)
    );
  pcU_Madd_pc_count_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(4),
      DI => N0,
      S => pcU_Madd_pc_count_addsub0000_cy_5_rt_929,
      O => pcU_Madd_pc_count_addsub0000_cy(5)
    );
  pcU_Madd_pc_count_addsub0000_xor_5_Q : XORCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(4),
      LI => pcU_Madd_pc_count_addsub0000_cy_5_rt_929,
      O => pcU_pc_count_addsub0000(5)
    );
  pcU_Madd_pc_count_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(5),
      DI => N0,
      S => pcU_Madd_pc_count_addsub0000_cy_6_rt_931,
      O => pcU_Madd_pc_count_addsub0000_cy(6)
    );
  pcU_Madd_pc_count_addsub0000_xor_6_Q : XORCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(5),
      LI => pcU_Madd_pc_count_addsub0000_cy_6_rt_931,
      O => pcU_pc_count_addsub0000(6)
    );
  pcU_Madd_pc_count_addsub0000_xor_7_Q : XORCY
    port map (
      CI => pcU_Madd_pc_count_addsub0000_cy(6),
      LI => pcU_Madd_pc_count_addsub0000_xor_7_rt_933,
      O => pcU_pc_count_addsub0000(7)
    );
  marU_mar_out_0 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(0),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(0)
    );
  marU_mar_out_1 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(1),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(1)
    );
  marU_mar_out_2 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(2),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(2)
    );
  marU_mar_out_3 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(3),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(3)
    );
  marU_mar_out_4 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(4),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(4)
    );
  marU_mar_out_5 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(5),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(5)
    );
  marU_mar_out_6 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(6),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(6)
    );
  marU_mar_out_7 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => marMuxU_mux_out_signal(7),
      G => unidadControlU_state_out_6_Q,
      GE => unidadControlU_state_out_9_Q,
      Q => marU_mar_out(7)
    );
  pcU_pc_count_0 : LD
    port map (
      D => pcU_pc_count_mux0001(0),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(0)
    );
  pcU_pc_count_1 : LD
    port map (
      D => pcU_pc_count_mux0001(1),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(1)
    );
  pcU_pc_count_2 : LD
    port map (
      D => pcU_pc_count_mux0001(2),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(2)
    );
  pcU_pc_count_3 : LD
    port map (
      D => pcU_pc_count_mux0001(3),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(3)
    );
  pcU_pc_count_4 : LD
    port map (
      D => pcU_pc_count_mux0001(4),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(4)
    );
  pcU_pc_count_5 : LD
    port map (
      D => pcU_pc_count_mux0001(5),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(5)
    );
  pcU_pc_count_6 : LD
    port map (
      D => pcU_pc_count_mux0001(6),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(6)
    );
  pcU_pc_count_7 : LD
    port map (
      D => pcU_pc_count_mux0001(7),
      G => unidadControlU_state_out_7_Q,
      Q => pcU_pc_count(7)
    );
  unidadControlU_current_st_FSM_FFd21 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd21_In,
      Q => unidadControlU_current_st_FSM_FFd21_1423
    );
  unidadControlU_current_st_FSM_FFd20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd20_In,
      Q => unidadControlU_current_st_FSM_FFd20_1421
    );
  unidadControlU_current_st_FSM_FFd18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd18_In,
      Q => unidadControlU_current_st_FSM_FFd18_1414
    );
  unidadControlU_current_st_FSM_FFd17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd17_In,
      Q => unidadControlU_current_st_FSM_FFd17_1412
    );
  unidadControlU_current_st_FSM_FFd19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd19_In,
      Q => unidadControlU_current_st_FSM_FFd19_1416
    );
  unidadControlU_current_st_FSM_FFd16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd16_In,
      Q => unidadControlU_current_st_FSM_FFd16_1406
    );
  unidadControlU_current_st_FSM_FFd15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd15_In,
      Q => unidadControlU_current_st_FSM_FFd15_1399
    );
  unidadControlU_current_st_FSM_FFd13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd13_In_1395,
      Q => unidadControlU_current_st_FSM_FFd13_1394
    );
  unidadControlU_current_st_FSM_FFd12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd12_In,
      Q => unidadControlU_current_st_FSM_FFd12_1386
    );
  unidadControlU_current_st_FSM_FFd14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd14_In,
      Q => unidadControlU_current_st_FSM_FFd14_1396
    );
  unidadControlU_current_st_FSM_FFd11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd11_In,
      Q => unidadControlU_current_st_FSM_FFd11_1382
    );
  unidadControlU_current_st_FSM_FFd10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd10_In,
      Q => unidadControlU_current_st_FSM_FFd10_1380
    );
  unidadControlU_current_st_FSM_FFd8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd8_In,
      Q => unidadControlU_current_st_FSM_FFd8_1455
    );
  unidadControlU_current_st_FSM_FFd7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd7_In,
      Q => unidadControlU_current_st_FSM_FFd7_1450
    );
  unidadControlU_current_st_FSM_FFd9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd9_In,
      Q => unidadControlU_current_st_FSM_FFd9_1465
    );
  unidadControlU_current_st_FSM_FFd5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd5_In,
      Q => unidadControlU_current_st_FSM_FFd5_1443
    );
  unidadControlU_current_st_FSM_FFd4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd4_In,
      Q => unidadControlU_current_st_FSM_FFd4_1434
    );
  unidadControlU_current_st_FSM_FFd6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd6_In,
      Q => unidadControlU_current_st_FSM_FFd6_1447
    );
  unidadControlU_current_st_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd2_In,
      Q => unidadControlU_current_st_FSM_FFd2_1418
    );
  unidadControlU_current_st_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd1_In,
      Q => unidadControlU_current_st_FSM_FFd1_1377
    );
  unidadControlU_current_st_FSM_FFd3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd3_In,
      Q => unidadControlU_current_st_FSM_FFd3_1428
    );
  unidadControlU_next_val_FSM_FFd23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd23_In_1635,
      Q => unidadControlU_next_val_FSM_FFd23_1634
    );
  unidadControlU_next_val_FSM_FFd22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd22_In,
      Q => unidadControlU_next_val_FSM_FFd22_1622
    );
  unidadControlU_next_val_FSM_FFd24 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd24_In,
      Q => unidadControlU_next_val_FSM_FFd24_1636
    );
  unidadControlU_next_val_FSM_FFd20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd20_In_1619,
      Q => unidadControlU_next_val_FSM_FFd20_1618
    );
  unidadControlU_next_val_FSM_FFd19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd19_In,
      Q => unidadControlU_next_val_FSM_FFd19_1589
    );
  unidadControlU_next_val_FSM_FFd21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd21_In_1621,
      Q => unidadControlU_next_val_FSM_FFd21_1620
    );
  unidadControlU_next_val_FSM_FFd17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd17_In,
      Q => unidadControlU_next_val_FSM_FFd17_1558
    );
  unidadControlU_next_val_FSM_FFd16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd16_In,
      Q => unidadControlU_next_val_FSM_FFd16_1547
    );
  unidadControlU_next_val_FSM_FFd18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd18_In,
      Q => unidadControlU_next_val_FSM_FFd18_1569
    );
  unidadControlU_next_val_FSM_FFd14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd14_In,
      Q => unidadControlU_next_val_FSM_FFd14_1516
    );
  unidadControlU_next_val_FSM_FFd13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd13_In,
      Q => unidadControlU_next_val_FSM_FFd13_1512
    );
  unidadControlU_next_val_FSM_FFd15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd15_In,
      Q => unidadControlU_next_val_FSM_FFd15_1525
    );
  unidadControlU_next_val_FSM_FFd11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd11_In_1507,
      Q => unidadControlU_next_val_FSM_FFd11_1506
    );
  unidadControlU_next_val_FSM_FFd10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd10_In,
      Q => unidadControlU_next_val_FSM_FFd10_1500
    );
  unidadControlU_next_val_FSM_FFd12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd12_In,
      Q => unidadControlU_next_val_FSM_FFd12_1508
    );
  unidadControlU_next_val_FSM_FFd8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd8_In,
      Q => unidadControlU_next_val_FSM_FFd8_1680
    );
  unidadControlU_next_val_FSM_FFd7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd7_In_1679,
      Q => unidadControlU_next_val_FSM_FFd7_1678
    );
  unidadControlU_next_val_FSM_FFd9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd9_In_1695,
      Q => unidadControlU_next_val_FSM_FFd9_1694
    );
  unidadControlU_next_val_FSM_FFd5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd5_In,
      Q => unidadControlU_next_val_FSM_FFd5_1668
    );
  unidadControlU_next_val_FSM_FFd4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd4_In,
      Q => unidadControlU_next_val_FSM_FFd4_1655
    );
  unidadControlU_next_val_FSM_FFd6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd6_In_1677,
      Q => unidadControlU_next_val_FSM_FFd6_1676
    );
  unidadControlU_next_val_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd2_In,
      Q => unidadControlU_next_val_FSM_FFd2_1607
    );
  unidadControlU_next_val_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd1_In,
      Q => unidadControlU_next_val_FSM_FFd1_1490
    );
  unidadControlU_next_val_FSM_FFd3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => activar_cpu_IBUF_498,
      D => unidadControlU_next_val_FSM_FFd3_In,
      Q => unidadControlU_next_val_FSM_FFd3_1646
    );
  unidadControlU_Mmux_n0026_2_f5_0 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_41,
      I1 => unidadControlU_Mmux_n0024_31,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_100_Q
    );
  unidadControlU_Mmux_n0026_2_f5_1 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_42,
      I1 => unidadControlU_Mmux_n0024_32,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_101_Q
    );
  unidadControlU_Mmux_n0026_2_f5_2 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_43,
      I1 => unidadControlU_Mmux_n0024_33,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_102_Q
    );
  unidadControlU_Mmux_n0026_2_f5_3 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_44,
      I1 => unidadControlU_Mmux_n0024_34,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_103_Q
    );
  unidadControlU_Mmux_n0026_2_f5_4 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_45,
      I1 => unidadControlU_Mmux_n0024_35,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_104_Q
    );
  unidadControlU_Mmux_n0026_2_f5_5 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_46,
      I1 => unidadControlU_Mmux_n0024_36,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_105_Q
    );
  unidadControlU_Mmux_n0026_2_f5_6 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_47,
      I1 => unidadControlU_Mmux_n0024_37,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_106_Q
    );
  unidadControlU_Mmux_n0026_2_f5_7 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_48,
      I1 => unidadControlU_Mmux_n0024_38,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_107_Q
    );
  unidadControlU_Mmux_n0026_2_f5_8 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_49,
      I1 => unidadControlU_Mmux_n0024_39,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_108_Q
    );
  unidadControlU_Mmux_n0026_2_f5_9 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_410,
      I1 => unidadControlU_Mmux_n0024_310,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_10_Q
    );
  unidadControlU_Mmux_n0026_2_f5_10 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_411,
      I1 => unidadControlU_Mmux_n0024_311,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_11_Q
    );
  unidadControlU_Mmux_n0026_2_f5_11 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_412,
      I1 => unidadControlU_Mmux_n0024_312,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_15_Q
    );
  unidadControlU_Mmux_n0026_2_f5_12 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_413,
      I1 => unidadControlU_Mmux_n0024_313,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_16_Q
    );
  unidadControlU_Mmux_n0026_2_f5_13 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_414,
      I1 => unidadControlU_Mmux_n0024_314,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_1_Q
    );
  unidadControlU_Mmux_n0026_2_f5_14 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_415,
      I1 => unidadControlU_Mmux_n0024_315,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_2_Q
    );
  unidadControlU_Mmux_n0026_2_f5_15 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_416,
      I1 => unidadControlU_Mmux_n0024_316,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_3_Q
    );
  unidadControlU_Mmux_n0026_2_f5_16 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_417,
      I1 => unidadControlU_Mmux_n0024_317,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_4_Q
    );
  unidadControlU_Mmux_n0026_2_f5_17 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_418,
      I1 => unidadControlU_Mmux_n0024_318,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_5_Q
    );
  unidadControlU_Mmux_n0026_2_f5_18 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_419,
      I1 => unidadControlU_Mmux_n0024_319,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_6_Q
    );
  unidadControlU_Mmux_n0026_2_f5_19 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_420,
      I1 => unidadControlU_Mmux_n0024_320,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_7_Q
    );
  unidadControlU_Mmux_n0026_2_f5_20 : MUXF5
    port map (
      I0 => unidadControlU_Mmux_n0024_421,
      I1 => unidadControlU_Mmux_n0024_321,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0026_8_Q
    );
  unidadControlU_state_out_15 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_15_Q,
      Q => unidadControlU_state_out_15_Q
    );
  unidadControlU_state_out_14 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_14_Q,
      Q => unidadControlU_state_out_14_Q
    );
  unidadControlU_state_out_13 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_13_Q,
      Q => unidadControlU_state_out_13_Q
    );
  unidadControlU_state_out_12 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_12_Q,
      Q => unidadControlU_state_out_12_Q
    );
  unidadControlU_state_out_10 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_10_Q,
      Q => unidadControlU_state_out_10_Q
    );
  unidadControlU_state_out_9 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_9_Q,
      Q => unidadControlU_state_out_9_Q
    );
  unidadControlU_state_out_8 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_8_Q,
      Q => unidadControlU_state_out_8_Q
    );
  unidadControlU_state_out_7 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_7_Q,
      Q => unidadControlU_state_out_7_Q
    );
  unidadControlU_state_out_6 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_6_Q,
      Q => unidadControlU_state_out_6_Q
    );
  unidadControlU_state_out_5 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_5_Q,
      Q => unidadControlU_state_out_5_Q
    );
  unidadControlU_state_out_4 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_4_Q,
      Q => unidadControlU_state_out_41
    );
  unidadControlU_state_out_3 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_3_Q,
      Q => unidadControlU_state_out_31
    );
  unidadControlU_state_out_2 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_2_Q,
      Q => unidadControlU_state_out_2_Q
    );
  unidadControlU_state_out_1 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_1_Q,
      Q => unidadControlU_state_out_1_Q
    );
  unidadControlU_state_out_0 : FDE
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_state_out_mux0000_0_Q,
      Q => unidadControlU_state_out_0_Q
    );
  lcdU_pr_estado_FSM_FFd9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd10_734,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd9_778
    );
  lcdU_pr_estado_FSM_FFd10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd11_735,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd10_734
    );
  lcdU_pr_estado_FSM_FFd11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd12_736,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd11_735
    );
  lcdU_pr_estado_FSM_FFd12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd13_737,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd12_736
    );
  lcdU_pr_estado_FSM_FFd13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd14_738,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd13_737
    );
  lcdU_pr_estado_FSM_FFd14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd15_739,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd14_738
    );
  lcdU_pr_estado_FSM_FFd15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd16_740,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd15_739
    );
  lcdU_pr_estado_FSM_FFd16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd17_741,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd16_740
    );
  lcdU_pr_estado_FSM_FFd17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd18_742,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd17_741
    );
  lcdU_pr_estado_FSM_FFd18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd19_743,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd18_742
    );
  lcdU_pr_estado_FSM_FFd19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd20_745,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd19_743
    );
  lcdU_pr_estado_FSM_FFd20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd21_746,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd20_745
    );
  lcdU_pr_estado_FSM_FFd21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd22_747,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd21_746
    );
  lcdU_pr_estado_FSM_FFd22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd23_748,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd22_747
    );
  lcdU_pr_estado_FSM_FFd23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd24_749,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd23_748
    );
  lcdU_pr_estado_FSM_FFd24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd25_750,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd24_749
    );
  lcdU_pr_estado_FSM_FFd25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd26_751,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd25_750
    );
  lcdU_pr_estado_FSM_FFd26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd27_752,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd26_751
    );
  lcdU_pr_estado_FSM_FFd27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd28_753,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd27_752
    );
  lcdU_pr_estado_FSM_FFd28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd29_754,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd28_753
    );
  lcdU_pr_estado_FSM_FFd29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd30_756,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd29_754
    );
  lcdU_pr_estado_FSM_FFd30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd31_757,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd30_756
    );
  lcdU_pr_estado_FSM_FFd31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd32_758,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd31_757
    );
  lcdU_pr_estado_FSM_FFd32 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd33_759,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd32_758
    );
  lcdU_pr_estado_FSM_FFd33 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd34_760,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd33_759
    );
  lcdU_pr_estado_FSM_FFd34 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd35_761,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd34_760
    );
  lcdU_pr_estado_FSM_FFd35 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd36_762,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd35_761
    );
  lcdU_pr_estado_FSM_FFd36 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd37_763,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd36_762
    );
  lcdU_pr_estado_FSM_FFd37 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd38_764,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd37_763
    );
  lcdU_pr_estado_FSM_FFd38 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd39_765,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd38_764
    );
  lcdU_pr_estado_FSM_FFd39 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd40_767,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd39_765
    );
  lcdU_pr_estado_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd2_744,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd1_733
    );
  lcdU_pr_estado_FSM_FFd40 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd41_768,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd40_767
    );
  lcdU_pr_estado_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd3_755,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd2_744
    );
  lcdU_pr_estado_FSM_FFd41 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd42_769,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd41_768
    );
  lcdU_pr_estado_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd4_766,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd3_755
    );
  lcdU_pr_estado_FSM_FFd42 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd43_770,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd42_769
    );
  lcdU_pr_estado_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd5_774,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd4_766
    );
  lcdU_pr_estado_FSM_FFd43 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd44_771,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd43_770
    );
  lcdU_pr_estado_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd6_775,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd5_774
    );
  lcdU_pr_estado_FSM_FFd44 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd45_772,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd44_771
    );
  lcdU_pr_estado_FSM_FFd6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd7_776,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd6_775
    );
  lcdU_pr_estado_FSM_FFd45 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd46_773,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd45_772
    );
  lcdU_pr_estado_FSM_FFd7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd8_777,
      R => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd7_776
    );
  lcdU_pr_estado_FSM_FFd46 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => lcdU_E_583,
      D => N0,
      S => lcd_reset_IBUF_784,
      Q => lcdU_pr_estado_FSM_FFd46_773
    );
  lcdU_Msub_dec0_addsub0000_xor_7_Q : XORCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(6),
      LI => lcdU_Msub_dec0_addsub0000_lut(7),
      O => lcdU_dec0_addsub0000(7)
    );
  lcdU_Msub_dec0_addsub0000_xor_6_Q : XORCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(5),
      LI => lcdU_Msub_dec0_addsub0000_lut(6),
      O => lcdU_dec0_addsub0000(6)
    );
  lcdU_Msub_dec0_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(5),
      DI => mbrU_mbr_out_1(6),
      S => lcdU_Msub_dec0_addsub0000_lut(6),
      O => lcdU_Msub_dec0_addsub0000_cy(6)
    );
  lcdU_Msub_dec0_addsub0000_xor_5_Q : XORCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(4),
      LI => lcdU_Msub_dec0_addsub0000_lut(5),
      O => lcdU_dec0_addsub0000(5)
    );
  lcdU_Msub_dec0_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(4),
      DI => mbrU_mbr_out_1(5),
      S => lcdU_Msub_dec0_addsub0000_lut(5),
      O => lcdU_Msub_dec0_addsub0000_cy(5)
    );
  lcdU_Msub_dec0_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => mbrU_mbr_out_1(5),
      I1 => lcdU_centenas(0),
      O => lcdU_Msub_dec0_addsub0000_lut(5)
    );
  lcdU_Msub_dec0_addsub0000_xor_4_Q : XORCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(3),
      LI => lcdU_Msub_dec0_addsub0000_lut(4),
      O => lcdU_dec0_addsub0000(4)
    );
  lcdU_Msub_dec0_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(3),
      DI => N1,
      S => lcdU_Msub_dec0_addsub0000_lut(4),
      O => lcdU_Msub_dec0_addsub0000_cy(4)
    );
  lcdU_Msub_dec0_addsub0000_xor_3_Q : XORCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(2),
      LI => lcdU_Msub_dec0_addsub0000_lut(3),
      O => lcdU_dec0_addsub0000(3)
    );
  lcdU_Msub_dec0_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => lcdU_Msub_dec0_addsub0000_cy(2),
      DI => mbrU_mbr_out_1(3),
      S => lcdU_Msub_dec0_addsub0000_lut(3),
      O => lcdU_Msub_dec0_addsub0000_cy(3)
    );
  lcdU_Msub_dec0_addsub0000_xor_2_Q : XORCY
    port map (
      CI => N1,
      LI => lcdU_Msub_dec0_addsub0000_lut_2_1_653,
      O => lcdU_dec0_addsub0000(2)
    );
  lcdU_Msub_dec0_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => N1,
      DI => mbrU_mbr_out_1(2),
      S => lcdU_Msub_dec0_addsub0000_lut_2_1_653,
      O => lcdU_Msub_dec0_addsub0000_cy(2)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_cuenta_cmp_lt0000_cy(5),
      DI => N0,
      S => lcdU_Mcompar_cuenta_cmp_lt0000_lut_6_Q_646,
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcdU_cuenta(15),
      I1 => lcdU_cuenta(16),
      O => lcdU_Mcompar_cuenta_cmp_lt0000_lut_6_Q_646
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_cuenta_cmp_lt0000_cy(4),
      DI => N1,
      S => lcdU_Mcompar_cuenta_cmp_lt0000_lut_5_Q_645,
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy(5)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcdU_cuenta(11),
      I1 => lcdU_cuenta(12),
      I2 => lcdU_cuenta(13),
      I3 => lcdU_cuenta(14),
      O => lcdU_Mcompar_cuenta_cmp_lt0000_lut_5_Q_645
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_cuenta_cmp_lt0000_cy(3),
      DI => N0,
      S => lcdU_Mcompar_cuenta_cmp_lt0000_lut_4_Q_644,
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy(4)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcdU_cuenta(9),
      I1 => lcdU_cuenta(10),
      O => lcdU_Mcompar_cuenta_cmp_lt0000_lut_4_Q_644
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_cuenta_cmp_lt0000_cy(2),
      DI => N1,
      S => lcdU_Mcompar_cuenta_cmp_lt0000_lut_3_Q,
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy(3)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_cuenta_cmp_lt0000_cy(1),
      DI => N0,
      S => lcdU_Mcompar_cuenta_cmp_lt0000_cy_2_rt_637,
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy(2)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_cuenta_cmp_lt0000_cy(0),
      DI => N1,
      S => lcdU_Mcompar_cuenta_cmp_lt0000_lut_1_Q,
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy(1)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => lcdU_Mcompar_cuenta_cmp_lt0000_cy_0_rt_634,
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy(0)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_E_cmp_lt0000_cy(6),
      DI => N1,
      S => lcdU_Mcompar_E_cmp_lt0000_lut_7_Q_632,
      O => lcdU_Mcompar_E_cmp_lt0000_cy(7)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_E_cmp_lt0000_cy(5),
      DI => N0,
      S => lcdU_Mcompar_E_cmp_lt0000_lut_6_Q_631,
      O => lcdU_Mcompar_E_cmp_lt0000_cy(6)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_E_cmp_lt0000_cy(4),
      DI => N1,
      S => lcdU_Mcompar_E_cmp_lt0000_lut_5_Q_630,
      O => lcdU_Mcompar_E_cmp_lt0000_cy(5)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_E_cmp_lt0000_cy(3),
      DI => N0,
      S => lcdU_Mcompar_E_cmp_lt0000_lut_4_Q_629,
      O => lcdU_Mcompar_E_cmp_lt0000_cy(4)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_E_cmp_lt0000_cy(2),
      DI => N1,
      S => lcdU_Mcompar_E_cmp_lt0000_lut_3_Q_628,
      O => lcdU_Mcompar_E_cmp_lt0000_cy(3)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_E_cmp_lt0000_cy(1),
      DI => N0,
      S => lcdU_cuenta_mux0000(6),
      O => lcdU_Mcompar_E_cmp_lt0000_cy(2)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => lcdU_Mcompar_E_cmp_lt0000_cy(0),
      DI => N1,
      S => lcdU_Mcompar_E_cmp_lt0000_lut_1_Q_627,
      O => lcdU_Mcompar_E_cmp_lt0000_cy(1)
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => lcdU_cuenta_mux0000(4),
      O => lcdU_Mcompar_E_cmp_lt0000_cy(0)
    );
  lcdU_Madd_cuenta_addsub0000_xor_16_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(15),
      LI => lcdU_Madd_cuenta_addsub0000_xor_16_rt_618,
      O => lcdU_cuenta_addsub0000(16)
    );
  lcdU_Madd_cuenta_addsub0000_xor_15_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(14),
      LI => lcdU_Madd_cuenta_addsub0000_cy_15_rt_598,
      O => lcdU_cuenta_addsub0000(15)
    );
  lcdU_Madd_cuenta_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(14),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_15_rt_598,
      O => lcdU_Madd_cuenta_addsub0000_cy(15)
    );
  lcdU_Madd_cuenta_addsub0000_xor_14_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(13),
      LI => lcdU_Madd_cuenta_addsub0000_cy_14_rt_596,
      O => lcdU_cuenta_addsub0000(14)
    );
  lcdU_Madd_cuenta_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(13),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_14_rt_596,
      O => lcdU_Madd_cuenta_addsub0000_cy(14)
    );
  lcdU_Madd_cuenta_addsub0000_xor_13_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(12),
      LI => lcdU_Madd_cuenta_addsub0000_cy_13_rt_594,
      O => lcdU_cuenta_addsub0000(13)
    );
  lcdU_Madd_cuenta_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(12),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_13_rt_594,
      O => lcdU_Madd_cuenta_addsub0000_cy(13)
    );
  lcdU_Madd_cuenta_addsub0000_xor_12_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(11),
      LI => lcdU_Madd_cuenta_addsub0000_cy_12_rt_592,
      O => lcdU_cuenta_addsub0000(12)
    );
  lcdU_Madd_cuenta_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(11),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_12_rt_592,
      O => lcdU_Madd_cuenta_addsub0000_cy(12)
    );
  lcdU_Madd_cuenta_addsub0000_xor_11_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(10),
      LI => lcdU_Madd_cuenta_addsub0000_cy_11_rt_590,
      O => lcdU_cuenta_addsub0000(11)
    );
  lcdU_Madd_cuenta_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(10),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_11_rt_590,
      O => lcdU_Madd_cuenta_addsub0000_cy(11)
    );
  lcdU_Madd_cuenta_addsub0000_xor_10_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(9),
      LI => lcdU_Madd_cuenta_addsub0000_cy_10_rt_588,
      O => lcdU_cuenta_addsub0000(10)
    );
  lcdU_Madd_cuenta_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(9),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_10_rt_588,
      O => lcdU_Madd_cuenta_addsub0000_cy(10)
    );
  lcdU_Madd_cuenta_addsub0000_xor_9_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(8),
      LI => lcdU_Madd_cuenta_addsub0000_cy_9_rt_616,
      O => lcdU_cuenta_addsub0000(9)
    );
  lcdU_Madd_cuenta_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(8),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_9_rt_616,
      O => lcdU_Madd_cuenta_addsub0000_cy(9)
    );
  lcdU_Madd_cuenta_addsub0000_xor_8_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(7),
      LI => lcdU_Madd_cuenta_addsub0000_cy_8_rt_614,
      O => lcdU_cuenta_addsub0000(8)
    );
  lcdU_Madd_cuenta_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(7),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_8_rt_614,
      O => lcdU_Madd_cuenta_addsub0000_cy(8)
    );
  lcdU_Madd_cuenta_addsub0000_xor_7_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(6),
      LI => lcdU_Madd_cuenta_addsub0000_cy_7_rt_612,
      O => lcdU_cuenta_addsub0000(7)
    );
  lcdU_Madd_cuenta_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(6),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_7_rt_612,
      O => lcdU_Madd_cuenta_addsub0000_cy(7)
    );
  lcdU_Madd_cuenta_addsub0000_xor_6_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(5),
      LI => lcdU_Madd_cuenta_addsub0000_cy_6_rt_610,
      O => lcdU_cuenta_addsub0000(6)
    );
  lcdU_Madd_cuenta_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(5),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_6_rt_610,
      O => lcdU_Madd_cuenta_addsub0000_cy(6)
    );
  lcdU_Madd_cuenta_addsub0000_xor_5_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(4),
      LI => lcdU_Madd_cuenta_addsub0000_cy_5_rt_608,
      O => lcdU_cuenta_addsub0000(5)
    );
  lcdU_Madd_cuenta_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(4),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_5_rt_608,
      O => lcdU_Madd_cuenta_addsub0000_cy(5)
    );
  lcdU_Madd_cuenta_addsub0000_xor_4_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(3),
      LI => lcdU_Madd_cuenta_addsub0000_cy_4_rt_606,
      O => lcdU_cuenta_addsub0000(4)
    );
  lcdU_Madd_cuenta_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(3),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_4_rt_606,
      O => lcdU_Madd_cuenta_addsub0000_cy(4)
    );
  lcdU_Madd_cuenta_addsub0000_xor_3_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(2),
      LI => lcdU_Madd_cuenta_addsub0000_cy_3_rt_604,
      O => lcdU_cuenta_addsub0000(3)
    );
  lcdU_Madd_cuenta_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(2),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_3_rt_604,
      O => lcdU_Madd_cuenta_addsub0000_cy(3)
    );
  lcdU_Madd_cuenta_addsub0000_xor_2_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(1),
      LI => lcdU_Madd_cuenta_addsub0000_cy_2_rt_602,
      O => lcdU_cuenta_addsub0000(2)
    );
  lcdU_Madd_cuenta_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(1),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_2_rt_602,
      O => lcdU_Madd_cuenta_addsub0000_cy(2)
    );
  lcdU_Madd_cuenta_addsub0000_xor_1_Q : XORCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(0),
      LI => lcdU_Madd_cuenta_addsub0000_cy_1_rt_600,
      O => lcdU_cuenta_addsub0000(1)
    );
  lcdU_Madd_cuenta_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => lcdU_Madd_cuenta_addsub0000_cy(0),
      DI => N0,
      S => lcdU_Madd_cuenta_addsub0000_cy_1_rt_600,
      O => lcdU_Madd_cuenta_addsub0000_cy(1)
    );
  lcdU_Madd_cuenta_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => lcdU_Madd_cuenta_addsub0000_lut(0),
      O => lcdU_cuenta_addsub0000(0)
    );
  lcdU_Madd_cuenta_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => lcdU_Madd_cuenta_addsub0000_lut(0),
      O => lcdU_Madd_cuenta_addsub0000_cy(0)
    );
  lcdU_E : FDR
    port map (
      C => clk_BUFGP_500,
      D => N1,
      R => lcdU_E_cmp_lt0000,
      Q => lcdU_E1
    );
  lcdU_cuenta_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(16),
      Q => lcdU_cuenta(16)
    );
  lcdU_cuenta_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(15),
      Q => lcdU_cuenta(15)
    );
  lcdU_cuenta_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(14),
      Q => lcdU_cuenta(14)
    );
  lcdU_cuenta_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(13),
      Q => lcdU_cuenta(13)
    );
  lcdU_cuenta_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(12),
      Q => lcdU_cuenta(12)
    );
  lcdU_cuenta_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(11),
      Q => lcdU_cuenta(11)
    );
  lcdU_cuenta_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(10),
      Q => lcdU_cuenta(10)
    );
  lcdU_cuenta_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(9),
      Q => lcdU_cuenta(9)
    );
  lcdU_cuenta_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(8),
      Q => lcdU_cuenta(8)
    );
  lcdU_cuenta_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(7),
      Q => lcdU_cuenta(7)
    );
  lcdU_cuenta_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(6),
      Q => lcdU_cuenta(6)
    );
  lcdU_cuenta_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(5),
      Q => lcdU_cuenta(5)
    );
  lcdU_cuenta_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(4),
      Q => lcdU_cuenta(4)
    );
  lcdU_cuenta_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(3),
      Q => lcdU_cuenta(3)
    );
  lcdU_cuenta_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(2),
      Q => lcdU_cuenta(2)
    );
  lcdU_cuenta_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(1),
      Q => lcdU_cuenta(1)
    );
  lcdU_cuenta_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      D => lcdU_cuenta_mux0000(0),
      Q => lcdU_cuenta(0)
    );
  mbrMuxInU_aux_mbr_in_20 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_20_and0000,
      D => mbrMuxInU_aux_mbr_in_20_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_20_and0001,
      Q => mbrMuxInU_aux_mbr_in(20)
    );
  mbrMuxInU_aux_mbr_in_16 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_16_and0000,
      D => mbrMuxInU_aux_mbr_in_16_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_16_and0001,
      Q => mbrMuxInU_aux_mbr_in(16)
    );
  mbrMuxInU_aux_mbr_in_21 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_21_and0000,
      D => mbrMuxInU_aux_mbr_in_21_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_21_and0001,
      Q => mbrMuxInU_aux_mbr_in(21)
    );
  mbrMuxInU_aux_mbr_in_17 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_17_and0000,
      D => mbrMuxInU_aux_mbr_in_17_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_17_and0001,
      Q => mbrMuxInU_aux_mbr_in(17)
    );
  mbrMuxInU_aux_mbr_in_22 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_22_and0000,
      D => mbrMuxInU_aux_mbr_in_22_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_22_and0001,
      Q => mbrMuxInU_aux_mbr_in(22)
    );
  mbrMuxInU_aux_mbr_in_23 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_23_and0000,
      D => mbrMuxInU_aux_mbr_in_23_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_23_and0001,
      Q => mbrMuxInU_aux_mbr_in(23)
    );
  mbrMuxInU_aux_mbr_in_18 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_18_and0000,
      D => mbrMuxInU_aux_mbr_in_18_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_18_and0001,
      Q => mbrMuxInU_aux_mbr_in(18)
    );
  mbrMuxInU_aux_mbr_in_19 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => mbrMuxInU_aux_mbr_in_19_and0000,
      D => mbrMuxInU_aux_mbr_in_19_mux0004,
      G => unidadControlU_state_out_8_Q,
      PRE => mbrMuxInU_aux_mbr_in_19_and0001,
      Q => mbrMuxInU_aux_mbr_in(19)
    );
  marMuxU_mux_out_signal_7 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_7_and0000,
      D => marMuxU_mux_out_signal_mux0001(7),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_7_and0001,
      Q => marMuxU_mux_out_signal(7)
    );
  marMuxU_mux_out_signal_6 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_6_and0000,
      D => marMuxU_mux_out_signal_mux0001(6),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_6_and0001,
      Q => marMuxU_mux_out_signal(6)
    );
  marMuxU_mux_out_signal_5 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_5_and0000,
      D => marMuxU_mux_out_signal_mux0001(5),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_5_and0001,
      Q => marMuxU_mux_out_signal(5)
    );
  marMuxU_mux_out_signal_4 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_4_and0000,
      D => marMuxU_mux_out_signal_mux0001(4),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_4_and0001,
      Q => marMuxU_mux_out_signal(4)
    );
  marMuxU_mux_out_signal_3 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_3_and0000,
      D => marMuxU_mux_out_signal_mux0001(3),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_3_and0001,
      Q => marMuxU_mux_out_signal(3)
    );
  marMuxU_mux_out_signal_2 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_2_and0000,
      D => marMuxU_mux_out_signal_mux0001(2),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_2_and0001,
      Q => marMuxU_mux_out_signal(2)
    );
  marMuxU_mux_out_signal_1 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_1_and0000,
      D => marMuxU_mux_out_signal_mux0001(1),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_1_and0001,
      Q => marMuxU_mux_out_signal(1)
    );
  marMuxU_mux_out_signal_0 : LDCP
    port map (
      CLR => marMuxU_mux_out_signal_0_and0000,
      D => marMuxU_mux_out_signal_mux0001(0),
      G => unidadControlU_state_out_3_Q,
      PRE => marMuxU_mux_out_signal_0_and0001,
      Q => marMuxU_mux_out_signal(0)
    );
  registersU_reg_out_7 : LD
    port map (
      D => registersU_reg_out_mux0001(7),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(7)
    );
  registersU_reg_out_6 : LD
    port map (
      D => registersU_reg_out_mux0001(6),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(6)
    );
  registersU_reg_out_5 : LD
    port map (
      D => registersU_reg_out_mux0001(5),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(5)
    );
  registersU_reg_out_4 : LD
    port map (
      D => registersU_reg_out_mux0001(4),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(4)
    );
  registersU_reg_out_3 : LD
    port map (
      D => registersU_reg_out_mux0001(3),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(3)
    );
  registersU_reg_out_2 : LD
    port map (
      D => registersU_reg_out_mux0001(2),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(2)
    );
  registersU_reg_out_1 : LD
    port map (
      D => registersU_reg_out_mux0001(1),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(1)
    );
  registersU_reg_out_0 : LD
    port map (
      D => registersU_reg_out_mux0001(0),
      G => registersU_d_value_not0000,
      Q => registersU_reg_out(0)
    );
  registersU_d_value_7 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(7),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(7)
    );
  registersU_d_value_6 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(6),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(6)
    );
  registersU_d_value_5 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(5),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(5)
    );
  registersU_d_value_4 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(4),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(4)
    );
  registersU_d_value_3 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(3),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(3)
    );
  registersU_d_value_2 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(2),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(2)
    );
  registersU_d_value_1 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(1),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(1)
    );
  registersU_d_value_0 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_d_value_mux0001(0),
      G => registersU_d_value_not0000,
      GE => registersU_d_value_cmp_eq0000,
      Q => registersU_d_value(0)
    );
  registersU_c_value_7 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(7),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(7)
    );
  registersU_c_value_6 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(6),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(6)
    );
  registersU_c_value_5 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(5),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(5)
    );
  registersU_c_value_4 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(4),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(4)
    );
  registersU_c_value_3 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(3),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(3)
    );
  registersU_c_value_2 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(2),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(2)
    );
  registersU_c_value_1 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(1),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(1)
    );
  registersU_c_value_0 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_c_value_mux0001(0),
      G => registersU_d_value_not0000,
      GE => registersU_c_value_cmp_eq0000,
      Q => registersU_c_value(0)
    );
  registersU_b_value_7 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(7),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(7)
    );
  registersU_b_value_6 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(6),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(6)
    );
  registersU_b_value_5 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(5),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(5)
    );
  registersU_b_value_4 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(4),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(4)
    );
  registersU_b_value_3 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(3),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(3)
    );
  registersU_b_value_2 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(2),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(2)
    );
  registersU_b_value_1 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(1),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(1)
    );
  registersU_b_value_0 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_b_value_mux0001(0),
      G => registersU_d_value_not0000,
      GE => registersU_b_value_cmp_eq0000,
      Q => registersU_b_value(0)
    );
  registersU_a_value_7 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(7),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(7)
    );
  registersU_a_value_6 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(6),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(6)
    );
  registersU_a_value_5 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(5),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(5)
    );
  registersU_a_value_4 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(4),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(4)
    );
  registersU_a_value_3 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(3),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(3)
    );
  registersU_a_value_2 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(2),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(2)
    );
  registersU_a_value_1 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(1),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(1)
    );
  registersU_a_value_0 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => registersU_a_value_mux0002(0),
      G => registersU_d_value_not0000,
      GE => registersU_a_value_0_0_not0000,
      Q => registersU_a_value(0)
    );
  ramU_data_out_15 : LDE
    port map (
      D => ramU_aux_out_15_mux0000,
      G => unidadControlU_state_out_5_Q,
      GE => irU_ir_out_full_and0000,
      Q => ramU_data_out_15_Q
    );
  ramU_data_out_8 : LDE
    port map (
      D => ramU_aux_out_8_mux0000,
      G => unidadControlU_state_out_5_Q,
      GE => irU_ir_out_full_and0000,
      Q => ramU_data_out_8_Q
    );
  ramU_aux_out_15 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => ramU_aux_out_15_mux0000,
      G => irU_ir_out_full_and0000,
      GE => unidadControlU_state_out_5_Q,
      Q => ramU_aux_out_15_Q
    );
  ramU_aux_out_8 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => ramU_aux_out_8_mux0000,
      G => irU_ir_out_full_and0000,
      GE => unidadControlU_state_out_5_Q,
      Q => ramU_aux_out_8_Q
    );
  mbrU_mbr_ir_out_23 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_23_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_23_Q
    );
  mbrU_mbr_ir_out_22 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_22_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_22_Q
    );
  mbrU_mbr_ir_out_21 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_21_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_21_Q
    );
  mbrU_mbr_ir_out_20 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_20_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_20_Q
    );
  mbrU_mbr_ir_out_19 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_19_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_19_Q
    );
  mbrU_mbr_ir_out_18 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_18_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_18_Q
    );
  mbrU_mbr_ir_out_17 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_17_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_17_Q
    );
  mbrU_mbr_ir_out_16 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_16_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_16_Q
    );
  mbrU_mbr_ir_out_15 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_15_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_15_Q
    );
  mbrU_mbr_ir_out_8 : LDE
    port map (
      D => mbrU_mbr_ir_out_mux0002_8_Q,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_ir_out_8_Q
    );
  mbrU_mbr_out_1_7 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(23),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(7)
    );
  mbrU_mbr_out_1_6 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(22),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(6)
    );
  mbrU_mbr_out_1_5 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(21),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(5)
    );
  mbrU_mbr_out_1_4 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(20),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(4)
    );
  mbrU_mbr_out_1_3 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(19),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(3)
    );
  mbrU_mbr_out_1_2 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(18),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(2)
    );
  mbrU_mbr_out_1_1 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(17),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(1)
    );
  mbrU_mbr_out_1_0 : LDE
    port map (
      D => mbrU_mbr_out_1_mux0003(16),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_out_full_not0001,
      Q => mbrU_mbr_out_1(0)
    );
  mbrU_mbr_value_23 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(23),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_23_Q
    );
  mbrU_mbr_value_22 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(22),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_22_Q
    );
  mbrU_mbr_value_21 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(21),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_21_Q
    );
  mbrU_mbr_value_20 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(20),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_20_Q
    );
  mbrU_mbr_value_19 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(19),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_19_Q
    );
  mbrU_mbr_value_18 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(18),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_18_Q
    );
  mbrU_mbr_value_17 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(17),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_17_Q
    );
  mbrU_mbr_value_16 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbr_mux_out(16),
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_16_Q
    );
  mbrU_mbr_value_15 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbrMuxInU_aux_mbr_in_15_mux0001_826,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_15_Q
    );
  mbrU_mbr_value_8 : LDE
    generic map(
      INIT => '0'
    )
    port map (
      D => mbrMuxInU_aux_mbr_in_8_mux0001_863,
      G => unidadControlU_state_out_4_Q,
      GE => irU_ir_value_and0000,
      Q => mbrU_mbr_value_8_Q
    );
  irU_ir_value_23 : LDE
    port map (
      D => mbrU_mbr_ir_out_23_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_23_Q
    );
  irU_ir_value_22 : LDE
    port map (
      D => mbrU_mbr_ir_out_22_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_22_Q
    );
  irU_ir_value_21 : LDE
    port map (
      D => mbrU_mbr_ir_out_21_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_21_Q
    );
  irU_ir_value_20 : LDE
    port map (
      D => mbrU_mbr_ir_out_20_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_20_Q
    );
  irU_ir_value_19 : LDE
    port map (
      D => mbrU_mbr_ir_out_19_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_19_Q
    );
  irU_ir_value_18 : LDE
    port map (
      D => mbrU_mbr_ir_out_18_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_18_Q
    );
  irU_ir_value_17 : LDE
    port map (
      D => mbrU_mbr_ir_out_17_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_17_Q
    );
  irU_ir_value_16 : LDE
    port map (
      D => mbrU_mbr_ir_out_16_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_16_Q
    );
  irU_ir_value_15 : LDE
    port map (
      D => mbrU_mbr_ir_out_15_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_15_Q
    );
  irU_ir_value_8 : LDE
    port map (
      D => mbrU_mbr_ir_out_8_Q,
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_value_and0000,
      Q => irU_ir_value_8_Q
    );
  irU_ir_out_full_23 : LDE
    port map (
      D => irU_ir_out_full_mux0002(23),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(23)
    );
  irU_ir_out_full_22 : LDE
    port map (
      D => irU_ir_out_full_mux0002(22),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(22)
    );
  irU_ir_out_full_21 : LDE
    port map (
      D => irU_ir_out_full_mux0002(21),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(21)
    );
  irU_ir_out_full_20 : LDE
    port map (
      D => irU_ir_out_full_mux0002(20),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(20)
    );
  irU_ir_out_full_19 : LDE
    port map (
      D => irU_ir_out_full_mux0002(19),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(19)
    );
  irU_ir_out_full_18 : LDE
    port map (
      D => irU_ir_out_full_mux0002(18),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(18)
    );
  irU_ir_out_full_17 : LDE
    port map (
      D => irU_ir_out_full_mux0002(17),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(17)
    );
  irU_ir_out_full_16 : LDE
    port map (
      D => irU_ir_out_full_mux0002(16),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out_full(16)
    );
  irU_ir_out_7 : LDE
    port map (
      D => irU_ir_out_mux0005(23),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(7)
    );
  irU_ir_out_6 : LDE
    port map (
      D => irU_ir_out_mux0005(22),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(6)
    );
  irU_ir_out_5 : LDE
    port map (
      D => irU_ir_out_mux0005(21),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(5)
    );
  irU_ir_out_4 : LDE
    port map (
      D => irU_ir_out_mux0005(20),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(4)
    );
  irU_ir_out_3 : LDE
    port map (
      D => irU_ir_out_mux0005(19),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(3)
    );
  irU_ir_out_2 : LDE
    port map (
      D => irU_ir_out_mux0005(18),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(2)
    );
  irU_ir_out_1 : LDE
    port map (
      D => irU_ir_out_mux0005(17),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(1)
    );
  irU_ir_out_0 : LDE
    port map (
      D => irU_ir_out_mux0005(16),
      G => unidadControlU_state_out_3_Q,
      GE => irU_ir_out_full_not0001,
      Q => irU_ir_out(0)
    );
  unidadControlU_cMemory_mux0000_9_wg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => unidadControlU_cMemory_mux0000_9_wg_lut_0_Q,
      O => unidadControlU_cMemory_mux0000_9_wg_cy_0_Q_1365
    );
  unidadControlU_cMemory_mux0000_9_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd20_1618,
      I1 => unidadControlU_next_val_FSM_FFd13_1512,
      I2 => unidadControlU_next_val_FSM_FFd4_1655,
      I3 => unidadControlU_next_val_FSM_FFd23_1634,
      O => unidadControlU_cMemory_mux0000_9_wg_lut_1_Q_1372
    );
  unidadControlU_cMemory_mux0000_9_wg_cy_1_Q : MUXCY
    port map (
      CI => unidadControlU_cMemory_mux0000_9_wg_cy_0_Q_1365,
      DI => N1,
      S => unidadControlU_cMemory_mux0000_9_wg_lut_1_Q_1372,
      O => unidadControlU_cMemory_mux0000_9_wg_cy_1_Q_1366
    );
  unidadControlU_cMemory_mux0000_9_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_1680,
      I1 => unidadControlU_next_val_FSM_FFd1_1490,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      I3 => unidadControlU_next_val_FSM_FFd12_1508,
      O => unidadControlU_cMemory_mux0000_9_wg_lut_2_Q_1373
    );
  unidadControlU_cMemory_mux0000_9_wg_cy_2_Q : MUXCY
    port map (
      CI => unidadControlU_cMemory_mux0000_9_wg_cy_1_Q_1366,
      DI => N1,
      S => unidadControlU_cMemory_mux0000_9_wg_lut_2_Q_1373,
      O => unidadControlU_cMemory_mux0000_9_wg_cy_2_Q_1367
    );
  unidadControlU_cMemory_mux0000_9_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => unidadControlU_next_val_FSM_FFd7_1678,
      I2 => unidadControlU_next_val_FSM_FFd9_1694,
      I3 => unidadControlU_next_val_FSM_FFd10_1500,
      O => unidadControlU_cMemory_mux0000_9_wg_lut_3_Q_1374
    );
  unidadControlU_cMemory_mux0000_9_wg_cy_3_Q : MUXCY
    port map (
      CI => unidadControlU_cMemory_mux0000_9_wg_cy_2_Q_1367,
      DI => N1,
      S => unidadControlU_cMemory_mux0000_9_wg_lut_3_Q_1374,
      O => unidadControlU_cMemory_mux0000_9_wg_cy_3_Q_1368
    );
  unidadControlU_cMemory_mux0000_9_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => unidadControlU_next_val_FSM_FFd3_1646,
      I2 => unidadControlU_next_val_FSM_FFd15_1525,
      I3 => unidadControlU_next_val_FSM_FFd5_1668,
      O => unidadControlU_cMemory_mux0000_9_wg_lut_4_Q_1375
    );
  unidadControlU_cMemory_mux0000_9_wg_cy_4_Q : MUXCY
    port map (
      CI => unidadControlU_cMemory_mux0000_9_wg_cy_3_Q_1368,
      DI => N1,
      S => unidadControlU_cMemory_mux0000_9_wg_lut_4_Q_1375,
      O => unidadControlU_cMemory_mux0000_9_wg_cy_4_Q_1369
    );
  unidadControlU_cMemory_mux0000_9_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd24_1636,
      I1 => unidadControlU_next_val_FSM_FFd17_1558,
      I2 => unidadControlU_next_val_FSM_FFd21_1620,
      I3 => unidadControlU_next_val_FSM_FFd18_1569,
      O => unidadControlU_cMemory_mux0000_9_wg_lut_5_Q_1376
    );
  unidadControlU_cMemory_mux0000_9_wg_cy_5_Q : MUXCY
    port map (
      CI => unidadControlU_cMemory_mux0000_9_wg_cy_4_Q_1369,
      DI => N1,
      S => unidadControlU_cMemory_mux0000_9_wg_lut_5_Q_1376,
      O => unidadControlU_cMemory_mux0000_9_wg_cy_5_Q_1370
    );
  lcdU_DB_1_wg_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd35_761,
      I1 => lcdU_pr_estado_FSM_FFd27_752,
      O => lcdU_DB_1_wg_lut_0_Q_560
    );
  lcdU_DB_1_wg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => lcdU_DB_1_wg_lut_0_Q_560,
      O => lcdU_DB_1_wg_cy_0_Q_555
    );
  lcdU_DB_1_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd25_750,
      I1 => lcdU_pr_estado_FSM_FFd24_749,
      I2 => lcdU_pr_estado_FSM_FFd42_769,
      I3 => lcdU_pr_estado_FSM_FFd13_737,
      O => lcdU_DB_1_wg_lut_1_Q_561
    );
  lcdU_DB_1_wg_cy_1_Q : MUXCY
    port map (
      CI => lcdU_DB_1_wg_cy_0_Q_555,
      DI => N1,
      S => lcdU_DB_1_wg_lut_1_Q_561,
      O => lcdU_DB_1_wg_cy_1_Q_556
    );
  lcdU_DB_1_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd12_736,
      I1 => lcdU_pr_estado_FSM_FFd11_735,
      I2 => lcdU_pr_estado_FSM_FFd33_759,
      I3 => lcdU_pr_estado_FSM_FFd8_777,
      O => lcdU_DB_1_wg_lut_2_Q_562
    );
  lcdU_DB_1_wg_cy_2_Q : MUXCY
    port map (
      CI => lcdU_DB_1_wg_cy_1_Q_556,
      DI => N1,
      S => lcdU_DB_1_wg_lut_2_Q_562,
      O => lcdU_DB_1_wg_cy_2_Q_557
    );
  lcdU_DB_1_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0105"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd6_775,
      I1 => lcdU_Mmult_valor_completo_mult0001_Madd_lut(7),
      I2 => lcdU_pr_estado_FSM_FFd4_766,
      I3 => lcdU_pr_estado_FSM_FFd7_776,
      O => lcdU_DB_1_wg_lut_3_Q_563
    );
  lcdU_DB_1_wg_cy_3_Q : MUXCY
    port map (
      CI => lcdU_DB_1_wg_cy_2_Q_557,
      DI => N1,
      S => lcdU_DB_1_wg_lut_3_Q_563,
      O => lcdU_DB_1_wg_cy_3_Q_558
    );
  lcdU_DB_1_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"090F"
    )
    port map (
      I0 => lcdU_decenas_0_Q,
      I1 => mbrU_mbr_out_1(1),
      I2 => lcdU_pr_estado_FSM_FFd46_773,
      I3 => lcdU_pr_estado_FSM_FFd3_755,
      O => lcdU_DB_1_wg_lut_4_Q_564
    );
  lcdU_DB_1_wg_cy_4_Q : MUXCY
    port map (
      CI => lcdU_DB_1_wg_cy_3_Q_558,
      DI => N1,
      S => lcdU_DB_1_wg_lut_4_Q_564,
      O => lcdU_DB_1_wg_cy_4_Q_559
    );
  lcdU_DB_1_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"3133"
    )
    port map (
      I0 => lcdU_N11,
      I1 => lcdU_pr_estado_FSM_FFd44_771,
      I2 => lcdU_decenas_3_Q,
      I3 => lcdU_pr_estado_FSM_FFd5_774,
      O => lcdU_DB_1_wg_lut_5_Q_565
    );
  lcdU_DB_1_wg_cy_5_Q : MUXCY
    port map (
      CI => lcdU_DB_1_wg_cy_4_Q_559,
      DI => N1,
      S => lcdU_DB_1_wg_lut_5_Q_565,
      O => DB_1_OBUF_5
    );
  unidadControlU_next_val_FSM_FFd8_In11111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(21),
      O => unidadControlU_N112
    );
  unidadControlU_next_val_FSM_FFd18_In181 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(22),
      O => unidadControlU_N2191
    );
  unidadControlU_next_val_FSM_FFd18_In1131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(19),
      O => unidadControlU_next_val_FSM_FFd8_In52
    );
  unidadControlU_next_val_FSM_FFd15_In571 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(23),
      O => unidadControlU_N249
    );
  unidadControlU_next_val_FSM_FFd15_In5571 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(20),
      O => unidadControlU_N2281
    );
  unidadControlU_next_val_FSM_FFd15_In5491 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(20),
      O => unidadControlU_N252
    );
  unidadControlU_next_val_FSM_FFd11_In131 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(22),
      O => unidadControlU_N2271
    );
  unidadControlU_current_st_cmp_eq00201 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_N240,
      O => unidadControlU_current_st_cmp_eq0020
    );
  unidadControlU_current_st_cmp_eq00141 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_N233,
      O => unidadControlU_current_st_cmp_eq0014
    );
  unidadControlU_current_st_FSM_FFd4_In211 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => irU_ir_out_full(17),
      O => unidadControlU_N1091
    );
  unidadControlU_current_st_FSM_FFd12_In121 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => irU_ir_out_full(17),
      O => unidadControlU_current_st_FSM_N41
    );
  unidadControlU_N291 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => irU_ir_out_full(17),
      O => unidadControlU_N29
    );
  ramU_aux_out_1_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      O => irU_ir_out_full_and0000
    );
  mbrU_mbr_value_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => unidadControlU_state_out_10_Q,
      O => irU_ir_value_and0000
    );
  marMuxU_mux_out_signal_7_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(7),
      O => marMuxU_mux_out_signal_7_and0001
    );
  marMuxU_mux_out_signal_7_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(7),
      O => marMuxU_mux_out_signal_7_and0000
    );
  marMuxU_mux_out_signal_6_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(6),
      O => marMuxU_mux_out_signal_6_and0001
    );
  marMuxU_mux_out_signal_6_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(6),
      O => marMuxU_mux_out_signal_6_and0000
    );
  marMuxU_mux_out_signal_5_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(5),
      O => marMuxU_mux_out_signal_5_and0001
    );
  marMuxU_mux_out_signal_5_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(5),
      O => marMuxU_mux_out_signal_5_and0000
    );
  marMuxU_mux_out_signal_4_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(4),
      O => marMuxU_mux_out_signal_4_and0001
    );
  marMuxU_mux_out_signal_4_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(4),
      O => marMuxU_mux_out_signal_4_and0000
    );
  marMuxU_mux_out_signal_3_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(3),
      O => marMuxU_mux_out_signal_3_and0001
    );
  marMuxU_mux_out_signal_3_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(3),
      O => marMuxU_mux_out_signal_3_and0000
    );
  marMuxU_mux_out_signal_2_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(2),
      O => marMuxU_mux_out_signal_2_and0001
    );
  marMuxU_mux_out_signal_2_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(2),
      O => marMuxU_mux_out_signal_2_and0000
    );
  marMuxU_mux_out_signal_1_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(1),
      O => marMuxU_mux_out_signal_1_and0001
    );
  marMuxU_mux_out_signal_1_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(1),
      O => marMuxU_mux_out_signal_1_and0000
    );
  marMuxU_mux_out_signal_0_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(0),
      O => marMuxU_mux_out_signal_0_and0001
    );
  marMuxU_mux_out_signal_0_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => pcU_pc_count(0),
      O => marMuxU_mux_out_signal_0_and0000
    );
  unidadControlU_next_val_FSM_FFd18_In1311 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(20),
      O => unidadControlU_N192
    );
  unidadControlU_next_val_FSM_FFd17_In211 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N226,
      I2 => irU_ir_out_full(22),
      O => unidadControlU_current_st_cmp_eq0009
    );
  unidadControlU_next_val_FSM_FFd15_In5461 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(21),
      O => unidadControlU_N226
    );
  unidadControlU_next_val_FSM_FFd1_In231 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(20),
      O => unidadControlU_N231
    );
  unidadControlU_current_st_cmp_eq00131 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_N2291,
      O => unidadControlU_current_st_cmp_eq0013
    );
  registersU_d_value_not00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_state_out_1_Q,
      I1 => unidadControlU_state_out_0_Q,
      I2 => unidadControlU_state_out_2_Q,
      O => registersU_d_value_not00001_1042
    );
  registersU_d_value_cmp_eq00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => marU_mar_out(0),
      I1 => marU_mar_out(1),
      I2 => marU_mar_out(2),
      O => registersU_d_value_cmp_eq0000
    );
  registersU_c_value_cmp_eq00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => marU_mar_out(0),
      I1 => marU_mar_out(2),
      I2 => marU_mar_out(1),
      O => registersU_c_value_cmp_eq0000
    );
  registersU_b_value_cmp_eq00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => marU_mar_out(2),
      I2 => marU_mar_out(0),
      O => registersU_b_value_cmp_eq0000
    );
  registersU_a_value_0_0_not00001 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => marU_mar_out(0),
      I2 => marU_mar_out(2),
      O => registersU_a_value_0_0_not0000
    );
  mbrMuxInU_aux_mbr_in_16_and000011 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_state_out_5_Q,
      I1 => unidadControlU_state_out_31,
      I2 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_N01
    );
  unidadControlU_next_val_FSM_FFd15_In511 : LUT3
    generic map(
      INIT => X"5E"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(21),
      O => unidadControlU_N134
    );
  unidadControlU_next_val_FSM_FFd1_In211 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(19),
      O => unidadControlU_N36
    );
  unidadControlU_current_st_cmp_eq00181 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(20),
      I2 => unidadControlU_N249,
      I3 => irU_ir_out_full(21),
      O => unidadControlU_current_st_cmp_eq0018
    );
  unidadControlU_current_st_cmp_eq00041 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(20),
      I2 => unidadControlU_N2191,
      I3 => irU_ir_out_full(21),
      O => unidadControlU_current_st_cmp_eq0004
    );
  unidadControlU_current_st_FSM_FFd13_In11 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_current_st_FSM_N2,
      I2 => unidadControlU_current_st_cmp_eq0020,
      I3 => unidadControlU_current_st_FSM_N22,
      O => unidadControlU_current_st_FSM_N9
    );
  unidadControlU_current_st_FSM_FFd11_In21 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_current_st_FSM_N2,
      I2 => unidadControlU_current_st_cmp_eq0013,
      I3 => unidadControlU_current_st_FSM_N22,
      O => unidadControlU_current_st_FSM_N15
    );
  mbrMuxInU_aux_mbr_in_23_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(23),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_23_mux0004,
      O => mbr_mux_out(23)
    );
  mbrMuxInU_aux_mbr_in_22_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(22),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_22_mux0004,
      O => mbr_mux_out(22)
    );
  mbrMuxInU_aux_mbr_in_21_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(21),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_21_mux0004,
      O => mbr_mux_out(21)
    );
  mbrMuxInU_aux_mbr_in_20_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(20),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_20_mux0004,
      O => mbr_mux_out(20)
    );
  mbrMuxInU_aux_mbr_in_19_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(19),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_19_mux0004,
      O => mbr_mux_out(19)
    );
  mbrMuxInU_aux_mbr_in_18_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(18),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_18_mux0004,
      O => mbr_mux_out(18)
    );
  mbrMuxInU_aux_mbr_in_17_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(17),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_17_mux0004,
      O => mbr_mux_out(17)
    );
  mbrMuxInU_aux_mbr_in_16_mux00032 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_state_out_8_Q,
      I1 => mbrMuxInU_aux_mbr_in(16),
      I2 => mbrMuxInU_N01,
      I3 => mbrMuxInU_aux_mbr_in_16_mux0004,
      O => mbr_mux_out(16)
    );
  mbrU_mbr_out_1_mux0003_16_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_15_Q,
      I1 => unidadControlU_state_out_14_Q,
      I2 => unidadControlU_state_out_13_Q,
      I3 => N2,
      O => mbrU_N01
    );
  irU_ir_out_mux0005_16_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_state_out_15_Q,
      I1 => unidadControlU_state_out_14_Q,
      I2 => unidadControlU_state_out_13_Q,
      I3 => N2,
      O => irU_N2
    );
  irU_ir_out_mux0005_16_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => unidadControlU_state_out_15_Q,
      I1 => unidadControlU_state_out_14_Q,
      I2 => unidadControlU_state_out_13_Q,
      I3 => N6,
      O => irU_N11
    );
  mbrMuxInU_aux_mbr_in_22_mux00031_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_state_out_0_Q,
      I1 => unidadControlU_state_out_5_Q,
      O => N8
    );
  mbrMuxInU_aux_mbr_in_22_mux00031 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => registersU_reg_out(6),
      I1 => unidadControlU_state_out_31,
      I2 => N8,
      I3 => irU_ir_out(6),
      O => mbrMuxInU_aux_mbr_in_22_mux0004
    );
  mbrMuxInU_aux_mbr_in_21_mux00031 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => registersU_reg_out(5),
      I1 => unidadControlU_state_out_31,
      I2 => N8,
      I3 => irU_ir_out(5),
      O => mbrMuxInU_aux_mbr_in_21_mux0004
    );
  mbrMuxInU_aux_mbr_in_20_mux00031 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => registersU_reg_out(4),
      I1 => unidadControlU_state_out_31,
      I2 => N8,
      I3 => irU_ir_out(4),
      O => mbrMuxInU_aux_mbr_in_20_mux0004
    );
  mbrMuxInU_aux_mbr_in_18_mux00031 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => registersU_reg_out(2),
      I1 => unidadControlU_state_out_31,
      I2 => N8,
      I3 => irU_ir_out(2),
      O => mbrMuxInU_aux_mbr_in_18_mux0004
    );
  mbrMuxInU_aux_mbr_in_17_mux00031 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => registersU_reg_out(1),
      I1 => unidadControlU_state_out_31,
      I2 => N8,
      I3 => irU_ir_out(1),
      O => mbrMuxInU_aux_mbr_in_17_mux0004
    );
  mbrMuxInU_aux_mbr_in_16_mux00031 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => registersU_reg_out(0),
      I1 => unidadControlU_state_out_31,
      I2 => N8,
      I3 => irU_ir_out(0),
      O => mbrMuxInU_aux_mbr_in_16_mux0004
    );
  unidadControlU_current_st_FSM_FFd15_In3 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_next_val_FSM_FFd14_In9,
      I2 => unidadControlU_current_st_FSM_N18,
      I3 => N27,
      O => unidadControlU_N1101
    );
  ramU_aux_out_9_cmp_gt000011_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => marU_mar_out(3),
      I1 => marU_mar_out(2),
      I2 => marU_mar_out(1),
      I3 => marU_mar_out(0),
      O => N29
    );
  ramU_aux_out_9_cmp_gt000011 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => marU_mar_out(6),
      I1 => marU_mar_out(5),
      I2 => marU_mar_out(4),
      I3 => N29,
      O => ramU_N0
    );
  unidadControlU_current_st_FSM_FFd16_In135 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0021,
      I1 => unidadControlU_current_st_cmp_eq0020,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => unidadControlU_current_st_cmp_eq0018,
      O => unidadControlU_current_st_FSM_FFd16_In135_1408
    );
  unidadControlU_next_val_FSM_FFd4_In125 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_In14_1663,
      I1 => unidadControlU_current_st_cmp_eq0004,
      I2 => unidadControlU_next_val_FSM_FFd4_In121,
      O => unidadControlU_N2
    );
  unidadControlU_next_val_FSM_FFd19_In12345 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_N233,
      I2 => unidadControlU_current_st_cmp_eq0013,
      I3 => unidadControlU_N234,
      O => unidadControlU_next_val_FSM_FFd19_In12345_1596
    );
  ramU_aux_out_8_mux00001 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => ramU_N0,
      I1 => ramU_aux_out_8_Q,
      I2 => marU_mar_out(7),
      O => ramU_aux_out_8_mux0000
    );
  ramU_aux_out_15_mux00001 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => ramU_N0,
      I1 => ramU_aux_out_15_Q,
      I2 => marU_mar_out(7),
      O => ramU_aux_out_15_mux0000
    );
  registersU_d_value_mux0001_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(7),
      I2 => mbrU_mbr_out_1(7),
      O => registersU_d_value_mux0001(7)
    );
  registersU_d_value_mux0001_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(6),
      I2 => mbrU_mbr_out_1(6),
      O => registersU_d_value_mux0001(6)
    );
  registersU_d_value_mux0001_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(5),
      I2 => mbrU_mbr_out_1(5),
      O => registersU_d_value_mux0001(5)
    );
  registersU_d_value_mux0001_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(4),
      I2 => mbrU_mbr_out_1(4),
      O => registersU_d_value_mux0001(4)
    );
  registersU_d_value_mux0001_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(3),
      I2 => mbrU_mbr_out_1(3),
      O => registersU_d_value_mux0001(3)
    );
  registersU_d_value_mux0001_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(2),
      I2 => mbrU_mbr_out_1(2),
      O => registersU_d_value_mux0001(2)
    );
  registersU_d_value_mux0001_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(1),
      I2 => mbrU_mbr_out_1(1),
      O => registersU_d_value_mux0001(1)
    );
  registersU_d_value_mux0001_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_d_value(0),
      I2 => mbrU_mbr_out_1(0),
      O => registersU_d_value_mux0001(0)
    );
  registersU_c_value_mux0001_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(7),
      I2 => mbrU_mbr_out_1(7),
      O => registersU_c_value_mux0001(7)
    );
  registersU_c_value_mux0001_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(6),
      I2 => mbrU_mbr_out_1(6),
      O => registersU_c_value_mux0001(6)
    );
  registersU_c_value_mux0001_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(5),
      I2 => mbrU_mbr_out_1(5),
      O => registersU_c_value_mux0001(5)
    );
  registersU_c_value_mux0001_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(4),
      I2 => mbrU_mbr_out_1(4),
      O => registersU_c_value_mux0001(4)
    );
  registersU_c_value_mux0001_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(3),
      I2 => mbrU_mbr_out_1(3),
      O => registersU_c_value_mux0001(3)
    );
  registersU_c_value_mux0001_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(2),
      I2 => mbrU_mbr_out_1(2),
      O => registersU_c_value_mux0001(2)
    );
  registersU_c_value_mux0001_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(1),
      I2 => mbrU_mbr_out_1(1),
      O => registersU_c_value_mux0001(1)
    );
  registersU_c_value_mux0001_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_c_value(0),
      I2 => mbrU_mbr_out_1(0),
      O => registersU_c_value_mux0001(0)
    );
  registersU_b_value_mux0001_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(7),
      I2 => mbrU_mbr_out_1(7),
      O => registersU_b_value_mux0001(7)
    );
  registersU_b_value_mux0001_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(6),
      I2 => mbrU_mbr_out_1(6),
      O => registersU_b_value_mux0001(6)
    );
  registersU_b_value_mux0001_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(5),
      I2 => mbrU_mbr_out_1(5),
      O => registersU_b_value_mux0001(5)
    );
  registersU_b_value_mux0001_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(4),
      I2 => mbrU_mbr_out_1(4),
      O => registersU_b_value_mux0001(4)
    );
  registersU_b_value_mux0001_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(3),
      I2 => mbrU_mbr_out_1(3),
      O => registersU_b_value_mux0001(3)
    );
  registersU_b_value_mux0001_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(2),
      I2 => mbrU_mbr_out_1(2),
      O => registersU_b_value_mux0001(2)
    );
  registersU_b_value_mux0001_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(1),
      I2 => mbrU_mbr_out_1(1),
      O => registersU_b_value_mux0001(1)
    );
  registersU_b_value_mux0001_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_b_value(0),
      I2 => mbrU_mbr_out_1(0),
      O => registersU_b_value_mux0001(0)
    );
  registersU_a_value_mux0002_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(7),
      I2 => mbrU_mbr_out_1(7),
      O => registersU_a_value_mux0002(7)
    );
  registersU_a_value_mux0002_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(6),
      I2 => mbrU_mbr_out_1(6),
      O => registersU_a_value_mux0002(6)
    );
  registersU_a_value_mux0002_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(5),
      I2 => mbrU_mbr_out_1(5),
      O => registersU_a_value_mux0002(5)
    );
  registersU_a_value_mux0002_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(4),
      I2 => mbrU_mbr_out_1(4),
      O => registersU_a_value_mux0002(4)
    );
  registersU_a_value_mux0002_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(3),
      I2 => mbrU_mbr_out_1(3),
      O => registersU_a_value_mux0002(3)
    );
  registersU_a_value_mux0002_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(2),
      I2 => mbrU_mbr_out_1(2),
      O => registersU_a_value_mux0002(2)
    );
  registersU_a_value_mux0002_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(1),
      I2 => mbrU_mbr_out_1(1),
      O => registersU_a_value_mux0002(1)
    );
  registersU_a_value_mux0002_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => registersU_a_value(0),
      I2 => mbrU_mbr_out_1(0),
      O => registersU_a_value_mux0002(0)
    );
  mbrU_mbr_out_1_mux0003_23_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_23_Q,
      I2 => mbrU_mbr_out_1(7),
      O => mbrU_mbr_out_1_mux0003(23)
    );
  mbrU_mbr_out_1_mux0003_22_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_22_Q,
      I2 => mbrU_mbr_out_1(6),
      O => mbrU_mbr_out_1_mux0003(22)
    );
  mbrU_mbr_out_1_mux0003_21_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_21_Q,
      I2 => mbrU_mbr_out_1(5),
      O => mbrU_mbr_out_1_mux0003(21)
    );
  mbrU_mbr_out_1_mux0003_20_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_20_Q,
      I2 => mbrU_mbr_out_1(4),
      O => mbrU_mbr_out_1_mux0003(20)
    );
  mbrU_mbr_out_1_mux0003_19_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_19_Q,
      I2 => mbrU_mbr_out_1(3),
      O => mbrU_mbr_out_1_mux0003(19)
    );
  mbrU_mbr_out_1_mux0003_18_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_18_Q,
      I2 => mbrU_mbr_out_1(2),
      O => mbrU_mbr_out_1_mux0003(18)
    );
  mbrU_mbr_out_1_mux0003_17_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_17_Q,
      I2 => mbrU_mbr_out_1(1),
      O => mbrU_mbr_out_1_mux0003(17)
    );
  mbrU_mbr_out_1_mux0003_16_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mbrU_N01,
      I1 => mbrU_mbr_value_16_Q,
      I2 => mbrU_mbr_out_1(0),
      O => mbrU_mbr_out_1_mux0003(16)
    );
  marMuxU_mux_out_signal_mux0001_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(7),
      I2 => pcU_pc_count(7),
      O => marMuxU_mux_out_signal_mux0001(7)
    );
  marMuxU_mux_out_signal_mux0001_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(6),
      I2 => pcU_pc_count(6),
      O => marMuxU_mux_out_signal_mux0001(6)
    );
  marMuxU_mux_out_signal_mux0001_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(5),
      I2 => pcU_pc_count(5),
      O => marMuxU_mux_out_signal_mux0001(5)
    );
  marMuxU_mux_out_signal_mux0001_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(4),
      I2 => pcU_pc_count(4),
      O => marMuxU_mux_out_signal_mux0001(4)
    );
  marMuxU_mux_out_signal_mux0001_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(3),
      I2 => pcU_pc_count(3),
      O => marMuxU_mux_out_signal_mux0001(3)
    );
  marMuxU_mux_out_signal_mux0001_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(2),
      I2 => pcU_pc_count(2),
      O => marMuxU_mux_out_signal_mux0001(2)
    );
  marMuxU_mux_out_signal_mux0001_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(1),
      I2 => pcU_pc_count(1),
      O => marMuxU_mux_out_signal_mux0001(1)
    );
  marMuxU_mux_out_signal_mux0001_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => irU_ir_out(0),
      I2 => pcU_pc_count(0),
      O => marMuxU_mux_out_signal_mux0001(0)
    );
  irU_ir_out_mux0005_22_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_out(6),
      I1 => irU_N01,
      I2 => irU_ir_value_22_Q,
      I3 => irU_N11,
      O => irU_ir_out_mux0005(22)
    );
  irU_ir_out_mux0005_21_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_out(5),
      I1 => irU_N01,
      I2 => irU_ir_value_21_Q,
      I3 => irU_N11,
      O => irU_ir_out_mux0005(21)
    );
  irU_ir_out_mux0005_20_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_out(4),
      I1 => irU_N01,
      I2 => irU_ir_value_20_Q,
      I3 => irU_N11,
      O => irU_ir_out_mux0005(20)
    );
  irU_ir_out_mux0005_19_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_out(3),
      I1 => irU_N01,
      I2 => irU_ir_value_19_Q,
      I3 => irU_N11,
      O => irU_ir_out_mux0005(19)
    );
  irU_ir_out_mux0005_18_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_out(2),
      I1 => irU_N01,
      I2 => irU_ir_value_18_Q,
      I3 => irU_N11,
      O => irU_ir_out_mux0005(18)
    );
  irU_ir_out_mux0005_17_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_out(1),
      I1 => irU_N01,
      I2 => irU_ir_value_17_Q,
      I3 => irU_N11,
      O => irU_ir_out_mux0005(17)
    );
  unidadControlU_current_st_FSM_FFd16_In47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd17_1412,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_current_st_FSM_FFd16_In28,
      O => unidadControlU_current_st_FSM_FFd16_In
    );
  irU_ir_out_mux0005_23_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_value_15_Q,
      I1 => irU_N2,
      I2 => irU_ir_value_23_Q,
      I3 => irU_N11,
      O => N31
    );
  irU_ir_out_mux0005_16_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_N2,
      I1 => irU_ir_value_8_Q,
      I2 => irU_N11,
      I3 => irU_ir_value_16_Q,
      O => N33
    );
  lcdU_pr_estado_FSM_Out4612 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd39_765,
      I1 => lcdU_pr_estado_FSM_FFd40_767,
      I2 => lcdU_pr_estado_FSM_FFd41_768,
      I3 => lcdU_pr_estado_FSM_FFd42_769,
      O => lcdU_pr_estado_FSM_Out4612_779
    );
  lcdU_pr_estado_FSM_Out4625 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd43_770,
      I1 => lcdU_pr_estado_FSM_FFd44_771,
      I2 => lcdU_pr_estado_FSM_FFd45_772,
      I3 => lcdU_pr_estado_FSM_FFd46_773,
      O => lcdU_pr_estado_FSM_Out4625_780
    );
  lcdU_pr_estado_FSM_Out4649 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd1_733,
      I1 => lcdU_pr_estado_FSM_FFd2_744,
      I2 => lcdU_pr_estado_FSM_FFd9_778,
      I3 => lcdU_pr_estado_FSM_FFd10_734,
      O => lcdU_pr_estado_FSM_Out4649_781
    );
  lcdU_pr_estado_FSM_Out4662 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd35_761,
      I1 => lcdU_pr_estado_FSM_FFd36_762,
      I2 => lcdU_pr_estado_FSM_FFd37_763,
      I3 => lcdU_pr_estado_FSM_FFd38_764,
      O => lcdU_pr_estado_FSM_Out4662_782
    );
  lcdU_pr_estado_FSM_Out4676 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_Out4612_779,
      I1 => lcdU_pr_estado_FSM_Out4625_780,
      I2 => lcdU_pr_estado_FSM_Out4649_781,
      I3 => lcdU_pr_estado_FSM_Out4662_782,
      O => RS_OBUF_495
    );
  unidadControlU_current_st_FSM_FFd5_In5 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I1 => unidadControlU_current_st_FSM_N15,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_N242,
      O => unidadControlU_current_st_FSM_FFd5_In5_1446
    );
  unidadControlU_current_st_FSM_FFd5_In24 : LUT4
    generic map(
      INIT => X"FAF2"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_current_st_FSM_FFd5_In20_1445,
      I3 => unidadControlU_current_st_FSM_FFd5_In5_1446,
      O => unidadControlU_current_st_FSM_FFd5_In
    );
  unidadControlU_current_st_FSM_FFd2_In8 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_current_st_cmp_eq0014,
      I3 => unidadControlU_current_st_FSM_N28,
      O => unidadControlU_current_st_FSM_FFd2_In8_1420
    );
  unidadControlU_current_st_FSM_FFd3_In6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => irU_ir_out_full(18),
      O => unidadControlU_current_st_FSM_FFd3_In6_1433
    );
  unidadControlU_current_st_FSM_FFd3_In14 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_In80_1462,
      I1 => unidadControlU_current_st_FSM_FFd3_In6_1433,
      I2 => unidadControlU_current_st_cmp_eq0014,
      I3 => unidadControlU_current_st_FSM_FFd8_1455,
      O => unidadControlU_current_st_FSM_FFd3_In14_1430
    );
  unidadControlU_current_st_FSM_FFd3_In29 : LUT4
    generic map(
      INIT => X"FF8D"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_cmp_eq0014,
      I3 => unidadControlU_current_st_FSM_N28,
      O => unidadControlU_current_st_FSM_FFd3_In29_1431
    );
  unidadControlU_current_st_FSM_FFd3_In48 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_current_st_FSM_FFd3_In29_1431,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd3_In48_1432
    );
  unidadControlU_current_st_FSM_FFd3_In54 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_In14_1430,
      I1 => unidadControlU_current_st_FSM_FFd3_In48_1432,
      O => unidadControlU_current_st_FSM_FFd3_In
    );
  unidadControlU_current_st_FSM_FFd15_In15 : LUT4
    generic map(
      INIT => X"32BA"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_next_val_FSM_FFd19_1589,
      O => unidadControlU_current_st_FSM_FFd15_In15_1401
    );
  unidadControlU_current_st_FSM_FFd15_In38 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_In25_1402,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_next_val_FSM_FFd19_1589,
      I3 => unidadControlU_N1351,
      O => unidadControlU_current_st_FSM_FFd15_In38_1403
    );
  unidadControlU_current_st_FSM_FFd15_In57 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd15_In38_1403,
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      I3 => unidadControlU_current_st_FSM_FFd15_In15_1401,
      O => unidadControlU_current_st_FSM_FFd15_In57_1404
    );
  unidadControlU_current_st_FSM_FFd15_In82 : LUT4
    generic map(
      INIT => X"2FAF"
    )
    port map (
      I0 => unidadControlU_N1101,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_next_val_FSM_FFd19_1589,
      O => unidadControlU_current_st_FSM_FFd15_In82_1405
    );
  unidadControlU_current_st_FSM_FFd8_In8 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_N1101,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd8_In8_1461
    );
  unidadControlU_current_st_FSM_FFd8_In66 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_In25_1402,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      I3 => unidadControlU_current_st_FSM_FFd4_1434,
      O => unidadControlU_current_st_FSM_FFd8_In66_1460
    );
  unidadControlU_current_st_FSM_FFd8_In95 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_In8_1461,
      I1 => unidadControlU_current_st_FSM_FFd8_In26_1459,
      I2 => unidadControlU_current_st_FSM_FFd8_In82_1463,
      O => unidadControlU_current_st_FSM_FFd8_In
    );
  unidadControlU_current_st_FSM_FFd9_In1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N27,
      I1 => unidadControlU_current_st_FSM_FFd9_1465,
      I2 => unidadControlU_current_st_FSM_FFd10_1380,
      I3 => unidadControlU_N230,
      O => unidadControlU_current_st_FSM_FFd9_In
    );
  unidadControlU_current_st_FSM_FFd10_In1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N27,
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => unidadControlU_N230,
      O => unidadControlU_current_st_FSM_FFd10_In
    );
  unidadControlU_current_st_FSM_FFd14_In6 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_N29,
      I3 => unidadControlU_current_st_cmp_eq0013,
      O => unidadControlU_current_st_FSM_FFd14_In6_1398
    );
  unidadControlU_current_st_FSM_FFd7_In11 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_current_st_FSM_FFd15_1399,
      O => unidadControlU_current_st_FSM_FFd7_In11_1452
    );
  unidadControlU_current_st_FSM_FFd7_In21 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_N961,
      I2 => unidadControlU_current_st_FSM_FFd7_In14_1453,
      O => unidadControlU_current_st_FSM_FFd7_In21_1454
    );
  unidadControlU_current_st_FSM_FFd11_In211 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      I3 => unidadControlU_current_st_FSM_FFd4_1434,
      O => unidadControlU_current_st_FSM_FFd11_In21_1384
    );
  unidadControlU_current_st_FSM_FFd12_In60 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_current_st_FSM_FFd12_In24,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd12_In60_1391
    );
  unidadControlU_current_st_FSM_FFd12_In76 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_In80_1462,
      I1 => unidadControlU_current_st_FSM_FFd5_1443,
      I2 => irU_ir_out_full(18),
      I3 => unidadControlU_current_st_cmp_eq0020,
      O => unidadControlU_current_st_FSM_FFd12_In76_1392
    );
  unidadControlU_current_st_FSM_FFd12_In93 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_In60_1391,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_N230,
      I3 => unidadControlU_current_st_FSM_FFd12_In76_1392,
      O => unidadControlU_current_st_FSM_FFd12_In
    );
  unidadControlU_next_val_FSM_FFd18_In121 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      O => unidadControlU_N101
    );
  unidadControlU_current_st_FSM_FFd13_In_SW0 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => irU_ir_out_full(17),
      I3 => unidadControlU_current_st_FSM_FFd6_1447,
      O => N61
    );
  unidadControlU_current_st_FSM_FFd13_In : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N27,
      I1 => unidadControlU_current_st_FSM_FFd13_1394,
      I2 => N61,
      I3 => unidadControlU_N2361,
      O => unidadControlU_current_st_FSM_FFd13_In_1395
    );
  unidadControlU_current_st_FSM_FFd6_In5 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I1 => unidadControlU_current_st_FSM_N9,
      I2 => unidadControlU_current_st_FSM_N41,
      I3 => unidadControlU_current_st_cmp_eq0009,
      O => unidadControlU_current_st_FSM_FFd6_In5_1449
    );
  unidadControlU_state_out_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => N754,
      O => unidadControlU_state_out_or0000
    );
  unidadControlU_next_val_FSM_FFd19_In13_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0014,
      I1 => unidadControlU_current_st_FSM_FFd3_1428,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_current_st_FSM_FFd7_1450,
      O => N63
    );
  unidadControlU_next_val_FSM_FFd19_In13 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => N63,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_N30,
      I3 => unidadControlU_N1871,
      O => unidadControlU_N1621
    );
  unidadControlU_next_val_FSM_FFd22_In141 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => N758,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_N30,
      I3 => unidadControlU_N237,
      O => unidadControlU_N2011
    );
  unidadControlU_current_st_FSM_FFd4_In8 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N1091,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_current_st_cmp_eq0014,
      O => unidadControlU_current_st_FSM_FFd4_In8_1440
    );
  unidadControlU_current_st_FSM_FFd4_In24 : LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_current_st_FSM_N2,
      I2 => unidadControlU_current_st_cmp_eq0013,
      I3 => irU_ir_out_full(18),
      O => unidadControlU_current_st_FSM_FFd4_In24_1437
    );
  unidadControlU_current_st_FSM_FFd4_In76 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd4_1434,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_current_st_FSM_FFd4_In37_1438,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd4_In76_1439
    );
  unidadControlU_current_st_FSM_FFd4_In103 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => unidadControlU_current_st_FSM_FFd4_In90_1441,
      I2 => unidadControlU_N2361,
      I3 => unidadControlU_N1091,
      O => unidadControlU_current_st_FSM_FFd4_In103_1436
    );
  unidadControlU_current_st_FSM_FFd4_In107 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd4_In76_1439,
      I1 => unidadControlU_current_st_FSM_FFd4_In103_1436,
      O => unidadControlU_current_st_FSM_FFd4_In
    );
  unidadControlU_state_out_mux0000_8_1121 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N18,
      I1 => unidadControlU_current_st_FSM_FFd1_1377,
      O => unidadControlU_N1931
    );
  unidadControlU_state_out_mux0000_9_43 : LUT4
    generic map(
      INIT => X"0027"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd12_1386,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => N67,
      O => unidadControlU_N138
    );
  unidadControlU_next_val_FSM_FFd4_In21_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0021,
      I1 => unidadControlU_N248,
      I2 => unidadControlU_N232,
      I3 => unidadControlU_current_st_cmp_eq0019,
      O => N72
    );
  unidadControlU_next_val_FSM_FFd4_In21 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => N823,
      I2 => unidadControlU_next_val_FSM_FFd14_In1,
      I3 => N72,
      O => unidadControlU_N51
    );
  unidadControlU_next_val_FSM_FFd14_In131_SW0 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N18,
      I1 => unidadControlU_current_st_FSM_FFd1_1377,
      I2 => N763,
      I3 => unidadControlU_current_st_cmp_eq0020,
      O => N77
    );
  unidadControlU_next_val_FSM_FFd15_In541_SW0 : LUT4
    generic map(
      INIT => X"FF51"
    )
    port map (
      I0 => unidadControlU_N231,
      I1 => unidadControlU_N134,
      I2 => unidadControlU_current_st_FSM_FFd1_1377,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N79
    );
  unidadControlU_next_val_FSM_FFd15_In541 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => N79,
      I2 => N814,
      I3 => irU_ir_out_full(23),
      O => unidadControlU_N208
    );
  unidadControlU_next_val_FSM_FFd14_In16 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N200,
      I1 => unidadControlU_current_st_cmp_eq0020,
      I2 => N756,
      I3 => unidadControlU_next_val_FSM_FFd14_In9,
      O => unidadControlU_next_val_FSM_FFd14_In16_1519
    );
  unidadControlU_next_val_FSM_FFd14_In24 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      I2 => unidadControlU_N229,
      O => unidadControlU_next_val_FSM_FFd14_In24_1520
    );
  unidadControlU_next_val_FSM_FFd14_In47 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_In24_1520,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_next_val_FSM_FFd14_In16_1519,
      I3 => unidadControlU_next_val_FSM_FFd14_In7_1522,
      O => unidadControlU_next_val_FSM_FFd14_In47_1521
    );
  unidadControlU_next_val_FSM_FFd14_In86 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => N751,
      I1 => unidadControlU_next_val_FSM_FFd14_In71_1523,
      I2 => unidadControlU_next_val_FSM_FFd14_1516,
      I3 => unidadControlU_next_val_FSM_FFd14_In47_1521,
      O => unidadControlU_next_val_FSM_FFd14_In
    );
  unidadControlU_next_val_FSM_FFd18_In1551 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd9_1465,
      I1 => unidadControlU_current_st_FSM_FFd12_1386,
      O => unidadControlU_N256
    );
  unidadControlU_state_out_mux0000_9_421 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => irU_ir_out_full(17),
      I2 => N774,
      O => unidadControlU_N103
    );
  unidadControlU_next_val_FSM_FFd19_In1111 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_N2,
      I2 => N764,
      O => unidadControlU_N123
    );
  unidadControlU_next_val_FSM_FFd16_In1131 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_N17,
      I2 => unidadControlU_current_st_FSM_FFd6_1447,
      O => unidadControlU_N2131
    );
  unidadControlU_next_val_FSM_FFd13_In15 : LUT4
    generic map(
      INIT => X"AF80"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => N755,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_next_val_FSM_FFd13_1512,
      O => unidadControlU_next_val_FSM_FFd13_In15_1514
    );
  unidadControlU_next_val_FSM_FFd13_In41 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_next_val_FSM_FFd13_In19_1515,
      I2 => N775,
      I3 => unidadControlU_next_val_FSM_FFd13_1512,
      O => unidadControlU_next_val_FSM_FFd13_In
    );
  unidadControlU_next_val_FSM_FFd12_In15 : LUT4
    generic map(
      INIT => X"AF80"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I2 => irU_ir_out_full(20),
      I3 => unidadControlU_next_val_FSM_FFd12_1508,
      O => unidadControlU_next_val_FSM_FFd12_In15_1510
    );
  unidadControlU_next_val_FSM_FFd12_In41 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_next_val_FSM_FFd12_In19_1511,
      I2 => unidadControlU_N141,
      I3 => unidadControlU_next_val_FSM_FFd12_1508,
      O => unidadControlU_next_val_FSM_FFd12_In
    );
  unidadControlU_next_val_FSM_FFd8_In136 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd8_In136_1685
    );
  unidadControlU_next_val_FSM_FFd8_In1344 : LUT4
    generic map(
      INIT => X"FAEA"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_In135_1684,
      I1 => irU_ir_out_full(23),
      I2 => irU_ir_out_full(22),
      I3 => unidadControlU_next_val_FSM_FFd8_In1323_1683,
      O => unidadControlU_N187
    );
  unidadControlU_next_val_FSM_FFd10_In15 : LUT4
    generic map(
      INIT => X"AF80"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I2 => irU_ir_out_full(21),
      I3 => unidadControlU_next_val_FSM_FFd10_1500,
      O => unidadControlU_next_val_FSM_FFd10_In15_1504
    );
  unidadControlU_next_val_FSM_FFd10_In50 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_next_val_FSM_FFd10_In24_1505,
      I2 => unidadControlU_N141,
      I3 => unidadControlU_next_val_FSM_FFd10_1500,
      O => unidadControlU_next_val_FSM_FFd10_In
    );
  unidadControlU_next_val_FSM_FFd1_In7 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd1_1377,
      I1 => unidadControlU_N36,
      I2 => irU_ir_out_full(22),
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd1_In7_1498
    );
  unidadControlU_next_val_FSM_FFd1_In27 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => unidadControlU_N125,
      I1 => unidadControlU_next_val_FSM_FFd1_In17_1495,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_next_val_FSM_FFd1_In7_1498,
      O => unidadControlU_next_val_FSM_FFd1_In27_1496
    );
  unidadControlU_next_val_FSM_FFd1_In68 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N257,
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_N36,
      I3 => irU_ir_out_full(23),
      O => unidadControlU_next_val_FSM_FFd1_In68_1497
    );
  unidadControlU_next_val_FSM_FFd4_In6 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => unidadControlU_current_st_FSM_N2,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => unidadControlU_next_val_FSM_FFd4_In1_1657,
      O => unidadControlU_next_val_FSM_FFd4_In131
    );
  unidadControlU_next_val_FSM_FFd4_In26 : LUT4
    generic map(
      INIT => X"01AB"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_current_st_FSM_FFd3_1428,
      I3 => unidadControlU_current_st_FSM_FFd7_1450,
      O => unidadControlU_next_val_FSM_FFd4_In26_1664
    );
  unidadControlU_next_val_FSM_FFd4_In53 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => unidadControlU_N96,
      I1 => unidadControlU_next_val_FSM_FFd4_In26_1664,
      I2 => unidadControlU_next_val_FSM_FFd4_In29_1665,
      I3 => unidadControlU_next_val_FSM_FFd4_In131,
      O => unidadControlU_next_val_FSM_FFd4_In53_1666
    );
  unidadControlU_next_val_FSM_FFd2_In14 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => N760,
      I1 => unidadControlU_current_st_FSM_FFd3_1428,
      I2 => unidadControlU_current_st_FSM_FFd2_1418,
      I3 => unidadControlU_current_st_FSM_FFd15_1399,
      O => unidadControlU_next_val_FSM_FFd2_In14_1613
    );
  unidadControlU_next_val_FSM_FFd2_In145 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I1 => N753,
      I2 => unidadControlU_N2291,
      I3 => irU_ir_out_full(23),
      O => unidadControlU_next_val_FSM_FFd2_In145_1614
    );
  unidadControlU_next_val_FSM_FFd2_In148 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_1607,
      I1 => unidadControlU_next_val_FSM_FFd2_In145_1614,
      I2 => unidadControlU_next_val_FSM_FFd2_In99_1617,
      I3 => N771,
      O => unidadControlU_next_val_FSM_FFd2_In148_1615
    );
  unidadControlU_next_val_FSM_FFd22_In121 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd20_1421,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_next_val_FSM_FFd19_1589,
      I3 => unidadControlU_next_val_FSM_FFd22_1622,
      O => unidadControlU_next_val_FSM_FFd22_In12_1625
    );
  unidadControlU_next_val_FSM_FFd22_In34 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => unidadControlU_next_val_FSM_FFd22_In30_1629,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      O => unidadControlU_next_val_FSM_FFd22_In34_1630
    );
  unidadControlU_next_val_FSM_FFd22_In41 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N247,
      I1 => unidadControlU_N123,
      I2 => N825,
      I3 => unidadControlU_next_val_FSM_FFd22_In34_1630,
      O => unidadControlU_next_val_FSM_FFd22_In41_1631
    );
  unidadControlU_next_val_FSM_FFd22_In187 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd22_In173_1628,
      I1 => unidadControlU_next_val_FSM_FFd22_In77_1632,
      I2 => unidadControlU_next_val_FSM_FFd22_In145_1627,
      I3 => unidadControlU_next_val_FSM_FFd22_In12_1625,
      O => unidadControlU_next_val_FSM_FFd22_In
    );
  unidadControlU_next_val_FSM_FFd19_In6 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_FSM_FFd17_1412,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd19_In6_1605
    );
  unidadControlU_next_val_FSM_FFd19_In102 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => N759,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => irU_ir_out_full(17),
      I3 => irU_ir_out_full(16),
      O => unidadControlU_next_val_FSM_FFd19_In102_1591
    );
  unidadControlU_next_val_FSM_FFd19_In140 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd2_1418,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => irU_ir_out_full(21),
      I3 => unidadControlU_N233,
      O => unidadControlU_next_val_FSM_FFd19_In140_1598
    );
  unidadControlU_next_val_FSM_FFd19_In223 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In207_1601,
      I1 => unidadControlU_next_val_FSM_FFd19_In22_1602,
      I2 => unidadControlU_next_val_FSM_FFd19_In179_1600,
      I3 => unidadControlU_next_val_FSM_FFd19_In6_1605,
      O => unidadControlU_next_val_FSM_FFd19_In
    );
  unidadControlU_next_val_FSM_FFd18_In13211 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => N803,
      O => unidadControlU_N2041
    );
  unidadControlU_next_val_FSM_FFd18_In1531 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => irU_ir_out_full(19),
      I3 => N767,
      O => unidadControlU_N244
    );
  unidadControlU_n0008_4_Q : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => N88,
      I2 => unidadControlU_next_val_FSM_FFd16_1547,
      I3 => N777,
      O => unidadControlU_n0008_4_Q_1259
    );
  unidadControlU_next_val_FSM_FFd21_In : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd19_1416,
      I1 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I2 => unidadControlU_next_val_FSM_FFd21_1620,
      I3 => N90,
      O => unidadControlU_next_val_FSM_FFd21_In_1621
    );
  unidadControlU_next_val_FSM_FFd20_In : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd18_1414,
      I1 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I2 => unidadControlU_next_val_FSM_FFd20_1618,
      I3 => N92,
      O => unidadControlU_next_val_FSM_FFd20_In_1619
    );
  unidadControlU_next_val_FSM_FFd20_In1_SW0 : LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => unidadControlU_N32,
      I1 => irU_ir_out_full(23),
      I2 => unidadControlU_N237,
      I3 => N773,
      O => N94
    );
  unidadControlU_n0008_9_2 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_current_st_cmp_eq0009,
      O => unidadControlU_n0008_9_2_1261
    );
  unidadControlU_n0008_9_67 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => irU_ir_out_full(16),
      I2 => irU_ir_out_full(17),
      I3 => unidadControlU_current_st_cmp_eq0009,
      O => unidadControlU_n0008_9_67_1263
    );
  unidadControlU_n0008_9_70 : LUT4
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => unidadControlU_n0008_9_2_1261,
      I1 => unidadControlU_next_val_FSM_FFd22_1622,
      I2 => unidadControlU_n0008_9_67_1263,
      I3 => unidadControlU_n0008_9_26_1262,
      O => unidadControlU_n0008_9_Q
    );
  unidadControlU_state_out_mux0000_1_7 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_In9,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_N138,
      I3 => unidadControlU_current_st_cmp_eq0020,
      O => unidadControlU_state_out_mux0000_1_7_1780
    );
  unidadControlU_state_out_mux0000_1_43 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => unidadControlU_N1871,
      I1 => unidadControlU_state_out_or0000,
      I2 => unidadControlU_state_out_mux0000_1_17_1779,
      I3 => unidadControlU_state_out_1_Q,
      O => unidadControlU_state_out_mux0000_1_Q
    );
  unidadControlU_next_val_FSM_FFd2_In129 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(23),
      I2 => N757,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd2_In129_1612
    );
  unidadControlU_next_val_FSM_FFd2_In12151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_N247,
      I1 => unidadControlU_current_st_FSM_FFd5_1443,
      O => unidadControlU_next_val_FSM_FFd2_In12151_1611
    );
  unidadControlU_next_val_FSM_FFd24_In18 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_current_st_FSM_FFd1_1377,
      I3 => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd24_In18_1641
    );
  unidadControlU_next_val_FSM_FFd24_In55 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N2291,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_current_st_FSM_FFd3_1428,
      I3 => unidadControlU_current_st_FSM_FFd2_1418,
      O => unidadControlU_next_val_FSM_FFd24_In55_1643
    );
  unidadControlU_next_val_FSM_FFd24_In74 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_next_val_FSM_FFd24_In18_1641,
      I2 => unidadControlU_next_val_FSM_FFd24_In31_1642,
      I3 => unidadControlU_next_val_FSM_FFd24_In55_1643,
      O => unidadControlU_next_val_FSM_FFd24_In74_1644
    );
  unidadControlU_next_val_FSM_FFd24_In124 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd24_In91_1645,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_next_val_FSM_FFd24_In74_1644,
      I3 => N816,
      O => unidadControlU_next_val_FSM_FFd24_In124_1638
    );
  unidadControlU_next_val_FSM_FFd5_In14 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_N228,
      I1 => unidadControlU_next_val_FSM_FFd17_In1322_1562,
      I2 => N822,
      O => unidadControlU_next_val_FSM_FFd5_In14_1672
    );
  unidadControlU_next_val_FSM_FFd5_In143 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_next_val_FSM_FFd5_In128_1671,
      I2 => unidadControlU_next_val_FSM_FFd5_1668,
      I3 => unidadControlU_next_val_FSM_FFd5_In105_1670,
      O => unidadControlU_next_val_FSM_FFd5_In
    );
  unidadControlU_next_val_FSM_FFd17_In17 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N254,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_N29,
      I3 => unidadControlU_N237,
      O => unidadControlU_next_val_FSM_FFd17_In17_1563
    );
  unidadControlU_next_val_FSM_FFd17_In25 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd13_1394,
      I1 => unidadControlU_next_val_FSM_FFd17_In4_1566,
      I2 => unidadControlU_N2181,
      I3 => unidadControlU_next_val_FSM_FFd17_In17_1563,
      O => unidadControlU_next_val_FSM_FFd17_In25_1564
    );
  unidadControlU_next_val_FSM_FFd17_In68 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => N792,
      I1 => unidadControlU_N256,
      I2 => unidadControlU_N178,
      I3 => unidadControlU_N1971,
      O => unidadControlU_next_val_FSM_FFd17_In68_1567
    );
  unidadControlU_next_val_FSM_FFd17_In1111 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => unidadControlU_N195,
      I2 => unidadControlU_next_val_FSM_FFd17_In39_1565,
      I3 => unidadControlU_next_val_FSM_FFd17_In85_1568,
      O => unidadControlU_next_val_FSM_FFd17_In111_1560
    );
  unidadControlU_next_val_FSM_FFd16_In47 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N2131,
      I1 => unidadControlU_N1951,
      I2 => unidadControlU_N59,
      I3 => unidadControlU_N220,
      O => unidadControlU_next_val_FSM_FFd16_In47_1554
    );
  unidadControlU_next_val_FSM_FFd16_In64 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_current_st_FSM_N41,
      I2 => unidadControlU_current_st_FSM_FFd5_1443,
      I3 => unidadControlU_N3,
      O => unidadControlU_next_val_FSM_FFd16_In64_1555
    );
  unidadControlU_next_val_FSM_FFd16_In94 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd16_In89_1556,
      I1 => unidadControlU_next_val_FSM_FFd16_In64_1555,
      I2 => unidadControlU_next_val_FSM_FFd16_1547,
      I3 => unidadControlU_next_val_FSM_FFd16_In47_1554,
      O => unidadControlU_next_val_FSM_FFd16_In94_1557
    );
  unidadControlU_next_val_FSM_FFd18_In9 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => unidadControlU_N101,
      I1 => unidadControlU_current_st_cmp_eq0009,
      I2 => unidadControlU_N249,
      I3 => unidadControlU_N134,
      O => unidadControlU_next_val_FSM_FFd18_In9_1588
    );
  unidadControlU_next_val_FSM_FFd18_In66 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => N752,
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(21),
      I3 => unidadControlU_N2041,
      O => unidadControlU_next_val_FSM_FFd18_In66_1586
    );
  unidadControlU_next_val_FSM_FFd18_In136 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_N1681,
      I2 => unidadControlU_N2281,
      I3 => unidadControlU_current_st_FSM_FFd11_1382,
      O => unidadControlU_next_val_FSM_FFd18_In136_1572
    );
  unidadControlU_next_val_FSM_FFd18_In194 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N769,
      I1 => unidadControlU_next_val_FSM_FFd18_In188_1576,
      O => unidadControlU_next_val_FSM_FFd18_In194_1577
    );
  unidadControlU_next_val_FSM_FFd18_In298 : LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_next_val_FSM_FFd18_In194_1577,
      I2 => unidadControlU_next_val_FSM_FFd18_In256_1581,
      I3 => unidadControlU_next_val_FSM_FFd18_In148_1573,
      O => unidadControlU_next_val_FSM_FFd18_In298_1582
    );
  unidadControlU_state_out_mux0000_7_165 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_state_out_mux0000_7_162_1826,
      I2 => unidadControlU_state_out_mux0000_7_112_1823,
      I3 => unidadControlU_state_out_mux0000_7_131_1824,
      O => unidadControlU_N72
    );
  unidadControlU_state_out_mux0000_9_22 : LUT4
    generic map(
      INIT => X"7370"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => N96,
      O => unidadControlU_N49
    );
  unidadControlU_next_val_FSM_FFd9_In_SW0 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N231,
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => unidadControlU_N254,
      I3 => irU_ir_out_full(22),
      O => N100
    );
  unidadControlU_next_val_FSM_FFd9_In_SW1 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_N231,
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => irU_ir_out_full(22),
      I3 => N770,
      O => N101
    );
  unidadControlU_next_val_FSM_FFd9_In : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => N100,
      I2 => unidadControlU_state_out_mux0000_10_116,
      I3 => N101,
      O => unidadControlU_next_val_FSM_FFd9_In_1695
    );
  unidadControlU_next_val_FSM_FFd7_In_SW0 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N2201,
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => unidadControlU_N254,
      I3 => irU_ir_out_full(19),
      O => N103
    );
  unidadControlU_next_val_FSM_FFd7_In : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd7_1678,
      I1 => N103,
      I2 => unidadControlU_state_out_mux0000_10_116,
      I3 => N104,
      O => unidadControlU_next_val_FSM_FFd7_In_1679
    );
  unidadControlU_next_val_FSM_FFd6_In_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => unidadControlU_N254,
      I3 => unidadControlU_N2201,
      O => N106
    );
  unidadControlU_next_val_FSM_FFd6_In : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => N106,
      I2 => unidadControlU_state_out_mux0000_10_116,
      I3 => N107,
      O => unidadControlU_next_val_FSM_FFd6_In_1677
    );
  unidadControlU_next_val_FSM_FFd11_In_SW0 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N2271,
      I1 => unidadControlU_N254,
      I2 => unidadControlU_current_st_FSM_FFd10_1380,
      I3 => unidadControlU_N252,
      O => N109
    );
  unidadControlU_next_val_FSM_FFd11_In : LUT4
    generic map(
      INIT => X"E040"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd11_1506,
      I1 => N109,
      I2 => unidadControlU_state_out_mux0000_10_116,
      I3 => N110,
      O => unidadControlU_next_val_FSM_FFd11_In_1507
    );
  unidadControlU_n0008_1_10 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd5_1443,
      I2 => unidadControlU_next_val_FSM_FFd3_1646,
      I3 => unidadControlU_N242,
      O => unidadControlU_n0008_1_10_1257
    );
  unidadControlU_next_val_FSM_FFd10_In110 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => unidadControlU_N231,
      I2 => unidadControlU_N134,
      I3 => unidadControlU_current_st_FSM_FFd1_1377,
      O => unidadControlU_next_val_FSM_FFd10_In110_1502
    );
  unidadControlU_n0008_4_1_SW0 : LUT4
    generic map(
      INIT => X"00AB"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => unidadControlU_current_st_FSM_FFd5_1443,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N112
    );
  unidadControlU_n0008_4_1_SW1 : LUT4
    generic map(
      INIT => X"AAAB"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_current_st_FSM_FFd6_1447,
      I2 => unidadControlU_current_st_FSM_FFd5_1443,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N113
    );
  unidadControlU_state_out_mux0000_9_110 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd13_1394,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => unidadControlU_current_st_FSM_FFd7_1450,
      I3 => unidadControlU_current_st_FSM_FFd8_1455,
      O => unidadControlU_state_out_mux0000_9_110_1874
    );
  unidadControlU_next_val_FSM_FFd3_In151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(22),
      O => unidadControlU_next_val_FSM_FFd3_In151_1649
    );
  unidadControlU_next_val_FSM_FFd3_In154 : LUT4
    generic map(
      INIT => X"CC80"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_next_val_FSM_FFd3_In151_1649,
      I2 => unidadControlU_N228,
      I3 => unidadControlU_next_val_FSM_FFd3_In132_1648,
      O => unidadControlU_next_val_FSM_FFd3_In154_1650
    );
  unidadControlU_next_val_FSM_FFd3_In9 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => unidadControlU_N247,
      I1 => unidadControlU_next_val_FSM_FFd8_In52,
      I2 => unidadControlU_N17,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      O => unidadControlU_next_val_FSM_FFd3_In9_1654
    );
  unidadControlU_next_val_FSM_FFd3_In181 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_next_val_FSM_FFd3_In9_1654,
      I2 => unidadControlU_N100,
      I3 => N805,
      O => unidadControlU_next_val_FSM_FFd3_In181_1651
    );
  unidadControlU_next_val_FSM_FFd3_In43 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_N158,
      I3 => unidadControlU_N3,
      O => unidadControlU_next_val_FSM_FFd3_In43_1652
    );
  unidadControlU_next_val_FSM_FFd3_In44 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_N247,
      I1 => unidadControlU_next_val_FSM_FFd3_In43_1652,
      O => unidadControlU_next_val_FSM_FFd3_In44_1653
    );
  unidadControlU_next_val_FSM_FFd3_In65 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_next_val_FSM_FFd3_In44_1653,
      I2 => unidadControlU_next_val_FSM_FFd3_1646,
      I3 => unidadControlU_next_val_FSM_FFd3_In181_1651,
      O => unidadControlU_next_val_FSM_FFd3_In
    );
  unidadControlU_state_out_mux0000_8_137 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_8_110_1834,
      I1 => unidadControlU_state_out_mux0000_8_127_1837,
      I2 => unidadControlU_N49,
      I3 => unidadControlU_N103,
      O => unidadControlU_state_out_mux0000_8_137_1838
    );
  unidadControlU_next_val_FSM_FFd8_In42 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => unidadControlU_N226,
      I1 => irU_ir_out_full(23),
      I2 => unidadControlU_N2201,
      I3 => unidadControlU_current_st_FSM_FFd10_1380,
      O => unidadControlU_next_val_FSM_FFd8_In42_1690
    );
  unidadControlU_next_val_FSM_FFd8_In67 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(22),
      I2 => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd8_In67_1692
    );
  unidadControlU_next_val_FSM_FFd8_In182 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_N226,
      I3 => irU_ir_out_full(23),
      O => unidadControlU_next_val_FSM_FFd8_In182_1687
    );
  unidadControlU_next_val_FSM_FFd8_In202 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_next_val_FSM_FFd8_In183_1688,
      I2 => unidadControlU_next_val_FSM_FFd8_1680,
      I3 => unidadControlU_next_val_FSM_FFd8_In152_1686,
      O => unidadControlU_next_val_FSM_FFd8_In
    );
  unidadControlU_n0026_mux0001_251_1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_next_val_FSM_FFd16_1547,
      I2 => unidadControlU_n0026_or00001_1487,
      O => unidadControlU_n0026_mux0001(251)
    );
  lcdU_DB_0_4 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd31_757,
      I1 => lcdU_pr_estado_FSM_FFd27_752,
      I2 => lcdU_pr_estado_FSM_FFd26_751,
      I3 => lcdU_pr_estado_FSM_FFd19_743,
      O => lcdU_DB_0_4_553
    );
  lcdU_DB_0_9 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd17_741,
      I1 => lcdU_pr_estado_FSM_FFd13_737,
      I2 => lcdU_pr_estado_FSM_FFd12_736,
      I3 => lcdU_pr_estado_FSM_FFd8_777,
      O => lcdU_DB_0_9_554
    );
  lcdU_DB_0_21 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd6_775,
      I1 => lcdU_pr_estado_FSM_FFd4_766,
      I2 => lcdU_pr_estado_FSM_FFd39_765,
      I3 => lcdU_pr_estado_FSM_FFd34_760,
      O => lcdU_DB_0_21_549
    );
  lcdU_DB_0_22 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd3_755,
      I1 => mbrU_mbr_out_1(0),
      O => lcdU_DB_0_22_550
    );
  lcdU_DB_0_30 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_DB_0_4_553,
      I1 => lcdU_DB_0_9_554,
      I2 => lcdU_DB_0_21_549,
      I3 => lcdU_DB_0_22_550,
      O => lcdU_DB_0_30_551
    );
  lcdU_DB_0_39 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd7_776,
      I1 => lcdU_centenas(0),
      O => lcdU_DB_0_39_552
    );
  lcdU_DB_0_54 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcdU_DB_0_30_551,
      I1 => lcdU_pr_estado_FSM_FFd5_774,
      I2 => lcdU_decenas_0_Q,
      I3 => lcdU_DB_0_39_552,
      O => DB_0_OBUF_4
    );
  unidadControlU_state_out_mux0000_8_4115 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_101_Q,
      I2 => unidadControlU_n0026_103_Q,
      O => unidadControlU_state_out_mux0000_8_4115_1860
    );
  unidadControlU_state_out_mux0000_8_41113 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0024_101_Q,
      I2 => unidadControlU_n0024_103_Q,
      O => unidadControlU_state_out_mux0000_8_41113_1858
    );
  unidadControlU_state_out_mux0000_8_41115 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_8_4112_1859,
      I1 => unidadControlU_state_out_mux0000_8_4115_1860,
      I2 => unidadControlU_state_out_mux0000_8_41113_1858,
      O => unidadControlU_N177
    );
  unidadControlU_state_out_mux0000_8_31115 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_106_Q,
      I2 => unidadControlU_n0026_108_Q,
      O => unidadControlU_state_out_mux0000_8_31115_1845
    );
  unidadControlU_state_out_mux0000_8_311115 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N782,
      I1 => unidadControlU_state_out_mux0000_8_31115_1845,
      I2 => unidadControlU_state_out_mux0000_8_311113_1843,
      O => unidadControlU_N176
    );
  unidadControlU_state_out_mux0000_0_5 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => unidadControlU_N5,
      I2 => N824,
      I3 => unidadControlU_n0008_4_Q_1259,
      O => unidadControlU_state_out_mux0000_0_5_1719
    );
  unidadControlU_state_out_mux0000_0_22 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0027_8_Q,
      I2 => unidadControlU_n0025_4_Q,
      O => unidadControlU_state_out_mux0000_0_22_1716
    );
  unidadControlU_state_out_mux0000_0_30 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_n0028_8_Q,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0029_8_Q,
      I3 => unidadControlU_current_st_FSM_FFd7_1450,
      O => unidadControlU_state_out_mux0000_0_30_1717
    );
  unidadControlU_state_out_mux0000_0_48 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0025_8_Q,
      I2 => unidadControlU_n0025_4_Q,
      O => unidadControlU_state_out_mux0000_0_48_1718
    );
  unidadControlU_state_out_mux0000_0_51 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_8_Q,
      I2 => unidadControlU_n0026_4_Q,
      O => unidadControlU_state_out_mux0000_0_51_1720
    );
  unidadControlU_state_out_mux0000_0_59 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0024_8_Q,
      I2 => unidadControlU_n0025_4_Q,
      O => unidadControlU_state_out_mux0000_0_59_1721
    );
  unidadControlU_state_out_mux0000_0_123 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_0_15_1715,
      I1 => N784,
      I2 => unidadControlU_state_out_mux0000_0_117_1714,
      I3 => unidadControlU_state_out_mux0000_0_92_1722,
      O => unidadControlU_state_out_mux0000_0_Q
    );
  unidadControlU_state_out_mux0000_6_6 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_N227,
      I1 => N776,
      I2 => unidadControlU_next_val_FSM_FFd2_1607,
      I3 => unidadControlU_N5,
      O => unidadControlU_state_out_mux0000_6_6_1820
    );
  unidadControlU_state_out_mux0000_6_12 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd18_1569,
      I1 => unidadControlU_next_val_FSM_FFd2_1607,
      O => unidadControlU_state_out_mux0000_6_12_1812
    );
  unidadControlU_state_out_mux0000_6_17 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_6_0_1810,
      I1 => N780,
      I2 => unidadControlU_state_out_mux0000_6_12_1812,
      I3 => unidadControlU_state_out_mux0000_6_6_1820,
      O => unidadControlU_state_out_mux0000_6_17_1814
    );
  unidadControlU_state_out_mux0000_6_25 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0028_10_Q,
      I2 => unidadControlU_n0024_3_Q,
      O => unidadControlU_state_out_mux0000_6_25_1815
    );
  unidadControlU_state_out_mux0000_6_28 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_n0029_10_Q,
      I2 => unidadControlU_n0024_3_Q,
      O => unidadControlU_state_out_mux0000_6_28_1816
    );
  unidadControlU_state_out_mux0000_6_36 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0027_10_Q,
      I2 => unidadControlU_n0024_3_Q,
      O => unidadControlU_state_out_mux0000_6_36_1817
    );
  unidadControlU_state_out_mux0000_6_56 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0025_10_Q,
      I2 => unidadControlU_n0025_3_Q,
      O => unidadControlU_state_out_mux0000_6_56_1818
    );
  unidadControlU_state_out_mux0000_6_59 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_10_Q,
      I2 => unidadControlU_n0026_3_Q,
      O => unidadControlU_state_out_mux0000_6_59_1819
    );
  unidadControlU_state_out_mux0000_6_67 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => N799,
      I2 => unidadControlU_n0024_3_Q,
      O => unidadControlU_state_out_mux0000_6_67_1821
    );
  unidadControlU_state_out_mux0000_6_125 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_state_out_6_Q,
      I1 => unidadControlU_N89,
      O => unidadControlU_state_out_mux0000_6_125_1813
    );
  unidadControlU_state_out_mux0000_6_131 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_6_17_1814,
      I1 => unidadControlU_N44,
      I2 => unidadControlU_state_out_mux0000_6_125_1813,
      I3 => unidadControlU_state_out_mux0000_6_103_1811,
      O => unidadControlU_state_out_mux0000_6_Q
    );
  unidadControlU_state_out_mux0000_13_31 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd13_1512,
      I1 => unidadControlU_next_val_FSM_FFd24_1636,
      O => unidadControlU_state_out_mux0000_13_31_1751
    );
  unidadControlU_state_out_mux0000_5_6 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N170,
      I1 => unidadControlU_N16,
      I2 => unidadControlU_next_val_FSM_FFd22_1622,
      I3 => unidadControlU_state_out_mux0000_5_0_1803,
      O => unidadControlU_state_out_mux0000_5_6_1807
    );
  unidadControlU_state_out_mux0000_13_111219 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(19),
      O => unidadControlU_state_out_mux0000_13_111219_1747
    );
  unidadControlU_state_out_mux0000_7_5 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => unidadControlU_N227,
      I1 => unidadControlU_N5,
      I2 => unidadControlU_next_val_FSM_FFd1_1490,
      I3 => N829,
      O => unidadControlU_state_out_mux0000_7_5_1830
    );
  unidadControlU_state_out_mux0000_7_6 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd1_1490,
      I1 => unidadControlU_next_val_FSM_FFd23_1634,
      O => unidadControlU_state_out_mux0000_7_6_1831
    );
  unidadControlU_state_out_mux0000_7_27 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_n0028_11_Q,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0029_11_Q,
      I3 => unidadControlU_current_st_FSM_FFd7_1450,
      O => unidadControlU_state_out_mux0000_7_27_1828
    );
  unidadControlU_state_out_mux0000_7_44 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_n0025_11_Q,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0026_11_Q,
      I3 => unidadControlU_current_st_FSM_FFd3_1428,
      O => unidadControlU_state_out_mux0000_7_44_1829
    );
  unidadControlU_state_out_mux0000_14_7 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => unidadControlU_next_val_FSM_FFd10_1500,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      I3 => unidadControlU_next_val_FSM_FFd12_1508,
      O => unidadControlU_state_out_mux0000_14_7_1765
    );
  unidadControlU_state_out_mux0000_14_10 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_14_7_1765,
      I1 => unidadControlU_N16,
      I2 => unidadControlU_N227,
      I3 => unidadControlU_N5,
      O => unidadControlU_state_out_mux0000_14_10_1758
    );
  unidadControlU_state_out_mux0000_14_19 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => N790,
      I3 => unidadControlU_N1131,
      O => unidadControlU_state_out_mux0000_14_19_1759
    );
  unidadControlU_state_out_mux0000_14_34 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0025_102_Q,
      I2 => unidadControlU_n0025_104_Q,
      O => unidadControlU_state_out_mux0000_14_34_1761
    );
  unidadControlU_state_out_mux0000_14_37 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_104_Q,
      I2 => unidadControlU_n0026_102_Q,
      O => unidadControlU_state_out_mux0000_14_37_1762
    );
  unidadControlU_state_out_mux0000_14_45 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0024_102_Q,
      I2 => N797,
      O => unidadControlU_state_out_mux0000_14_45_1763
    );
  unidadControlU_state_out_mux0000_14_91 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_state_out_mux0000_14_56_1764,
      I3 => unidadControlU_state_out_mux0000_14_21_1760,
      O => unidadControlU_state_out_mux0000_14_91_1766
    );
  unidadControlU_state_out_mux0000_15_4 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_1680,
      I1 => unidadControlU_next_val_FSM_FFd7_1678,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => unidadControlU_next_val_FSM_FFd5_1668,
      O => unidadControlU_state_out_mux0000_15_4_1773
    );
  unidadControlU_state_out_mux0000_15_32 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0028_108_Q,
      I1 => unidadControlU_n0028_107_Q,
      I2 => unidadControlU_n0028_106_Q,
      I3 => N800,
      O => unidadControlU_state_out_mux0000_15_32_1771
    );
  unidadControlU_state_out_mux0000_15_44 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => N818,
      I2 => unidadControlU_n0029_105_Q,
      I3 => unidadControlU_n0029_106_Q,
      O => unidadControlU_state_out_mux0000_15_44_1774
    );
  unidadControlU_state_out_mux0000_15_66 : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_state_out_mux0000_15_32_1771,
      I2 => unidadControlU_state_out_mux0000_15_62_1775,
      I3 => unidadControlU_state_out_mux0000_15_44_1774,
      O => unidadControlU_state_out_mux0000_15_66_1776
    );
  unidadControlU_state_out_mux0000_15_107 : LUT4
    generic map(
      INIT => X"C480"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_state_out_mux0000_15_66_1776,
      I3 => unidadControlU_state_out_mux0000_15_86_1777,
      O => unidadControlU_state_out_mux0000_15_107_1768
    );
  unidadControlU_state_out_mux0000_4_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_N227,
      I1 => unidadControlU_state_out_mux0000_4_5_1797,
      O => unidadControlU_state_out_mux0000_4_6_1799
    );
  unidadControlU_state_out_mux0000_4_17 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_1525,
      I1 => unidadControlU_next_val_FSM_FFd21_1620,
      I2 => unidadControlU_next_val_FSM_FFd3_1646,
      O => unidadControlU_state_out_mux0000_4_17_1793
    );
  unidadControlU_state_out_mux0000_4_83 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0025_7_Q,
      I2 => unidadControlU_n0025_1_Q,
      I3 => unidadControlU_n0025_5_Q,
      O => unidadControlU_state_out_mux0000_4_83_1800
    );
  unidadControlU_state_out_mux0000_4_89 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_7_Q,
      I2 => unidadControlU_n0026_1_Q,
      I3 => unidadControlU_n0026_5_Q,
      O => unidadControlU_state_out_mux0000_4_89_1801
    );
  unidadControlU_state_out_mux0000_3_111 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_n0029_0_Q,
      I2 => unidadControlU_N1991,
      I3 => N119,
      O => unidadControlU_N211
    );
  unidadControlU_state_out_mux0000_8_43113 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0027_103_Q,
      I2 => unidadControlU_n0027_107_Q,
      O => unidadControlU_state_out_mux0000_8_43113_1864
    );
  unidadControlU_state_out_mux0000_8_43115 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N786,
      I1 => unidadControlU_state_out_mux0000_8_43113_1864,
      I2 => unidadControlU_state_out_mux0000_8_4312_1865,
      O => unidadControlU_N207
    );
  unidadControlU_state_out_mux0000_8_4215 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_105_Q,
      I2 => unidadControlU_n0026_107_Q,
      O => unidadControlU_state_out_mux0000_8_4215_1863
    );
  unidadControlU_state_out_mux0000_8_42113 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0024_105_Q,
      I2 => unidadControlU_n0024_107_Q,
      O => unidadControlU_state_out_mux0000_8_42113_1861
    );
  unidadControlU_state_out_mux0000_8_42115 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_8_4212_1862,
      I1 => unidadControlU_state_out_mux0000_8_4215_1863,
      I2 => unidadControlU_state_out_mux0000_8_42113_1861,
      O => unidadControlU_N194
    );
  unidadControlU_state_out_mux0000_5_140 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_state_out_mux0000_5_151_1806,
      I2 => unidadControlU_state_out_mux0000_5_141_1805,
      I3 => unidadControlU_state_out_mux0000_5_123_1804,
      O => unidadControlU_N88
    );
  unidadControlU_state_out_mux0000_8_312124 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0027_100_Q,
      I2 => unidadControlU_n0027_104_Q,
      I3 => unidadControlU_n0027_108_Q,
      O => unidadControlU_state_out_mux0000_8_312124_1847
    );
  unidadControlU_state_out_mux0000_8_312126 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N787,
      I1 => unidadControlU_state_out_mux0000_8_312111_1846,
      I2 => unidadControlU_state_out_mux0000_8_312124_1847,
      O => unidadControlU_N189
    );
  unidadControlU_state_out_mux0000_8_320 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0028_102_Q,
      I2 => unidadControlU_n0028_106_Q,
      O => unidadControlU_state_out_mux0000_8_320_1850
    );
  unidadControlU_state_out_mux0000_8_331 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0027_102_Q,
      I2 => N801,
      O => unidadControlU_state_out_mux0000_8_331_1852
    );
  unidadControlU_state_out_mux0000_8_3119 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_state_out_mux0000_8_314_1849,
      I2 => unidadControlU_state_out_mux0000_8_350_1853,
      I3 => unidadControlU_state_out_mux0000_8_387_1857,
      O => unidadControlU_N60
    );
  unidadControlU_state_out_mux0000_13_8 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_1500,
      I1 => unidadControlU_next_val_FSM_FFd13_1512,
      I2 => unidadControlU_next_val_FSM_FFd3_1646,
      I3 => unidadControlU_next_val_FSM_FFd5_1668,
      O => unidadControlU_state_out_mux0000_13_8_1755
    );
  unidadControlU_state_out_mux0000_13_24 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_N106,
      I1 => unidadControlU_N227,
      I2 => unidadControlU_N16,
      I3 => unidadControlU_state_out_mux0000_13_10_1746,
      O => unidadControlU_state_out_mux0000_13_24_1750
    );
  unidadControlU_state_out_mux0000_13_92 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_state_out_mux0000_13_58_1754,
      I3 => unidadControlU_N161,
      O => unidadControlU_state_out_mux0000_13_92_1756
    );
  unidadControlU_state_out_mux0000_13_130 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_state_out_mux0000_13_24_1750,
      I2 => unidadControlU_state_out_mux0000_13_314_1752,
      I3 => unidadControlU_state_out_mux0000_13_92_1756,
      O => unidadControlU_state_out_mux0000_13_Q
    );
  unidadControlU_state_out_mux0000_12_2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd5_1668,
      I1 => unidadControlU_next_val_FSM_FFd7_1678,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      O => unidadControlU_state_out_mux0000_12_2_1736
    );
  unidadControlU_state_out_mux0000_12_7 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => unidadControlU_next_val_FSM_FFd15_1525,
      I2 => unidadControlU_next_val_FSM_FFd13_1512,
      I3 => unidadControlU_next_val_FSM_FFd9_1694,
      O => unidadControlU_state_out_mux0000_12_7_1743
    );
  unidadControlU_state_out_mux0000_12_68 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0026_5_Q,
      I3 => unidadControlU_n0025_5_Q,
      O => unidadControlU_state_out_mux0000_12_68_1742
    );
  unidadControlU_state_out_mux0000_12_80 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => N781,
      I2 => unidadControlU_state_out_mux0000_12_68_1742,
      I3 => unidadControlU_state_out_mux0000_12_60_1741,
      O => unidadControlU_state_out_mux0000_12_80_1744
    );
  unidadControlU_state_out_mux0000_12_112 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_state_out_mux0000_12_31_1737,
      I2 => unidadControlU_state_out_mux0000_12_52_1740,
      I3 => unidadControlU_state_out_mux0000_12_80_1744,
      O => unidadControlU_state_out_mux0000_12_112_1734
    );
  unidadControlU_next_val_FSM_FFd15_In48 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_1525,
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => unidadControlU_N1091,
      I3 => N813,
      O => unidadControlU_next_val_FSM_FFd15_In48_1544
    );
  unidadControlU_next_val_FSM_FFd15_In114 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_In83_1546,
      I1 => unidadControlU_next_val_FSM_FFd15_In100_1527,
      I2 => unidadControlU_next_val_FSM_FFd15_In2_1532,
      O => unidadControlU_next_val_FSM_FFd15_In114_1528
    );
  unidadControlU_next_val_FSM_FFd15_In128 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd9_1465,
      I1 => unidadControlU_N17,
      I2 => unidadControlU_N226,
      I3 => unidadControlU_N2191,
      O => unidadControlU_next_val_FSM_FFd15_In128_1529
    );
  unidadControlU_next_val_FSM_FFd15_In247 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => unidadControlU_N59,
      I2 => unidadControlU_N158,
      I3 => unidadControlU_N220,
      O => unidadControlU_next_val_FSM_FFd15_In247_1533
    );
  unidadControlU_next_val_FSM_FFd15_In311 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => unidadControlU_N1681,
      I2 => unidadControlU_next_val_FSM_FFd15_In306_1536,
      O => unidadControlU_next_val_FSM_FFd15_In311_1537
    );
  unidadControlU_next_val_FSM_FFd15_In340 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_1525,
      I1 => unidadControlU_next_val_FSM_FFd15_In311_1537,
      I2 => unidadControlU_next_val_FSM_FFd15_In114_1528,
      I3 => unidadControlU_next_val_FSM_FFd15_In294_1535,
      O => unidadControlU_next_val_FSM_FFd15_In340_1539
    );
  unidadControlU_next_val_FSM_FFd15_In388 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_In375_1541,
      I1 => irU_ir_out_full(23),
      I2 => unidadControlU_next_val_FSM_FFd15_In367_1540,
      O => unidadControlU_next_val_FSM_FFd15_In388_1542
    );
  unidadControlU_next_val_FSM_FFd15_In495 : LUT4
    generic map(
      INIT => X"CC80"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I1 => unidadControlU_state_out_mux0000_10_116,
      I2 => unidadControlU_next_val_FSM_FFd15_In456_1543,
      I3 => unidadControlU_next_val_FSM_FFd15_In340_1539,
      O => unidadControlU_next_val_FSM_FFd15_In
    );
  unidadControlU_state_out_mux0000_10_2 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_N16,
      I1 => unidadControlU_next_val_FSM_FFd22_1622,
      I2 => unidadControlU_next_val_FSM_FFd16_1547,
      O => unidadControlU_state_out_mux0000_10_2_1727
    );
  unidadControlU_state_out_mux0000_10_9 : LUT4
    generic map(
      INIT => X"FAEA"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_3_1728,
      I1 => unidadControlU_n0008_9_Q,
      I2 => N827,
      I3 => unidadControlU_n0008_4_Q_1259,
      O => unidadControlU_state_out_mux0000_10_9_1731
    );
  unidadControlU_state_out_mux0000_10_15 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0026_4_Q,
      I3 => N798,
      O => unidadControlU_state_out_mux0000_10_15_1725
    );
  unidadControlU_state_out_mux0000_10_131 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_state_out_mux0000_10_98_1732,
      I2 => unidadControlU_state_out_mux0000_10_2_1727,
      I3 => unidadControlU_state_out_mux0000_10_76_1730,
      O => unidadControlU_state_out_mux0000_10_Q
    );
  unidadControlU_state_out_mux0000_8_22 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_1680,
      I1 => unidadControlU_next_val_FSM_FFd7_1678,
      I2 => unidadControlU_next_val_FSM_FFd12_1508,
      I3 => unidadControlU_next_val_FSM_FFd11_1506,
      O => unidadControlU_state_out_mux0000_8_22_1841
    );
  unidadControlU_state_out_mux0000_8_28 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => unidadControlU_next_val_FSM_FFd5_1668,
      I2 => unidadControlU_next_val_FSM_FFd14_1516,
      I3 => unidadControlU_next_val_FSM_FFd13_1512,
      O => unidadControlU_state_out_mux0000_8_28_1842
    );
  unidadControlU_state_out_mux0000_8_55 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_N227,
      I1 => unidadControlU_state_out_mux0000_8_9_1871,
      I2 => unidadControlU_N16,
      I3 => unidadControlU_state_out_mux0000_8_352_1854,
      O => unidadControlU_state_out_mux0000_8_55_1867
    );
  unidadControlU_state_out_mux0000_8_69 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0027_6_Q,
      I2 => unidadControlU_n0027_101_Q,
      I3 => unidadControlU_n0027_105_Q,
      O => unidadControlU_state_out_mux0000_8_69_1868
    );
  unidadControlU_state_out_mux0000_8_79 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0028_6_Q,
      I2 => unidadControlU_n0028_101_Q,
      I3 => unidadControlU_n0029_105_Q,
      O => unidadControlU_state_out_mux0000_8_79_1869
    );
  unidadControlU_state_out_mux0000_8_85 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_n0029_6_Q,
      I2 => unidadControlU_n0029_101_Q,
      I3 => unidadControlU_n0029_105_Q,
      O => unidadControlU_state_out_mux0000_8_85_1870
    );
  unidadControlU_state_out_mux0000_14_1122 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0028_101_Q,
      I1 => unidadControlU_n0028_102_Q,
      I2 => unidadControlU_n0028_103_Q,
      I3 => unidadControlU_n0028_104_Q,
      O => unidadControlU_N1131
    );
  unidadControlU_state_out_mux0000_3_5 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N16,
      I1 => unidadControlU_next_val_FSM_FFd20_1618,
      I2 => unidadControlU_next_val_FSM_FFd17_1558,
      I3 => unidadControlU_next_val_FSM_FFd24_1636,
      O => unidadControlU_state_out_mux0000_3_5_1787
    );
  unidadControlU_state_out_mux0000_3_60 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0026_16_Q,
      I3 => unidadControlU_n0025_16_Q,
      O => unidadControlU_state_out_mux0000_3_60_1788
    );
  unidadControlU_n0026_mux0001_250_1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => unidadControlU_next_val_FSM_FFd15_1525,
      I2 => unidadControlU_n0026_or00001_1487,
      O => unidadControlU_n0026_mux0001(250)
    );
  unidadControlU_n0026_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_n0026_or0000
    );
  lcdU_dec0_mux0008_3_1 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(6),
      I1 => lcdU_dec0_addsub0000(4),
      I2 => lcdU_dec0_addsub0000(5),
      I3 => lcdU_dec0_addsub0000(7),
      O => lcdU_decenas_3_Q
    );
  lcdU_DB_2_4 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd28_753,
      I1 => lcdU_pr_estado_FSM_FFd27_752,
      I2 => lcdU_pr_estado_FSM_FFd26_751,
      I3 => lcdU_pr_estado_FSM_FFd22_747,
      O => lcdU_DB_2_4_571
    );
  lcdU_DB_2_9 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd21_746,
      I1 => lcdU_pr_estado_FSM_FFd34_760,
      I2 => lcdU_pr_estado_FSM_FFd33_759,
      I3 => lcdU_pr_estado_FSM_FFd35_761,
      O => lcdU_DB_2_9_574
    );
  lcdU_DB_2_29 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd2_744,
      I1 => lcdU_pr_estado_FSM_FFd37_763,
      I2 => lcdU_pr_estado_FSM_FFd20_745,
      I3 => lcdU_pr_estado_FSM_FFd19_743,
      O => lcdU_DB_2_29_568
    );
  lcdU_DB_2_34 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd18_742,
      I1 => lcdU_pr_estado_FSM_FFd16_740,
      I2 => lcdU_pr_estado_FSM_FFd15_739,
      I3 => lcdU_pr_estado_FSM_FFd14_738,
      O => lcdU_DB_2_34_569
    );
  lcdU_DB_2_35 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => lcdU_DB_2_29_568,
      I1 => lcdU_DB_2_34_569,
      O => lcdU_DB_2_35_570
    );
  lcdU_DB_2_55 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_DB_2_4_571,
      I1 => lcdU_DB_2_9_574,
      I2 => lcdU_DB_2_23,
      I3 => lcdU_DB_2_35_570,
      O => lcdU_DB_2_55_572
    );
  lcdU_DB_2_73 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => lcdU_N0,
      I1 => lcdU_pr_estado_FSM_FFd5_774,
      I2 => lcdU_decenas_3_Q,
      I3 => lcdU_DB_2_55_572,
      O => lcdU_DB_2_73_573
    );
  lcdU_DB_2_105 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd3_755,
      I1 => lcdU_Msub_unidades_cy(1),
      I2 => lcdU_Msub_unidades_lut(2),
      I3 => lcdU_DB_2_73_573,
      O => DB_2_OBUF_6
    );
  unidadControlU_state_out_mux0000_9_24125 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_n0026_100_Q,
      I2 => unidadControlU_n0026_104_Q,
      O => unidadControlU_state_out_mux0000_9_24125_1889
    );
  unidadControlU_state_out_mux0000_9_2417 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0024_103_Q,
      I2 => unidadControlU_n0024_107_Q,
      I3 => unidadControlU_state_out_mux0000_9_2411_1885,
      O => unidadControlU_state_out_mux0000_9_2417_1892
    );
  unidadControlU_state_out_mux0000_9_241241 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0025_103_Q,
      I1 => unidadControlU_n0025_107_Q,
      I2 => unidadControlU_n0025_108_Q,
      I3 => unidadControlU_n0025_1_Q,
      O => unidadControlU_state_out_mux0000_9_241241_1888
    );
  unidadControlU_state_out_mux0000_9_24140 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_state_out_mux0000_9_24133_1890,
      I3 => unidadControlU_state_out_mux0000_9_241241_1888,
      O => unidadControlU_state_out_mux0000_9_24140_1891
    );
  unidadControlU_state_out_mux0000_9_24149 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_N190,
      I1 => unidadControlU_state_out_mux0000_9_2417_1892,
      I2 => unidadControlU_state_out_mux0000_9_24140_1891,
      I3 => N794,
      O => unidadControlU_N161
    );
  lcdU_centenas_1_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => mbrU_mbr_out_1(6),
      I1 => mbrU_mbr_out_1(7),
      O => N125
    );
  lcdU_centenas_1_1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => N125,
      I1 => mbrU_mbr_out_1(4),
      I2 => mbrU_mbr_out_1(3),
      I3 => mbrU_mbr_out_1(5),
      O => lcdU_Mmult_valor_completo_mult0001_Madd_lut(7)
    );
  unidadControlU_state_out_mux0000_9_2 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_cMemory_mux0000_9_wg_cy_5_Q_1370,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      O => unidadControlU_state_out_mux0000_9_2_1881
    );
  unidadControlU_state_out_mux0000_9_76 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0019,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_cmp_eq0014,
      I3 => unidadControlU_N168,
      O => unidadControlU_state_out_mux0000_9_76_1923
    );
  unidadControlU_state_out_mux0000_9_96 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => unidadControlU_state_out_mux0000_9_76_1923,
      I2 => unidadControlU_state_out_mux0000_9_64_1918,
      I3 => N804,
      O => unidadControlU_state_out_mux0000_9_96_1924
    );
  unidadControlU_state_out_mux0000_9_210 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N2161,
      I1 => unidadControlU_state_out_mux0000_9_143_1877,
      I2 => unidadControlU_state_out_mux0000_9_177_1879,
      I3 => N812,
      O => unidadControlU_state_out_mux0000_9_210_1882
    );
  unidadControlU_state_out_mux0000_9_323 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0025_7_Q,
      I1 => unidadControlU_n0025_8_Q,
      I2 => unidadControlU_n0025_105_Q,
      I3 => unidadControlU_n0025_106_Q,
      O => unidadControlU_state_out_mux0000_9_323_1897
    );
  unidadControlU_state_out_mux0000_9_353 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_n0026_15_Q,
      I1 => unidadControlU_n0026_16_Q,
      O => unidadControlU_state_out_mux0000_9_353_1899
    );
  unidadControlU_state_out_mux0000_9_358 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0026_10_Q,
      I1 => unidadControlU_n0026_11_Q,
      I2 => unidadControlU_n0026_101_Q,
      I3 => unidadControlU_n0026_102_Q,
      O => unidadControlU_state_out_mux0000_9_358_1900
    );
  unidadControlU_state_out_mux0000_9_373 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0026_7_Q,
      I1 => unidadControlU_n0026_8_Q,
      I2 => unidadControlU_n0026_105_Q,
      I3 => unidadControlU_n0026_106_Q,
      O => unidadControlU_state_out_mux0000_9_373_1902
    );
  unidadControlU_state_out_mux0000_9_383 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_9_373_1902,
      I1 => unidadControlU_state_out_mux0000_9_358_1900,
      I2 => unidadControlU_state_out_mux0000_9_353_1899,
      I3 => unidadControlU_state_out_mux0000_9_368_1901,
      O => unidadControlU_state_out_mux0000_9_383_1903
    );
  unidadControlU_state_out_mux0000_9_429 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_N161,
      I2 => unidadControlU_state_out_mux0000_9_283_1894,
      I3 => unidadControlU_state_out_mux0000_9_405_1904,
      O => unidadControlU_state_out_mux0000_9_429_1905
    );
  unidadControlU_state_out_mux0000_9_460 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0027_0_Q,
      I1 => unidadControlU_n0027_8_Q,
      I2 => unidadControlU_n0027_100_Q,
      I3 => unidadControlU_n0027_108_Q,
      O => unidadControlU_state_out_mux0000_9_460_1906
    );
  unidadControlU_state_out_mux0000_9_525 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0028_0_Q,
      I1 => unidadControlU_n0028_8_Q,
      I2 => unidadControlU_n0028_100_Q,
      I3 => unidadControlU_n0028_108_Q,
      O => unidadControlU_state_out_mux0000_9_525_1911
    );
  unidadControlU_state_out_mux0000_9_601 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0029_108_Q,
      I1 => unidadControlU_n0029_0_Q,
      I2 => unidadControlU_n0029_100_Q,
      I3 => unidadControlU_n0029_8_Q,
      O => unidadControlU_state_out_mux0000_9_601_1915
    );
  unidadControlU_state_out_mux0000_9_626 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0029_107_Q,
      I1 => unidadControlU_n0029_105_Q,
      I2 => unidadControlU_n0029_106_Q,
      I3 => unidadControlU_n0029_5_Q,
      O => unidadControlU_state_out_mux0000_9_626_1917
    );
  unidadControlU_state_out_mux0000_9_691 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_state_out_mux0000_9_505_1910,
      I2 => unidadControlU_state_out_mux0000_9_570_1914,
      I3 => unidadControlU_state_out_mux0000_9_669_1921,
      O => unidadControlU_state_out_mux0000_9_691_1922
    );
  lcdU_Msub_unidades_cy_1_11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => lcdU_decenas_0_Q,
      I1 => mbrU_mbr_out_1(1),
      O => lcdU_Msub_unidades_cy(1)
    );
  lcdU_dec0_mux0008_0_4 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => mbrU_mbr_out_1(1),
      I1 => lcdU_dec0_addsub0000(4),
      I2 => lcdU_dec0_addsub0000(2),
      O => lcdU_dec0_mux0008_0_4_728
    );
  lcdU_dec0_mux0008_0_17 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => lcdU_dec0_mux0008_0_4_728,
      I1 => lcdU_dec0_addsub0000(5),
      I2 => lcdU_dec0_addsub0000(3),
      I3 => lcdU_dec0_addsub0000(7),
      O => lcdU_dec0_mux0008_0_17_724
    );
  lcdU_dec0_mux0008_0_145 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_dec0_mux0008_0_17_724,
      I1 => lcdU_dec0_mux0008_0_39,
      I2 => lcdU_dec0_mux0008_0_93_729,
      I3 => lcdU_dec0_mux0008_0_126,
      O => lcdU_decenas_0_Q
    );
  lcdU_cen_mux0001_0_SW0 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => mbrU_mbr_out_1(2),
      I1 => mbrU_mbr_out_1(4),
      I2 => mbrU_mbr_out_1(3),
      I3 => mbrU_mbr_out_1(5),
      O => N133
    );
  lcdU_cen_mux0001_0_Q : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => mbrU_mbr_out_1(7),
      I1 => lcdU_Mmult_valor_completo_mult0001_Madd_lut(7),
      I2 => mbrU_mbr_out_1(6),
      I3 => N133,
      O => lcdU_centenas(0)
    );
  lcdU_DB_3_4 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd45_772,
      I1 => lcdU_pr_estado_FSM_FFd43_770,
      I2 => lcdU_pr_estado_FSM_FFd41_768,
      I3 => lcdU_pr_estado_FSM_FFd37_763,
      O => lcdU_DB_3_4_578
    );
  lcdU_DB_3_9 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd29_754,
      I1 => lcdU_pr_estado_FSM_FFd27_752,
      I2 => lcdU_pr_estado_FSM_FFd21_746,
      I3 => lcdU_pr_estado_FSM_FFd17_741,
      O => lcdU_DB_3_9_579
    );
  lcdU_DB_3_14 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd13_737,
      I1 => lcdU_pr_estado_FSM_FFd11_735,
      I2 => lcdU_pr_estado_FSM_FFd10_734,
      I3 => lcdU_pr_estado_FSM_FFd2_744,
      O => lcdU_DB_3_14_575
    );
  lcdU_DB_3_15 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => lcdU_DB_3_9_579,
      I1 => lcdU_DB_3_14_575,
      O => lcdU_DB_3_15_576
    );
  lcdU_DB_3_36 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => lcdU_DB_3_4_578,
      I1 => lcdU_decenas_3_Q,
      I2 => lcdU_pr_estado_FSM_FFd5_774,
      I3 => lcdU_DB_3_15_576,
      O => lcdU_DB_3_36_577
    );
  lcdU_DB_3_110 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd3_755,
      I1 => lcdU_DB_3_93_580,
      I2 => lcdU_DB_3_36_577,
      O => DB_3_OBUF_7
    );
  activar_cpu_IBUF : IBUF
    port map (
      I => activar_cpu,
      O => activar_cpu_IBUF_498
    );
  lcd_reset_IBUF : IBUF
    port map (
      I => lcd_reset,
      O => lcd_reset_IBUF_784
    );
  E_OBUF : OBUF
    port map (
      I => lcdU_E1,
      O => E
    );
  RS_OBUF : OBUF
    port map (
      I => RS_OBUF_495,
      O => RS
    );
  RW_OBUF : OBUF
    port map (
      I => N0,
      O => RW
    );
  DB_3_OBUF : OBUF
    port map (
      I => DB_3_OBUF_7,
      O => DB(3)
    );
  DB_2_OBUF : OBUF
    port map (
      I => DB_2_OBUF_6,
      O => DB(2)
    );
  DB_1_OBUF : OBUF
    port map (
      I => DB_1_OBUF_5,
      O => DB(1)
    );
  DB_0_OBUF : OBUF
    port map (
      I => DB_0_OBUF_4,
      O => DB(0)
    );
  lcdU_pr_estado_FSM_FFd8 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => lcdU_E_583,
      D => lcdU_pr_estado_FSM_FFd9_778,
      R => lcd_reset_IBUF_784,
      S => lcdU_pr_estado_FSM_FFd1_733,
      Q => lcdU_pr_estado_FSM_FFd8_777
    );
  mbrMuxInU_aux_mbr_in_15_mux0001 : LDE_1
    port map (
      D => ramU_data_out_15_Q,
      G => unidadControlU_state_out_3_Q,
      GE => unidadControlU_state_out_5_Q,
      Q => mbrMuxInU_aux_mbr_in_15_mux0001_826
    );
  mbrMuxInU_aux_mbr_in_8_mux0001 : LDE_1
    port map (
      D => ramU_data_out_8_Q,
      G => unidadControlU_state_out_3_Q,
      GE => unidadControlU_state_out_5_Q,
      Q => mbrMuxInU_aux_mbr_in_8_mux0001_863
    );
  pcU_Madd_pc_count_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pcU_pc_count(1),
      O => pcU_Madd_pc_count_addsub0000_cy_1_rt_921
    );
  pcU_Madd_pc_count_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pcU_pc_count(2),
      O => pcU_Madd_pc_count_addsub0000_cy_2_rt_923
    );
  pcU_Madd_pc_count_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pcU_pc_count(3),
      O => pcU_Madd_pc_count_addsub0000_cy_3_rt_925
    );
  pcU_Madd_pc_count_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pcU_pc_count(4),
      O => pcU_Madd_pc_count_addsub0000_cy_4_rt_927
    );
  pcU_Madd_pc_count_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pcU_pc_count(5),
      O => pcU_Madd_pc_count_addsub0000_cy_5_rt_929
    );
  pcU_Madd_pc_count_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pcU_pc_count(6),
      O => pcU_Madd_pc_count_addsub0000_cy_6_rt_931
    );
  lcdU_Msub_dec0_addsub0000_lut_2_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => mbrU_mbr_out_1(2),
      I1 => lcdU_centenas(0),
      O => lcdU_Msub_dec0_addsub0000_lut_2_1_653
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(7),
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy_2_rt_637
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(5),
      O => lcdU_Mcompar_cuenta_cmp_lt0000_cy_0_rt_634
    );
  lcdU_Madd_cuenta_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(15),
      O => lcdU_Madd_cuenta_addsub0000_cy_15_rt_598
    );
  lcdU_Madd_cuenta_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(14),
      O => lcdU_Madd_cuenta_addsub0000_cy_14_rt_596
    );
  lcdU_Madd_cuenta_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(13),
      O => lcdU_Madd_cuenta_addsub0000_cy_13_rt_594
    );
  lcdU_Madd_cuenta_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(12),
      O => lcdU_Madd_cuenta_addsub0000_cy_12_rt_592
    );
  lcdU_Madd_cuenta_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(11),
      O => lcdU_Madd_cuenta_addsub0000_cy_11_rt_590
    );
  lcdU_Madd_cuenta_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(10),
      O => lcdU_Madd_cuenta_addsub0000_cy_10_rt_588
    );
  lcdU_Madd_cuenta_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(9),
      O => lcdU_Madd_cuenta_addsub0000_cy_9_rt_616
    );
  lcdU_Madd_cuenta_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(8),
      O => lcdU_Madd_cuenta_addsub0000_cy_8_rt_614
    );
  lcdU_Madd_cuenta_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(7),
      O => lcdU_Madd_cuenta_addsub0000_cy_7_rt_612
    );
  lcdU_Madd_cuenta_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(6),
      O => lcdU_Madd_cuenta_addsub0000_cy_6_rt_610
    );
  lcdU_Madd_cuenta_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(5),
      O => lcdU_Madd_cuenta_addsub0000_cy_5_rt_608
    );
  lcdU_Madd_cuenta_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(4),
      O => lcdU_Madd_cuenta_addsub0000_cy_4_rt_606
    );
  lcdU_Madd_cuenta_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(3),
      O => lcdU_Madd_cuenta_addsub0000_cy_3_rt_604
    );
  lcdU_Madd_cuenta_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(2),
      O => lcdU_Madd_cuenta_addsub0000_cy_2_rt_602
    );
  lcdU_Madd_cuenta_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(1),
      O => lcdU_Madd_cuenta_addsub0000_cy_1_rt_600
    );
  pcU_Madd_pc_count_addsub0000_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pcU_pc_count(7),
      O => pcU_Madd_pc_count_addsub0000_xor_7_rt_933
    );
  lcdU_Madd_cuenta_addsub0000_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta(16),
      O => lcdU_Madd_cuenta_addsub0000_xor_16_rt_618
    );
  unidadControlU_Mmux_n0024_2_f5_22 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_33,
      I2 => unidadControlU_Mmux_n0024_43,
      O => unidadControlU_n0024_102_Q
    );
  unidadControlU_Mmux_n0024_2_f5_101 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_311,
      I2 => unidadControlU_Mmux_n0024_411,
      O => unidadControlU_n0024_11_Q
    );
  unidadControlU_Mmux_n0024_2_f5_151 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_316,
      I2 => unidadControlU_Mmux_n0024_416,
      O => unidadControlU_n0024_3_Q
    );
  unidadControlU_Mmux_n0024_2_f5_181 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_319,
      I2 => unidadControlU_Mmux_n0024_419,
      O => unidadControlU_n0024_6_Q
    );
  unidadControlU_Mmux_n0029_2_f5_141 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_315,
      I2 => unidadControlU_Mmux_n0024_415,
      O => unidadControlU_n0029_2_Q
    );
  unidadControlU_Mmux_n0029_2_f5_191 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_320,
      I2 => unidadControlU_Mmux_n0024_420,
      O => unidadControlU_n0029_7_Q
    );
  unidadControlU_Mmux_n0025_4 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd24_1636,
      I1 => irU_ir_out_full(16),
      I2 => N793,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_4
    );
  unidadControlU_Mmux_n0025_41 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd13_1512,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_41
    );
  unidadControlU_Mmux_n0025_42 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd12_1508,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_42
    );
  unidadControlU_Mmux_n0025_43 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd11_1506,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_43
    );
  unidadControlU_Mmux_n0025_44 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_1500,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_44
    );
  unidadControlU_Mmux_n0025_45 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_45
    );
  unidadControlU_Mmux_n0025_46 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_1680,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_46
    );
  unidadControlU_Mmux_n0025_47 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd7_1678,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_47
    );
  unidadControlU_Mmux_n0025_48 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_48
    );
  unidadControlU_Mmux_n0025_49 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd5_1668,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_49
    );
  unidadControlU_Mmux_n0025_410 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_1607,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_410
    );
  unidadControlU_Mmux_n0025_411 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd1_1490,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_411
    );
  unidadControlU_Mmux_n0025_412 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd23_1634,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => unidadControlU_Mmux_n0024_412
    );
  unidadControlU_Mmux_n0025_413 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd20_1618,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => unidadControlU_Mmux_n0024_413
    );
  unidadControlU_Mmux_n0025_414 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd3_1646,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_414
    );
  unidadControlU_Mmux_n0025_419 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_419
    );
  unidadControlU_Mmux_n0025_420 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd21_1620,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_420
    );
  unidadControlU_Mmux_n0025_421 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => unidadControlU_Mmux_n0024_421
    );
  unidadControlU_state_out_mux0000_5_151 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => irU_ir_out_full(17),
      I2 => N808,
      I3 => unidadControlU_Mmux_n0024_422,
      O => unidadControlU_state_out_mux0000_5_151_1806
    );
  unidadControlU_Mmux_n0025_315 : LUT4
    generic map(
      INIT => X"AFA2"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => irU_ir_out_full(16),
      I3 => unidadControlU_current_st_FSM_FFd8_1455,
      O => unidadControlU_Mmux_n0024_315
    );
  unidadControlU_Mmux_n0025_318 : LUT4
    generic map(
      INIT => X"AFA2"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_1525,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => irU_ir_out_full(16),
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_Mmux_n0024_318
    );
  unidadControlU_state_out_mux0000_9_2411_SW0_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      O => N136
    );
  unidadControlU_state_out_mux0000_5_141 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N802,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_322,
      I3 => unidadControlU_Mmux_n0024_422,
      O => unidadControlU_state_out_mux0000_5_141_1805
    );
  unidadControlU_Mmux_n0025_422 : LUT4
    generic map(
      INIT => X"2F20"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd22_1622,
      I1 => unidadControlU_n0026_or0000,
      I2 => irU_ir_out_full(16),
      I3 => unidadControlU_n0026_mux0002(246),
      O => unidadControlU_Mmux_n0024_422
    );
  unidadControlU_state_out_mux0000_14_21 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => N791,
      I2 => unidadControlU_state_out_mux0000_14_19_1759,
      O => unidadControlU_state_out_mux0000_14_21_1760
    );
  unidadControlU_state_out_mux0000_8_365 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_n0024_102_Q,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_state_out_mux0000_8_363_1855,
      O => unidadControlU_state_out_mux0000_8_365_1856
    );
  unidadControlU_state_out_mux0000_8_1211 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_n0024_6_Q,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_state_out_mux0000_8_1191_1835,
      O => unidadControlU_state_out_mux0000_8_1211_1836
    );
  unidadControlU_state_out_mux0000_9_505 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_state_out_mux0000_9_469_1907,
      I2 => unidadControlU_state_out_mux0000_9_480_1908,
      I3 => unidadControlU_state_out_mux0000_9_485_1909,
      O => unidadControlU_state_out_mux0000_9_505_1910
    );
  unidadControlU_state_out_mux0000_9_570 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_state_out_mux0000_9_534_1912,
      I2 => unidadControlU_state_out_mux0000_9_480_1908,
      I3 => unidadControlU_state_out_mux0000_9_550_1913,
      O => unidadControlU_state_out_mux0000_9_570_1914
    );
  unidadControlU_state_out_mux0000_7_112 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_n0027_15_Q,
      I3 => unidadControlU_state_out_mux0000_7_14_1825,
      O => unidadControlU_state_out_mux0000_7_112_1823
    );
  unidadControlU_state_out_mux0000_9_228 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0024_11_Q,
      I1 => unidadControlU_n0024_10_Q,
      I2 => unidadControlU_n0024_102_Q,
      I3 => N140,
      O => unidadControlU_state_out_mux0000_9_228_1883
    );
  unidadControlU_state_out_mux0000_9_469_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0027_6_Q,
      I1 => unidadControlU_n0027_15_Q,
      I2 => unidadControlU_n0027_11_Q,
      I3 => unidadControlU_n0027_10_Q,
      O => N142
    );
  unidadControlU_state_out_mux0000_9_534_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0028_15_Q,
      I1 => unidadControlU_n0028_10_Q,
      I2 => unidadControlU_n0028_11_Q,
      I3 => unidadControlU_n0028_6_Q,
      O => N144
    );
  unidadControlU_state_out_mux0000_9_610 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0029_7_Q,
      I1 => N146,
      I2 => unidadControlU_state_out_mux0000_9_601_1915,
      I3 => unidadControlU_N1631,
      O => unidadControlU_state_out_mux0000_9_610_1916
    );
  unidadControlU_state_out_mux0000_8_2_SW0 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => N159,
      I2 => unidadControlU_N31,
      I3 => N783,
      O => N115
    );
  unidadControlU_state_out_mux0000_3_126 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0019,
      I1 => unidadControlU_state_out_31,
      I2 => N173,
      I3 => N115,
      O => unidadControlU_state_out_mux0000_3_126_1783
    );
  unidadControlU_state_out_mux0000_9_753 : LUT4
    generic map(
      INIT => X"AAAC"
    )
    port map (
      I0 => N176,
      I1 => N175,
      I2 => unidadControlU_state_out_mux0000_9_429_1905,
      I3 => unidadControlU_state_out_mux0000_9_691_1922,
      O => unidadControlU_state_out_mux0000_9_Q
    );
  unidadControlU_state_out_mux0000_9_112 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => N778,
      I3 => unidadControlU_state_out_mux0000_9_110_1874,
      O => unidadControlU_N11
    );
  unidadControlU_state_out_mux0000_8_350_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N788,
      I1 => unidadControlU_state_out_mux0000_8_312124_1847,
      I2 => unidadControlU_state_out_mux0000_8_31215_1848,
      I3 => unidadControlU_state_out_mux0000_8_320_1850,
      O => N178
    );
  unidadControlU_state_out_mux0000_8_350 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_state_out_mux0000_8_331_1852,
      I2 => unidadControlU_state_out_mux0000_8_323_1851,
      I3 => N178,
      O => unidadControlU_state_out_mux0000_8_350_1853
    );
  unidadControlU_state_out_mux0000_14_127 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_state_out_mux0000_14_10_1758,
      I2 => N183,
      I3 => unidadControlU_state_out_mux0000_14_91_1766,
      O => unidadControlU_state_out_mux0000_14_Q
    );
  unidadControlU_state_out_mux0000_15_141 : LUT4
    generic map(
      INIT => X"DDCD"
    )
    port map (
      I0 => unidadControlU_state_out_or0000,
      I1 => unidadControlU_state_out_mux0000_15_20_1770,
      I2 => N185,
      I3 => unidadControlU_state_out_mux0000_15_107_1768,
      O => unidadControlU_state_out_mux0000_15_Q
    );
  unidadControlU_n0026_mux0002_253_1_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => N832,
      O => N187
    );
  unidadControlU_n0026_mux0002_252_1_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd18_1569,
      I1 => unidadControlU_n0026_or00011_1489,
      O => N189
    );
  unidadControlU_n0026_mux0002_250_1_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_1525,
      I1 => unidadControlU_n0026_or00011_1489,
      O => N191
    );
  unidadControlU_Mmux_n0025_418 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => unidadControlU_n0026_mux0001(250),
      I3 => N191,
      O => unidadControlU_Mmux_n0024_418
    );
  unidadControlU_state_out_mux0000_8_106_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_8_4315_1866,
      I1 => N785,
      I2 => unidadControlU_state_out_mux0000_8_43113_1864,
      I3 => unidadControlU_state_out_mux0000_8_69_1868,
      O => N193
    );
  unidadControlU_state_out_mux0000_9_169 : LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => unidadControlU_next_val_FSM_FFd4_1655,
      I2 => N195,
      I3 => unidadControlU_N5,
      O => unidadControlU_state_out_mux0000_9_169_1878
    );
  unidadControlU_state_out_mux0000_9_136_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd20_1618,
      I1 => unidadControlU_next_val_FSM_FFd8_1680,
      I2 => unidadControlU_next_val_FSM_FFd1_1490,
      I3 => unidadControlU_next_val_FSM_FFd7_1678,
      O => N197
    );
  unidadControlU_state_out_mux0000_5_123 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N199,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_322,
      I3 => unidadControlU_Mmux_n0024_422,
      O => unidadControlU_state_out_mux0000_5_123_1804
    );
  unidadControlU_state_out_mux0000_5_19 : LUT4
    generic map(
      INIT => X"DDCD"
    )
    port map (
      I0 => unidadControlU_state_out_or0000,
      I1 => unidadControlU_state_out_mux0000_5_6_1807,
      I2 => N201,
      I3 => unidadControlU_state_out_mux0000_5_8_1808,
      O => unidadControlU_state_out_mux0000_5_Q
    );
  unidadControlU_state_out_mux0000_0_1121 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N138,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_317,
      I3 => unidadControlU_Mmux_n0024_417,
      O => unidadControlU_N1211
    );
  unidadControlU_state_out_mux0000_4_177 : LUT4
    generic map(
      INIT => X"DCDD"
    )
    port map (
      I0 => unidadControlU_state_out_or0000,
      I1 => unidadControlU_state_out_mux0000_4_23_1794,
      I2 => unidadControlU_state_out_mux0000_4_143_1792,
      I3 => N205,
      O => unidadControlU_state_out_mux0000_4_Q
    );
  unidadControlU_Mmux_n0025_417 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd16_1547,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_mux0001(251),
      O => unidadControlU_Mmux_n0024_417
    );
  unidadControlU_next_val_FSM_FFd10_In120 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_In110_1502,
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_N2081,
      I3 => unidadControlU_next_val_FSM_FFd10_In119_1503,
      O => unidadControlU_N18
    );
  unidadControlU_next_val_FSM_FFd24_In173 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_next_val_FSM_FFd24_In163_1640,
      O => unidadControlU_next_val_FSM_FFd24_In
    );
  unidadControlU_state_out_mux0000_7_109 : LUT4
    generic map(
      INIT => X"FF51"
    )
    port map (
      I0 => unidadControlU_state_out_or0000,
      I1 => N207,
      I2 => unidadControlU_state_out_mux0000_7_75_1832,
      I3 => unidadControlU_state_out_mux0000_7_171_1827,
      O => unidadControlU_state_out_mux0000_7_Q
    );
  unidadControlU_state_out_mux0000_10_16 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_317,
      I3 => unidadControlU_Mmux_n0024_417,
      O => unidadControlU_state_out_mux0000_10_16_1726
    );
  unidadControlU_state_out_mux0000_7_162 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd23_1634,
      I1 => unidadControlU_state_out_or0000,
      I2 => unidadControlU_N5,
      I3 => unidadControlU_N2161,
      O => unidadControlU_state_out_mux0000_7_162_1826
    );
  unidadControlU_state_out_mux0000_9_451 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd12_1386,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      O => unidadControlU_N185
    );
  unidadControlU_state_out_mux0000_8_9_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => unidadControlU_next_val_FSM_FFd10_1500,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      O => N211
    );
  unidadControlU_Mmux_n0025_3 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd24_1636,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_3
    );
  unidadControlU_Mmux_n0025_31 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd13_1512,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_31
    );
  unidadControlU_Mmux_n0025_32 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd12_1508,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_32
    );
  unidadControlU_Mmux_n0025_33 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_33
    );
  unidadControlU_Mmux_n0025_34 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd10_1500,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_34
    );
  unidadControlU_Mmux_n0025_35 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd9_1694,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_35
    );
  unidadControlU_Mmux_n0025_36 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd8_1680,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_36
    );
  unidadControlU_Mmux_n0025_37 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd7_1678,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_37
    );
  unidadControlU_Mmux_n0025_38 : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd6_1676,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_Mmux_n0024_38
    );
  unidadControlU_Mmux_n0025_39 : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd5_1668,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_Mmux_n0024_39
    );
  unidadControlU_Mmux_n0025_310 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd2_1607,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_310
    );
  unidadControlU_Mmux_n0025_311 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd1_1490,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_311
    );
  unidadControlU_Mmux_n0025_312 : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd23_1634,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_Mmux_n0024_312
    );
  unidadControlU_Mmux_n0025_313 : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd20_1618,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_Mmux_n0024_313
    );
  unidadControlU_Mmux_n0025_314 : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd3_1646,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_Mmux_n0024_314
    );
  unidadControlU_Mmux_n0025_316 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd18_1569,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_316
    );
  unidadControlU_Mmux_n0025_319 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd14_1516,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_319
    );
  unidadControlU_Mmux_n0025_320 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd21_1620,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_320
    );
  unidadControlU_Mmux_n0025_321 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd4_1655,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_321
    );
  unidadControlU_state_out_mux0000_13_111293_SW0 : LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_13_111230_1748,
      I1 => unidadControlU_current_st_FSM_N18,
      I2 => unidadControlU_current_st_FSM_FFd1_1377,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N156
    );
  unidadControlU_next_val_FSM_FFd22_In12_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd13_1394,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N213
    );
  unidadControlU_state_out_mux0000_12_150_SW0 : LUT4
    generic map(
      INIT => X"F2F0"
    )
    port map (
      I0 => unidadControlU_state_out_12_Q,
      I1 => unidadControlU_state_out_or0000,
      I2 => unidadControlU_state_out_mux0000_12_15_1735,
      I3 => N820,
      O => N215
    );
  unidadControlU_state_out_mux0000_12_150 : LUT4
    generic map(
      INIT => X"FFAC"
    )
    port map (
      I0 => N216,
      I1 => N215,
      I2 => unidadControlU_state_out_mux0000_12_112_1734,
      I3 => unidadControlU_N60,
      O => unidadControlU_state_out_mux0000_12_Q
    );
  unidadControlU_state_out_mux0000_3_49 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => N811,
      I2 => unidadControlU_N211,
      I3 => N218,
      O => unidadControlU_state_out_mux0000_3_49_1786
    );
  unidadControlU_state_out_mux0000_3_83 : LUT4
    generic map(
      INIT => X"5455"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_state_out_mux0000_3_60_1788,
      I2 => unidadControlU_N1241,
      I3 => N220,
      O => unidadControlU_state_out_mux0000_3_83_1789
    );
  unidadControlU_next_val_FSM_FFd20_In31_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd17_1412,
      I1 => unidadControlU_current_st_FSM_FFd21_1423,
      O => N222
    );
  unidadControlU_next_val_FSM_FFd16_In1131_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_N17,
      O => N226
    );
  unidadControlU_state_out_mux0000_12_42 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N138,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_318,
      I3 => unidadControlU_Mmux_n0024_418,
      O => unidadControlU_state_out_mux0000_12_42_1739
    );
  unidadControlU_state_out_mux0000_9_241_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => N795,
      O => N236
    );
  unidadControlU_state_out_mux0000_9_283 : LUT4
    generic map(
      INIT => X"AAB8"
    )
    port map (
      I0 => N236,
      I1 => unidadControlU_state_out_mux0000_9_228_1883,
      I2 => N235,
      I3 => unidadControlU_state_out_mux0000_9_235_1884,
      O => unidadControlU_state_out_mux0000_9_283_1894
    );
  lcdU_cuenta_mux0000_10_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(10),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(10)
    );
  lcdU_cuenta_mux0000_11_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(11),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(11)
    );
  lcdU_cuenta_mux0000_12_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(12),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(12)
    );
  lcdU_cuenta_mux0000_13_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(13),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(13)
    );
  unidadControlU_state_out_mux0000_12_31 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_1525,
      I1 => unidadControlU_N5,
      I2 => unidadControlU_N2161,
      I3 => unidadControlU_N169,
      O => unidadControlU_state_out_mux0000_12_31_1737
    );
  unidadControlU_next_val_FSM_FFd1_In154 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd1_In1511_1493,
      I3 => N762,
      O => unidadControlU_next_val_FSM_FFd1_In154_1494
    );
  unidadControlU_next_val_FSM_FFd2_In159 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_next_val_FSM_FFd2_In148_1615,
      O => unidadControlU_next_val_FSM_FFd2_In
    );
  unidadControlU_state_out_mux0000_8_1131 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => unidadControlU_N233,
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_N1931,
      I3 => N768,
      O => unidadControlU_N1941
    );
  unidadControlU_state_out_mux0000_9_64 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0021,
      I1 => unidadControlU_N240,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N138,
      O => unidadControlU_state_out_mux0000_9_64_1918
    );
  unidadControlU_n0026_mux0001_253_1_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => N833,
      O => N260
    );
  unidadControlU_Mmux_n0025_415 : LUT4
    generic map(
      INIT => X"CDEF"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => N187,
      I3 => N260,
      O => unidadControlU_Mmux_n0024_415
    );
  unidadControlU_n0026_mux0001_252_1_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd18_1569,
      I1 => unidadControlU_n0026_or00001_1487,
      O => N262
    );
  unidadControlU_Mmux_n0025_416 : LUT4
    generic map(
      INIT => X"CDEF"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => N189,
      I3 => N262,
      O => unidadControlU_Mmux_n0024_416
    );
  unidadControlU_state_out_mux0000_13_111261 : LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_current_st_cmp_eq0009,
      I2 => unidadControlU_current_st_FSM_FFd5_1443,
      I3 => N264,
      O => unidadControlU_state_out_mux0000_13_111261_1749
    );
  unidadControlU_state_out_mux0000_3_157 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_state_out_mux0000_3_5_1787,
      I2 => unidadControlU_state_out_mux0000_3_126_1783,
      I3 => N266,
      O => unidadControlU_state_out_mux0000_3_Q
    );
  unidadControlU_state_out_mux0000_9_627_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => N796,
      O => N269
    );
  unidadControlU_state_out_mux0000_9_714_SW1_SW0 : LUT4
    generic map(
      INIT => X"1115"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_N2161,
      I2 => unidadControlU_state_out_mux0000_9_143_1877,
      I3 => N821,
      O => N273
    );
  unidadControlU_next_val_FSM_FFd19_In153 : LUT4
    generic map(
      INIT => X"2232"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In140_1598,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_N229,
      I3 => unidadControlU_current_st_FSM_FFd11_1382,
      O => unidadControlU_next_val_FSM_FFd19_In153_1599
    );
  unidadControlU_next_val_FSM_FFd3_In132_SW0 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => unidadControlU_N2241,
      I2 => unidadControlU_N157,
      I3 => N789,
      O => N275
    );
  unidadControlU_state_out_mux0000_3_11111 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_N29,
      O => unidadControlU_N1991
    );
  unidadControlU_next_val_FSM_FFd15_In5411_SW0_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(21),
      O => N279
    );
  unidadControlU_next_val_FSM_FFd17_In1330 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_N208,
      I1 => unidadControlU_N125,
      I2 => unidadControlU_N217,
      I3 => N283,
      O => unidadControlU_N195
    );
  lcdU_cuenta_mux0000_4_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(4),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(4)
    );
  lcdU_Mcompar_E_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(5),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_Mcompar_E_cmp_lt0000_lut_1_Q_627
    );
  lcdU_cuenta_mux0000_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(6),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(6)
    );
  lcdU_Mcompar_E_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(7),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_Mcompar_E_cmp_lt0000_lut_3_Q_628
    );
  lcdU_Mcompar_E_cmp_lt0000_lut_4_Q : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(8),
      I1 => lcdU_cuenta_addsub0000(9),
      I2 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_Mcompar_E_cmp_lt0000_lut_4_Q_629
    );
  lcdU_Mcompar_E_cmp_lt0000_lut_6_Q : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(14),
      I1 => lcdU_cuenta_addsub0000(15),
      I2 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_Mcompar_E_cmp_lt0000_lut_6_Q_631
    );
  unidadControlU_next_val_FSM_FFd17_In1331 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_In25_1564,
      I1 => unidadControlU_current_st_FSM_FFd21_1423,
      I2 => unidadControlU_N89,
      I3 => unidadControlU_next_val_FSM_FFd17_In111_1560,
      O => unidadControlU_next_val_FSM_FFd17_In
    );
  unidadControlU_state_out_mux0000_10_33_SW0_SW1 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N2291,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_state_out_mux0000_10_9_1731,
      O => N245
    );
  lcdU_Mcompar_E_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(16),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_Mcompar_E_cmp_lt0000_lut_7_Q_632
    );
  unidadControlU_next_val_FSM_FFd17_In12_SW2 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_N59,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      O => N289
    );
  unidadControlU_next_val_FSM_FFd17_In12 : LUT4
    generic map(
      INIT => X"F0BB"
    )
    port map (
      I0 => unidadControlU_N220,
      I1 => unidadControlU_current_st_FSM_FFd5_1443,
      I2 => N83,
      I3 => N289,
      O => unidadControlU_N178
    );
  unidadControlU_next_val_FSM_FFd19_In122_SW1 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => N772,
      O => N293
    );
  unidadControlU_next_val_FSM_FFd18_In146_SW0 : LUT3
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_next_val_FSM_FFd18_In136_1572,
      I2 => N830,
      O => N295
    );
  unidadControlU_n0008_9_26_SW0 : LUT4
    generic map(
      INIT => X"0527"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd6_1447,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      O => N297
    );
  unidadControlU_state_out_mux0000_9_143_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N807,
      I1 => N197,
      I2 => unidadControlU_next_val_FSM_FFd2_1607,
      I3 => unidadControlU_next_val_FSM_FFd23_1634,
      O => N299
    );
  unidadControlU_state_out_mux0000_9_143 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N5,
      I1 => unidadControlU_state_out_mux0000_13_31_1751,
      I2 => N299,
      I3 => N819,
      O => unidadControlU_state_out_mux0000_9_143_1877
    );
  unidadControlU_Mmux_n0025_317 : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd16_1547,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_Mmux_n0024_317
    );
  unidadControlU_state_out_mux0000_8_127 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => N301,
      I2 => unidadControlU_state_out_mux0000_9_12_1875,
      I3 => unidadControlU_state_out_mux0000_9_110_1874,
      O => unidadControlU_state_out_mux0000_8_127_1837
    );
  unidadControlU_Mmux_n0029_2_f5_121_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_313,
      I1 => unidadControlU_Mmux_n0024_314,
      O => N320
    );
  unidadControlU_state_out_mux0000_9_621_SW0 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_413,
      I2 => N320,
      I3 => unidadControlU_Mmux_n0024_414,
      O => N256
    );
  unidadControlU_Mmux_n0029_2_f5_81_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_38,
      I1 => unidadControlU_Mmux_n0024_39,
      O => N322
    );
  unidadControlU_Mmux_n0024_2_f5_131_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_39,
      I1 => unidadControlU_Mmux_n0024_314,
      O => N326
    );
  unidadControlU_Mmux_n0025_2_f5_121_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_312,
      I1 => unidadControlU_Mmux_n0024_313,
      O => N328
    );
  unidadControlU_state_out_mux0000_9_303 : LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => N328,
      I2 => unidadControlU_Mmux_n0024_412,
      I3 => unidadControlU_Mmux_n0024_413,
      O => unidadControlU_state_out_mux0000_9_303_1895
    );
  lcdU_Mcompar_E_cmp_lt0000_lut_5_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(11),
      I1 => lcdU_cuenta_addsub0000(10),
      O => N333
    );
  lcdU_Mcompar_E_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(13),
      I1 => N333,
      I2 => lcdU_cuenta_addsub0000(12),
      I3 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_Mcompar_E_cmp_lt0000_lut_5_Q_630
    );
  unidadControlU_next_val_FSM_FFd18_In333 : LUT4
    generic map(
      INIT => X"1011"
    )
    port map (
      I0 => unidadControlU_N89,
      I1 => unidadControlU_current_st_FSM_FFd21_1423,
      I2 => unidadControlU_next_val_FSM_FFd18_In107_1571,
      I3 => N335,
      O => unidadControlU_next_val_FSM_FFd18_In
    );
  unidadControlU_next_val_FSM_FFd2_In12118_SW0_SW0 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => unidadControlU_N17,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_N187,
      I3 => N810,
      O => N337
    );
  unidadControlU_next_val_FSM_FFd2_In12118 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_In1213_1610,
      I1 => unidadControlU_N244,
      I2 => irU_ir_out_full(20),
      I3 => N337,
      O => unidadControlU_N100
    );
  unidadControlU_next_val_FSM_FFd15_In261 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N765,
      I1 => unidadControlU_next_val_FSM_FFd15_In247_1533,
      I2 => unidadControlU_current_st_FSM_FFd10_1380,
      I3 => N339,
      O => unidadControlU_next_val_FSM_FFd15_In261_1534
    );
  unidadControlU_state_out_mux0000_10_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_N31,
      I2 => unidadControlU_state_out_or0024,
      I3 => N287,
      O => unidadControlU_state_out_mux0000_10_47_1729
    );
  unidadControlU_n0008_1_37_SW0 : LUT4
    generic map(
      INIT => X"FF47"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd6_1447,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_cmp_eq0009,
      O => N343
    );
  unidadControlU_n0008_1_37_SW1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_cmp_eq0009,
      O => N344
    );
  unidadControlU_state_out_mux0000_8_1111_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd3_1428,
      I2 => unidadControlU_current_st_FSM_FFd7_1450,
      O => N346
    );
  unidadControlU_state_out_mux0000_13_381 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N766,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_314,
      I3 => unidadControlU_Mmux_n0024_414,
      O => unidadControlU_state_out_mux0000_13_381_1753
    );
  unidadControlU_state_out_mux0000_8_2_SW0_SW0 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0021,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => N815,
      O => N352
    );
  unidadControlU_state_out_mux0000_9_240_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_n0024_106_Q,
      I1 => unidadControlU_n0024_105_Q,
      I2 => unidadControlU_n0024_7_Q,
      O => N360
    );
  unidadControlU_Mmux_n0024_2_f5_141_SW0 : LUT4
    generic map(
      INIT => X"CC80"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_Mmux_n0024_315,
      I3 => unidadControlU_n0024_16_Q,
      O => N362
    );
  unidadControlU_Mmux_n0024_2_f5_141_SW1 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_315,
      I2 => irU_ir_out_full(17),
      I3 => unidadControlU_n0024_16_Q,
      O => N363
    );
  unidadControlU_state_out_mux0000_9_318_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0025_6_Q,
      I1 => unidadControlU_state_out_mux0000_9_303_1895,
      I2 => unidadControlU_state_out_mux0000_9_308_1896,
      I3 => unidadControlU_state_out_mux0000_9_323_1897,
      O => N365
    );
  unidadControlU_state_out_mux0000_9_333 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0025_5_Q,
      I1 => unidadControlU_n0025_3_Q,
      I2 => unidadControlU_n0025_2_Q,
      I3 => N365,
      O => unidadControlU_state_out_mux0000_9_333_1898
    );
  unidadControlU_state_out_mux0000_7_121_SW0 : LUT4
    generic map(
      INIT => X"153F"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0025_15_Q,
      I3 => unidadControlU_n0024_15_Q,
      O => N367
    );
  unidadControlU_state_out_mux0000_8_209 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_8_55_1867,
      I1 => N371,
      I2 => unidadControlU_state_out_mux0000_8_206_1840,
      I3 => unidadControlU_N60,
      O => unidadControlU_state_out_mux0000_8_Q
    );
  unidadControlU_state_out_mux0000_4_143 : MUXF5
    port map (
      I0 => N373,
      I1 => N374,
      S => irU_ir_out_full(18),
      O => unidadControlU_state_out_mux0000_4_143_1792
    );
  unidadControlU_state_out_mux0000_4_143_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_state_out_mux0000_4_83_1800,
      I2 => unidadControlU_state_out_mux0000_4_89_1801,
      I3 => unidadControlU_state_out_mux0000_4_102_1791,
      O => N373
    );
  unidadControlU_state_out_mux0000_4_143_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_state_out_mux0000_4_36_1795,
      I2 => unidadControlU_state_out_mux0000_4_42_1796,
      I3 => unidadControlU_state_out_mux0000_4_55_1798,
      O => N374
    );
  unidadControlU_state_out_mux0000_9_714_SW0 : MUXF5
    port map (
      I0 => N377,
      I1 => N378,
      S => unidadControlU_state_out_mux0000_9_210_1882,
      O => N175
    );
  unidadControlU_state_out_mux0000_6_103 : MUXF5
    port map (
      I0 => N379,
      I1 => N380,
      S => irU_ir_out_full(18),
      O => unidadControlU_state_out_mux0000_6_103_1811
    );
  unidadControlU_state_out_mux0000_6_103_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_state_out_mux0000_6_56_1818,
      I2 => unidadControlU_state_out_mux0000_6_59_1819,
      I3 => unidadControlU_state_out_mux0000_6_67_1821,
      O => N379
    );
  unidadControlU_state_out_mux0000_6_103_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_state_out_mux0000_6_25_1815,
      I2 => unidadControlU_state_out_mux0000_6_28_1816,
      I3 => unidadControlU_state_out_mux0000_6_36_1817,
      O => N380
    );
  unidadControlU_state_out_mux0000_0_92 : MUXF5
    port map (
      I0 => N381,
      I1 => N382,
      S => irU_ir_out_full(18),
      O => unidadControlU_state_out_mux0000_0_92_1722
    );
  unidadControlU_state_out_mux0000_0_92_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_state_out_mux0000_0_51_1720,
      I2 => unidadControlU_state_out_mux0000_0_59_1721,
      I3 => unidadControlU_state_out_mux0000_0_48_1718,
      O => N381
    );
  unidadControlU_state_out_mux0000_0_92_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_state_out_mux0000_0_30_1717,
      I2 => unidadControlU_N1211,
      I3 => unidadControlU_state_out_mux0000_0_22_1716,
      O => N382
    );
  unidadControlU_state_out_mux0000_7_75 : MUXF5
    port map (
      I0 => N383,
      I1 => N384,
      S => irU_ir_out_full(18),
      O => unidadControlU_state_out_mux0000_7_75_1832
    );
  unidadControlU_state_out_mux0000_7_75_F : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_state_out_mux0000_7_44_1829,
      I2 => unidadControlU_n0024_11_Q,
      I3 => unidadControlU_current_st_FSM_FFd14_1396,
      O => N383
    );
  unidadControlU_state_out_mux0000_7_75_G : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_state_out_mux0000_7_27_1828,
      I2 => unidadControlU_n0027_11_Q,
      I3 => unidadControlU_current_st_FSM_FFd14_1396,
      O => N384
    );
  unidadControlU_state_out_mux0000_10_33_SW0_SW0 : MUXF5
    port map (
      I0 => N385,
      I1 => N386,
      S => unidadControlU_state_out_mux0000_10_15_1725,
      O => N244
    );
  unidadControlU_state_out_mux0000_10_33_SW0_SW0_F : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_state_out_mux0000_10_9_1731,
      I3 => unidadControlU_state_out_mux0000_10_16_1726,
      O => N385
    );
  unidadControlU_state_out_mux0000_10_33_SW0_SW0_G : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_state_out_mux0000_10_9_1731,
      O => N386
    );
  unidadControlU_state_out_mux0000_5_140_SW0 : MUXF5
    port map (
      I0 => N1,
      I1 => N388,
      S => unidadControlU_state_out_mux0000_5_123_1804,
      O => N253
    );
  unidadControlU_state_out_mux0000_5_140_SW0_G : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_N2291,
      I2 => irU_ir_out_full(18),
      I3 => irU_ir_out_full(23),
      O => N388
    );
  unidadControlU_state_out_mux0000_5_140_SW1 : MUXF5
    port map (
      I0 => N389,
      I1 => N390,
      S => unidadControlU_state_out_mux0000_5_123_1804,
      O => N254
    );
  unidadControlU_state_out_mux0000_5_140_SW1_F : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_N2291,
      I3 => irU_ir_out_full(19),
      O => N389
    );
  unidadControlU_state_out_mux0000_9_627_SW0 : MUXF5
    port map (
      I0 => N391,
      I1 => N392,
      S => unidadControlU_n0024_3_Q,
      O => N268
    );
  unidadControlU_state_out_mux0000_9_627_SW0_F : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_state_out_mux0000_9_665_1920,
      I2 => N256,
      I3 => unidadControlU_n0029_2_Q,
      O => N391
    );
  unidadControlU_state_out_mux0000_9_627_SW0_G : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_state_out_mux0000_9_665_1920,
      O => N392
    );
  unidadControlU_Mmux_n0025_2_f5_171 : MUXF5
    port map (
      I0 => N393,
      I1 => N394,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_5_Q
    );
  unidadControlU_Mmux_n0025_2_f5_171_F : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => unidadControlU_n0026_mux0001(250),
      I3 => N191,
      O => N393
    );
  unidadControlU_Mmux_n0025_2_f5_171_G : LUT4
    generic map(
      INIT => X"AFA2"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd15_1525,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => irU_ir_out_full(16),
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N394
    );
  unidadControlU_Mmux_n0025_2_f5_141 : MUXF5
    port map (
      I0 => N395,
      I1 => N396,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_2_Q
    );
  unidadControlU_Mmux_n0025_2_f5_141_F : LUT4
    generic map(
      INIT => X"CDEF"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => N187,
      I3 => N260,
      O => N395
    );
  unidadControlU_Mmux_n0025_2_f5_141_G : LUT4
    generic map(
      INIT => X"AFA2"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => irU_ir_out_full(16),
      I3 => unidadControlU_current_st_FSM_FFd8_1455,
      O => N396
    );
  unidadControlU_Mmux_n0025_2_f5_151 : MUXF5
    port map (
      I0 => N397,
      I1 => N398,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_3_Q
    );
  unidadControlU_Mmux_n0025_2_f5_151_F : LUT4
    generic map(
      INIT => X"CDEF"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => N189,
      I3 => N262,
      O => N397
    );
  unidadControlU_Mmux_n0025_2_f5_151_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd18_1569,
      I3 => irU_ir_out_full(16),
      O => N398
    );
  unidadControlU_state_out_mux0000_14_117_SW0_F : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0021,
      I1 => unidadControlU_state_out_14_Q,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_current_st_cmp_eq0019,
      O => N399
    );
  unidadControlU_state_out_mux0000_15_131_SW0 : MUXF5
    port map (
      I0 => N401,
      I1 => N402,
      S => N115,
      O => N185
    );
  unidadControlU_state_out_mux0000_15_131_SW0_F : LUT4
    generic map(
      INIT => X"FF1F"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0021,
      I1 => unidadControlU_current_st_cmp_eq0019,
      I2 => unidadControlU_state_out_15_Q,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N401
    );
  unidadControlU_Mmux_n0025_2_f5_110 : MUXF5
    port map (
      I0 => N403,
      I1 => N404,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_101_Q
    );
  unidadControlU_Mmux_n0025_2_f5_110_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd12_1508,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N403
    );
  unidadControlU_Mmux_n0025_2_f5_110_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd12_1508,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N404
    );
  unidadControlU_Mmux_n0025_2_f5_22 : MUXF5
    port map (
      I0 => N405,
      I1 => N406,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_102_Q
    );
  unidadControlU_Mmux_n0025_2_f5_22_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd11_1506,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N405
    );
  unidadControlU_Mmux_n0025_2_f5_22_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd11_1506,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N406
    );
  unidadControlU_Mmux_n0025_2_f5_31 : MUXF5
    port map (
      I0 => N407,
      I1 => N408,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_103_Q
    );
  unidadControlU_Mmux_n0025_2_f5_31_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_1500,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N407
    );
  unidadControlU_Mmux_n0025_2_f5_31_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd10_1500,
      I3 => irU_ir_out_full(16),
      O => N408
    );
  unidadControlU_Mmux_n0025_2_f5_51 : MUXF5
    port map (
      I0 => N409,
      I1 => N410,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_105_Q
    );
  unidadControlU_Mmux_n0025_2_f5_51_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_1680,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N409
    );
  unidadControlU_Mmux_n0025_2_f5_51_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd8_1680,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N410
    );
  unidadControlU_Mmux_n0025_2_f5_61 : MUXF5
    port map (
      I0 => N411,
      I1 => N412,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_106_Q
    );
  unidadControlU_Mmux_n0025_2_f5_61_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd7_1678,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N411
    );
  unidadControlU_Mmux_n0025_2_f5_61_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd7_1678,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N412
    );
  unidadControlU_Mmux_n0025_2_f5_71 : MUXF5
    port map (
      I0 => N413,
      I1 => N414,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_107_Q
    );
  unidadControlU_Mmux_n0025_2_f5_71_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N413
    );
  unidadControlU_Mmux_n0025_2_f5_71_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => irU_ir_out_full(16),
      O => N414
    );
  unidadControlU_Mmux_n0025_2_f5_81 : MUXF5
    port map (
      I0 => N415,
      I1 => N416,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_108_Q
    );
  unidadControlU_Mmux_n0025_2_f5_81_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd5_1668,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N415
    );
  unidadControlU_Mmux_n0025_2_f5_81_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd5_1668,
      I3 => irU_ir_out_full(16),
      O => N416
    );
  unidadControlU_Mmux_n0025_2_f5_91 : MUXF5
    port map (
      I0 => N417,
      I1 => N418,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_10_Q
    );
  unidadControlU_Mmux_n0025_2_f5_91_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_1607,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N417
    );
  unidadControlU_Mmux_n0025_2_f5_91_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd2_1607,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N418
    );
  unidadControlU_Mmux_n0025_2_f5_101 : MUXF5
    port map (
      I0 => N419,
      I1 => N420,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_11_Q
    );
  unidadControlU_Mmux_n0025_2_f5_101_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd1_1490,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N419
    );
  unidadControlU_Mmux_n0025_2_f5_101_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd1_1490,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N420
    );
  unidadControlU_Mmux_n0025_2_f5_111 : MUXF5
    port map (
      I0 => N421,
      I1 => N422,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_15_Q
    );
  unidadControlU_Mmux_n0025_2_f5_111_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd23_1634,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N421
    );
  unidadControlU_Mmux_n0025_2_f5_111_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd23_1634,
      I3 => irU_ir_out_full(16),
      O => N422
    );
  unidadControlU_Mmux_n0025_2_f5_131 : MUXF5
    port map (
      I0 => N423,
      I1 => N424,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_1_Q
    );
  unidadControlU_Mmux_n0025_2_f5_131_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd3_1646,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N423
    );
  unidadControlU_Mmux_n0025_2_f5_131_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd3_1646,
      I3 => irU_ir_out_full(16),
      O => N424
    );
  unidadControlU_Mmux_n0025_2_f5_181 : MUXF5
    port map (
      I0 => N425,
      I1 => N426,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_6_Q
    );
  unidadControlU_Mmux_n0025_2_f5_181_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N425
    );
  unidadControlU_Mmux_n0025_2_f5_181_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd14_1516,
      I3 => irU_ir_out_full(16),
      O => N426
    );
  unidadControlU_Mmux_n0025_2_f5_191 : MUXF5
    port map (
      I0 => N427,
      I1 => N428,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_7_Q
    );
  unidadControlU_Mmux_n0025_2_f5_191_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd21_1620,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N427
    );
  unidadControlU_Mmux_n0025_2_f5_191_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd21_1620,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N428
    );
  unidadControlU_Mmux_n0025_2_f5_201 : MUXF5
    port map (
      I0 => N429,
      I1 => N430,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0025_8_Q
    );
  unidadControlU_Mmux_n0025_2_f5_201_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or00011_1489,
      I3 => unidadControlU_n0026_or00001_1487,
      O => N429
    );
  unidadControlU_Mmux_n0025_2_f5_201_G : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_next_val_FSM_FFd4_1655,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N430
    );
  unidadControlU_Mmux_n0024_2_f5_110 : MUXF5
    port map (
      I0 => N431,
      I1 => N432,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_101_Q
    );
  unidadControlU_Mmux_n0024_2_f5_110_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd12_1508,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N431
    );
  unidadControlU_Mmux_n0024_2_f5_110_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd12_1508,
      I3 => irU_ir_out_full(16),
      O => N432
    );
  unidadControlU_Mmux_n0024_2_f5_31 : MUXF5
    port map (
      I0 => N433,
      I1 => N434,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_103_Q
    );
  unidadControlU_Mmux_n0024_2_f5_31_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_1500,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N433
    );
  unidadControlU_Mmux_n0024_2_f5_31_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd10_1500,
      I3 => irU_ir_out_full(16),
      O => N434
    );
  unidadControlU_Mmux_n0024_2_f5_51 : MUXF5
    port map (
      I0 => N435,
      I1 => N436,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_105_Q
    );
  unidadControlU_Mmux_n0024_2_f5_51_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_1680,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N435
    );
  unidadControlU_Mmux_n0024_2_f5_51_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd8_1680,
      I3 => irU_ir_out_full(16),
      O => N436
    );
  unidadControlU_Mmux_n0024_2_f5_71 : MUXF5
    port map (
      I0 => N437,
      I1 => N438,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_107_Q
    );
  unidadControlU_Mmux_n0024_2_f5_71_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N437
    );
  unidadControlU_Mmux_n0024_2_f5_71_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => irU_ir_out_full(16),
      O => N438
    );
  unidadControlU_Mmux_n0024_2_f5_111 : MUXF5
    port map (
      I0 => N439,
      I1 => N440,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_15_Q
    );
  unidadControlU_Mmux_n0024_2_f5_111_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd23_1634,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N439
    );
  unidadControlU_Mmux_n0024_2_f5_111_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd23_1634,
      I3 => irU_ir_out_full(16),
      O => N440
    );
  unidadControlU_Mmux_n0024_2_f5_121 : MUXF5
    port map (
      I0 => N441,
      I1 => N442,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_16_Q
    );
  unidadControlU_Mmux_n0024_2_f5_121_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd20_1618,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N441
    );
  unidadControlU_Mmux_n0024_2_f5_121_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd20_1618,
      I3 => irU_ir_out_full(16),
      O => N442
    );
  unidadControlU_Mmux_n0024_2_f5_191 : MUXF5
    port map (
      I0 => N443,
      I1 => N444,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_7_Q
    );
  unidadControlU_Mmux_n0024_2_f5_191_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd21_1620,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N443
    );
  unidadControlU_Mmux_n0024_2_f5_191_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd21_1620,
      I3 => irU_ir_out_full(16),
      O => N444
    );
  unidadControlU_Mmux_n0024_2_f5_201 : MUXF5
    port map (
      I0 => N445,
      I1 => N446,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_8_Q
    );
  unidadControlU_Mmux_n0024_2_f5_201_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N445
    );
  unidadControlU_Mmux_n0024_2_f5_201_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd4_1655,
      I3 => irU_ir_out_full(16),
      O => N446
    );
  unidadControlU_Mmux_n0029_2_f51 : MUXF5
    port map (
      I0 => N447,
      I1 => N448,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_0_Q
    );
  unidadControlU_Mmux_n0029_2_f51_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd24_1636,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N447
    );
  unidadControlU_Mmux_n0029_2_f51_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd24_1636,
      I3 => irU_ir_out_full(16),
      O => N448
    );
  unidadControlU_Mmux_n0029_2_f5_01 : MUXF5
    port map (
      I0 => N449,
      I1 => N450,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_100_Q
    );
  unidadControlU_Mmux_n0029_2_f5_01_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd13_1512,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N449
    );
  unidadControlU_Mmux_n0029_2_f5_01_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd13_1512,
      I3 => irU_ir_out_full(16),
      O => N450
    );
  unidadControlU_Mmux_n0029_2_f5_110 : MUXF5
    port map (
      I0 => N451,
      I1 => N452,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_101_Q
    );
  unidadControlU_Mmux_n0029_2_f5_110_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd12_1508,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N451
    );
  unidadControlU_Mmux_n0029_2_f5_110_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd12_1508,
      I3 => irU_ir_out_full(16),
      O => N452
    );
  unidadControlU_Mmux_n0029_2_f5_22 : MUXF5
    port map (
      I0 => N453,
      I1 => N454,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_102_Q
    );
  unidadControlU_Mmux_n0029_2_f5_22_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd11_1506,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N453
    );
  unidadControlU_Mmux_n0029_2_f5_22_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      I3 => irU_ir_out_full(16),
      O => N454
    );
  unidadControlU_Mmux_n0029_2_f5_31 : MUXF5
    port map (
      I0 => N455,
      I1 => N456,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_103_Q
    );
  unidadControlU_Mmux_n0029_2_f5_31_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_1500,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N455
    );
  unidadControlU_Mmux_n0029_2_f5_31_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd10_1500,
      I3 => irU_ir_out_full(16),
      O => N456
    );
  unidadControlU_Mmux_n0029_2_f5_41 : MUXF5
    port map (
      I0 => N457,
      I1 => N458,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_104_Q
    );
  unidadControlU_Mmux_n0029_2_f5_41_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N457
    );
  unidadControlU_Mmux_n0029_2_f5_41_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd9_1694,
      I3 => irU_ir_out_full(16),
      O => N458
    );
  unidadControlU_Mmux_n0029_2_f5_71 : MUXF5
    port map (
      I0 => N459,
      I1 => N460,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_107_Q
    );
  unidadControlU_Mmux_n0029_2_f5_71_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N459
    );
  unidadControlU_Mmux_n0029_2_f5_71_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => irU_ir_out_full(16),
      O => N460
    );
  unidadControlU_Mmux_n0029_2_f5_91 : MUXF5
    port map (
      I0 => N461,
      I1 => N462,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_10_Q
    );
  unidadControlU_Mmux_n0029_2_f5_91_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_1607,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N461
    );
  unidadControlU_Mmux_n0029_2_f5_91_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd2_1607,
      I3 => irU_ir_out_full(16),
      O => N462
    );
  unidadControlU_Mmux_n0029_2_f5_101 : MUXF5
    port map (
      I0 => N463,
      I1 => N464,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_11_Q
    );
  unidadControlU_Mmux_n0029_2_f5_101_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd1_1490,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N463
    );
  unidadControlU_Mmux_n0029_2_f5_101_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd1_1490,
      I3 => irU_ir_out_full(16),
      O => N464
    );
  unidadControlU_Mmux_n0029_2_f5_181 : MUXF5
    port map (
      I0 => N465,
      I1 => N466,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_6_Q
    );
  unidadControlU_Mmux_n0029_2_f5_181_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N465
    );
  unidadControlU_Mmux_n0029_2_f5_181_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd14_1516,
      I3 => irU_ir_out_full(16),
      O => N466
    );
  unidadControlU_Mmux_n0029_2_f5_201 : MUXF5
    port map (
      I0 => N467,
      I1 => N468,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_8_Q
    );
  unidadControlU_Mmux_n0029_2_f5_201_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N467
    );
  unidadControlU_Mmux_n0029_2_f5_201_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd4_1655,
      I3 => irU_ir_out_full(16),
      O => N468
    );
  unidadControlU_Mmux_n0028_2_f5_01 : MUXF5
    port map (
      I0 => N469,
      I1 => N470,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_100_Q
    );
  unidadControlU_Mmux_n0028_2_f5_01_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd13_1512,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N469
    );
  unidadControlU_Mmux_n0028_2_f5_01_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd13_1512,
      I3 => irU_ir_out_full(16),
      O => N470
    );
  unidadControlU_Mmux_n0028_2_f5_110 : MUXF5
    port map (
      I0 => N471,
      I1 => N472,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_101_Q
    );
  unidadControlU_Mmux_n0028_2_f5_110_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd12_1508,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N471
    );
  unidadControlU_Mmux_n0028_2_f5_110_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd12_1508,
      I3 => irU_ir_out_full(16),
      O => N472
    );
  unidadControlU_Mmux_n0028_2_f5_22 : MUXF5
    port map (
      I0 => N473,
      I1 => N474,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_102_Q
    );
  unidadControlU_Mmux_n0028_2_f5_22_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd11_1506,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N473
    );
  unidadControlU_Mmux_n0028_2_f5_22_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      I3 => irU_ir_out_full(16),
      O => N474
    );
  unidadControlU_Mmux_n0028_2_f5_31 : MUXF5
    port map (
      I0 => N475,
      I1 => N476,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_103_Q
    );
  unidadControlU_Mmux_n0028_2_f5_31_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_1500,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N475
    );
  unidadControlU_Mmux_n0028_2_f5_31_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd10_1500,
      I3 => irU_ir_out_full(16),
      O => N476
    );
  unidadControlU_Mmux_n0028_2_f5_41 : MUXF5
    port map (
      I0 => N477,
      I1 => N478,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_104_Q
    );
  unidadControlU_Mmux_n0028_2_f5_41_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N477
    );
  unidadControlU_Mmux_n0028_2_f5_41_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd9_1694,
      I3 => irU_ir_out_full(16),
      O => N478
    );
  unidadControlU_Mmux_n0028_2_f5_61 : MUXF5
    port map (
      I0 => N479,
      I1 => N480,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_106_Q
    );
  unidadControlU_Mmux_n0028_2_f5_61_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd7_1678,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N479
    );
  unidadControlU_Mmux_n0028_2_f5_61_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd7_1678,
      I3 => irU_ir_out_full(16),
      O => N480
    );
  unidadControlU_Mmux_n0028_2_f5_71 : MUXF5
    port map (
      I0 => N481,
      I1 => N482,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_107_Q
    );
  unidadControlU_Mmux_n0028_2_f5_71_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N481
    );
  unidadControlU_Mmux_n0028_2_f5_71_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => irU_ir_out_full(16),
      O => N482
    );
  unidadControlU_Mmux_n0028_2_f5_81 : MUXF5
    port map (
      I0 => N483,
      I1 => N484,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_108_Q
    );
  unidadControlU_Mmux_n0028_2_f5_81_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd5_1668,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N483
    );
  unidadControlU_Mmux_n0028_2_f5_81_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd5_1668,
      I3 => irU_ir_out_full(16),
      O => N484
    );
  unidadControlU_Mmux_n0028_2_f5_91 : MUXF5
    port map (
      I0 => N485,
      I1 => N486,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_10_Q
    );
  unidadControlU_Mmux_n0028_2_f5_91_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_1607,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N485
    );
  unidadControlU_Mmux_n0028_2_f5_91_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd2_1607,
      I3 => irU_ir_out_full(16),
      O => N486
    );
  unidadControlU_Mmux_n0028_2_f5_101 : MUXF5
    port map (
      I0 => N487,
      I1 => N488,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_11_Q
    );
  unidadControlU_Mmux_n0028_2_f5_101_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd1_1490,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N487
    );
  unidadControlU_Mmux_n0028_2_f5_101_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd1_1490,
      I3 => irU_ir_out_full(16),
      O => N488
    );
  unidadControlU_Mmux_n0028_2_f5_181 : MUXF5
    port map (
      I0 => N489,
      I1 => N490,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_6_Q
    );
  unidadControlU_Mmux_n0028_2_f5_181_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N489
    );
  unidadControlU_Mmux_n0028_2_f5_181_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd14_1516,
      I3 => irU_ir_out_full(16),
      O => N490
    );
  unidadControlU_Mmux_n0028_2_f5_201 : MUXF5
    port map (
      I0 => N491,
      I1 => N492,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_8_Q
    );
  unidadControlU_Mmux_n0028_2_f5_201_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N491
    );
  unidadControlU_Mmux_n0028_2_f5_201_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd4_1655,
      I3 => irU_ir_out_full(16),
      O => N492
    );
  unidadControlU_Mmux_n0027_2_f5_01 : MUXF5
    port map (
      I0 => N493,
      I1 => N494,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_100_Q
    );
  unidadControlU_Mmux_n0027_2_f5_01_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd13_1512,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N493
    );
  unidadControlU_Mmux_n0027_2_f5_01_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd13_1512,
      I3 => irU_ir_out_full(16),
      O => N494
    );
  unidadControlU_Mmux_n0027_2_f5_110 : MUXF5
    port map (
      I0 => N495,
      I1 => N496,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_101_Q
    );
  unidadControlU_Mmux_n0027_2_f5_110_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd12_1508,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N495
    );
  unidadControlU_Mmux_n0027_2_f5_110_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd12_1508,
      I3 => irU_ir_out_full(16),
      O => N496
    );
  unidadControlU_Mmux_n0027_2_f5_22 : MUXF5
    port map (
      I0 => N497,
      I1 => N498,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_102_Q
    );
  unidadControlU_Mmux_n0027_2_f5_22_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd11_1506,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N497
    );
  unidadControlU_Mmux_n0027_2_f5_22_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      I3 => irU_ir_out_full(16),
      O => N498
    );
  unidadControlU_Mmux_n0027_2_f5_31 : MUXF5
    port map (
      I0 => N499,
      I1 => N500,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_103_Q
    );
  unidadControlU_Mmux_n0027_2_f5_31_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd10_1500,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N499
    );
  unidadControlU_Mmux_n0027_2_f5_31_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd10_1500,
      I3 => irU_ir_out_full(16),
      O => N500
    );
  unidadControlU_Mmux_n0027_2_f5_41 : MUXF5
    port map (
      I0 => N501,
      I1 => N502,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_104_Q
    );
  unidadControlU_Mmux_n0027_2_f5_41_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N501
    );
  unidadControlU_Mmux_n0027_2_f5_41_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd9_1694,
      I3 => irU_ir_out_full(16),
      O => N502
    );
  unidadControlU_Mmux_n0027_2_f5_51 : MUXF5
    port map (
      I0 => N503,
      I1 => N504,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_105_Q
    );
  unidadControlU_Mmux_n0027_2_f5_51_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_1680,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N503
    );
  unidadControlU_Mmux_n0027_2_f5_51_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd8_1680,
      I3 => irU_ir_out_full(16),
      O => N504
    );
  unidadControlU_Mmux_n0027_2_f5_71 : MUXF5
    port map (
      I0 => N505,
      I1 => N506,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_107_Q
    );
  unidadControlU_Mmux_n0027_2_f5_71_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd6_1676,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N505
    );
  unidadControlU_Mmux_n0027_2_f5_71_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => irU_ir_out_full(16),
      O => N506
    );
  unidadControlU_Mmux_n0027_2_f5_91 : MUXF5
    port map (
      I0 => N507,
      I1 => N508,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_10_Q
    );
  unidadControlU_Mmux_n0027_2_f5_91_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_1607,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N507
    );
  unidadControlU_Mmux_n0027_2_f5_91_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd2_1607,
      I3 => irU_ir_out_full(16),
      O => N508
    );
  unidadControlU_Mmux_n0027_2_f5_101 : MUXF5
    port map (
      I0 => N509,
      I1 => N510,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_11_Q
    );
  unidadControlU_Mmux_n0027_2_f5_101_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd1_1490,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N509
    );
  unidadControlU_Mmux_n0027_2_f5_101_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd1_1490,
      I3 => irU_ir_out_full(16),
      O => N510
    );
  unidadControlU_Mmux_n0027_2_f5_111 : MUXF5
    port map (
      I0 => N511,
      I1 => N512,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_15_Q
    );
  unidadControlU_Mmux_n0027_2_f5_111_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd23_1634,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N511
    );
  unidadControlU_Mmux_n0027_2_f5_111_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd23_1634,
      I3 => irU_ir_out_full(16),
      O => N512
    );
  unidadControlU_Mmux_n0027_2_f5_181 : MUXF5
    port map (
      I0 => N513,
      I1 => N514,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_6_Q
    );
  unidadControlU_Mmux_n0027_2_f5_181_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N513
    );
  unidadControlU_Mmux_n0027_2_f5_181_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd14_1516,
      I3 => irU_ir_out_full(16),
      O => N514
    );
  unidadControlU_Mmux_n0027_2_f5_201 : MUXF5
    port map (
      I0 => N515,
      I1 => N516,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_8_Q
    );
  unidadControlU_Mmux_n0027_2_f5_201_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N515
    );
  unidadControlU_Mmux_n0027_2_f5_201_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd4_1655,
      I3 => irU_ir_out_full(16),
      O => N516
    );
  unidadControlU_state_out_mux0000_5_19_SW0 : MUXF5
    port map (
      I0 => N517,
      I1 => N518,
      S => N115,
      O => N201
    );
  unidadControlU_state_out_mux0000_5_19_SW0_F : LUT4
    generic map(
      INIT => X"5D5F"
    )
    port map (
      I0 => unidadControlU_state_out_5_Q,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => unidadControlU_current_st_cmp_eq0021,
      O => N517
    );
  unidadControlU_state_out_mux0000_4_177_SW0 : MUXF5
    port map (
      I0 => N519,
      I1 => N520,
      S => N115,
      O => N205
    );
  unidadControlU_state_out_mux0000_4_177_SW0_F : LUT4
    generic map(
      INIT => X"5D5F"
    )
    port map (
      I0 => unidadControlU_state_out_41,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => unidadControlU_current_st_cmp_eq0021,
      O => N519
    );
  unidadControlU_state_out_mux0000_7_109_SW0 : MUXF5
    port map (
      I0 => N521,
      I1 => N522,
      S => N115,
      O => N207
    );
  unidadControlU_state_out_mux0000_7_109_SW0_F : LUT4
    generic map(
      INIT => X"5D5F"
    )
    port map (
      I0 => unidadControlU_state_out_7_Q,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => unidadControlU_current_st_cmp_eq0021,
      O => N521
    );
  unidadControlU_state_out_mux0000_9_2411 : MUXF5
    port map (
      I0 => N523,
      I1 => N524,
      S => irU_ir_out_full(17),
      O => unidadControlU_N190
    );
  unidadControlU_state_out_mux0000_9_2411_F : LUT4
    generic map(
      INIT => X"FB50"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => N136,
      I2 => unidadControlU_N1991,
      I3 => unidadControlU_Mmux_n0024_4,
      O => N523
    );
  unidadControlU_state_out_mux0000_9_2411_G : LUT4
    generic map(
      INIT => X"AFA2"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_3,
      I1 => N136,
      I2 => unidadControlU_current_st_FSM_FFd3_1428,
      I3 => unidadControlU_N1991,
      O => N524
    );
  unidadControlU_Mmux_n0024_2_f5_61 : MUXF5
    port map (
      I0 => N525,
      I1 => N526,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0024_106_Q
    );
  unidadControlU_Mmux_n0024_2_f5_61_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd7_1678,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N525
    );
  unidadControlU_Mmux_n0024_2_f5_61_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd7_1678,
      I3 => irU_ir_out_full(16),
      O => N526
    );
  unidadControlU_Mmux_n0029_2_f5_81 : MUXF5
    port map (
      I0 => N527,
      I1 => N528,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_108_Q
    );
  unidadControlU_Mmux_n0029_2_f5_81_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd5_1668,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N527
    );
  unidadControlU_Mmux_n0029_2_f5_81_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd5_1668,
      I3 => irU_ir_out_full(16),
      O => N528
    );
  unidadControlU_Mmux_n0029_2_f5_111 : MUXF5
    port map (
      I0 => N529,
      I1 => N530,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0029_15_Q
    );
  unidadControlU_Mmux_n0029_2_f5_111_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd23_1634,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N529
    );
  unidadControlU_Mmux_n0029_2_f5_111_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd23_1634,
      I3 => irU_ir_out_full(16),
      O => N530
    );
  unidadControlU_Mmux_n0028_2_f51 : MUXF5
    port map (
      I0 => N531,
      I1 => N532,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_0_Q
    );
  unidadControlU_Mmux_n0028_2_f51_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd24_1636,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N531
    );
  unidadControlU_Mmux_n0028_2_f51_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd24_1636,
      I3 => irU_ir_out_full(16),
      O => N532
    );
  unidadControlU_Mmux_n0028_2_f5_111 : MUXF5
    port map (
      I0 => N533,
      I1 => N534,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0028_15_Q
    );
  unidadControlU_Mmux_n0028_2_f5_111_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd23_1634,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N533
    );
  unidadControlU_Mmux_n0028_2_f5_111_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd23_1634,
      I3 => irU_ir_out_full(16),
      O => N534
    );
  unidadControlU_Mmux_n0027_2_f51 : MUXF5
    port map (
      I0 => N535,
      I1 => N536,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_0_Q
    );
  unidadControlU_Mmux_n0027_2_f51_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd24_1636,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N535
    );
  unidadControlU_Mmux_n0027_2_f51_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd24_1636,
      I3 => irU_ir_out_full(16),
      O => N536
    );
  unidadControlU_Mmux_n0027_2_f5_81 : MUXF5
    port map (
      I0 => N537,
      I1 => N538,
      S => irU_ir_out_full(17),
      O => unidadControlU_n0027_108_Q
    );
  unidadControlU_Mmux_n0027_2_f5_81_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd5_1668,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_n0026_or0001,
      I3 => unidadControlU_n0026_or0000,
      O => N537
    );
  unidadControlU_Mmux_n0027_2_f5_81_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd5_1668,
      I3 => irU_ir_out_full(16),
      O => N538
    );
  unidadControlU_state_out_mux0000_15_13_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd7_1678,
      I1 => unidadControlU_next_val_FSM_FFd8_1680,
      O => N539
    );
  unidadControlU_state_out_mux0000_15_13 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N5,
      I1 => unidadControlU_next_val_FSM_FFd5_1668,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => N539,
      O => unidadControlU_state_out_mux0000_15_13_1769
    );
  unidadControlU_next_val_FSM_FFd19_In22 : LUT4
    generic map(
      INIT => X"32BA"
    )
    port map (
      I0 => unidadControlU_N1621,
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      I2 => N541,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd19_In22_1602
    );
  unidadControlU_state_out_mux0000_5_123_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_current_st_FSM_FFd3_1428,
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      O => N199
    );
  unidadControlU_next_val_FSM_FFd18_In228 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_In52,
      I1 => irU_ir_out_full(20),
      I2 => unidadControlU_next_val_FSM_FFd18_In215_1578,
      I3 => N761,
      O => unidadControlU_next_val_FSM_FFd18_In228_1579
    );
  unidadControlU_next_val_FSM_FFd22_In145 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd22_In94_1633,
      I1 => unidadControlU_current_st_FSM_FFd5_1443,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => unidadControlU_next_val_FSM_FFd22_In123_1626,
      O => unidadControlU_next_val_FSM_FFd22_In145_1627
    );
  unidadControlU_next_val_FSM_FFd2_In12121 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_N59,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_N2131,
      O => unidadControlU_next_val_FSM_FFd2_In12121_1609
    );
  unidadControlU_next_val_FSM_FFd16_In31 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => unidadControlU_N254,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_N3,
      I3 => unidadControlU_next_val_FSM_FFd16_In24_1552,
      O => unidadControlU_next_val_FSM_FFd16_In31_1553
    );
  unidadControlU_state_out_mux0000_13_10 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => unidadControlU_next_val_FSM_FFd6_1676,
      I2 => unidadControlU_next_val_FSM_FFd24_1636,
      I3 => unidadControlU_state_out_mux0000_13_8_1755,
      O => unidadControlU_state_out_mux0000_13_10_1746
    );
  unidadControlU_current_st_FSM_FFd8_In26 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_current_st_FSM_FFd8_In11_1457,
      I3 => unidadControlU_current_st_FSM_FFd8_In17_1458,
      O => unidadControlU_current_st_FSM_FFd8_In26_1459
    );
  unidadControlU_current_st_FSM_FFd15_In89 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_current_st_FSM_FFd15_In82_1405,
      I2 => unidadControlU_current_st_FSM_FFd15_In57_1404,
      O => unidadControlU_current_st_FSM_FFd15_In
    );
  unidadControlU_state_out_mux0000_9_177_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd11_1506,
      I1 => unidadControlU_next_val_FSM_FFd12_1508,
      I2 => unidadControlU_next_val_FSM_FFd15_1525,
      O => N543
    );
  unidadControlU_next_val_FSM_FFd16_In130 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd11_1382,
      I1 => N545,
      I2 => irU_ir_out_full(18),
      I3 => irU_ir_out_full(23),
      O => unidadControlU_next_val_FSM_FFd16_In130_1550
    );
  unidadControlU_next_val_FSM_FFd17_In85_SW0 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => unidadControlU_N2181,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_N157,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N547
    );
  unidadControlU_next_val_FSM_FFd2_In48_SW0 : LUT4
    generic map(
      INIT => X"FCB8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_FSM_FFd3_1428,
      I3 => unidadControlU_current_st_FSM_FFd7_1450,
      O => N549
    );
  unidadControlU_next_val_FSM_FFd15_In201_SW0 : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_next_val_FSM_FFd15_In128_1529,
      I3 => N553,
      O => N291
    );
  unidadControlU_next_val_FSM_FFd13_In19 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd13_In15_1514,
      I1 => unidadControlU_N236,
      I2 => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd13_In19_1515
    );
  unidadControlU_state_out_mux0000_8_352 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_8_22_1841,
      I1 => unidadControlU_next_val_FSM_FFd10_1500,
      I2 => unidadControlU_next_val_FSM_FFd9_1694,
      I3 => unidadControlU_state_out_mux0000_8_28_1842,
      O => unidadControlU_state_out_mux0000_8_352_1854
    );
  irU_ir_out_mux0005_16_1_SW2 : LUT4
    generic map(
      INIT => X"8014"
    )
    port map (
      I0 => unidadControlU_state_out_15_Q,
      I1 => unidadControlU_state_out_12_Q,
      I2 => unidadControlU_state_out_13_Q,
      I3 => unidadControlU_state_out_14_Q,
      O => N555
    );
  lcdU_dec0_mux0008_0_93_SW0 : LUT4
    generic map(
      INIT => X"BAA2"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(3),
      I1 => lcdU_dec0_addsub0000(4),
      I2 => lcdU_dec0_addsub0000(2),
      I3 => mbrU_mbr_out_1(1),
      O => N557
    );
  lcdU_dec0_mux0008_0_93 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(6),
      I1 => lcdU_dec0_addsub0000(5),
      I2 => N557,
      O => lcdU_dec0_mux0008_0_93_729
    );
  unidadControlU_next_val_FSM_FFd15_In34 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_next_val_FSM_FFd15_1525,
      I3 => N563,
      O => unidadControlU_next_val_FSM_FFd15_In34_1538
    );
  unidadControlU_state_out_mux0000_2_18 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N72,
      I1 => unidadControlU_N16,
      I2 => unidadControlU_next_val_FSM_FFd23_1634,
      I3 => N565,
      O => unidadControlU_state_out_mux0000_2_Q
    );
  unidadControlU_next_val_FSM_FFd8_In124 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N250,
      I1 => unidadControlU_N256,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => N567,
      O => unidadControlU_next_val_FSM_FFd8_In124_1682
    );
  unidadControlU_next_val_FSM_FFd5_In61_SW0 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => unidadControlU_N157,
      I1 => unidadControlU_N2291,
      I2 => unidadControlU_N30,
      I3 => unidadControlU_next_val_FSM_FFd5_In35_1674,
      O => N569
    );
  unidadControlU_next_val_FSM_FFd5_In61 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_N237,
      I1 => N569,
      I2 => unidadControlU_state_out_or0020,
      I3 => unidadControlU_next_val_FSM_FFd5_In19_1673,
      O => unidadControlU_next_val_FSM_FFd5_In61_1675
    );
  unidadControlU_state_out_mux0000_12_15_SW0 : LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_state_out_mux0000_8_137_1838,
      I2 => N779,
      O => N571
    );
  unidadControlU_state_out_mux0000_12_15 : LUT4
    generic map(
      INIT => X"E0EE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_12_7_1743,
      I1 => unidadControlU_state_out_mux0000_12_2_1736,
      I2 => unidadControlU_N89,
      I3 => N571,
      O => unidadControlU_state_out_mux0000_12_15_1735
    );
  unidadControlU_next_val_FSM_FFd2_In99_SW0 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_N41,
      I1 => unidadControlU_N112,
      I2 => unidadControlU_next_val_FSM_FFd2_In14_1613,
      I3 => unidadControlU_next_val_FSM_FFd2_In57_1616,
      O => N573
    );
  unidadControlU_next_val_FSM_FFd2_In99 : LUT4
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_In52,
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_N247,
      I3 => N573,
      O => unidadControlU_next_val_FSM_FFd2_In99_1617
    );
  unidadControlU_next_val_FSM_FFd19_In115 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In102_1591,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_N237,
      I3 => N575,
      O => unidadControlU_next_val_FSM_FFd19_In115_1592
    );
  unidadControlU_next_val_FSM_FFd4_In97_SW0 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd11_1382,
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      I2 => N817,
      O => N583
    );
  unidadControlU_state_out_mux0000_12_150_SW1 : LUT4
    generic map(
      INIT => X"AF8D"
    )
    port map (
      I0 => unidadControlU_N89,
      I1 => unidadControlU_state_out_mux0000_12_7_1743,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      I3 => unidadControlU_state_out_mux0000_12_2_1736,
      O => N216
    );
  unidadControlU_current_st_FSM_FFd20_In1 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd20_1421,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd20_In
    );
  unidadControlU_current_st_FSM_FFd19_In1 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd19_1416,
      I2 => unidadControlU_current_st_FSM_FFd20_1421,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd19_In
    );
  unidadControlU_current_st_FSM_FFd18_In1 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd18_1414,
      I2 => unidadControlU_current_st_FSM_FFd19_1416,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd18_In
    );
  unidadControlU_current_st_FSM_FFd17_In1 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd17_1412,
      I2 => unidadControlU_current_st_FSM_FFd18_1414,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd17_In
    );
  unidadControlU_next_val_FSM_FFd15_In225_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => irU_ir_out_full(20),
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      O => N369
    );
  unidadControlU_next_val_FSM_FFd17_In130 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd17_In130_1561
    );
  unidadControlU_next_val_FSM_FFd15_In100 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N2291,
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      I3 => unidadControlU_current_st_FSM_FFd15_1399,
      O => unidadControlU_next_val_FSM_FFd15_In100_1527
    );
  unidadControlU_state_out_mux0000_6_41 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_current_st_cmp_eq0013,
      O => unidadControlU_N239
    );
  lcdU_cuenta_mux0000_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(1),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(1)
    );
  lcdU_cuenta_mux0000_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(0),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(0)
    );
  unidadControlU_current_st_FSM_FFd11_In4 : LUT4
    generic map(
      INIT => X"2FAF"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N15,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_next_val_FSM_FFd19_1589,
      O => unidadControlU_current_st_FSM_FFd11_In4_1385
    );
  unidadControlU_next_val_FSM_FFd22_In94 : LUT4
    generic map(
      INIT => X"020A"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => irU_ir_out_full(18),
      I3 => unidadControlU_next_val_FSM_FFd19_1589,
      O => unidadControlU_next_val_FSM_FFd22_In94_1633
    );
  unidadControlU_state_out_mux0000_0_117 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_state_out_0_Q,
      O => unidadControlU_state_out_mux0000_0_117_1714
    );
  unidadControlU_current_st_FSM_FFd13_In21 : LUT4
    generic map(
      INIT => X"2FAF"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N9,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_next_val_FSM_FFd19_1589,
      O => unidadControlU_current_st_FSM_N27
    );
  unidadControlU_current_st_FSM_FFd5_In20 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_next_val_FSM_FFd19_1589,
      O => unidadControlU_current_st_FSM_FFd5_In20_1445
    );
  lcdU_cuenta_mux0000_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(2),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(2)
    );
  lcdU_cuenta_mux0000_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(3),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(3)
    );
  unidadControlU_current_st_FSM_FFd11_In41 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd11_In4_1385,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => N599,
      I3 => unidadControlU_current_st_FSM_FFd8_In80_1462,
      O => unidadControlU_current_st_FSM_FFd11_In
    );
  unidadControlU_current_st_FSM_FFd14_In2_SW1 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N2,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_current_st_cmp_eq0020,
      I3 => unidadControlU_current_st_FSM_N22,
      O => N601
    );
  unidadControlU_current_st_FSM_FFd14_In2 : LUT4
    generic map(
      INIT => X"2FAF"
    )
    port map (
      I0 => N601,
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_N961
    );
  unidadControlU_state_out_mux0000_10_98 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => N281,
      I2 => unidadControlU_N2121,
      I3 => unidadControlU_state_out_mux0000_9_76_1923,
      O => unidadControlU_state_out_mux0000_10_98_1732
    );
  unidadControlU_state_out_mux0000_9_131_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_N1351,
      I1 => unidadControlU_current_st_FSM_N18,
      I2 => unidadControlU_current_st_cmp_eq0021,
      O => N605
    );
  unidadControlU_state_out_mux0000_9_131 : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => N605,
      O => unidadControlU_state_out_mux0000_9_131_1876
    );
  unidadControlU_current_st_FSM_FFd8_In82_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N2,
      I1 => unidadControlU_current_st_FSM_FFd9_1465,
      I2 => unidadControlU_current_st_cmp_eq0014,
      I3 => unidadControlU_current_st_FSM_FFd2_1418,
      O => N607
    );
  unidadControlU_current_st_FSM_FFd8_In82 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I2 => unidadControlU_current_st_FSM_FFd8_In66_1460,
      I3 => N607,
      O => unidadControlU_current_st_FSM_FFd8_In82_1463
    );
  unidadControlU_next_val_FSM_FFd18_In250 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => unidadControlU_current_st_FSM_FFd8_1455,
      O => unidadControlU_next_val_FSM_FFd18_In250_1580
    );
  unidadControlU_state_out_mux0000_9_714_SW0_G : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => unidadControlU_cMemory_mux0000_9_wg_cy_5_Q_1370,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      O => N378
    );
  unidadControlU_current_st_FSM_FFd8_In11 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_current_st_FSM_FFd8_In11_1457
    );
  unidadControlU_current_st_FSM_FFd8_In17 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => irU_ir_out_full(16),
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_current_st_FSM_FFd8_In17_1458
    );
  unidadControlU_next_val_FSM_FFd18_In15 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => unidadControlU_N240,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd18_In15_1574
    );
  unidadControlU_state_out_mux0000_8_2_SW2 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_state_out_8_Q,
      I2 => unidadControlU_current_st_cmp_eq0019,
      O => N171
    );
  unidadControlU_next_val_FSM_FFd14_In71 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_FSM_N2,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd14_In71_1523
    );
  unidadControlU_next_val_FSM_FFd22_In173 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd18_1414,
      I1 => unidadControlU_current_st_FSM_FFd19_1416,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      I3 => unidadControlU_current_st_FSM_FFd17_1412,
      O => unidadControlU_next_val_FSM_FFd22_In173_1628
    );
  unidadControlU_next_val_FSM_FFd19_In207 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd18_1414,
      I1 => unidadControlU_current_st_FSM_FFd19_1416,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      I3 => unidadControlU_current_st_FSM_FFd20_1421,
      O => unidadControlU_next_val_FSM_FFd19_In207_1601
    );
  unidadControlU_next_val_FSM_FFd5_In128 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_cmp_eq0009,
      I2 => unidadControlU_current_st_FSM_FFd10_1380,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd5_In128_1671
    );
  lcdU_cuenta_mux0000_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(5),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(5)
    );
  unidadControlU_state_out_mux0000_8_2_SW1 : LUT4
    generic map(
      INIT => X"1B1F"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_state_out_8_Q,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => unidadControlU_current_st_cmp_eq0021,
      O => N170
    );
  lcdU_cuenta_mux0000_7_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(7),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(7)
    );
  lcdU_cuenta_mux0000_8_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(8),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(8)
    );
  lcdU_cuenta_mux0000_9_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(9),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(9)
    );
  lcdU_cuenta_mux0000_14_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(14),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(14)
    );
  lcdU_cuenta_mux0000_15_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(15),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(15)
    );
  unidadControlU_state_out_mux0000_10_3 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => unidadControlU_N2271,
      I1 => unidadControlU_next_val_FSM_FFd8_In52,
      I2 => irU_ir_out_full(20),
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_state_out_mux0000_10_3_1728
    );
  unidadControlU_current_st_FSM_FFd7_In31 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => unidadControlU_current_st_FSM_N2,
      I2 => unidadControlU_current_st_FSM_FFd8_In80_1462,
      I3 => unidadControlU_current_st_FSM_FFd7_In21_1454,
      O => unidadControlU_current_st_FSM_FFd7_In
    );
  unidadControlU_next_val_FSM_FFd4_In29 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N2291,
      I1 => irU_ir_out_full(23),
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_current_st_FSM_FFd14_1396,
      O => unidadControlU_next_val_FSM_FFd4_In29_1665
    );
  unidadControlU_next_val_FSM_FFd24_In91 : LUT4
    generic map(
      INIT => X"0028"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(20),
      I3 => unidadControlU_current_st_FSM_FFd1_1377,
      O => unidadControlU_next_val_FSM_FFd24_In91_1645
    );
  unidadControlU_state_out_mux0000_8_2_SW3 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N2271,
      I1 => unidadControlU_next_val_FSM_FFd8_In52,
      I2 => irU_ir_out_full(20),
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N173
    );
  unidadControlU_next_val_FSM_FFd18_In167 : LUT4
    generic map(
      INIT => X"01AB"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd18_In167_1575
    );
  unidadControlU_next_val_FSM_FFd1_In82 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_next_val_FSM_FFd1_In71_1499,
      O => unidadControlU_next_val_FSM_FFd1_In
    );
  unidadControlU_next_val_FSM_FFd15_In5531 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => N806,
      I3 => irU_ir_out_full(16),
      O => unidadControlU_N228
    );
  unidadControlU_next_val_FSM_FFd15_In80 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_N2411,
      I3 => unidadControlU_next_val_FSM_FFd15_1525,
      O => unidadControlU_next_val_FSM_FFd15_In80_1545
    );
  unidadControlU_current_st_FSM_FFd7_In14 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_current_st_FSM_FFd7_In11_1452,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_current_st_FSM_FFd7_In14_1453
    );
  mbrU_mbr_ir_out_mux0002_8_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_8_Q,
      I3 => mbrU_mbr_ir_out_8_Q,
      O => mbrU_mbr_ir_out_mux0002_8_Q
    );
  mbrU_mbr_ir_out_mux0002_23_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_23_Q,
      I3 => mbrU_mbr_ir_out_23_Q,
      O => mbrU_mbr_ir_out_mux0002_23_Q
    );
  mbrU_mbr_ir_out_mux0002_22_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_22_Q,
      I3 => mbrU_mbr_ir_out_22_Q,
      O => mbrU_mbr_ir_out_mux0002_22_Q
    );
  mbrU_mbr_ir_out_mux0002_21_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_21_Q,
      I3 => mbrU_mbr_ir_out_21_Q,
      O => mbrU_mbr_ir_out_mux0002_21_Q
    );
  mbrU_mbr_ir_out_mux0002_20_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_20_Q,
      I3 => mbrU_mbr_ir_out_20_Q,
      O => mbrU_mbr_ir_out_mux0002_20_Q
    );
  mbrU_mbr_ir_out_mux0002_19_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_19_Q,
      I3 => mbrU_mbr_ir_out_19_Q,
      O => mbrU_mbr_ir_out_mux0002_19_Q
    );
  mbrU_mbr_ir_out_mux0002_18_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_18_Q,
      I3 => mbrU_mbr_ir_out_18_Q,
      O => mbrU_mbr_ir_out_mux0002_18_Q
    );
  mbrU_mbr_ir_out_mux0002_17_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_17_Q,
      I3 => mbrU_mbr_ir_out_17_Q,
      O => mbrU_mbr_ir_out_mux0002_17_Q
    );
  mbrU_mbr_ir_out_mux0002_16_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_16_Q,
      I3 => mbrU_mbr_ir_out_16_Q,
      O => mbrU_mbr_ir_out_mux0002_16_Q
    );
  mbrU_mbr_ir_out_mux0002_15_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => mbrU_mbr_value_15_Q,
      I3 => mbrU_mbr_ir_out_15_Q,
      O => mbrU_mbr_ir_out_mux0002_15_Q
    );
  irU_ir_out_full_mux0002_23_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_23_Q,
      I3 => irU_ir_out_full(23),
      O => irU_ir_out_full_mux0002(23)
    );
  irU_ir_out_full_mux0002_22_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_22_Q,
      I3 => irU_ir_out_full(22),
      O => irU_ir_out_full_mux0002(22)
    );
  irU_ir_out_full_mux0002_21_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_21_Q,
      I3 => irU_ir_out_full(21),
      O => irU_ir_out_full_mux0002(21)
    );
  irU_ir_out_full_mux0002_20_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_20_Q,
      I3 => irU_ir_out_full(20),
      O => irU_ir_out_full_mux0002(20)
    );
  irU_ir_out_full_mux0002_19_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_19_Q,
      I3 => irU_ir_out_full(19),
      O => irU_ir_out_full_mux0002(19)
    );
  irU_ir_out_full_mux0002_18_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_18_Q,
      I3 => irU_ir_out_full(18),
      O => irU_ir_out_full_mux0002(18)
    );
  irU_ir_out_full_mux0002_17_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_17_Q,
      I3 => irU_ir_out_full(17),
      O => irU_ir_out_full_mux0002(17)
    );
  irU_ir_out_full_mux0002_16_1 : LUT4
    generic map(
      INIT => X"FD20"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => irU_ir_value_16_Q,
      I3 => irU_ir_out_full(16),
      O => irU_ir_out_full_mux0002(16)
    );
  lcdU_cuenta_mux0000_16_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => lcdU_cuenta_addsub0000(16),
      I1 => lcdU_Mcompar_cuenta_cmp_lt0000_cy(6),
      O => lcdU_cuenta_mux0000(16)
    );
  unidadControlU_n0008_4_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_current_st_FSM_FFd5_1443,
      I2 => irU_ir_out_full(17),
      O => N88
    );
  unidadControlU_state_out_mux0000_9_657 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_9_657_1919
    );
  unidadControlU_current_st_FSM_FFd21_In5 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0021,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_next_val_FSM_FFd19_1589,
      I3 => unidadControlU_current_st_cmp_eq0019,
      O => unidadControlU_current_st_FSM_FFd21_In5_1427
    );
  unidadControlU_next_val_FSM_FFd4_In133 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_next_val_FSM_FFd4_In131,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd4_In133_1662
    );
  unidadControlU_next_val_FSM_FFd8_In183 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_next_val_FSM_FFd8_In182_1687,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd8_In183_1688
    );
  unidadControlU_state_out_mux0000_9_211_SW0 : LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      I0 => unidadControlU_N29,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => N809,
      O => N609
    );
  unidadControlU_next_val_FSM_FFd16_In89_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd9_1465,
      O => N611
    );
  unidadControlU_state_out_mux0000_13_111293_SW1 : LUT4
    generic map(
      INIT => X"AFAE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_13_111230_1748,
      I1 => unidadControlU_N2,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => N615,
      O => N157
    );
  unidadControlU_state_out_mux0000_9_52_SW0 : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => N617,
      I2 => unidadControlU_N11,
      I3 => unidadControlU_state_out_mux0000_9_191_1880,
      O => N258
    );
  unidadControlU_next_val_FSM_FFd15_In135 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd2_1418,
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd15_In135_1530
    );
  unidadControlU_next_val_FSM_FFd19_In80 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N212,
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_N240,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      O => unidadControlU_next_val_FSM_FFd19_In80_1606
    );
  unidadControlU_next_val_FSM_FFd15_In2 : LUT4
    generic map(
      INIT => X"0880"
    )
    port map (
      I0 => unidadControlU_N254,
      I1 => unidadControlU_current_st_FSM_FFd9_1465,
      I2 => irU_ir_out_full(22),
      I3 => unidadControlU_N134,
      O => unidadControlU_next_val_FSM_FFd15_In2_1532
    );
  unidadControlU_next_val_FSM_FFd5_In19 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => irU_ir_out_full(23),
      I2 => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd5_In19_1673
    );
  unidadControlU_next_val_FSM_FFd15_In375 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd2_1418,
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(20),
      I3 => irU_ir_out_full(21),
      O => unidadControlU_next_val_FSM_FFd15_In375_1541
    );
  unidadControlU_current_st_FSM_FFd1_In12_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N2,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_current_st_cmp_eq0014,
      I3 => unidadControlU_next_val_FSM_FFd14_In9,
      O => N619
    );
  unidadControlU_current_st_FSM_FFd1_In12 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => N619,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N240,
      O => unidadControlU_current_st_FSM_FFd1_In12_1379
    );
  unidadControlU_next_val_FSM_FFd24_In148 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_N2191,
      I3 => unidadControlU_N252,
      O => unidadControlU_next_val_FSM_FFd24_In148_1639
    );
  unidadControlU_next_val_FSM_FFd15_In41 : LUT4
    generic map(
      INIT => X"8797"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(22),
      I3 => irU_ir_out_full(19),
      O => unidadControlU_N59
    );
  unidadControlU_next_val_FSM_FFd15_In541311 : LUT4
    generic map(
      INIT => X"8901"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(19),
      I3 => irU_ir_out_full(22),
      O => unidadControlU_N1681
    );
  unidadControlU_next_val_FSM_FFd15_In21 : LUT4
    generic map(
      INIT => X"AEBE"
    )
    port map (
      I0 => unidadControlU_N226,
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_N112,
      I3 => irU_ir_out_full(23),
      O => unidadControlU_N17
    );
  unidadControlU_next_val_FSM_FFd4_In14 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => unidadControlU_N231,
      I2 => irU_ir_out_full(23),
      I3 => unidadControlU_N226,
      O => unidadControlU_next_val_FSM_FFd4_In14_1663
    );
  lcdU_Msub_dec0_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"999D"
    )
    port map (
      I0 => mbrU_mbr_out_1(3),
      I1 => N125,
      I2 => mbrU_mbr_out_1(4),
      I3 => mbrU_mbr_out_1(5),
      O => lcdU_Msub_dec0_addsub0000_lut(3)
    );
  lcdU_Msub_unidades_lut_3_SW0 : LUT4
    generic map(
      INIT => X"C369"
    )
    port map (
      I0 => lcdU_centenas(0),
      I1 => mbrU_mbr_out_1(3),
      I2 => lcdU_Mmult_valor_completo_mult0001_Madd_lut(7),
      I3 => mbrU_mbr_out_1(2),
      O => N123
    );
  lcdU_DB_3_93 : LUT4
    generic map(
      INIT => X"C369"
    )
    port map (
      I0 => lcdU_N0,
      I1 => N123,
      I2 => N627,
      I3 => lcdU_decenas_3_Q,
      O => lcdU_DB_3_93_580
    );
  mbrU_mbr_out_1_not00011 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => unidadControlU_state_out_10_Q,
      O => irU_ir_out_full_not0001
    );
  unidadControlU_state_out_mux0000_3_21111 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N2,
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_N233,
      I3 => unidadControlU_current_st_cmp_eq0009,
      O => unidadControlU_N1351
    );
  unidadControlU_next_val_FSM_FFd12_In121 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(22),
      I2 => irU_ir_out_full(21),
      O => unidadControlU_N236
    );
  unidadControlU_current_st_cmp_eq00191 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N249,
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(19),
      I3 => irU_ir_out_full(20),
      O => unidadControlU_current_st_cmp_eq0019
    );
  mbrMuxInU_aux_mbr_in_23_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_23_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_23_and0001
    );
  mbrMuxInU_aux_mbr_in_23_and00001 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_23_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_23_and0000
    );
  mbrMuxInU_aux_mbr_in_22_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_22_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_22_and0001
    );
  mbrMuxInU_aux_mbr_in_22_and00001 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_22_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_22_and0000
    );
  mbrMuxInU_aux_mbr_in_21_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_21_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_21_and0001
    );
  mbrMuxInU_aux_mbr_in_21_and00001 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_21_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_21_and0000
    );
  mbrMuxInU_aux_mbr_in_20_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_20_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_20_and0001
    );
  mbrMuxInU_aux_mbr_in_20_and00001 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_20_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_20_and0000
    );
  mbrMuxInU_aux_mbr_in_19_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_19_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_19_and0001
    );
  mbrMuxInU_aux_mbr_in_19_and00001 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_19_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_19_and0000
    );
  mbrMuxInU_aux_mbr_in_18_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_18_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_18_and0001
    );
  mbrMuxInU_aux_mbr_in_18_and00001 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_18_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_18_and0000
    );
  mbrMuxInU_aux_mbr_in_17_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_17_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_17_and0001
    );
  mbrMuxInU_aux_mbr_in_17_and00001 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_17_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_17_and0000
    );
  mbrMuxInU_aux_mbr_in_16_and00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => mbrMuxInU_aux_mbr_in_16_mux0004,
      I1 => unidadControlU_state_out_5_Q,
      I2 => unidadControlU_state_out_31,
      I3 => unidadControlU_state_out_0_Q,
      O => mbrMuxInU_aux_mbr_in_16_and0001
    );
  mbrMuxInU_aux_mbr_in_16_and00002 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => mbrMuxInU_aux_mbr_in_16_mux0004,
      I2 => unidadControlU_state_out_0_Q,
      I3 => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_16_and0000
    );
  unidadControlU_next_val_FSM_FFd18_In161 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(22),
      I3 => irU_ir_out_full(20),
      O => unidadControlU_N240
    );
  unidadControlU_next_val_FSM_FFd16_In1111 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_N17,
      I3 => irU_ir_out_full(17),
      O => unidadControlU_N220
    );
  unidadControlU_next_val_FSM_FFd10_In21 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(20),
      I3 => irU_ir_out_full(22),
      O => unidadControlU_N32
    );
  unidadControlU_current_st_FSM_FFd12_In111 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_In9,
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_N233,
      I3 => unidadControlU_current_st_FSM_N18,
      O => unidadControlU_current_st_FSM_N22
    );
  mbrU_mbr_out_1_mux0003_16_1_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => unidadControlU_state_out_12_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => unidadControlU_state_out_10_Q,
      O => N2
    );
  irU_ir_out_mux0005_16_2_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => unidadControlU_state_out_12_Q,
      I1 => unidadControlU_state_out_10_Q,
      I2 => unidadControlU_state_out_9_Q,
      O => N6
    );
  unidadControlU_current_st_FSM_FFd15_In3_SW0 : LUT4
    generic map(
      INIT => X"0105"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_N233,
      O => N27
    );
  unidadControlU_current_st_FSM_FFd15_In25 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N2291,
      I1 => irU_ir_out_full(23),
      I2 => irU_ir_out_full(19),
      I3 => irU_ir_out_full(17),
      O => unidadControlU_current_st_FSM_FFd15_In25_1402
    );
  unidadControlU_current_st_FSM_FFd4_In37_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_current_st_cmp_eq0019,
      I2 => unidadControlU_current_st_cmp_eq0021,
      O => N629
    );
  unidadControlU_current_st_FSM_FFd4_In37 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd4_In24_1437,
      I1 => unidadControlU_current_st_FSM_FFd4_In8_1440,
      I2 => unidadControlU_current_st_FSM_N18,
      I3 => N629,
      O => unidadControlU_current_st_FSM_FFd4_In37_1438
    );
  unidadControlU_next_val_FSM_FFd4_In21_SW1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In12312,
      I1 => unidadControlU_next_val_FSM_FFd19_In12349_1597,
      I2 => unidadControlU_N232,
      O => unidadControlU_next_val_FSM_FFd14_In1
    );
  unidadControlU_next_val_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_N2291,
      I3 => irU_ir_out_full(18),
      O => unidadControlU_next_val_FSM_FFd4_In1_1657
    );
  unidadControlU_next_val_FSM_FFd22_In102 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N2,
      I1 => irU_ir_out_full(16),
      I2 => irU_ir_out_full(17),
      I3 => unidadControlU_current_st_cmp_eq0009,
      O => unidadControlU_next_val_FSM_FFd22_In102_1624
    );
  unidadControlU_next_val_FSM_FFd19_In50 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_next_val_FSM_FFd19_In12312,
      I2 => unidadControlU_next_val_FSM_FFd19_In12349_1597,
      I3 => unidadControlU_N233,
      O => unidadControlU_next_val_FSM_FFd19_In50_1603
    );
  unidadControlU_next_val_FSM_FFd19_In59 : LUT4
    generic map(
      INIT => X"F2FA"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In50_1603,
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_current_st_cmp_eq0018,
      I3 => unidadControlU_N240,
      O => unidadControlU_next_val_FSM_FFd19_In59_1604
    );
  unidadControlU_next_val_FSM_FFd17_In1322 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(21),
      I3 => irU_ir_out_full(22),
      O => unidadControlU_next_val_FSM_FFd17_In1322_1562
    );
  lcdU_Msub_unidades_lut_2_1 : LUT4
    generic map(
      INIT => X"C369"
    )
    port map (
      I0 => lcdU_N11,
      I1 => lcdU_centenas(0),
      I2 => mbrU_mbr_out_1(2),
      I3 => lcdU_decenas_3_Q,
      O => lcdU_Msub_unidades_lut(2)
    );
  unidadControlU_state_out_mux0000_13_1_SW0 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => unidadControlU_N2271,
      I1 => unidadControlU_next_val_FSM_FFd8_In52,
      I2 => irU_ir_out_full(20),
      I3 => unidadControlU_current_st_cmp_eq0019,
      O => unidadControlU_next_val_FSM_FFd14_In9
    );
  unidadControlU_state_out_mux0000_8_1111_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_N112,
      I3 => irU_ir_out_full(23),
      O => N350
    );
  unidadControlU_state_out_mux0000_5_140_SW1_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_N112,
      I3 => irU_ir_out_full(23),
      O => N390
    );
  unidadControlU_state_out_mux0000_9_714_SW0_F_SW0 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_state_out_9_Q,
      I1 => N826,
      I2 => unidadControlU_N2291,
      I3 => unidadControlU_N89,
      O => N631
    );
  unidadControlU_state_out_mux0000_9_714_SW0_F : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => N631,
      I2 => irU_ir_out_full(23),
      I3 => unidadControlU_state_out_mux0000_9_2_1881,
      O => N377
    );
  unidadControlU_next_val_FSM_FFd18_In107_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd18_1569,
      I1 => unidadControlU_N226,
      I2 => unidadControlU_next_val_FSM_FFd18_In84_1587,
      I3 => unidadControlU_next_val_FSM_FFd18_In66_1586,
      O => N633
    );
  unidadControlU_next_val_FSM_FFd18_In107 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd18_In53_1583,
      I1 => irU_ir_out_full(22),
      I2 => irU_ir_out_full(23),
      I3 => N633,
      O => unidadControlU_next_val_FSM_FFd18_In107_1571
    );
  unidadControlU_next_val_FSM_FFd16_In24_SW0 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_next_val_FSM_FFd16_In13_1549,
      I2 => irU_ir_out_full(19),
      O => N635
    );
  unidadControlU_state_out_mux0000_0_15 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N16,
      I1 => unidadControlU_next_val_FSM_FFd16_1547,
      I2 => unidadControlU_next_val_FSM_FFd4_1655,
      I3 => N637,
      O => unidadControlU_state_out_mux0000_0_15_1715
    );
  unidadControlU_next_val_FSM_FFd17_In39 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd13_1394,
      I1 => unidadControlU_N17,
      I2 => N639,
      I3 => irU_ir_out_full(19),
      O => unidadControlU_next_val_FSM_FFd17_In39_1565
    );
  unidadControlU_state_out_mux0000_3_2111 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_N1351,
      I2 => unidadControlU_current_st_FSM_N18,
      I3 => N828,
      O => unidadControlU_state_out_mux0000_3_2111_1785
    );
  lcdU_dec0_mux0008_1_156 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(6),
      I1 => lcdU_dec0_addsub0000(7),
      I2 => N643,
      O => lcdU_N11
    );
  unidadControlU_state_out_mux0000_8_314_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd13_1512,
      I1 => unidadControlU_next_val_FSM_FFd5_1668,
      I2 => unidadControlU_next_val_FSM_FFd7_1678,
      I3 => unidadControlU_next_val_FSM_FFd9_1694,
      O => N645
    );
  unidadControlU_state_out_mux0000_8_314 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => unidadControlU_N5,
      I1 => unidadControlU_N227,
      I2 => unidadControlU_next_val_FSM_FFd11_1506,
      I3 => N645,
      O => unidadControlU_state_out_mux0000_8_314_1849
    );
  unidadControlU_next_val_FSM_FFd15_In250_SW0 : LUT4
    generic map(
      INIT => X"08AA"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(19),
      I2 => N647,
      I3 => N369,
      O => N339
    );
  unidadControlU_next_val_FSM_FFd16_In161 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_N17,
      I2 => N649,
      I3 => unidadControlU_next_val_FSM_FFd16_In130_1550,
      O => unidadControlU_next_val_FSM_FFd16_In161_1551
    );
  unidadControlU_state_out_mux0000_6_0 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0019,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_N89,
      I3 => unidadControlU_current_st_FSM_FFd21_1423,
      O => unidadControlU_state_out_mux0000_6_0_1810
    );
  unidadControlU_current_st_FSM_FFd2_In26_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_N233,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => N651
    );
  unidadControlU_current_st_FSM_FFd2_In26 : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd2_1418,
      I1 => unidadControlU_current_st_FSM_FFd2_In8_1420,
      I2 => activar_cpu_IBUF_498,
      I3 => N651,
      O => unidadControlU_current_st_FSM_FFd2_In
    );
  unidadControlU_next_val_FSM_FFd19_In22_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_next_val_FSM_FFd14_In9,
      I2 => unidadControlU_current_st_FSM_FFd1_1377,
      I3 => unidadControlU_current_st_FSM_N18,
      O => N541
    );
  unidadControlU_next_val_FSM_FFd1_In22_SW1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => unidadControlU_N226,
      I1 => irU_ir_out_full(23),
      I2 => irU_ir_out_full(22),
      I3 => unidadControlU_N215,
      O => N285
    );
  unidadControlU_current_st_FSM_FFd11_In41_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => unidadControlU_current_st_cmp_eq0009,
      I2 => unidadControlU_N2,
      I3 => unidadControlU_current_st_FSM_FFd11_In21_1384,
      O => N599
    );
  unidadControlU_state_out_mux0000_9_491 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_N240,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      O => unidadControlU_N1871
    );
  irU_ir_out_mux0005_23_Q : LUT4
    generic map(
      INIT => X"F2FA"
    )
    port map (
      I0 => irU_ir_out(7),
      I1 => irU_ir_out_full_and0000,
      I2 => N31,
      I3 => N555,
      O => irU_ir_out_mux0005(23)
    );
  irU_ir_out_mux0005_16_Q : LUT4
    generic map(
      INIT => X"F2FA"
    )
    port map (
      I0 => irU_ir_out(0),
      I1 => irU_ir_out_full_and0000,
      I2 => N33,
      I3 => N555,
      O => irU_ir_out_mux0005(16)
    );
  unidadControlU_current_st_FSM_FFd14_In19_SW0 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_current_st_FSM_FFd13_1394,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_current_st_FSM_FFd14_In6_1398,
      O => N653
    );
  unidadControlU_current_st_FSM_FFd14_In19 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_N961,
      I2 => N653,
      I3 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      O => unidadControlU_current_st_FSM_FFd14_In
    );
  unidadControlU_state_out_mux0000_3_20_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => N641,
      I1 => unidadControlU_N1351,
      I2 => unidadControlU_current_st_FSM_N18,
      I3 => unidadControlU_current_st_cmp_eq0019,
      O => N657
    );
  unidadControlU_state_out_mux0000_3_20 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => N657,
      I2 => unidadControlU_N5,
      I3 => N613,
      O => unidadControlU_state_out_mux0000_3_20_1784
    );
  unidadControlU_next_val_FSM_FFd4_In152_SW0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_1655,
      I1 => unidadControlU_N51,
      I2 => unidadControlU_next_val_FSM_FFd4_In53_1666,
      I3 => unidadControlU_next_val_FSM_FFd4_In97_1667,
      O => N659
    );
  unidadControlU_next_val_FSM_FFd4_In152 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_In133_1662,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      I3 => N659,
      O => unidadControlU_next_val_FSM_FFd4_In
    );
  unidadControlU_next_val_FSM_FFd16_In211 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd16_In31_1553,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_current_st_FSM_FFd21_1423,
      I3 => N661,
      O => unidadControlU_next_val_FSM_FFd16_In
    );
  unidadControlU_state_out_mux0000_9_52_SW0_SW0 : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_N2,
      I2 => unidadControlU_current_st_FSM_FFd5_1443,
      I3 => unidadControlU_N158,
      O => N617
    );
  unidadControlU_next_val_FSM_FFd19_In115_SW0_SW0 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => unidadControlU_N249,
      I2 => irU_ir_out_full(21),
      I3 => irU_ir_out_full(19),
      O => N663
    );
  unidadControlU_next_val_FSM_FFd15_In414_SW0_SW0 : LUT4
    generic map(
      INIT => X"FF47"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_FSM_FFd11_1382,
      O => N665
    );
  unidadControlU_next_val_FSM_FFd15_In414_SW0 : LUT4
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_current_st_FSM_FFd9_1465,
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      I3 => N665,
      O => N551
    );
  unidadControlU_current_st_FSM_N181 : LUT4
    generic map(
      INIT => X"3060"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_N249,
      I3 => irU_ir_out_full(19),
      O => unidadControlU_current_st_FSM_N18
    );
  lcdU_Msub_dec0_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => mbrU_mbr_out_1(7),
      I1 => lcdU_Mmult_valor_completo_mult0001_Madd_lut(7),
      O => lcdU_Msub_dec0_addsub0000_lut(7)
    );
  unidadControlU_next_val_FSM_FFd19_In12349 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In12345_1596,
      I1 => N671,
      I2 => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd19_In12349_1597
    );
  lcdU_Msub_dec0_addsub0000_lut_6_Q : LUT4
    generic map(
      INIT => X"AAA7"
    )
    port map (
      I0 => mbrU_mbr_out_1(6),
      I1 => N133,
      I2 => lcdU_Mmult_valor_completo_mult0001_Madd_lut(7),
      I3 => mbrU_mbr_out_1(7),
      O => lcdU_Msub_dec0_addsub0000_lut(6)
    );
  unidadControlU_next_val_FSM_FFd8_In135 : LUT4
    generic map(
      INIT => X"2272"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N252,
      I2 => unidadControlU_N226,
      I3 => irU_ir_out_full(22),
      O => unidadControlU_next_val_FSM_FFd8_In135_1684
    );
  unidadControlU_next_val_FSM_FFd24_In211 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(23),
      I2 => irU_ir_out_full(19),
      I3 => irU_ir_out_full(20),
      O => unidadControlU_N233
    );
  unidadControlU_next_val_FSM_FFd2_In141 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(22),
      O => unidadControlU_N2291
    );
  unidadControlU_next_val_FSM_FFd15_In5431 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N2191,
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(19),
      I3 => irU_ir_out_full(21),
      O => unidadControlU_N217
    );
  unidadControlU_next_val_FSM_FFd15_In411 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(21),
      O => unidadControlU_N2201
    );
  unidadControlU_current_st_FSM_FFd5_In11 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N226,
      I2 => irU_ir_out_full(22),
      I3 => irU_ir_out_full(17),
      O => unidadControlU_N242
    );
  unidadControlU_next_val_FSM_FFd15_In11 : LUT4
    generic map(
      INIT => X"9596"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(20),
      I3 => irU_ir_out_full(19),
      O => unidadControlU_N3
    );
  unidadControlU_current_st_FSM_FFd3_In11_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N18,
      I1 => unidadControlU_current_st_cmp_eq0009,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => unidadControlU_current_st_cmp_eq0021,
      O => N673
    );
  unidadControlU_current_st_FSM_FFd3_In11 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N2,
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_N240,
      I3 => N673,
      O => unidadControlU_current_st_FSM_N28
    );
  unidadControlU_next_val_FSM_FFd18_In256 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => unidadControlU_current_st_FSM_FFd13_1394,
      I2 => unidadControlU_current_st_FSM_FFd9_1465,
      I3 => N675,
      O => unidadControlU_next_val_FSM_FFd18_In256_1581
    );
  unidadControlU_next_val_FSM_FFd15_In201_SW0_SW0_SW0 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_next_val_FSM_FFd15_In142_1531,
      O => N677
    );
  unidadControlU_current_st_FSM_FFd6_In24_SW0 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => irU_ir_out_full(16),
      I2 => N831,
      I3 => irU_ir_out_full(17),
      O => N679
    );
  unidadControlU_current_st_FSM_FFd6_In24 : LUT4
    generic map(
      INIT => X"FAF2"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd6_1447,
      I1 => activar_cpu_IBUF_498,
      I2 => N679,
      I3 => unidadControlU_current_st_FSM_FFd6_In5_1449,
      O => unidadControlU_current_st_FSM_FFd6_In
    );
  unidadControlU_current_st_FSM_FFd8_In80 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_current_st_FSM_FFd8_In80_1462
    );
  unidadControlU_N2301 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_N230
    );
  unidadControlU_next_val_FSM_FFd19_In12349_SW0 : LUT4
    generic map(
      INIT => X"0018"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(22),
      I3 => irU_ir_out_full(23),
      O => N671
    );
  unidadControlU_current_st_cmp_eq000711 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(22),
      I2 => irU_ir_out_full(23),
      O => unidadControlU_N234
    );
  unidadControlU_current_st_cmp_eq00211 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_next_val_FSM_FFd8_In52,
      I3 => irU_ir_out_full(20),
      O => unidadControlU_current_st_cmp_eq0021
    );
  unidadControlU_next_val_FSM_FFd19_In12359 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => N671,
      I1 => unidadControlU_next_val_FSM_FFd19_In12345_1596,
      I2 => unidadControlU_next_val_FSM_FFd19_In12312,
      I3 => irU_ir_out_full(20),
      O => unidadControlU_N248
    );
  irU_ir_out_mux0005_16_1 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => unidadControlU_state_out_9_Q,
      I2 => N555,
      O => irU_N01
    );
  lcdU_dec0_mux0008_1_156_SW0 : LUT4
    generic map(
      INIT => X"C462"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(5),
      I1 => lcdU_dec0_addsub0000(4),
      I2 => lcdU_dec0_addsub0000(2),
      I3 => lcdU_dec0_addsub0000(3),
      O => N643
    );
  unidadControlU_current_st_FSM_FFd16_In139_SW1 : LUT4
    generic map(
      INIT => X"F71F"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(22),
      I3 => irU_ir_out_full(21),
      O => N683
    );
  unidadControlU_current_st_FSM_FFd16_In139 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_In135_1408,
      I1 => irU_ir_out_full(23),
      I2 => N683,
      O => unidadControlU_N232
    );
  unidadControlU_current_st_FSM_N21 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N226,
      I2 => irU_ir_out_full(22),
      I3 => unidadControlU_N2,
      O => unidadControlU_current_st_FSM_N2
    );
  unidadControlU_current_st_FSM_FFd8_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd8_In,
      Q => unidadControlU_current_st_FSM_FFd8_1_1464
    );
  unidadControlU_current_st_FSM_FFd4_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd4_In,
      Q => unidadControlU_current_st_FSM_FFd4_1_1442
    );
  unidadControlU_current_st_FSM_FFd12_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_500,
      CE => unidadControlU_current_st_FSM_FFd8_In80_1462,
      D => unidadControlU_current_st_FSM_FFd12_In,
      Q => unidadControlU_current_st_FSM_FFd12_1_1393
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_500
    );
  lcdU_E_BUFG : BUFG
    port map (
      I => lcdU_E1,
      O => lcdU_E_583
    );
  registersU_d_value_not0000_BUFG : BUFG
    port map (
      I => registersU_d_value_not00001_1042,
      O => registersU_d_value_not0000
    );
  unidadControlU_state_out_3_BUFG : BUFG
    port map (
      I => unidadControlU_state_out_31,
      O => unidadControlU_state_out_3_Q
    );
  unidadControlU_state_out_4_BUFG : BUFG
    port map (
      I => unidadControlU_state_out_41,
      O => unidadControlU_state_out_4_Q
    );
  pcU_Madd_pc_count_addsub0000_lut_0_INV_0 : INV
    port map (
      I => pcU_pc_count(0),
      O => pcU_Madd_pc_count_addsub0000_lut(0)
    );
  lcdU_Msub_dec0_addsub0000_lut_4_INV_0 : INV
    port map (
      I => mbrU_mbr_out_1(4),
      O => lcdU_Msub_dec0_addsub0000_lut(4)
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_lut_3_INV_0 : INV
    port map (
      I => lcdU_cuenta(8),
      O => lcdU_Mcompar_cuenta_cmp_lt0000_lut_3_Q
    );
  lcdU_Mcompar_cuenta_cmp_lt0000_lut_1_INV_0 : INV
    port map (
      I => lcdU_cuenta(6),
      O => lcdU_Mcompar_cuenta_cmp_lt0000_lut_1_Q
    );
  lcdU_Mcompar_E_cmp_lt0000_cy_7_inv_INV_0 : INV
    port map (
      I => lcdU_Mcompar_E_cmp_lt0000_cy(7),
      O => lcdU_E_cmp_lt0000
    );
  lcdU_Madd_cuenta_addsub0000_lut_0_INV_0 : INV
    port map (
      I => lcdU_cuenta(0),
      O => lcdU_Madd_cuenta_addsub0000_lut(0)
    );
  unidadControlU_cMemory_mux0000_9_wg_lut_0_INV_0 : INV
    port map (
      I => unidadControlU_next_val_FSM_FFd2_1607,
      O => unidadControlU_cMemory_mux0000_9_wg_lut_0_Q
    );
  unidadControlU_state_out_mux0000_15_131_SW0_G_INV_0 : INV
    port map (
      I => unidadControlU_state_out_15_Q,
      O => N402
    );
  unidadControlU_state_out_mux0000_5_19_SW0_G_INV_0 : INV
    port map (
      I => unidadControlU_state_out_5_Q,
      O => N518
    );
  unidadControlU_state_out_mux0000_4_177_SW0_G_INV_0 : INV
    port map (
      I => unidadControlU_state_out_41,
      O => N520
    );
  unidadControlU_state_out_mux0000_7_109_SW0_G_INV_0 : INV
    port map (
      I => unidadControlU_state_out_7_Q,
      O => N522
    );
  registersU_reg_out_mux0001_7_48 : MUXF5
    port map (
      I0 => N685,
      I1 => N686,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_7_48_1080
    );
  registersU_reg_out_mux0001_7_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(7),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(7),
      O => N685
    );
  registersU_reg_out_mux0001_7_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(7),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(7),
      O => N686
    );
  registersU_reg_out_mux0001_6_48 : MUXF5
    port map (
      I0 => N687,
      I1 => N688,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_6_48_1076
    );
  registersU_reg_out_mux0001_6_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(6),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(6),
      O => N687
    );
  registersU_reg_out_mux0001_6_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(6),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(6),
      O => N688
    );
  registersU_reg_out_mux0001_5_48 : MUXF5
    port map (
      I0 => N689,
      I1 => N690,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_5_48_1072
    );
  registersU_reg_out_mux0001_5_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(5),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(5),
      O => N689
    );
  registersU_reg_out_mux0001_5_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(5),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(5),
      O => N690
    );
  registersU_reg_out_mux0001_4_48 : MUXF5
    port map (
      I0 => N691,
      I1 => N692,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_4_48_1068
    );
  registersU_reg_out_mux0001_4_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(4),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(4),
      O => N691
    );
  registersU_reg_out_mux0001_4_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(4),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(4),
      O => N692
    );
  registersU_reg_out_mux0001_3_48 : MUXF5
    port map (
      I0 => N693,
      I1 => N694,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_3_48_1064
    );
  registersU_reg_out_mux0001_3_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(3),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(3),
      O => N693
    );
  registersU_reg_out_mux0001_3_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(3),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(3),
      O => N694
    );
  registersU_reg_out_mux0001_2_48 : MUXF5
    port map (
      I0 => N695,
      I1 => N696,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_2_48_1060
    );
  registersU_reg_out_mux0001_2_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(2),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(2),
      O => N695
    );
  registersU_reg_out_mux0001_2_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(2),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(2),
      O => N696
    );
  registersU_reg_out_mux0001_1_48 : MUXF5
    port map (
      I0 => N697,
      I1 => N698,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_1_48_1056
    );
  registersU_reg_out_mux0001_1_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(1),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(1),
      O => N697
    );
  registersU_reg_out_mux0001_1_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(1),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(1),
      O => N698
    );
  registersU_reg_out_mux0001_0_48 : MUXF5
    port map (
      I0 => N699,
      I1 => N700,
      S => marU_mar_out(0),
      O => registersU_reg_out_mux0001_0_48_1052
    );
  registersU_reg_out_mux0001_0_48_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_a_value(0),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_c_value(0),
      O => N699
    );
  registersU_reg_out_mux0001_0_48_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => marU_mar_out(1),
      I1 => registersU_b_value(0),
      I2 => unidadControlU_state_out_9_Q,
      I3 => registersU_d_value(0),
      O => N700
    );
  unidadControlU_current_st_FSM_FFd1_In54 : MUXF5
    port map (
      I0 => N701,
      I1 => N702,
      S => unidadControlU_current_st_FSM_N18,
      O => unidadControlU_current_st_FSM_FFd1_In
    );
  unidadControlU_current_st_FSM_FFd1_In54_F : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd1_1377,
      I1 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_current_st_FSM_FFd1_In12_1379,
      O => N701
    );
  unidadControlU_current_st_FSM_FFd1_In54_G : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd1_1377,
      I1 => unidadControlU_current_st_FSM_FFd1_In12_1379,
      I2 => activar_cpu_IBUF_498,
      I3 => unidadControlU_N257,
      O => N702
    );
  unidadControlU_next_val_FSM_FFd8_In23 : MUXF5
    port map (
      I0 => N703,
      I1 => N704,
      S => irU_ir_out_full(23),
      O => unidadControlU_next_val_FSM_FFd8_In23_1689
    );
  unidadControlU_next_val_FSM_FFd8_In23_F : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => unidadControlU_N226,
      I2 => unidadControlU_N187,
      O => N703
    );
  unidadControlU_next_val_FSM_FFd8_In23_G : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => unidadControlU_N244,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => irU_ir_out_full(20),
      I3 => unidadControlU_N187,
      O => N704
    );
  unidadControlU_state_out_mux0000_9_485 : MUXF5
    port map (
      I0 => N705,
      I1 => N706,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_9_485_1909
    );
  unidadControlU_state_out_mux0000_9_485_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_418,
      I1 => unidadControlU_n0027_107_Q,
      I2 => unidadControlU_n0027_105_Q,
      I3 => unidadControlU_Mmux_n0024_47,
      O => N705
    );
  unidadControlU_state_out_mux0000_9_485_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0027_107_Q,
      I1 => unidadControlU_n0027_105_Q,
      I2 => unidadControlU_Mmux_n0024_37,
      I3 => unidadControlU_Mmux_n0024_318,
      O => N706
    );
  unidadControlU_state_out_mux0000_9_550 : MUXF5
    port map (
      I0 => N707,
      I1 => N708,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_9_550_1913
    );
  unidadControlU_state_out_mux0000_9_550_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_418,
      I1 => unidadControlU_n0028_107_Q,
      I2 => unidadControlU_n0028_106_Q,
      I3 => unidadControlU_Mmux_n0024_46,
      O => N707
    );
  unidadControlU_state_out_mux0000_9_550_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0028_107_Q,
      I1 => unidadControlU_n0028_106_Q,
      I2 => unidadControlU_Mmux_n0024_36,
      I3 => unidadControlU_Mmux_n0024_318,
      O => N708
    );
  unidadControlU_state_out_mux0000_8_311113 : MUXF5
    port map (
      I0 => N709,
      I1 => N710,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_8_311113_1843
    );
  unidadControlU_state_out_mux0000_8_311113_F : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_49,
      I2 => unidadControlU_Mmux_n0024_47,
      O => N709
    );
  unidadControlU_state_out_mux0000_8_311113_G : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_37,
      I2 => unidadControlU_Mmux_n0024_39,
      O => N710
    );
  unidadControlU_state_out_mux0000_9_24122 : MUXF5
    port map (
      I0 => N711,
      I1 => N712,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_9_24122_1887
    );
  unidadControlU_state_out_mux0000_9_24122_F : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_Mmux_n0024_45,
      I2 => unidadControlU_Mmux_n0024_41,
      O => N711
    );
  unidadControlU_state_out_mux0000_9_24122_G : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_Mmux_n0024_31,
      I2 => unidadControlU_Mmux_n0024_35,
      O => N712
    );
  unidadControlU_state_out_mux0000_9_241213 : MUXF5
    port map (
      I0 => N713,
      I1 => N714,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_9_241213_1886
    );
  unidadControlU_state_out_mux0000_9_241213_F : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_45,
      I2 => unidadControlU_Mmux_n0024_41,
      O => N713
    );
  unidadControlU_state_out_mux0000_9_241213_G : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_31,
      I2 => unidadControlU_Mmux_n0024_35,
      O => N714
    );
  unidadControlU_state_out_mux0000_12_34 : MUXF5
    port map (
      I0 => N715,
      I1 => N716,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_12_34_1738
    );
  unidadControlU_state_out_mux0000_12_34_F : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_418,
      I2 => unidadControlU_Mmux_n0024_415,
      O => N715
    );
  unidadControlU_state_out_mux0000_12_34_G : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_315,
      I2 => unidadControlU_Mmux_n0024_318,
      O => N716
    );
  unidadControlU_state_out_mux0000_12_60 : MUXF5
    port map (
      I0 => N717,
      I1 => N718,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_12_60_1741
    );
  unidadControlU_state_out_mux0000_12_60_F : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_418,
      I2 => unidadControlU_Mmux_n0024_415,
      O => N717
    );
  unidadControlU_state_out_mux0000_12_60_G : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_315,
      I2 => unidadControlU_Mmux_n0024_318,
      O => N718
    );
  unidadControlU_state_out_mux0000_4_36 : MUXF5
    port map (
      I0 => N719,
      I1 => N720,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_4_36_1795
    );
  unidadControlU_state_out_mux0000_4_36_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_Mmux_n0024_414,
      I2 => unidadControlU_Mmux_n0024_418,
      I3 => unidadControlU_Mmux_n0024_420,
      O => N719
    );
  unidadControlU_state_out_mux0000_4_36_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_Mmux_n0024_314,
      I2 => unidadControlU_Mmux_n0024_318,
      I3 => unidadControlU_Mmux_n0024_320,
      O => N720
    );
  unidadControlU_state_out_mux0000_4_42 : MUXF5
    port map (
      I0 => N721,
      I1 => N722,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_4_42_1796
    );
  unidadControlU_state_out_mux0000_4_42_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_Mmux_n0024_414,
      I2 => unidadControlU_Mmux_n0024_418,
      I3 => unidadControlU_Mmux_n0024_420,
      O => N721
    );
  unidadControlU_state_out_mux0000_4_42_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_Mmux_n0024_314,
      I2 => unidadControlU_Mmux_n0024_318,
      I3 => unidadControlU_Mmux_n0024_320,
      O => N722
    );
  unidadControlU_state_out_mux0000_4_55 : MUXF5
    port map (
      I0 => N723,
      I1 => N724,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_4_55_1798
    );
  unidadControlU_state_out_mux0000_4_55_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_414,
      I2 => unidadControlU_Mmux_n0024_418,
      I3 => unidadControlU_Mmux_n0024_420,
      O => N723
    );
  unidadControlU_state_out_mux0000_4_55_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_314,
      I2 => unidadControlU_Mmux_n0024_318,
      I3 => unidadControlU_Mmux_n0024_320,
      O => N724
    );
  unidadControlU_state_out_mux0000_4_102 : MUXF5
    port map (
      I0 => N725,
      I1 => N726,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_4_102_1791
    );
  unidadControlU_state_out_mux0000_4_102_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_414,
      I2 => unidadControlU_Mmux_n0024_418,
      I3 => unidadControlU_n0024_7_Q,
      O => N725
    );
  unidadControlU_state_out_mux0000_4_102_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_314,
      I2 => unidadControlU_Mmux_n0024_318,
      I3 => unidadControlU_n0024_7_Q,
      O => N726
    );
  unidadControlU_state_out_mux0000_3_38_SW0 : MUXF5
    port map (
      I0 => N727,
      I1 => N728,
      S => irU_ir_out_full(17),
      O => N218
    );
  unidadControlU_state_out_mux0000_3_38_SW0_F : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_415,
      I2 => unidadControlU_Mmux_n0024_413,
      I3 => N138,
      O => N727
    );
  unidadControlU_state_out_mux0000_3_38_SW0_G : LUT4
    generic map(
      INIT => X"F8A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_Mmux_n0024_315,
      I2 => unidadControlU_Mmux_n0024_313,
      I3 => N138,
      O => N728
    );
  unidadControlU_state_out_mux0000_9_235 : MUXF5
    port map (
      I0 => N729,
      I1 => N730,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_9_235_1884
    );
  unidadControlU_state_out_mux0000_9_235_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_415,
      I1 => unidadControlU_Mmux_n0024_416,
      I2 => unidadControlU_Mmux_n0024_418,
      I3 => unidadControlU_Mmux_n0024_419,
      O => N729
    );
  unidadControlU_state_out_mux0000_9_235_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_315,
      I1 => unidadControlU_Mmux_n0024_316,
      I2 => unidadControlU_Mmux_n0024_318,
      I3 => unidadControlU_Mmux_n0024_319,
      O => N730
    );
  unidadControlU_next_val_FSM_FFd8_In91 : MUXF5
    port map (
      I0 => N731,
      I1 => N732,
      S => irU_ir_out_full(23),
      O => unidadControlU_next_val_FSM_FFd8_In91_1693
    );
  unidadControlU_next_val_FSM_FFd8_In91_F : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => unidadControlU_N02,
      I1 => unidadControlU_next_val_FSM_FFd8_In67_1692,
      I2 => unidadControlU_current_st_FSM_FFd10_1380,
      I3 => unidadControlU_N1951,
      O => N731
    );
  unidadControlU_next_val_FSM_FFd8_In91_G : LUT4
    generic map(
      INIT => X"080F"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_In67_1692,
      I1 => unidadControlU_N1951,
      I2 => unidadControlU_current_st_FSM_FFd10_1380,
      I3 => irU_ir_out_full(19),
      O => N732
    );
  unidadControlU_next_val_FSM_FFd18_In188 : MUXF5
    port map (
      I0 => N733,
      I1 => N734,
      S => unidadControlU_next_val_FSM_FFd18_In167_1575,
      O => unidadControlU_next_val_FSM_FFd18_In188_1576
    );
  unidadControlU_next_val_FSM_FFd18_In188_F : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => unidadControlU_current_st_FSM_FFd12_1386,
      I2 => irU_ir_out_full(16),
      I3 => irU_ir_out_full(17),
      O => N733
    );
  unidadControlU_next_val_FSM_FFd18_In188_G : LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      O => N734
    );
  unidadControlU_state_out_mux0000_13_111230 : MUXF5
    port map (
      I0 => N735,
      I1 => N736,
      S => irU_ir_out_full(23),
      O => unidadControlU_state_out_mux0000_13_111230_1748
    );
  unidadControlU_state_out_mux0000_13_111230_F : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_state_out_mux0000_13_111219_1747,
      O => N735
    );
  unidadControlU_state_out_mux0000_13_111230_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(20),
      I3 => irU_ir_out_full(22),
      O => N736
    );
  unidadControlU_next_val_FSM_FFd1_In122 : MUXF5
    port map (
      I0 => N737,
      I1 => N738,
      S => irU_ir_out_full(16),
      O => unidadControlU_next_val_FSM_FFd1_In122_1492
    );
  unidadControlU_next_val_FSM_FFd1_In122_F : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd4_1434,
      I1 => unidadControlU_N2291,
      I2 => unidadControlU_state_out_or0020,
      I3 => irU_ir_out_full(17),
      O => N737
    );
  unidadControlU_next_val_FSM_FFd1_In122_G : LUT4
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => unidadControlU_state_out_or0020,
      I2 => unidadControlU_N2291,
      I3 => irU_ir_out_full(17),
      O => N738
    );
  unidadControlU_state_out_mux0000_8_175_SW0 : MUXF5
    port map (
      I0 => N739,
      I1 => N740,
      S => irU_ir_out_full(18),
      O => N371
    );
  unidadControlU_state_out_mux0000_8_175_SW0_F : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_N194,
      I2 => unidadControlU_state_out_mux0000_8_1211_1836,
      I3 => unidadControlU_N177,
      O => N739
    );
  unidadControlU_state_out_mux0000_8_175_SW0_G : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N239,
      I1 => unidadControlU_state_out_mux0000_8_85_1870,
      I2 => unidadControlU_state_out_mux0000_8_79_1869,
      I3 => N193,
      O => N740
    );
  unidadControlU_next_val_FSM_FFd15_In456 : MUXF5
    port map (
      I0 => N741,
      I1 => N742,
      S => irU_ir_out_full(22),
      O => unidadControlU_next_val_FSM_FFd15_In456_1543
    );
  unidadControlU_next_val_FSM_FFd15_In456_F : LUT4
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_N2281,
      I2 => N551,
      I3 => unidadControlU_next_val_FSM_FFd15_In388_1542,
      O => N741
    );
  unidadControlU_next_val_FSM_FFd15_In456_G : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N134,
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      O => N742
    );
  unidadControlU_next_val_FSM_FFd23_In : MUXF5
    port map (
      I0 => N743,
      I1 => N744,
      S => unidadControlU_next_val_FSM_FFd23_1634,
      O => unidadControlU_next_val_FSM_FFd23_In_1635
    );
  unidadControlU_next_val_FSM_FFd23_In_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_FSM_FFd21_1423,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      O => N743
    );
  unidadControlU_next_val_FSM_FFd23_In_G : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N50,
      I2 => unidadControlU_N89,
      O => N744
    );
  unidadControlU_next_val_FSM_FFd15_In367 : MUXF5
    port map (
      I0 => N745,
      I1 => N746,
      S => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd15_In367_1540
    );
  unidadControlU_next_val_FSM_FFd15_In367_F : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(21),
      O => N745
    );
  unidadControlU_next_val_FSM_FFd15_In367_G : LUT4
    generic map(
      INIT => X"08AA"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1386,
      I1 => unidadControlU_N228,
      I2 => irU_ir_out_full(17),
      I3 => irU_ir_out_full(21),
      O => N746
    );
  unidadControlU_next_val_FSM_FFd18_In215 : MUXF5
    port map (
      I0 => N747,
      I1 => N748,
      S => irU_ir_out_full(20),
      O => unidadControlU_next_val_FSM_FFd18_In215_1578
    );
  unidadControlU_next_val_FSM_FFd18_In215_F : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(22),
      O => N747
    );
  unidadControlU_next_val_FSM_FFd18_In215_G : LUT3
    generic map(
      INIT => X"89"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(23),
      O => N748
    );
  unidadControlU_state_out_mux0000_9_480 : MUXF5
    port map (
      I0 => N749,
      I1 => N750,
      S => irU_ir_out_full(17),
      O => unidadControlU_state_out_mux0000_9_480_1908
    );
  unidadControlU_state_out_mux0000_9_480_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_413,
      I1 => unidadControlU_Mmux_n0024_414,
      I2 => unidadControlU_Mmux_n0024_415,
      I3 => unidadControlU_Mmux_n0024_416,
      O => N749
    );
  unidadControlU_state_out_mux0000_9_480_G : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_313,
      I1 => unidadControlU_Mmux_n0024_314,
      I2 => unidadControlU_Mmux_n0024_315,
      I3 => unidadControlU_Mmux_n0024_316,
      O => N750
    );
  mbrMuxInU_aux_mbr_in_23_mux000311 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => irU_ir_out(7),
      O => mbrMuxInU_aux_mbr_in_23_mux00031
    );
  mbrMuxInU_aux_mbr_in_23_mux000312 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => registersU_reg_out(7),
      I2 => unidadControlU_state_out_0_Q,
      I3 => irU_ir_out(7),
      O => mbrMuxInU_aux_mbr_in_23_mux000311_861
    );
  mbrMuxInU_aux_mbr_in_23_mux00031_f5 : MUXF5
    port map (
      I0 => mbrMuxInU_aux_mbr_in_23_mux000311_861,
      I1 => mbrMuxInU_aux_mbr_in_23_mux00031,
      S => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_23_mux0004
    );
  mbrMuxInU_aux_mbr_in_19_mux000311 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => irU_ir_out(3),
      O => mbrMuxInU_aux_mbr_in_19_mux00031
    );
  mbrMuxInU_aux_mbr_in_19_mux000312 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => unidadControlU_state_out_31,
      I1 => registersU_reg_out(3),
      I2 => unidadControlU_state_out_0_Q,
      I3 => irU_ir_out(3),
      O => mbrMuxInU_aux_mbr_in_19_mux000311_843
    );
  mbrMuxInU_aux_mbr_in_19_mux00031_f5 : MUXF5
    port map (
      I0 => mbrMuxInU_aux_mbr_in_19_mux000311_843,
      I1 => mbrMuxInU_aux_mbr_in_19_mux00031,
      S => unidadControlU_state_out_5_Q,
      O => mbrMuxInU_aux_mbr_in_19_mux0004
    );
  unidadControlU_next_val_FSM_FFd19_In123121 : LUT4
    generic map(
      INIT => X"1001"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_current_st_cmp_eq0004,
      I2 => irU_ir_out_full(20),
      I3 => irU_ir_out_full(19),
      O => unidadControlU_next_val_FSM_FFd19_In123121_1594
    );
  unidadControlU_next_val_FSM_FFd19_In123122 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_current_st_cmp_eq0004,
      O => unidadControlU_next_val_FSM_FFd19_In123122_1595
    );
  unidadControlU_next_val_FSM_FFd19_In12312_f5 : MUXF5
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In123122_1595,
      I1 => unidadControlU_next_val_FSM_FFd19_In123121_1594,
      S => unidadControlU_N236,
      O => unidadControlU_next_val_FSM_FFd19_In12312
    );
  unidadControlU_current_st_FSM_FFd16_In281 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => unidadControlU_N29,
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      I2 => activar_cpu_IBUF_498,
      O => unidadControlU_current_st_FSM_FFd16_In281_1410
    );
  unidadControlU_current_st_FSM_FFd16_In282 : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_N232,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_next_val_FSM_FFd19_1589,
      O => unidadControlU_current_st_FSM_FFd16_In282_1411
    );
  unidadControlU_current_st_FSM_FFd16_In28_f5 : MUXF5
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_In282_1411,
      I1 => unidadControlU_current_st_FSM_FFd16_In281_1410,
      S => unidadControlU_current_st_cmp_eq0013,
      O => unidadControlU_current_st_FSM_FFd16_In28
    );
  unidadControlU_current_st_FSM_FFd12_In241 : LUT4
    generic map(
      INIT => X"FBBB"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_N22,
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_FSM_N41,
      I3 => unidadControlU_current_st_cmp_eq0013,
      O => unidadControlU_current_st_FSM_FFd12_In241_1389
    );
  unidadControlU_current_st_FSM_FFd12_In242 : LUT4
    generic map(
      INIT => X"FF8D"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_current_st_FSM_N41,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_current_st_FSM_N22,
      O => unidadControlU_current_st_FSM_FFd12_In242_1390
    );
  unidadControlU_current_st_FSM_FFd12_In24_f5 : MUXF5
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_In242_1390,
      I1 => unidadControlU_current_st_FSM_FFd12_In241_1389,
      S => unidadControlU_current_st_cmp_eq0020,
      O => unidadControlU_current_st_FSM_FFd12_In24
    );
  lcdU_DB_2_231 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => lcdU_pr_estado_FSM_FFd30_756,
      I1 => lcdU_pr_estado_FSM_FFd29_754,
      I2 => lcdU_pr_estado_FSM_FFd13_737,
      I3 => lcdU_pr_estado_FSM_FFd10_734,
      O => lcdU_DB_2_231_567
    );
  lcdU_DB_2_23_f5 : MUXF5
    port map (
      I0 => lcdU_DB_2_231_567,
      I1 => N1,
      S => lcdU_pr_estado_FSM_FFd32_758,
      O => lcdU_DB_2_23
    );
  lcdU_dec0_mux0008_0_1261 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(3),
      I1 => lcdU_dec0_addsub0000(5),
      I2 => lcdU_dec0_addsub0000(4),
      I3 => lcdU_dec0_addsub0000(2),
      O => lcdU_dec0_mux0008_0_1261_722
    );
  lcdU_dec0_mux0008_0_1262 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(3),
      I1 => lcdU_dec0_addsub0000(5),
      I2 => lcdU_dec0_addsub0000(4),
      I3 => lcdU_dec0_addsub0000(2),
      O => lcdU_dec0_mux0008_0_1262_723
    );
  lcdU_dec0_mux0008_0_126_f5 : MUXF5
    port map (
      I0 => lcdU_dec0_mux0008_0_1262_723,
      I1 => lcdU_dec0_mux0008_0_1261_722,
      S => lcdU_dec0_addsub0000(6),
      O => lcdU_dec0_mux0008_0_126
    );
  unidadControlU_current_st_FSM_FFd21_In361 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I1 => unidadControlU_N1621,
      I2 => unidadControlU_N1931,
      I3 => unidadControlU_current_st_FSM_FFd21_In5_1427,
      O => unidadControlU_current_st_FSM_FFd21_In36
    );
  unidadControlU_current_st_FSM_FFd21_In36_f5 : MUXF5
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_current_st_FSM_FFd21_In36,
      S => activar_cpu_IBUF_498,
      O => unidadControlU_current_st_FSM_FFd21_In
    );
  registersU_reg_out_mux0001_7_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_7_48_1080,
      I2 => registersU_reg_out(7),
      I3 => mbrU_mbr_out_1(7),
      O => registersU_reg_out_mux0001_7_91
    );
  registersU_reg_out_mux0001_7_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_7_48_1080,
      I2 => registersU_reg_out(7),
      O => registersU_reg_out_mux0001_7_911_1082
    );
  registersU_reg_out_mux0001_7_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_7_911_1082,
      I1 => registersU_reg_out_mux0001_7_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(7)
    );
  registersU_reg_out_mux0001_6_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_6_48_1076,
      I2 => registersU_reg_out(6),
      I3 => mbrU_mbr_out_1(6),
      O => registersU_reg_out_mux0001_6_91
    );
  registersU_reg_out_mux0001_6_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_6_48_1076,
      I2 => registersU_reg_out(6),
      O => registersU_reg_out_mux0001_6_911_1078
    );
  registersU_reg_out_mux0001_6_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_6_911_1078,
      I1 => registersU_reg_out_mux0001_6_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(6)
    );
  registersU_reg_out_mux0001_5_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_5_48_1072,
      I2 => registersU_reg_out(5),
      I3 => mbrU_mbr_out_1(5),
      O => registersU_reg_out_mux0001_5_91
    );
  registersU_reg_out_mux0001_5_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_5_48_1072,
      I2 => registersU_reg_out(5),
      O => registersU_reg_out_mux0001_5_911_1074
    );
  registersU_reg_out_mux0001_5_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_5_911_1074,
      I1 => registersU_reg_out_mux0001_5_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(5)
    );
  registersU_reg_out_mux0001_4_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_4_48_1068,
      I2 => registersU_reg_out(4),
      I3 => mbrU_mbr_out_1(4),
      O => registersU_reg_out_mux0001_4_91
    );
  registersU_reg_out_mux0001_4_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_4_48_1068,
      I2 => registersU_reg_out(4),
      O => registersU_reg_out_mux0001_4_911_1070
    );
  registersU_reg_out_mux0001_4_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_4_911_1070,
      I1 => registersU_reg_out_mux0001_4_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(4)
    );
  registersU_reg_out_mux0001_3_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_3_48_1064,
      I2 => registersU_reg_out(3),
      I3 => mbrU_mbr_out_1(3),
      O => registersU_reg_out_mux0001_3_91
    );
  registersU_reg_out_mux0001_3_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_3_48_1064,
      I2 => registersU_reg_out(3),
      O => registersU_reg_out_mux0001_3_911_1066
    );
  registersU_reg_out_mux0001_3_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_3_911_1066,
      I1 => registersU_reg_out_mux0001_3_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(3)
    );
  registersU_reg_out_mux0001_2_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_2_48_1060,
      I2 => registersU_reg_out(2),
      I3 => mbrU_mbr_out_1(2),
      O => registersU_reg_out_mux0001_2_91
    );
  registersU_reg_out_mux0001_2_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_2_48_1060,
      I2 => registersU_reg_out(2),
      O => registersU_reg_out_mux0001_2_911_1062
    );
  registersU_reg_out_mux0001_2_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_2_911_1062,
      I1 => registersU_reg_out_mux0001_2_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(2)
    );
  registersU_reg_out_mux0001_1_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_1_48_1056,
      I2 => registersU_reg_out(1),
      I3 => mbrU_mbr_out_1(1),
      O => registersU_reg_out_mux0001_1_91
    );
  registersU_reg_out_mux0001_1_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_1_48_1056,
      I2 => registersU_reg_out(1),
      O => registersU_reg_out_mux0001_1_911_1058
    );
  registersU_reg_out_mux0001_1_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_1_911_1058,
      I1 => registersU_reg_out_mux0001_1_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(1)
    );
  registersU_reg_out_mux0001_0_911 : LUT4
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_0_48_1052,
      I2 => registersU_reg_out(0),
      I3 => mbrU_mbr_out_1(0),
      O => registersU_reg_out_mux0001_0_91
    );
  registersU_reg_out_mux0001_0_912 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => marU_mar_out(2),
      I1 => registersU_reg_out_mux0001_0_48_1052,
      I2 => registersU_reg_out(0),
      O => registersU_reg_out_mux0001_0_911_1054
    );
  registersU_reg_out_mux0001_0_91_f5 : MUXF5
    port map (
      I0 => registersU_reg_out_mux0001_0_911_1054,
      I1 => registersU_reg_out_mux0001_0_91,
      S => unidadControlU_state_out_9_Q,
      O => registersU_reg_out_mux0001(0)
    );
  lcdU_dec0_mux0008_0_391 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(4),
      I1 => lcdU_dec0_addsub0000(3),
      I2 => lcdU_dec0_addsub0000(5),
      I3 => lcdU_dec0_addsub0000(2),
      O => lcdU_dec0_mux0008_0_391_726
    );
  lcdU_dec0_mux0008_0_392 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(4),
      I1 => lcdU_dec0_addsub0000(5),
      I2 => lcdU_dec0_addsub0000(3),
      I3 => lcdU_dec0_addsub0000(2),
      O => lcdU_dec0_mux0008_0_392_727
    );
  lcdU_dec0_mux0008_0_39_f5 : MUXF5
    port map (
      I0 => lcdU_dec0_mux0008_0_392_727,
      I1 => lcdU_dec0_mux0008_0_391_726,
      S => mbrU_mbr_out_1(1),
      O => lcdU_dec0_mux0008_0_39
    );
  pcU_Mmux_pc_count_mux000121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(0),
      I2 => pcU_pc_count_addsub0000(0),
      O => pcU_Mmux_pc_count_mux00012
    );
  pcU_Mmux_pc_count_mux00012_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(0),
      I1 => pcU_Mmux_pc_count_mux00012,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(0)
    );
  pcU_Mmux_pc_count_mux0001141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(1),
      I2 => pcU_pc_count_addsub0000(1),
      O => pcU_Mmux_pc_count_mux000114
    );
  pcU_Mmux_pc_count_mux000114_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(1),
      I1 => pcU_Mmux_pc_count_mux000114,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(1)
    );
  pcU_Mmux_pc_count_mux0001261 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(2),
      I2 => pcU_pc_count_addsub0000(2),
      O => pcU_Mmux_pc_count_mux000126
    );
  pcU_Mmux_pc_count_mux000126_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(2),
      I1 => pcU_Mmux_pc_count_mux000126,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(2)
    );
  pcU_Mmux_pc_count_mux0001301 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(3),
      I2 => pcU_pc_count_addsub0000(3),
      O => pcU_Mmux_pc_count_mux000130
    );
  pcU_Mmux_pc_count_mux000130_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(3),
      I1 => pcU_Mmux_pc_count_mux000130,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(3)
    );
  pcU_Mmux_pc_count_mux0001321 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(4),
      I2 => pcU_pc_count_addsub0000(4),
      O => pcU_Mmux_pc_count_mux000132
    );
  pcU_Mmux_pc_count_mux000132_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(4),
      I1 => pcU_Mmux_pc_count_mux000132,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(4)
    );
  pcU_Mmux_pc_count_mux0001341 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(5),
      I2 => pcU_pc_count_addsub0000(5),
      O => pcU_Mmux_pc_count_mux000134
    );
  pcU_Mmux_pc_count_mux000134_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(5),
      I1 => pcU_Mmux_pc_count_mux000134,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(5)
    );
  pcU_Mmux_pc_count_mux0001361 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(6),
      I2 => pcU_pc_count_addsub0000(6),
      O => pcU_Mmux_pc_count_mux000136
    );
  pcU_Mmux_pc_count_mux000136_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(6),
      I1 => pcU_Mmux_pc_count_mux000136,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(6)
    );
  pcU_Mmux_pc_count_mux0001381 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => unidadControlU_state_out_10_Q,
      I1 => irU_ir_out(7),
      I2 => pcU_pc_count_addsub0000(7),
      O => pcU_Mmux_pc_count_mux000138
    );
  pcU_Mmux_pc_count_mux000138_f5 : MUXF5
    port map (
      I0 => pcU_pc_count(7),
      I1 => pcU_Mmux_pc_count_mux000138,
      S => unidadControlU_state_out_9_Q,
      O => pcU_pc_count_mux0001(7)
    );
  lcdU_dec0_mux0008_2_1181 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => lcdU_dec0_addsub0000(5),
      I1 => lcdU_dec0_addsub0000(4),
      I2 => lcdU_dec0_addsub0000(3),
      I3 => lcdU_dec0_addsub0000(6),
      O => lcdU_dec0_mux0008_2_118
    );
  lcdU_dec0_mux0008_2_118_f5 : MUXF5
    port map (
      I0 => lcdU_dec0_mux0008_2_118,
      I1 => N1,
      S => lcdU_dec0_addsub0000(7),
      O => lcdU_N0
    );
  unidadControlU_next_val_FSM_FFd4_In1211 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => unidadControlU_N236,
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N234,
      O => unidadControlU_next_val_FSM_FFd4_In1211_1659
    );
  unidadControlU_next_val_FSM_FFd4_In1212 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => unidadControlU_N236,
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N233,
      O => unidadControlU_next_val_FSM_FFd4_In1212_1660
    );
  unidadControlU_next_val_FSM_FFd4_In121_f5 : MUXF5
    port map (
      I0 => unidadControlU_next_val_FSM_FFd4_In1212_1660,
      I1 => unidadControlU_next_val_FSM_FFd4_In1211_1659,
      S => irU_ir_out_full(21),
      O => unidadControlU_next_val_FSM_FFd4_In121
    );
  lcdU_DB_3_93_SW01 : LUT4
    generic map(
      INIT => X"9A12"
    )
    port map (
      I0 => lcdU_decenas_0_Q,
      I1 => lcdU_Msub_unidades_lut(2),
      I2 => lcdU_centenas(0),
      I3 => mbrU_mbr_out_1(1),
      O => lcdU_DB_3_93_SW0
    );
  lcdU_DB_3_93_SW02 : LUT4
    generic map(
      INIT => X"A921"
    )
    port map (
      I0 => lcdU_decenas_0_Q,
      I1 => lcdU_Msub_unidades_lut(2),
      I2 => lcdU_centenas(0),
      I3 => mbrU_mbr_out_1(1),
      O => lcdU_DB_3_93_SW01_582
    );
  lcdU_DB_3_93_SW0_f5 : MUXF5
    port map (
      I0 => lcdU_DB_3_93_SW01_582,
      I1 => lcdU_DB_3_93_SW0,
      S => mbrU_mbr_out_1(2),
      O => N627
    );
  unidadControlU_next_val_FSM_FFd18_In53_SW01 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(19),
      O => unidadControlU_next_val_FSM_FFd18_In53_SW0
    );
  unidadControlU_next_val_FSM_FFd18_In53_SW02 : LUT4
    generic map(
      INIT => X"4062"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      O => unidadControlU_next_val_FSM_FFd18_In53_SW01_1585
    );
  unidadControlU_next_val_FSM_FFd18_In53_SW0_f5 : MUXF5
    port map (
      I0 => unidadControlU_next_val_FSM_FFd18_In53_SW01_1585,
      I1 => unidadControlU_next_val_FSM_FFd18_In53_SW0,
      S => unidadControlU_next_val_FSM_FFd18_1569,
      O => N577
    );
  unidadControlU_next_val_FSM_FFd24_In31 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      LO => N751,
      O => unidadControlU_state_out_mux0000_10_116
    );
  unidadControlU_next_val_FSM_FFd19_In141 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      LO => N752,
      O => unidadControlU_N257
    );
  unidadControlU_next_val_FSM_FFd2_In211 : LUT4_D
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => irU_ir_out_full(19),
      I2 => irU_ir_out_full(18),
      I3 => unidadControlU_current_st_FSM_FFd8_1455,
      LO => N753,
      O => unidadControlU_N41
    );
  unidadControlU_state_out_mux0000_9_51 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd17_1412,
      I1 => unidadControlU_current_st_FSM_FFd18_1414,
      I2 => unidadControlU_current_st_FSM_FFd19_1416,
      I3 => unidadControlU_current_st_FSM_FFd20_1421,
      LO => N754,
      O => unidadControlU_N89
    );
  unidadControlU_current_st_FSM_FFd21_In10 : LUT2_D
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_1589,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N755,
      O => unidadControlU_current_st_FSM_FFd21_In10_1425
    );
  unidadControlU_next_val_FSM_FFd4_In221 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd11_1382,
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_FSM_FFd5_1443,
      I3 => unidadControlU_current_st_FSM_FFd4_1434,
      LO => N756,
      O => unidadControlU_N251
    );
  unidadControlU_next_val_FSM_FFd3_In1111 : LUT4_D
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd1_1377,
      I1 => irU_ir_out_full(22),
      I2 => irU_ir_out_full(20),
      I3 => irU_ir_out_full(19),
      LO => N757,
      O => unidadControlU_N2061
    );
  unidadControlU_next_val_FSM_FFd14_In111 : LUT4_D
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => unidadControlU_N144,
      I1 => unidadControlU_state_out_or0020,
      I2 => irU_ir_out_full(17),
      I3 => irU_ir_out_full(16),
      LO => N758,
      O => unidadControlU_N96
    );
  unidadControlU_next_val_FSM_FFd19_In1211 : LUT4_D
    generic map(
      INIT => X"4567"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_FSM_FFd12_1386,
      LO => N759,
      O => unidadControlU_N144
    );
  unidadControlU_next_val_FSM_FFd15_In54101 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N760,
      O => unidadControlU_N258
    );
  unidadControlU_next_val_FSM_FFd16_In1121 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd5_1443,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      LO => N761,
      O => unidadControlU_N1951
    );
  unidadControlU_next_val_FSM_FFd1_In141 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      LO => N762,
      O => unidadControlU_N1971
    );
  unidadControlU_next_val_FSM_FFd17_In161 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd12_1386,
      I2 => unidadControlU_current_st_FSM_FFd5_1443,
      I3 => unidadControlU_current_st_FSM_FFd11_1382,
      LO => N763,
      O => unidadControlU_N2001
    );
  unidadControlU_state_out_mux0000_9_43_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N67
    );
  unidadControlU_next_val_FSM_FFd14_In7 : LUT4_L
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N2011,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_next_val_FSM_FFd14_In1,
      LO => unidadControlU_next_val_FSM_FFd14_In7_1522
    );
  unidadControlU_next_val_FSM_FFd18_In1141 : LUT4_D
    generic map(
      INIT => X"AAAE"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_current_st_FSM_FFd6_1447,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      LO => N764,
      O => unidadControlU_N02
    );
  unidadControlU_next_val_FSM_FFd15_In5481 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd13_1394,
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      I2 => unidadControlU_N237,
      I3 => unidadControlU_state_out_or0020,
      LO => N765,
      O => unidadControlU_N250
    );
  unidadControlU_state_out_mux0000_3_2118 : LUT4_L
    generic map(
      INIT => X"ECCC"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_1558,
      I1 => unidadControlU_state_out_mux0000_3_2111_1785,
      I2 => unidadControlU_N5,
      I3 => unidadControlU_N2161,
      LO => unidadControlU_N169
    );
  unidadControlU_next_val_FSM_FFd2_In1213 : LUT2_L
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => unidadControlU_next_val_FSM_FFd2_In1213_1610
    );
  unidadControlU_next_val_FSM_FFd8_In1323 : LUT4_L
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd8_In136_1685,
      I1 => irU_ir_out_full(21),
      I2 => unidadControlU_current_st_FSM_FFd1_1377,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => unidadControlU_next_val_FSM_FFd8_In1323_1683
    );
  unidadControlU_next_val_FSM_FFd1_In17 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => irU_ir_out_full(22),
      I1 => unidadControlU_N231,
      I2 => irU_ir_out_full(23),
      I3 => unidadControlU_N244,
      LO => unidadControlU_next_val_FSM_FFd1_In17_1495
    );
  unidadControlU_next_val_FSM_FFd1_In71 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd1_1490,
      I1 => unidadControlU_N56,
      I2 => unidadControlU_next_val_FSM_FFd1_In27_1496,
      I3 => unidadControlU_next_val_FSM_FFd1_In68_1497,
      LO => unidadControlU_next_val_FSM_FFd1_In71_1499
    );
  unidadControlU_next_val_FSM_FFd22_In77 : LUT4_L
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd22_1622,
      I1 => unidadControlU_N51,
      I2 => unidadControlU_N2011,
      I3 => unidadControlU_next_val_FSM_FFd22_In41_1631,
      LO => unidadControlU_next_val_FSM_FFd22_In77_1632
    );
  unidadControlU_next_val_FSM_FFd22_In123 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd10_1380,
      I1 => unidadControlU_N256,
      I2 => unidadControlU_N250,
      I3 => unidadControlU_next_val_FSM_FFd22_In102_1624,
      LO => unidadControlU_next_val_FSM_FFd22_In123_1626
    );
  unidadControlU_state_out_or00241 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      LO => N766,
      O => unidadControlU_state_out_or0024
    );
  unidadControlU_next_val_FSM_FFd18_In1511 : LUT3_D
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      LO => N767,
      O => unidadControlU_N212
    );
  unidadControlU_state_out_mux0000_9_441 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd2_1418,
      I1 => unidadControlU_current_st_FSM_FFd3_1428,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => unidadControlU_current_st_FSM_FFd8_1455,
      LO => N768,
      O => unidadControlU_N168
    );
  unidadControlU_next_val_FSM_FFd16_In151 : LUT4_D
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_N2241,
      I1 => irU_ir_out_full(20),
      I2 => irU_ir_out_full(21),
      I3 => irU_ir_out_full(22),
      LO => N769,
      O => unidadControlU_N2181
    );
  unidadControlU_next_val_FSM_FFd20_In1 : LUT4_D
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => unidadControlU_N217,
      I1 => unidadControlU_N18,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => N94,
      LO => N770,
      O => unidadControlU_N50
    );
  unidadControlU_state_out_mux0000_1_17 : LUT4_L
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N2141,
      I1 => unidadControlU_current_st_cmp_eq0013,
      I2 => unidadControlU_N31,
      I3 => unidadControlU_state_out_mux0000_1_7_1780,
      LO => unidadControlU_state_out_mux0000_1_17_1779
    );
  unidadControlU_next_val_FSM_FFd2_In1233 : LUT4_D
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd2_In12121_1609,
      I1 => unidadControlU_next_val_FSM_FFd2_In129_1612,
      I2 => unidadControlU_next_val_FSM_FFd2_In12151_1611,
      I3 => unidadControlU_N100,
      LO => N771,
      O => unidadControlU_N46
    );
  unidadControlU_next_val_FSM_FFd1_In1511 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd13_1394,
      I1 => unidadControlU_current_st_FSM_FFd9_1465,
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      LO => N772,
      O => unidadControlU_next_val_FSM_FFd1_In1511_1493
    );
  unidadControlU_next_val_FSM_FFd1_In169 : LUT4_D
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => unidadControlU_N2241,
      I1 => unidadControlU_N178,
      I2 => unidadControlU_next_val_FSM_FFd1_In154_1494,
      I3 => unidadControlU_next_val_FSM_FFd1_In122_1492,
      LO => N773,
      O => unidadControlU_N01
    );
  unidadControlU_next_val_FSM_FFd24_In311 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => unidadControlU_N212,
      I3 => irU_ir_out_full(23),
      LO => unidadControlU_next_val_FSM_FFd24_In31_1642
    );
  unidadControlU_next_val_FSM_FFd24_In163 : LUT4_L
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_10_116,
      I1 => unidadControlU_next_val_FSM_FFd24_In148_1639,
      I2 => unidadControlU_next_val_FSM_FFd24_1636,
      I3 => unidadControlU_next_val_FSM_FFd24_In124_1638,
      LO => unidadControlU_next_val_FSM_FFd24_In163_1640
    );
  unidadControlU_next_val_FSM_FFd5_In35 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => unidadControlU_next_val_FSM_FFd1_In1511_1493,
      I3 => irU_ir_out_full(23),
      LO => unidadControlU_next_val_FSM_FFd5_In35_1674
    );
  unidadControlU_next_val_FSM_FFd5_In105 : LUT4_L
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd5_In14_1672,
      I1 => unidadControlU_next_val_FSM_FFd5_In61_1675,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N46,
      LO => unidadControlU_next_val_FSM_FFd5_In105_1670
    );
  unidadControlU_next_val_FSM_FFd17_In4 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I2 => unidadControlU_N254,
      I3 => unidadControlU_N3,
      LO => unidadControlU_next_val_FSM_FFd17_In4_1566
    );
  unidadControlU_next_val_FSM_FFd16_In13 : LUT4_L
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => irU_ir_out_full(18),
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_current_st_FSM_FFd11_1382,
      LO => unidadControlU_next_val_FSM_FFd16_In13_1549
    );
  unidadControlU_next_val_FSM_FFd18_In84 : LUT4_L
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_N2041,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N112,
      LO => unidadControlU_next_val_FSM_FFd18_In84_1587
    );
  unidadControlU_next_val_FSM_FFd15_In521 : LUT3_D
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd6_1447,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      LO => N774,
      O => unidadControlU_N158
    );
  unidadControlU_state_out_mux0000_9_22_SW0 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      LO => N96
    );
  unidadControlU_next_val_FSM_FFd10_In32 : LUT3_D
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => N94,
      I1 => unidadControlU_N18,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N775,
      O => unidadControlU_N141
    );
  unidadControlU_next_val_FSM_FFd7_In_SW1 : LUT4_L
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_N2201,
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N50,
      LO => N104
    );
  unidadControlU_next_val_FSM_FFd6_In_SW1 : LUT4_L
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => unidadControlU_N2201,
      I3 => unidadControlU_N50,
      LO => N107
    );
  unidadControlU_next_val_FSM_FFd11_In_SW1 : LUT4_L
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_N2271,
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => unidadControlU_N252,
      I3 => unidadControlU_N50,
      LO => N110
    );
  unidadControlU_next_val_FSM_FFd10_In119 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => irU_ir_out_full(20),
      I2 => unidadControlU_N244,
      LO => unidadControlU_next_val_FSM_FFd10_In119_1503
    );
  unidadControlU_n0008_3_1 : LUT4_D
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_N242,
      I2 => unidadControlU_next_val_FSM_FFd18_1569,
      I3 => unidadControlU_N5,
      LO => N776,
      O => unidadControlU_n0008_3_Q
    );
  unidadControlU_n0008_4_1 : LUT4_D
    generic map(
      INIT => X"FBEA"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => irU_ir_out_full(16),
      I2 => N113,
      I3 => N112,
      LO => N777,
      O => unidadControlU_N5
    );
  unidadControlU_state_out_mux0000_9_12 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd9_1465,
      I1 => unidadControlU_current_st_FSM_FFd10_1380,
      I2 => unidadControlU_current_st_FSM_FFd12_1386,
      LO => N778,
      O => unidadControlU_state_out_mux0000_9_12_1875
    );
  unidadControlU_state_out_mux0000_8_19 : LUT4_D
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_N185,
      I1 => unidadControlU_current_st_cmp_eq0020,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => unidadControlU_N1941,
      LO => N779,
      O => unidadControlU_state_out_mux0000_8_19_1839
    );
  unidadControlU_state_out_mux0000_8_179 : LUT4_D
    generic map(
      INIT => X"DDDC"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_state_out_mux0000_8_137_1838,
      I3 => unidadControlU_state_out_mux0000_8_19_1839,
      LO => N780,
      O => unidadControlU_N16
    );
  unidadControlU_next_val_FSM_FFd8_In152 : LUT4_L
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_next_val_FSM_FFd8_In23_1689,
      I2 => unidadControlU_next_val_FSM_FFd8_In124_1682,
      I3 => unidadControlU_N48,
      LO => unidadControlU_next_val_FSM_FFd8_In152_1686
    );
  unidadControlU_state_out_mux0000_3_1221 : LUT4_D
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0026_2_Q,
      I3 => unidadControlU_n0025_2_Q,
      LO => N781,
      O => unidadControlU_N1241
    );
  unidadControlU_state_out_mux0000_8_4112 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0025_101_Q,
      I2 => unidadControlU_n0025_103_Q,
      LO => unidadControlU_state_out_mux0000_8_4112_1859
    );
  unidadControlU_state_out_mux0000_8_31112 : LUT3_D
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0025_106_Q,
      I2 => unidadControlU_n0025_108_Q,
      LO => N782,
      O => unidadControlU_state_out_mux0000_8_31112_1844
    );
  unidadControlU_state_out_mux0000_13_11131 : LUT4_D
    generic map(
      INIT => X"FF04"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_cmp_eq0014,
      I2 => unidadControlU_N168,
      I3 => unidadControlU_N2121,
      LO => N783,
      O => unidadControlU_N2141
    );
  unidadControlU_state_out_mux0000_8_2 : LUT4_D
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0019,
      I1 => unidadControlU_current_st_cmp_eq0021,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => N115,
      LO => N784,
      O => unidadControlU_N44
    );
  unidadControlU_state_out_mux0000_5_0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => unidadControlU_n0008_9_Q,
      I1 => unidadControlU_N227,
      LO => unidadControlU_state_out_mux0000_5_0_1803
    );
  unidadControlU_state_out_mux0000_7_171 : LUT4_L
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_7_6_1831,
      I1 => unidadControlU_state_out_mux0000_7_5_1830,
      I2 => unidadControlU_N16,
      I3 => unidadControlU_N72,
      LO => unidadControlU_state_out_mux0000_7_171_1827
    );
  unidadControlU_state_out_mux0000_14_56 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_14_37_1762,
      I1 => unidadControlU_state_out_mux0000_14_45_1763,
      I2 => unidadControlU_state_out_mux0000_14_34_1761,
      I3 => unidadControlU_N177,
      LO => unidadControlU_state_out_mux0000_14_56_1764
    );
  unidadControlU_state_out_mux0000_15_20 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_N16,
      I1 => unidadControlU_state_out_mux0000_15_4_1773,
      I2 => unidadControlU_N227,
      I3 => unidadControlU_state_out_mux0000_15_13_1769,
      LO => unidadControlU_state_out_mux0000_15_20_1770
    );
  unidadControlU_state_out_mux0000_15_62 : LUT4_L
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_n0027_105_Q,
      I2 => unidadControlU_state_out_mux0000_15_38_1772,
      I3 => unidadControlU_n0029_106_Q,
      LO => unidadControlU_state_out_mux0000_15_62_1775
    );
  unidadControlU_state_out_mux0000_4_23 : LUT4_L
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N170,
      I1 => unidadControlU_N16,
      I2 => unidadControlU_state_out_mux0000_4_17_1793,
      I3 => unidadControlU_state_out_mux0000_4_6_1799,
      LO => unidadControlU_state_out_mux0000_4_23_1794
    );
  unidadControlU_n0026_mux0002_246_1 : LUT3_L
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_next_val_FSM_FFd22_1622,
      I2 => unidadControlU_n0026_or0001,
      LO => unidadControlU_n0026_mux0002(246)
    );
  unidadControlU_state_out_mux0000_8_4312 : LUT3_D
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0028_103_Q,
      I2 => unidadControlU_n0028_107_Q,
      LO => N785,
      O => unidadControlU_state_out_mux0000_8_4312_1865
    );
  unidadControlU_state_out_mux0000_8_4315 : LUT3_D
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_n0029_103_Q,
      I2 => unidadControlU_n0029_107_Q,
      LO => N786,
      O => unidadControlU_state_out_mux0000_8_4315_1866
    );
  unidadControlU_state_out_mux0000_8_4212 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0025_105_Q,
      I2 => unidadControlU_n0025_107_Q,
      LO => unidadControlU_state_out_mux0000_8_4212_1862
    );
  unidadControlU_state_out_mux0000_8_31215 : LUT4_D
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd15_1399,
      I1 => unidadControlU_n0028_100_Q,
      I2 => unidadControlU_n0028_104_Q,
      I3 => unidadControlU_n0028_108_Q,
      LO => N787,
      O => unidadControlU_state_out_mux0000_8_31215_1848
    );
  unidadControlU_state_out_mux0000_8_312111 : LUT4_D
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_n0029_100_Q,
      I2 => unidadControlU_n0029_104_Q,
      I3 => unidadControlU_n0029_108_Q,
      LO => N788,
      O => unidadControlU_state_out_mux0000_8_312111_1846
    );
  unidadControlU_state_out_mux0000_8_323 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_n0029_102_Q,
      I2 => unidadControlU_n0029_106_Q,
      LO => unidadControlU_state_out_mux0000_8_323_1851
    );
  unidadControlU_state_out_mux0000_8_363 : LUT4_L
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0025_102_Q,
      I3 => unidadControlU_n0026_102_Q,
      LO => unidadControlU_state_out_mux0000_8_363_1855
    );
  unidadControlU_state_out_mux0000_8_387 : LUT4_L
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_state_out_mux0000_8_365_1856,
      I2 => unidadControlU_N176,
      I3 => unidadControlU_N201,
      LO => unidadControlU_state_out_mux0000_8_387_1857
    );
  unidadControlU_state_out_mux0000_13_58 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_13_381_1753,
      I1 => unidadControlU_N211,
      I2 => unidadControlU_N189,
      I3 => unidadControlU_N207,
      LO => unidadControlU_state_out_mux0000_13_58_1754
    );
  unidadControlU_state_out_mux0000_12_52 : LUT4_L
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_N1231,
      I2 => unidadControlU_state_out_mux0000_12_42_1739,
      I3 => unidadControlU_state_out_mux0000_12_34_1738,
      LO => unidadControlU_state_out_mux0000_12_52_1740
    );
  unidadControlU_next_val_FSM_FFd15_In5471 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      LO => N789,
      O => unidadControlU_N237
    );
  unidadControlU_next_val_FSM_FFd15_In5351 : LUT2_L
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd7_1450,
      LO => unidadControlU_N2411
    );
  unidadControlU_next_val_FSM_FFd15_In83 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N30,
      I1 => unidadControlU_next_val_FSM_FFd15_In34_1538,
      I2 => unidadControlU_next_val_FSM_FFd15_In48_1544,
      I3 => unidadControlU_next_val_FSM_FFd15_In80_1545,
      LO => unidadControlU_next_val_FSM_FFd15_In83_1546
    );
  unidadControlU_next_val_FSM_FFd15_In142 : LUT3_L
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      LO => unidadControlU_next_val_FSM_FFd15_In142_1531
    );
  unidadControlU_state_out_mux0000_8_1191 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_n0026_6_Q,
      I3 => unidadControlU_n0025_6_Q,
      LO => unidadControlU_state_out_mux0000_8_1191_1835
    );
  unidadControlU_state_out_mux0000_14_1132 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0029_101_Q,
      I1 => unidadControlU_n0029_102_Q,
      I2 => unidadControlU_n0029_103_Q,
      I3 => unidadControlU_n0029_104_Q,
      LO => N790,
      O => unidadControlU_N1631
    );
  unidadControlU_state_out_mux0000_14_1112 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0027_101_Q,
      I1 => unidadControlU_n0027_102_Q,
      I2 => unidadControlU_n0027_103_Q,
      I3 => unidadControlU_n0027_104_Q,
      LO => N791,
      O => unidadControlU_N159
    );
  unidadControlU_state_out_or00201 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N792,
      O => unidadControlU_state_out_or0020
    );
  unidadControlU_n0026_or00011 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd4_1434,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_current_st_FSM_FFd8_1455,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N793,
      O => unidadControlU_n0026_or0001
    );
  unidadControlU_state_out_mux0000_9_241215 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_9_24125_1889,
      I1 => unidadControlU_state_out_mux0000_9_241213_1886,
      I2 => unidadControlU_state_out_mux0000_9_24122_1887,
      LO => N794,
      O => unidadControlU_N201
    );
  unidadControlU_state_out_mux0000_9_24133 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0026_103_Q,
      I1 => unidadControlU_n0026_107_Q,
      I2 => unidadControlU_n0026_108_Q,
      I3 => unidadControlU_n0026_1_Q,
      LO => unidadControlU_state_out_mux0000_9_24133_1890
    );
  unidadControlU_state_out_mux0000_9_280 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_N237,
      I2 => unidadControlU_cMemory_mux0000_9_wg_cy_5_Q_1370,
      I3 => unidadControlU_N49,
      LO => N795,
      O => unidadControlU_state_out_mux0000_9_280_1893
    );
  unidadControlU_state_out_mux0000_9_308 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0025_10_Q,
      I1 => unidadControlU_n0025_11_Q,
      I2 => unidadControlU_n0025_101_Q,
      I3 => unidadControlU_n0025_102_Q,
      LO => unidadControlU_state_out_mux0000_9_308_1896
    );
  unidadControlU_state_out_mux0000_9_368 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0026_6_Q,
      I1 => unidadControlU_n0026_3_Q,
      I2 => unidadControlU_n0026_2_Q,
      I3 => unidadControlU_n0026_5_Q,
      LO => unidadControlU_state_out_mux0000_9_368_1901
    );
  unidadControlU_state_out_mux0000_9_405 : LUT4_L
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd3_1428,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_state_out_mux0000_9_383_1903,
      I3 => unidadControlU_state_out_mux0000_9_333_1898,
      LO => unidadControlU_state_out_mux0000_9_405_1904
    );
  unidadControlU_state_out_mux0000_9_665 : LUT4_D
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_9_657_1919,
      I1 => unidadControlU_state_out_or0024,
      I2 => unidadControlU_cMemory_mux0000_9_wg_cy_5_Q_1370,
      I3 => unidadControlU_N49,
      LO => N796,
      O => unidadControlU_state_out_mux0000_9_665_1920
    );
  unidadControlU_Mmux_n0025_2_f5_41 : LUT3_D
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_35,
      I2 => unidadControlU_Mmux_n0024_45,
      LO => N797,
      O => unidadControlU_n0025_104_Q
    );
  unidadControlU_Mmux_n0025_2_f5_121 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_313,
      I2 => unidadControlU_Mmux_n0024_413,
      LO => unidadControlU_n0025_16_Q
    );
  unidadControlU_Mmux_n0025_2_f5_161 : LUT3_D
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_317,
      I2 => unidadControlU_Mmux_n0024_417,
      LO => N798,
      O => unidadControlU_n0025_4_Q
    );
  unidadControlU_Mmux_n0024_2_f5_91 : LUT3_D
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_310,
      I2 => unidadControlU_Mmux_n0024_410,
      LO => N799,
      O => unidadControlU_n0024_10_Q
    );
  unidadControlU_Mmux_n0029_2_f5_51 : LUT3_D
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_36,
      I2 => unidadControlU_Mmux_n0024_46,
      LO => N800,
      O => unidadControlU_n0029_105_Q
    );
  unidadControlU_Mmux_n0029_2_f5_61 : LUT3_D
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_37,
      I2 => unidadControlU_Mmux_n0024_47,
      LO => N801,
      O => unidadControlU_n0029_106_Q
    );
  unidadControlU_Mmux_n0029_2_f5_171 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_318,
      I2 => unidadControlU_Mmux_n0024_418,
      LO => unidadControlU_n0029_5_Q
    );
  unidadControlU_state_out_mux0000_5_141_SW0 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd7_1450,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      LO => N802,
      O => N138
    );
  unidadControlU_state_out_mux0000_9_228_SW0 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => unidadControlU_n0024_101_Q,
      I1 => unidadControlU_n0024_16_Q,
      I2 => unidadControlU_n0024_15_Q,
      LO => N140
    );
  unidadControlU_state_out_mux0000_9_469 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0029_7_Q,
      I1 => unidadControlU_state_out_mux0000_9_460_1906,
      I2 => N142,
      I3 => unidadControlU_N159,
      LO => unidadControlU_state_out_mux0000_9_469_1907
    );
  unidadControlU_state_out_mux0000_9_534 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0029_7_Q,
      I1 => N144,
      I2 => unidadControlU_N1131,
      I3 => unidadControlU_state_out_mux0000_9_525_1911,
      LO => unidadControlU_state_out_mux0000_9_534_1912
    );
  unidadControlU_state_out_mux0000_9_610_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_n0029_15_Q,
      I1 => unidadControlU_n0029_10_Q,
      I2 => unidadControlU_n0029_11_Q,
      I3 => unidadControlU_n0029_6_Q,
      LO => N146
    );
  unidadControlU_next_val_FSM_FFd15_In31 : LUT3_D
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd3_1428,
      I2 => unidadControlU_current_st_FSM_FFd7_1450,
      LO => N803,
      O => unidadControlU_N30
    );
  unidadControlU_state_out_mux0000_13_314 : LUT4_L
    generic map(
      INIT => X"CC08"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_In9,
      I1 => unidadControlU_state_out_13_Q,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => N115,
      LO => unidadControlU_state_out_mux0000_13_314_1752
    );
  unidadControlU_state_out_mux0000_13_1112123 : LUT4_D
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => N156,
      I1 => N157,
      I2 => unidadControlU_state_out_mux0000_13_111261_1749,
      I3 => unidadControlU_N11,
      LO => N804,
      O => unidadControlU_N2121
    );
  unidadControlU_state_out_mux0000_8_206 : LUT4_L
    generic map(
      INIT => X"0503"
    )
    port map (
      I0 => N171,
      I1 => N170,
      I2 => unidadControlU_state_out_or0000,
      I3 => N115,
      LO => unidadControlU_state_out_mux0000_8_206_1840
    );
  unidadControlU_state_out_mux0000_15_86 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_8_31112_1844,
      I1 => unidadControlU_state_out_mux0000_8_31115_1845,
      I2 => unidadControlU_state_out_mux0000_8_311113_1843,
      I3 => unidadControlU_N194,
      LO => unidadControlU_state_out_mux0000_15_86_1777
    );
  unidadControlU_state_out_mux0000_9_169_SW0 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_1516,
      I1 => unidadControlU_next_val_FSM_FFd21_1620,
      LO => N195
    );
  unidadControlU_next_val_FSM_FFd3_In166 : LUT4_D
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N2061,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_next_val_FSM_FFd3_In154_1650,
      LO => N805,
      O => unidadControlU_N48
    );
  unidadControlU_next_val_FSM_FFd1_In157 : LUT4_D
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => irU_ir_out_full(18),
      I2 => unidadControlU_current_st_FSM_FFd7_1450,
      I3 => unidadControlU_current_st_FSM_FFd3_1428,
      LO => N806,
      O => unidadControlU_N2241
    );
  unidadControlU_state_out_mux0000_13_318_SW0 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd9_1694,
      I1 => unidadControlU_next_val_FSM_FFd10_1500,
      I2 => unidadControlU_next_val_FSM_FFd6_1676,
      I3 => unidadControlU_next_val_FSM_FFd5_1668,
      LO => N807,
      O => N209
    );
  unidadControlU_state_out_mux0000_13_318 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N5,
      I1 => unidadControlU_state_out_mux0000_13_31_1751,
      I2 => N209,
      I3 => unidadControlU_n0008_1_Q,
      LO => unidadControlU_N106
    );
  unidadControlU_Mmux_n0025_322 : LUT4_D
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_FSM_FFd8_1455,
      I2 => unidadControlU_next_val_FSM_FFd22_1622,
      I3 => irU_ir_out_full(16),
      LO => N808,
      O => unidadControlU_Mmux_n0024_322
    );
  unidadControlU_next_val_FSM_FFd17_In111 : LUT4_D
    generic map(
      INIT => X"ABEF"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => irU_ir_out_full(16),
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_FSM_FFd12_1386,
      LO => N809,
      O => unidadControlU_N157
    );
  unidadControlU_next_val_FSM_FFd22_In12 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd8_1455,
      I1 => N213,
      I2 => unidadControlU_N256,
      I3 => unidadControlU_N1971,
      LO => N810,
      O => unidadControlU_N247
    );
  unidadControlU_next_val_FSM_FFd21_In_SW0 : LUT4_L
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd18_1414,
      I1 => unidadControlU_current_st_FSM_FFd20_1421,
      I2 => N222,
      I3 => unidadControlU_N50,
      LO => N90
    );
  unidadControlU_next_val_FSM_FFd20_In_SW0 : LUT4_L
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd19_1416,
      I1 => unidadControlU_current_st_FSM_FFd20_1421,
      I2 => N222,
      I3 => unidadControlU_N50,
      LO => N92
    );
  unidadControlU_next_val_FSM_FFd17_In12_SW0 : LUT4_L
    generic map(
      INIT => X"AAAE"
    )
    port map (
      I0 => unidadControlU_N220,
      I1 => N226,
      I2 => unidadControlU_current_st_FSM_FFd6_1447,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      LO => N83
    );
  unidadControlU_state_out_mux0000_3_1131 : LUT4_D
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N138,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_315,
      I3 => unidadControlU_Mmux_n0024_415,
      LO => N811,
      O => unidadControlU_N1231
    );
  unidadControlU_state_out_mux0000_10_76 : LUT4_L
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N245,
      I1 => unidadControlU_state_out_mux0000_10_47_1729,
      I2 => unidadControlU_N88,
      I3 => N244,
      LO => unidadControlU_state_out_mux0000_10_76_1730
    );
  unidadControlU_state_out_mux0000_5_8 : LUT4_L
    generic map(
      INIT => X"01EF"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_5_141_1805,
      I1 => unidadControlU_state_out_mux0000_5_151_1806,
      I2 => N253,
      I3 => N254,
      LO => unidadControlU_state_out_mux0000_5_8_1808
    );
  unidadControlU_state_out_mux0000_9_191 : LUT4_L
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_N240,
      I2 => unidadControlU_N185,
      I3 => unidadControlU_N1941,
      LO => unidadControlU_state_out_mux0000_9_191_1880
    );
  unidadControlU_state_out_mux0000_9_104 : LUT4_D
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_state_out_mux0000_9_131_1876,
      I1 => unidadControlU_cMemory_mux0000_9_wg_cy_5_Q_1370,
      I2 => N258,
      I3 => unidadControlU_state_out_mux0000_9_96_1924,
      LO => N812,
      O => unidadControlU_state_out_mux0000_9_104_1873
    );
  unidadControlU_state_out_mux0000_13_111260_SW0 : LUT3_L
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => irU_ir_out_full(16),
      I1 => unidadControlU_current_st_FSM_FFd6_1447,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      LO => N264
    );
  unidadControlU_state_out_mux0000_3_157_SW0 : LUT4_L
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_state_out_mux0000_3_20_1784,
      I2 => unidadControlU_state_out_mux0000_3_83_1789,
      I3 => unidadControlU_state_out_mux0000_3_49_1786,
      LO => N266
    );
  unidadControlU_state_out_mux0000_9_669 : LUT4_L
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N269,
      I1 => unidadControlU_state_out_mux0000_9_626_1917,
      I2 => unidadControlU_state_out_mux0000_9_610_1916,
      I3 => N268,
      LO => unidadControlU_state_out_mux0000_9_669_1921
    );
  unidadControlU_state_out_mux0000_9_714_SW1 : LUT4_L
    generic map(
      INIT => X"DCDD"
    )
    port map (
      I0 => unidadControlU_N89,
      I1 => unidadControlU_state_out_mux0000_9_2_1881,
      I2 => unidadControlU_state_out_mux0000_9_104_1873,
      I3 => N273,
      LO => N176
    );
  unidadControlU_state_out_mux0000_8_9 : LUT4_L
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => unidadControlU_N5,
      I1 => unidadControlU_next_val_FSM_FFd8_1680,
      I2 => N211,
      I3 => unidadControlU_next_val_FSM_FFd12_1508,
      LO => unidadControlU_state_out_mux0000_8_9_1871
    );
  unidadControlU_next_val_FSM_FFd19_In179 : LUT4_L
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd19_In115_1592,
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_next_val_FSM_FFd19_In153_1599,
      LO => unidadControlU_next_val_FSM_FFd19_In179_1600
    );
  unidadControlU_next_val_FSM_FFd3_In132 : LUT4_L
    generic map(
      INIT => X"3302"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_N168,
      I3 => N275,
      LO => unidadControlU_next_val_FSM_FFd3_In132_1648
    );
  unidadControlU_next_val_FSM_FFd15_In5311 : LUT3_D
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => irU_ir_out_full(23),
      I2 => unidadControlU_next_val_FSM_FFd19_1589,
      LO => N813,
      O => unidadControlU_N254
    );
  unidadControlU_state_out_mux0000_4_5 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_N5,
      I1 => unidadControlU_next_val_FSM_FFd15_1525,
      I2 => unidadControlU_next_val_FSM_FFd21_1620,
      I3 => unidadControlU_n0008_1_Q,
      LO => unidadControlU_state_out_mux0000_4_5_1797
    );
  unidadControlU_next_val_FSM_FFd15_In5411 : LUT4_D
    generic map(
      INIT => X"FAF2"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => N279,
      I3 => irU_ir_out_full(19),
      LO => N814,
      O => unidadControlU_N215
    );
  unidadControlU_state_out_mux0000_13_1111_SW1 : LUT4_L
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_N138,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => unidadControlU_current_st_cmp_eq0021,
      LO => N281
    );
  unidadControlU_next_val_FSM_FFd17_In138_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_In130_1561,
      I1 => unidadControlU_N251,
      I2 => unidadControlU_N228,
      I3 => unidadControlU_next_val_FSM_FFd17_In1322_1562,
      LO => N283
    );
  unidadControlU_state_out_mux0000_13_1111_SW0 : LUT4_D
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => unidadControlU_N240,
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => unidadControlU_N138,
      LO => N815,
      O => N159
    );
  unidadControlU_next_val_FSM_FFd1_In22 : LUT4_D
    generic map(
      INIT => X"F1F0"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => N285,
      I3 => unidadControlU_N01,
      LO => N816,
      O => unidadControlU_N56
    );
  unidadControlU_state_out_mux0000_10_47_SW0 : LUT4_L
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_317,
      I3 => unidadControlU_Mmux_n0024_417,
      LO => N287
    );
  unidadControlU_next_val_FSM_FFd15_In294 : LUT4_L
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => unidadControlU_N208,
      I1 => unidadControlU_next_val_FSM_FFd15_In261_1534,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      I3 => N291,
      LO => unidadControlU_next_val_FSM_FFd15_In294_1535
    );
  unidadControlU_next_val_FSM_FFd19_In122 : LUT4_D
    generic map(
      INIT => X"0F04"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => unidadControlU_N2101,
      I2 => N293,
      I3 => unidadControlU_N123,
      LO => N817,
      O => unidadControlU_N229
    );
  unidadControlU_next_val_FSM_FFd18_In148 : LUT4_L
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => unidadControlU_N208,
      I1 => unidadControlU_N244,
      I2 => irU_ir_out_full(23),
      I3 => N295,
      LO => unidadControlU_next_val_FSM_FFd18_In148_1573
    );
  unidadControlU_n0008_9_26 : LUT3_L
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => N297,
      LO => unidadControlU_n0008_9_26_1262
    );
  unidadControlU_state_out_mux0000_9_112_SW0 : LUT4_L
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_N2,
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      I3 => unidadControlU_current_st_FSM_FFd15_1399,
      LO => N301
    );
  unidadControlU_state_out_mux0000_7_14 : LUT4_L
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N138,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_312,
      I3 => unidadControlU_Mmux_n0024_412,
      LO => unidadControlU_state_out_mux0000_7_14_1825
    );
  unidadControlU_state_out_mux0000_3_111_SW0 : LUT4_L
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => unidadControlU_N237,
      I1 => irU_ir_out_full(17),
      I2 => unidadControlU_Mmux_n0024_3,
      I3 => unidadControlU_Mmux_n0024_4,
      LO => N119
    );
  unidadControlU_state_out_mux0000_15_38 : LUT4_D
    generic map(
      INIT => X"DDD8"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => N322,
      I2 => unidadControlU_Mmux_n0024_48,
      I3 => unidadControlU_Mmux_n0024_49,
      LO => N818,
      O => unidadControlU_state_out_mux0000_15_38_1772
    );
  unidadControlU_state_out_mux0000_9_24111 : LUT4_L
    generic map(
      INIT => X"F5E4"
    )
    port map (
      I0 => irU_ir_out_full(17),
      I1 => unidadControlU_Mmux_n0024_49,
      I2 => N326,
      I3 => unidadControlU_Mmux_n0024_414,
      LO => unidadControlU_state_out_mux0000_9_2411_1885
    );
  unidadControlU_n0008_1_37 : LUT4_D
    generic map(
      INIT => X"FF47"
    )
    port map (
      I0 => N344,
      I1 => irU_ir_out_full(17),
      I2 => N343,
      I3 => unidadControlU_n0008_1_10_1257,
      LO => N819,
      O => unidadControlU_n0008_1_Q
    );
  unidadControlU_next_val_FSM_FFd18_In323_SW0 : LUT4_L
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd18_1569,
      I1 => unidadControlU_next_val_FSM_FFd18_In15_1574,
      I2 => unidadControlU_next_val_FSM_FFd18_In9_1588,
      I3 => unidadControlU_next_val_FSM_FFd18_In298_1582,
      LO => N335
    );
  unidadControlU_state_out_mux0000_8_110 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N350,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => N346,
      LO => unidadControlU_state_out_mux0000_8_110_1834
    );
  unidadControlU_state_out_mux0000_13_1 : LUT4_D
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0013,
      I1 => unidadControlU_N31,
      I2 => N352,
      I3 => unidadControlU_N2141,
      LO => N820,
      O => unidadControlU_N45
    );
  unidadControlU_state_out_mux0000_9_241_SW0 : LUT4_L
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_state_out_mux0000_9_280_1893,
      I2 => unidadControlU_n0024_8_Q,
      I3 => N360,
      LO => N235
    );
  unidadControlU_state_out_mux0000_3_70_SW0 : LUT4_L
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => unidadControlU_Mmux_n0024_415,
      I1 => unidadControlU_N190,
      I2 => N363,
      I3 => N362,
      LO => N220
    );
  unidadControlU_state_out_mux0000_7_131 : LUT4_L
    generic map(
      INIT => X"080F"
    )
    port map (
      I0 => unidadControlU_n0026_15_Q,
      I1 => unidadControlU_current_st_FSM_FFd3_1428,
      I2 => irU_ir_out_full(18),
      I3 => N367,
      LO => unidadControlU_state_out_mux0000_7_131_1824
    );
  unidadControlU_next_val_FSM_FFd10_In24 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_next_val_FSM_FFd10_In15_1504,
      I3 => unidadControlU_N2191,
      LO => unidadControlU_next_val_FSM_FFd10_In24_1505
    );
  unidadControlU_state_out_mux0000_9_177 : LUT4_D
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => N543,
      I1 => unidadControlU_N5,
      I2 => unidadControlU_state_out_mux0000_9_169_1878,
      I3 => unidadControlU_n0008_3_Q,
      LO => N821,
      O => unidadControlU_state_out_mux0000_9_177_1879
    );
  unidadControlU_next_val_FSM_FFd17_In85 : LUT4_L
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd17_In68_1567,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => N547,
      LO => unidadControlU_next_val_FSM_FFd17_In85_1568
    );
  unidadControlU_next_val_FSM_FFd12_In19 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd12_In15_1510,
      I1 => unidadControlU_N236,
      I2 => irU_ir_out_full(19),
      LO => unidadControlU_next_val_FSM_FFd12_In19_1511
    );
  unidadControlU_next_val_FSM_FFd15_In34_SW0 : LUT4_L
    generic map(
      INIT => X"F010"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => unidadControlU_next_val_FSM_FFd15_1525,
      LO => N563
    );
  unidadControlU_state_out_mux0000_2_18_SW0 : LUT4_L
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => unidadControlU_state_out_2_Q,
      I1 => unidadControlU_current_st_FSM_FFd21_1423,
      I2 => unidadControlU_N89,
      I3 => unidadControlU_N45,
      LO => N565
    );
  unidadControlU_next_val_FSM_FFd8_In124_SW0 : LUT4_L
    generic map(
      INIT => X"0133"
    )
    port map (
      I0 => unidadControlU_N02,
      I1 => unidadControlU_next_val_FSM_FFd8_In91_1693,
      I2 => unidadControlU_N1951,
      I3 => unidadControlU_next_val_FSM_FFd8_In42_1690,
      LO => N567
    );
  unidadControlU_next_val_FSM_FFd18_In53 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => unidadControlU_N192,
      I1 => unidadControlU_N101,
      I2 => N577,
      I3 => unidadControlU_current_st_FSM_FFd14_1396,
      LO => unidadControlU_next_val_FSM_FFd18_In53_1583
    );
  unidadControlU_next_val_FSM_FFd4_In97 : LUT4_L
    generic map(
      INIT => X"3320"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0020,
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_N251,
      I3 => N583,
      LO => unidadControlU_next_val_FSM_FFd4_In97_1667
    );
  unidadControlU_next_val_FSM_FFd5_In121 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N258,
      I1 => irU_ir_out_full(22),
      I2 => unidadControlU_N112,
      I3 => unidadControlU_N168,
      LO => N822,
      O => unidadControlU_N125
    );
  unidadControlU_current_st_FSM_FFd4_In90 : LUT4_L
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I1 => activar_cpu_IBUF_498,
      I2 => unidadControlU_current_st_cmp_eq0020,
      I3 => irU_ir_out_full(18),
      LO => unidadControlU_current_st_FSM_FFd4_In90_1441
    );
  unidadControlU_next_val_FSM_FFd14_In131 : LUT4_D
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => irU_ir_out_full(21),
      I1 => unidadControlU_N233,
      I2 => unidadControlU_N168,
      I3 => N77,
      LO => N823,
      O => unidadControlU_N200
    );
  unidadControlU_next_val_FSM_FFd15_In306 : LUT4_L
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => unidadControlU_N112,
      I1 => irU_ir_out_full(23),
      I2 => irU_ir_out_full(22),
      I3 => unidadControlU_N228,
      LO => unidadControlU_next_val_FSM_FFd15_In306_1536
    );
  unidadControlU_state_out_mux0000_6_31 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_current_st_FSM_N2,
      I3 => unidadControlU_N11,
      LO => N824,
      O => unidadControlU_N227
    );
  unidadControlU_next_val_FSM_FFd19_In1121 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N2,
      I1 => unidadControlU_current_st_FSM_FFd4_1434,
      I2 => irU_ir_out_full(16),
      I3 => irU_ir_out_full(17),
      LO => N825,
      O => unidadControlU_N2101
    );
  unidadControlU_next_val_FSM_FFd22_In30 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd11_1382,
      I2 => irU_ir_out_full(19),
      I3 => unidadControlU_N240,
      LO => unidadControlU_next_val_FSM_FFd22_In30_1629
    );
  unidadControlU_state_out_mux0000_9_211 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N346,
      I1 => unidadControlU_current_st_FSM_FFd14_1396,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => N609,
      LO => N826,
      O => unidadControlU_N31
    );
  unidadControlU_next_val_FSM_FFd16_In89 : LUT4_L
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => unidadControlU_N1971,
      I1 => unidadControlU_current_st_FSM_FFd12_1386,
      I2 => unidadControlU_current_st_FSM_FFd13_1394,
      I3 => N611,
      LO => unidadControlU_next_val_FSM_FFd16_In89_1556
    );
  unidadControlU_state_out_mux0000_3_20_SW0 : LUT4_L
    generic map(
      INIT => X"FE00"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd20_1618,
      I1 => unidadControlU_next_val_FSM_FFd17_1558,
      I2 => unidadControlU_next_val_FSM_FFd24_1636,
      I3 => unidadControlU_N2161,
      LO => N613
    );
  unidadControlU_state_out_mux0000_13_111293_SW1_SW0 : LUT3_L
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => unidadControlU_current_st_cmp_eq0009,
      I1 => unidadControlU_current_st_FSM_N18,
      I2 => unidadControlU_current_st_FSM_FFd1_1377,
      LO => N615
    );
  unidadControlU_state_out_mux0000_9_4101 : LUT3_D
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => unidadControlU_N2,
      I1 => unidadControlU_current_st_cmp_eq0009,
      I2 => unidadControlU_N11,
      LO => N827,
      O => unidadControlU_N2161
    );
  unidadControlU_next_val_FSM_FFd16_In24 : LUT4_L
    generic map(
      INIT => X"020A"
    )
    port map (
      I0 => unidadControlU_N240,
      I1 => unidadControlU_next_val_FSM_FFd19_1589,
      I2 => N635,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => unidadControlU_next_val_FSM_FFd16_In24_1552
    );
  unidadControlU_state_out_mux0000_0_15_SW0 : LUT4_L
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd16_1406,
      I1 => unidadControlU_current_st_cmp_eq0019,
      I2 => unidadControlU_state_out_or0000,
      I3 => unidadControlU_state_out_mux0000_0_5_1719,
      LO => N637
    );
  unidadControlU_next_val_FSM_FFd17_In39_SW0 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(23),
      I1 => unidadControlU_N2001,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N639
    );
  unidadControlU_state_out_mux0000_3_2111_SW0 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => irU_ir_out_full(19),
      I1 => unidadControlU_N240,
      I2 => unidadControlU_current_st_FSM_FFd11_1382,
      LO => N828,
      O => N641
    );
  unidadControlU_next_val_FSM_FFd15_In250_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"AF8C"
    )
    port map (
      I0 => irU_ir_out_full(18),
      I1 => unidadControlU_current_st_FSM_FFd16_1406,
      I2 => unidadControlU_current_st_FSM_FFd4_1434,
      I3 => unidadControlU_current_st_FSM_FFd5_1443,
      LO => N647
    );
  unidadControlU_next_val_FSM_FFd16_In161_SW0 : LUT4_L
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd14_1396,
      I1 => unidadControlU_state_out_or0020,
      I2 => unidadControlU_N157,
      I3 => unidadControlU_N2181,
      LO => N649
    );
  unidadControlU_state_out_mux0000_6_21 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd21_1423,
      I1 => unidadControlU_N89,
      I2 => unidadControlU_current_st_cmp_eq0019,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N829,
      O => unidadControlU_N170
    );
  unidadControlU_next_val_FSM_FFd16_In130_SW0 : LUT4_L
    generic map(
      INIT => X"54FF"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd5_1443,
      I1 => unidadControlU_current_st_FSM_FFd12_1386,
      I2 => unidadControlU_current_st_FSM_FFd16_1406,
      I3 => irU_ir_out_full(19),
      LO => N545
    );
  unidadControlU_next_val_FSM_FFd18_In15211 : LUT4_D
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => irU_ir_out_full(21),
      I2 => irU_ir_out_full(22),
      I3 => unidadControlU_N168,
      LO => N830,
      O => unidadControlU_N2081
    );
  unidadControlU_next_val_FSM_FFd2_In57 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N549,
      I1 => irU_ir_out_full(19),
      I2 => unidadControlU_current_st_FSM_FFd14_1396,
      I3 => N609,
      LO => unidadControlU_next_val_FSM_FFd2_In57_1616
    );
  unidadControlU_next_val_FSM_FFd16_In211_SW0 : LUT4_L
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd16_1547,
      I1 => unidadControlU_N195,
      I2 => unidadControlU_next_val_FSM_FFd16_In161_1551,
      I3 => unidadControlU_next_val_FSM_FFd16_In94_1557,
      LO => N661
    );
  unidadControlU_next_val_FSM_FFd19_In115_SW0 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_next_val_FSM_FFd14_In9,
      I1 => unidadControlU_next_val_FSM_FFd19_In59_1604,
      I2 => unidadControlU_next_val_FSM_FFd19_In80_1606,
      I3 => N663,
      LO => N575
    );
  unidadControlU_next_val_FSM_FFd18_In256_SW0 : LUT4_L
    generic map(
      INIT => X"0F7F"
    )
    port map (
      I0 => unidadControlU_N17,
      I1 => unidadControlU_N02,
      I2 => unidadControlU_next_val_FSM_FFd18_In250_1580,
      I3 => unidadControlU_next_val_FSM_FFd18_In228_1579,
      LO => N675
    );
  unidadControlU_next_val_FSM_FFd15_In201_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"F2F0"
    )
    port map (
      I0 => irU_ir_out_full(20),
      I1 => unidadControlU_current_st_FSM_FFd15_1399,
      I2 => unidadControlU_next_val_FSM_FFd15_In135_1530,
      I3 => N677,
      LO => N553
    );
  unidadControlU_current_st_FSM_FFd6_In32 : LUT4_D
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => activar_cpu_IBUF_498,
      I1 => unidadControlU_N2,
      I2 => unidadControlU_current_st_FSM_FFd21_In10_1425,
      I3 => unidadControlU_current_st_cmp_eq0009,
      LO => N831,
      O => unidadControlU_N2361
    );
  unidadControlU_state_out_mux0000_14_117_SW01 : LUT3_L
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => unidadControlU_state_out_14_Q,
      I1 => N399,
      I2 => N115,
      LO => N183
    );
  unidadControlU_n0026_or00011_1 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd4_1_1442,
      I1 => unidadControlU_current_st_FSM_FFd8_1_1464,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N832,
      O => unidadControlU_n0026_or00011_1489
    );
  unidadControlU_n0026_or00001_1 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => unidadControlU_current_st_FSM_FFd12_1_1393,
      I1 => unidadControlU_current_st_FSM_FFd8_1_1464,
      I2 => unidadControlU_current_st_FSM_FFd15_1399,
      I3 => unidadControlU_current_st_FSM_FFd16_1406,
      LO => N833,
      O => unidadControlU_n0026_or00001_1487
    );

end Structure;

