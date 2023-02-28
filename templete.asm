TITLE COA-Game, Version 1        

; Game Title   : Money Heist
; Organization : Team x86
; Designer     : 

INCLUDE Irvine32.inc

.data

;-------------------(Money_Heist_logo and Starting page)----------------------------------

_heist_logo_graphic  byte "          ooo        ooooo   .oooooo.   ooooo      ooo oooooooooooo oooooo   oooo      ooooo   ooooo oooooooooooo ooooo    o    ooooooooooooo", 0ah
				 byte "          `88.       .888'  d8P'  `Y8b  `888b.     `8' `888'     `8  `888.   .8'       `888'   `888' `888'     `8 `888' .d88888 8'   888   `8", 0ah
				 byte "           888b     d'888  888      888  8 `88b.    8   888           `888. .8'         888     888   888          888  8[ 8         888", 0ah	
				 byte "           8 Y88. .P  888  888      888  8   `88b.  8   888oooo8       `888.8'          888ooooo888   888oooo8     888  `Y888B.      888", 0ah	
				 byte "           8  `888'   888  888      888  8     `88b.8   888    *        `888'           888     888   888    *     888     8 ]8      888", 0ah	
				 byte "           8    Y     888  `88b    d88'  8       `888   888       o      888            888     888   888       o  888  88888P'      888", 0ah					
				 byte "          o8o        o888o  `Y8bood8P'  o8o        `8  o888ooooood8     o888o          o888o   o888o o888ooooood8 o888o    8        o888o", 0

				 
_gameplay_message_graphic byte "                ____       _           _     _   ____                 _____   _                                            _  ", 0ah
                          byte "               / ___|  ___| | ___  ___| |_  / | |___ \    ___  _ __  |___ /  | |_ ___    _ __  _ __ ___   ___ ___  ___  __| | ", 0ah
					 byte "               \___ \ / _ \ |/ _ \/ __| __| | |   __) |  / _ \| '__|   |_ \  | __/ _ \  | '_ \| '__/ _ \ / __/ _ \/ _ \/ _` |",0ah
                          byte "                ___) |  __/ |  __/ (__| |_  | |_ / __/  | (_) | |     ___) | | || (_) | | |_) | | | (_) | (_|  __/  __/ (_| |", 0ah
                          byte "               |____/ \___|_|\___|\___|\__| |_( )_____|  \___/|_|    |____/   \__\___/  | .__/|_|  \___/ \___\___|\___|\__,_|", 0ah
					 byte "                                              |/                                        |_|                                  ", 0
                         
_gameplay_option_graphic  byte "                    ___        _____ _           _      _____               ", 0ah
                          byte "                   |_  |      |   __| |_ ___ ___| |_   |   __|___ _____ ___ ", 0ah
                          byte "                    _| |_ _   |__   |  _| .'|  _|  _|  |  |  | .'|     | -_|", 0ah
                          byte "                   |_____|_|  |_____|_| |__,|_| |_|    |_____|__,|_|_|_|___|", 0ah
                          byte "                    ___      _____         _               _   _            ", 0ah
                          byte "                   |_  |    |     |___ ___| |_ ___ _ _ ___| |_|_|___ ___ ___ ", 0ah
                          byte "                   |  _|_   |== ==|   |_ -|  _|  _| | |  _|  _| | . |   |_ -|", 0ah
					 byte "                   |___|_|  |_____|_|_|___|_| |_| |___|___|_| |_|___|_|_|___| ", 0ah
					 byte "                    ___      _____     _ _      _            _         _   _ ", 0ah
					 byte "                   |_  |    |   __|_ _|_| |_   | |_ ___    _| |___ ___| |_| |_ ___ ___ ", 0ah
					 byte "                   |_  |_   |   __|_'_| |  _|  |  _| . |  | . | -_|_ -| '_|  _| . | . |", 0ah
					 byte "                   |___|_|  |_____|_,_|_|_|    |_| |___|  |___|___|___|_,_|_| |___|  _|", 0ah
					 byte "                                                                                  |_|", 0
					 




;-------------------(Money_Heist_GAME_INTRUCTIONS)----------------------------------

_instruction_heading byte "      ___ _   _ ____ _____ ____  _   _  ____ _____ ___ ___  _   _ ____ ", 0ah
                     byte "     |_ _| \ | / ___|_   _|  _ \| | | |/ ___|_   _|_ _/ _ \| \ | / ___|", 0ah
                     byte "      | ||  \| \___ \ | | | |_) | | | | |     | |  | | | | |  \| \___ \ ", 0ah               
                     byte "      | || |\  |___) || | |  _ <| |_| | |___  | |  | | |_| | |\  |___) |.",0ah
				 byte "     |___|_| \_|____/ |_| |_| \_\\___/ \____| |_| |___\___/|_| \_|____/.",0

 _instruction   byte "    Chose a character first.   You will then be given 1000 dollars to start the game.", 0ah
                byte "    To play the game you must roll the dice.The dice roll will determine your fate!!!", 0ah
                byte "    Each round you can gain money or lose money. After each round you can chose to ", 0ah               
                byte "    continue playing or leave the game with the money and assets you have already earned.", 0

_instruction_screen_selection_message byte "           Select 1 or 2 to proceed", 0ah
							   byte "                1. Start game", 0ah
							   byte "                2. Exit to desktop", 0


;----------------------------------TITLE OF GAME and WELCOME MESSAGE----------------------------------------------------------

     _title      byte "                          __  __  ___  _   _ _______   __  _   _ _____ ___  _ _____ ", 0ah
                 byte "                         |  \/  |/ _ \| \ | | ____\ \ / / | | | | ____|_ _|| |_   _|", 0ah                
                 byte "                         | |\/| | | | |  \| |  _|  \ V /  | |_| |  _|  | |/ __)| |", 0ah
                 byte "                         | |  | | |_| | |\  | |___  | |   |  _  | |___ | |\__ \| |", 0ah
			  byte "                         |_|  |_|\___/|_| \_|_____| |_|   |_| |_|_____|___(   /|_|", 0ah
			  byte "                                                                           |_|     ", 0

     _welcome byte "Welcome to Money Heist !", 0


;----------------------------------Character SELECTION---------------------------------------------------------------------------

     charOption byte "Before you start the game - ", 0ah
                byte "1. Tokyo", 0ah
                byte "2. Denver", 0ah
                byte "3. Professor", 0ah
                byte "4. Nairobi", 0ah
                byte "5. Exit", 0ah
                byte "Choose a character or EXIT - ", 0


;----------------------------------------------------Welcoming message for specific CHARACTER----------------------------------

     welcome_prof byte "Hey Professor! Let's begin the heist !", 0
     welcome_tokyo byte "Hey Tokyo! Let's begin the heist !", 0
     welcome_denver byte "Hey Denver! Let's begin the heist !", 0
     welcome_nairobi byte "Oooow....wait. You don't know nairobi is dead in Season 04. Sorry for the spoiler. Better you choose other character. Have fun !!!", 0
 

;----------------------------------------------------Message for each Character stating their initial money--------------------	
	prof1 byte "Professor, You have ", 0
     tokyo1 byte "Tokyo, You have ", 0
     den byte "Denver, You have ", 0

	
;------------------------------------------------options for player (_main_)---------------------------------------------------

     main_options byte "1. Buy a house", 0ah
                  byte "2. Sell a product", 0ah
                  byte "3. Bankrupt", 0ah
                  byte "4. Buy a car", 0ah
                  byte "5. Invest", 0ah
                  byte "6. Start a business", 0ah
                  byte "7. Buy lottery", 0

	main_options2 byte "1. Buy a car", 0ah
                  byte "2. Buy a house", 0ah
                  byte "3. Bankrupt", 0ah
                  byte "4. Sell a pruduct", 0ah
                  byte "5. Invest", 0ah
                  byte "6. Start a business", 0ah
                  byte "7. Buy lottery", 0


;-------------------------------------------------sub-option  of (1. Buy a house)----------------------------------------------------- 

     house_options byte "Oh you decided to buy a house, here are your options", 0ah
			    byte "1. Penthouse(400$)", 0ah
                   byte "2. Garden Apartment(200$)", 0ah
                   byte "3. Sky Loft(300$)", 0ah
                   byte "4. Change my mind", 0

;--------------------------------------------------option output display for (1. Buy a house)---------------------------------------

     house_option1 byte "O boy! You bought a Penthouse in Miami", 0
     house_option2 byte "Yee! You bought a nice Garden Apartment in Florida", 0
     house_option3 byte "Smart! You bought a Sky Loft in Los Angeles", 0
     house_option4 byte "You saved some money this time, but next time i will beat you", 0


;---------------------------------------------------sub-option  of (2. Sell a product)---------------------------------------------------
     product_options byte "Oh you decided to sell a product! Here are your options", 0ah
				 byte "1. Piano(200$)", 0ah
                     byte "2. Watch(100$)", 0ah
                     byte "3. Your product got stolen, can not sell anymore", 0

;----------------------------------------------------option output display for (2. Sell a product)-----------------------------------------
     product_option1 byte "O boy! You sold your piano for 200$", 0
     product_option2 byte "Yee! You sold your rolex watch for 100$", 0
     product_option3 byte "Bad Luck! Or I got you", 0
 
;--------------------------------------------------------------------------------sub-option of (4. Buy a car)----------------------------------------
	car_options byte "Oh you decided to buy a car! Here are your options", 0ah 
	            byte "1. AUDI(300$)", 0ah
                 byte "2. Lamborghini (500$)", 0ah
                 byte "3. Ferrari(600$)", 0ah
                 byte "4. Change my mind", 0

;-------------------------------------------------------------------------------option output display for (4. Buy a car)---------------------------------
     car_option1 byte "Smart! You bought an AUDI", 0
     car_option2 byte "Yee! You bought a Lamborhini", 0
     car_option3 byte "Oh boy! You bought a Red Ferrari", 0
     car_option4 byte "You saved some money this time, but next time i will beat you", 0

;----------------------------------------------------------------------------sub-option of (5. Invest)--------------------------------------------------------
     invest_options byte "Oh you decided to invest in business! Here are your options", 0ah
				byte "1. Cokacola(+200$)", 0ah
                    byte "2. ACER(-300$)", 0ah
                    byte "3. SpaceX(+500$)", 0ah
                    byte "4. Yahoo(-500$)", 0

;--------------------------------------------------------------------------option output display for (5. Invest)----------------------------------------------
     invest_option1 byte "Profit - 200$, Nice Job!", 0
     invest_option2 byte "Lose - 300$, Bad Invest", 0
     invest_option3 byte "Profit - 500$, You get the bussiness idea!", 0
     invest_option4 byte "Lose - 500$, You are a worst investor", 0


;-------------------------------------------------------------------------------sub-option (6. Start a business)-------------------------------------
     business_options byte "Oh you decided to start a business! Here are your options", 0ah
				  byte "1. 100$ profit per cycle", 0ah
                      byte "2. You are not prepared", 0ah
                      byte "3. 50$ lose per cycle", 0

;-----------------------------------------------------------------------------option output display for (6. Start a business)-------------------------------
     business_option1 byte "Now you will gain 100$ each time you start the game. Start from now", 0
     business_option2 byte "As you heared, Next Time", 0
     business_option3 byte "Now you will loss 50$ each time you start the game. Start from now", 0
    
;---------------------------------------------------------sub-option of (7. Buy lottery)------------------------------------------------------------------------------ 	
	lottery_options byte "Oh you decided to buy a lottery! Here are your options.", 0ah
				 byte "1. Jackpot(1000$)", 0ah
                     byte "2. Nothing(-50$)", 0
     lottery_option1 byte "$$$$$$$$$$ JACKPOT $$$$$$$$$$", 0
     lottery_option2 byte "You got nothing. But you need to pay 50$ for purchasing the lottery", 0

;----------------------------------------------------------------rolling the dice----------------------------------------------------
     dice_roll byte "Let's roll the dice. Enter 1 to roll the dice", 0
	dice_roll_status byte "Rolling.../" ,0
	dice_roll_error_message byte "Must enter 1. Try again", 0 

;--------------------------------------------------------------_miscelenous_ messages--------------------------------------------------------------------- 

     welcome_other byte "Choose 1 to 5, Try Again", 0
     sellProductString byte "You sold an item", 0

     bankruptString  byte "  Yb  dP                8                                       8               8                     w      8 8 8", 0ah
			      byte "   YbdP  .d8b. 8   8    88b. .d88b .d8b .d88 8d8b.d8b. .d88b    88b. .d88 8d8b. 8.dP 8d8b 8   8 88b. w8ww    8 8 8", 0ah
			      byte "    YP   8' .8 8b d8    8  8 8.dP' 8    8  8 8P Y8P Y8 8.dP'    8  8 8  8 8P Y8 88b  8P   8b d8 8  8  8      * * *", 0ah
			      byte "    88   `Y8P' `Y8P8    88P' `Y88P `Y8P `Y88 8   8   8 `Y88P    88P' `Y88 8   8 8 Yb 8    `Y8P8 88P'  Y8P    w w w", 0ah
				 byte "                                                                                                8                 ",0


     startBussinessString byte "You just started a new bussiness", 0
     buyLotteryString byte "You bought a lottery", 0
     investString byte "You invested in a company", 0
     buyCarString byte "You bought a car", 0
     currentMoneyString byte "Current Balance - ", 0
     userString1 byte "Now you have ", 0
     userDecision byte "Do you want to play again?( 1. Yes  2. No )--> ", 0
     noMoney byte "You don't have enough money to continue the game", 0
     dollar byte "$", 0

	exit_desktop_message byte "The game has been exited ", 0


;--------------------------------------------------------------_varibles_declared---------------------------------------------------------------------

     random_choice dword ? ; dice value after rolling
     total_money dword 1000	; Initial amount of money given to players

     property_list word 60 dup(0)  ; Array to store assets

     ;----------------------------------------------((itemList))-------------------------------------
     item_list byte " __ __                                _                        ", 0ah
			byte "|  |  |___ _ _ ___    ___ ___ ___ ___| |_ ___    ___ ___ ___   ", 0ah
			byte "|_   _| . | | |  _|  | .'|_ -|_ -| -_|  _|_ -|  | .'|  _| -_|", 0ah
			byte "  |_| |___|___|_|    |__,|___|___|___|_| |___|  |__,|_| |___|_|", 0
			
     ;-------------------Houses---------------
     Penthouse_item byte "Penthouse", 0
     Garden_Apartment_item byte "Garden Apartment", 0
     Sky_Loft_item byte "Sky Loft", 0

     ;-------------------Cars-----------------
     Audi_item byte "Audi", 0
     Lamborghini_item byte "Lamborghini", 0
     Ferrari_item byte "Ferrari", 0

     ;-------------------Companies------------

     Cokacola_item byte "Cokacola", 0 
     Acer_item byte "Acer", 0
     SpaceX_item byte "SpaceX", 0
     Yahoo_item byte "Yahoo", 0



;;----------------------------(ALL IMAGES)---------------------------------- 

	;-------------------(_buy_house) graphics----------------------------------

	penthouse_graphic byte "      [][][]  /\  [][][]", 0ah
				   byte "       |::| /____\ |::|", 0ah
				   byte "       |[]|_|::::|_|[]|", 0ah
				   byte "       |::::::__::::::|", 0ah
				   byte "       |:::::/||\:::::|", 0ah
				   byte "       |:#:::||||::#::|", 0ah
				   byte "     ####################", 0

	gardenApartment_graphic byte "                         ^", 0ah
					    byte "            _______     ^^^", 0ah
				         byte "           |xxxxxxx|  _^^^^^_", 0ah
				         byte "           |xxxxxxx| | [][]  |", 0ah
				         byte "        ______xxxxx| |[][][] |", 0ah
				         byte "       |++++++|xxxx| | [][][]|", 0ah
				         byte "       |++++++|xxxx| |[][][] |", 0ah
					    byte "       |++++++|xxxx| | [][][]|", 0ah
					    byte "       |++++++|xxxx| |[][][] |", 0ah
					    byte "       |++HH++|xxxx| | [][][]|", 0ah
					    byte "      #########################", 0



	
	sky_loft_graphic        byte "         ^                   |~", 0ah
					    byte "       ^     ^  ^        _|__|__|_           ^   ^", 0ah
				         byte "         ___________    _|  | |  |_    ___________   ^", 0ah
				         byte "        (__IXIXIXIXI___|_|__|_|__|_|___IXIXIXIXI__)", 0ah
				         byte "        (__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)", 0ah
					    byte "        (__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)", 0ah
					    byte "        (__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)", 0ah
					    byte "        (__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)", 0ah
					    byte "        (__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)", 0ah				        
				         byte "      /)(__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)", 0ah
					    byte "    _/ )(__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)_/)_", 0ah
					    byte "     ~^^(__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__) ~~^", 0ah
					    byte "    ^~~ (__|*|*|*|*| [=][=] [=] [=][=] |*|*|*|*|__)~~^", 0ah
					    byte "    ###################################################", 0




;-------------------(_Sell_a_product_) graphics----------------------------------


	piano_graphic  byte "             ____", 0ah
				byte "            | |  \", 0ah			
				byte "            | |   \________", 0ah
				byte "           _|_|____________)", 0ah
				byte "  /|      /   |  __________)", 0ah
				byte "  ||__   /____|,'  ________|", 0ah
				byte "  |/_/| _|_______,'      )(", 0ah
				byte "  |  |   :|)(            )(", 0ah
				byte "           )(              ", 0

	
	watch_graphic  byte "             _..._", 0ah
				byte "            |_____|", 0ah
				byte "            |_____|", 0ah	
				byte "            |_____|", 0ah	
				byte "            |_____|", 0ah	
				byte "            |_____|", 0ah	
				byte "           / _____ \",0ah 
				byte "           ||  '  ||", 0ah
				byte "           ||  |  ||", 0ah
				byte "           ||  |  ||)", 0ah
				byte "           ||__.__||", 0ah
				byte "           \_______/", 0ah
				byte "            |_____|", 0ah
				byte "            |_____|", 0ah
				byte "            |_____|", 0ah
				byte "            |_____|", 0ah
				byte "            |_   _|", 0ah				
				byte "              ```", 0	



;-------------------(_buy_a_car_) graphics----------------------------------

	lamborghini_graphic  byte "                              _.-=*_-         _", 0ah
				      byte "                         _.-=*   _-          | ||*******---._______     __.. ", 0ah	
					 byte "             ___.===****-.______-,,,,,,,,,,,,`-''----* ****       *****  __'", 0ah	
				      byte "      __.--**     __        ,'                   o \           __        [__|", 0ah	
				      byte " __-**=======.--""  ""--.=================================.--**  **--.=======:             ", 0ah	
				      byte "]       [w] : /        \ : |========================|    : /        \ :  [w] :             ", 0ah	
				      byte "V___________:|          |: |========================|    :|          |:   _-               ", 0ah
				      byte " V__________: \        / :_|=======================/_____: \        / :__-*                ", 0ah
				      byte " -----------'  *-____-*  `-------------------------------'  *-____-*                       ", 0
				      						
	
	ferrari_graphic byte "                       ___..............._", 0ah
				      byte "	      __.. ' _'.******\\********- .`-                                             ", 0ah						  	
					 byte "  ______.-'         (_) |      \\           ` \\`-.                                  ", 0ah	
				      byte " /_       --------------'-------\\---....______\\__`.`  -..___                       ", 0ah	
				      byte " | T      _.----._           Xxx|x...           |          _.._`--. _                ", 0ah	
				      byte " | |    .' ..--.. `.         XXX|XXXXXXXXXxx==  |       .'.---..`.     -._           ", 0ah	
				      byte " \_j   /  /  __  \  \        XXX|XXXXXXXXXXX==  |      / /  __  \ \        `-.       ", 0ah
				      byte "  _|  |  |  /  \  |  |       XXX|**'            |     / |  /  \  | |          |      ", 0ah
				      byte " |__\_j  |  \__/  |  L__________|_______________|_____j |  \__/  | L__________J      ", 0ah
					 byte "      `'\ \      / ./__________________________________\ \      / /___________\      ", 0ah
					 byte "         `.`----'.'                                     `.`----'.'                   ", 0

					
	audi_graphic   byte "                     ___..................____", 0ah
				byte "             _..--''~_______   _____...----~~~\\", 0ah
				byte "         __.'    .-'~       \\~      [_`.7     \\", 0ah	
				byte "   .---~~      .'            \\           __..--\\_", 0ah	
				byte "  /             `-._          \\   _...~~~_..---~  ~~~~~~~~~~~~--.._", 0ah	
				byte "  \              /  ~~~~~~----_\`-~_-~~__          ~~~~~~~---.._    ~--.__", 0ah	
				byte "   \     _       |==            |   ~--___--------...__          `-   _.--***|",0ah 
				byte "    \ __/.-._\   |              |            ~~~~--.  `-._ ___...--~~~_.'|_Y |", 0ah
				byte "     `--'|/~_\\  |              |     _____           _.~~~__..--~~_.-~~~.-~/", 0ah
				byte "       | ||| |\\_|__            |.../.----.._.        | Y |__...--~~_.-~  _/", 0ah
				byte "        ~\\\ || ~|..__---____   |||||  .'~-. \\       |_..-----~~~~   _.~~", 0ah
				byte "          \`-'/ /     ~~~----...|'''|  |/*_*\ \\   |~~'           __.~", 0ah
				byte "           `~~~'                 ~~-:  ||| ~| |\\  |        __..~~", 0ah
				byte "                                     ~~|||  | | \\/  _.---~~", 0ah
				byte "                                       \\\  //  | ~~~", 0ah
				byte "                                        \`-'/  /", 0ah								
				byte "                                         `~~~~'", 0	
	


;-------------------(_invest_) graphics----------------------------------


	coke_graphic   byte "              __                              ___   __        .ama     ,    ", 0ah
				byte "           ,d888a                          ,d88888888888ba.  ,88*I)   d     ", 0ah
				byte "          a88']8i                         a88*.8*8)   `*8888:88  * _a8'     ", 0ah	
				byte "        .d8P' PP                        .d8P'.8  d)      *8:88:baad8P'      ", 0ah	
				byte "       ,d8P' ,ama,   .aa,  .ama.g ,mmm  d8P' 8  .8'        88):888P'        ", 0ah	
				byte "      ,d88' d8[ *8..a8*88 ,8I*88[ I88' d88   ]IaI*        d8[               ", 0ah	
				byte "      a88' ]P *bm8mP8'(8'.8I  8[      d88'    `*         .88                ",0ah 
				byte "     ,88I ]P[  .I'.8     88' ,8' I[  ,88P ,ama    ,ama,  d8[  .ama.g        ", 0ah
				byte "     [88' I8, .I' ]8,  ,88B ,d8 aI   (88',88*8)  d8[ *8. 88 ,8I*88[         ", 0ah
				byte "     ]88  `8888*  '8888* *88P*8m*    I88 88[ 8[ ]P *bm8m88[.8I  8[          ", 0ah
				byte "     ]88,          _,,aaaaaa,_       I88 8*  8 ]P[  .I' 88 88' ,8' I[       ", 0ah
				byte "     `888a,.  ,aadd88888888888bma.   )88,  ,]I I8, .I' )88a8B ,d8 aI        ", 0ah
				byte "       *888888PP*'        `8******8   *888PP'  `8888*  `88P*88P*8m*    ", 0
				
	spacex_graphic   byte ",adPPYba, 8b,dPPYba,  ,adPPYYba,  ,adPPYba,  ,adPPYba, 8b,     ,d8          ", 0ah
				byte "I8[    ** 88P'    *8a **     `Y8 a8*     ** a8P_____88  `Y8, ,8P'           ", 0ah
				byte " `*Y8ba,  88       d8 ,adPPPPP88 8b         8PP*******    )888(             ", 0ah
				byte " aa    ]8I 88b,   ,a8* 88,    ,88 *8a,   ,aa *8b,   ,aa  ,d8* *8b,          ", 0ah	
				byte "`*YbbdP*' 88`YbbdP*'  `*8bbdP*Y8  `*Ybbd8*'  `*Ybbd8*' 8P'     `Y8          ", 0ah	
				byte "          88  ", 0ah	
				byte "          88                                                                ", 0	
				

	acer_graphic   byte "              8888b.  .d8888b .d88b. 888d888           ", 0ah
				byte "                 *88bd88P*   d8P  Y8b888P*             ", 0ah
				byte "             .d888888888     88888888888               ", 0ah	
				byte "             888  888Y88b.   Y8b.    888               ", 0ah	
				byte "             *Y888888 *Y8888P *Y8888 888               ", 0	
				
	yahoo_graphic   byte "                         888 ", 0ah
				byte "                         888 ", 0ah
				byte "                         888 ", 0ah
				byte "         888  888 8888b. 88888b.  .d88b.  .d88b. ", 0ah	
				byte "         888  888    *88b888 *88bd88**88bd88**88b ", 0ah	
				byte "         888  888.d888888888  888888  888888  888 ",0ah 
				byte "         Y88b 888888  888888  888Y88..88PY88..88P ", 0ah
				byte "          *Y88888*Y888888888  888 *Y88P*  *Y88P*  ", 0ah
				byte "              888 ", 0ah
				byte "         Y8b d88P  ", 0ah
				byte "          *Y88P* ", 0

;-------------------(_lottery_) graphics----------------------------------

	jackpot_graphic   byte ":'########:::'########:::::::::::'##::::'###:::::'######::'##:::'##:'########:::'#######::'########:::::'########:::'########::", 0ah
				   byte "'##. ##. ##:'##. ##. ##:::::::::: ##:::'## ##:::'##... ##: ##::'##:: ##.... ##:'##.... ##:... ##..:::::'##. ##. ##:'##. ##. ##:", 0ah
				   byte " ##: ##:..:: ##: ##:..::::::::::: ##::'##:. ##:: ##:::..:: ##:'##::: ##:::: ##: ##:::: ##:::: ##::::::: ##: ##:..:: ##: ##:..::", 0ah
				   byte ". ########::. ########::::::::::: ##:'##:::. ##: ##::::::: #####:::: ########:: ##:::: ##:::: ##:::::::. ########::. ########::", 0ah	
				   byte ":... ##. ##::... ##. ##::::'##::: ##: #########: ##::::::: ##. ##::: ##.....::: ##:::: ##:::: ##::::::::... ##. ##::... ##. ##:", 0ah	
				   byte "'##: ##: ##:'##: ##: ##:::: ##::: ##: ##.... ##: ##::: ##: ##:. ##:: ##:::::::: ##:::: ##:::: ##:::::::'##: ##: ##:'##: ##: ##:",0ah 
				   byte ". ########::. ########:::::. ######:: ##:::: ##:. ######:: ##::. ##: ##::::::::. #######::::: ##:::::::. ########::. ########::", 0ah
				   byte ":........::::........:::::::......:::..:::::..:::......:::..::::..::..::::::::::.......::::::..:::::::::........::::........:::", 0







.code 
main PROC
	;-------------------(Money_Heist_logo and Starting page) print ----------------------------------

	call crlf
	call crlf
	call crlf
	call crlf
	call crlf
	mov edx, offset _heist_logo_graphic	
     call writestring
     call crlf
     call crlf
	call crlf
	call crlf
	call crlf
	call crlf
	call crlf
	call crlf

	mov edx, offset _gameplay_message_graphic	
     call writestring
     call crlf
     call crlf

	mov edx, offset _gameplay_option_graphic	
     call writestring
     call crlf
     call crlf

	call readint   ;getting input for starting page menu
	cmp eax, 1	; compare statement used to compare values with user input (1 to 3)
     je _game_start		; jump to start game
     cmp eax, 2
     je instruct	;show instruction
     cmp eax, 3
	je _Exit		; out of game	



	;-------------------(Money_Heist_GAME_INTRUCTIONS)----------------------------------
instruct:
	call clrscr
	
	call crlf
	call crlf
	call crlf
	mov edx, offset _heist_logo_graphic	
     call writestring
     call crlf
     call crlf
	call crlf
	call crlf
	call crlf
	call crlf

	mov edx, offset _instruction_heading
     call writestring
     call crlf
     call crlf
	call crlf
	call crlf


	mov edx, offset _instruction
     call writestring
     call crlf
     call crlf
	call crlf
	call crlf
	call crlf

	call crlf
	call crlf
	call crlf
	mov edx, offset _instruction_screen_selection_message	
     call writestring
     call crlf
     call crlf
	call crlf
	call crlf
	call crlf
	call crlf


	call readint ; user input in instruction screen

	cmp eax, 1	; compare statement used to compare values with user input (1 or 2)
     je _game_start		; jump to start game

     cmp eax, 2
     je _Exit            ;exit game
	
	
	



     ;------------------------------------- heading setup -------------------------------------------
_game_start:
	call clrscr
	

     mov ebx, total_money
     

     mov edx, offset _title	; printing  _title
     call writestring
     call crlf
     call crlf

     mov edx, offset _welcome ; printing welcome_message
     call writestring
     call crlf
     call crlf


begin:

	
     
     ;-------------Character Option setup ------------------
     mov edx, offset charOption ; printing character selection option_)
     call writestring


     call readint ; get user input
     ;---------------- respone to the user input for choosing character ------------------
     cmp eax, 1	; compare statement used to compare values with user input (1 to 4 characters, 5 exit)
     je _Tokyo		; _if equal _jump_ to different player routes
     cmp eax, 2
     je _Denver
     cmp eax, 3
     je _Professor
     cmp eax, 4
     je _Nairobi
     cmp eax, 5
     je _Exit
     jne _Others

;-------------------------- Character (Professor) ----------------------------------

     ;---------------- Professor Route ---------------------------------
     _Professor:                                                                  ; character - Professor
          mov esi, offset property_list
          ; -------------show option to professor -----------------------
          mov edx, offset welcome_prof ; print welcome message for professor
          call writestring
          call crlf
          call crlf

professor_startGame:                                                              ; start the loop of 'Professor Route'

          mov edx, offset prof1
          call writestring

          mov eax, ebx	; ebx is current storing total money 
          call writedec	; prints money amount

          mov edx, offset dollar ; prints dollar _sign
          call writestring
          call crlf
          call crlf

          mov edx, offset main_options ; prints main options
          call writestring
          call crlf
          call crlf

          ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_prof    

_try_again_prof:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_prof:
		call readint 
	     cmp eax, 1	
          jne _try_again_prof

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_prof                


          ;------------ randomly generate numbers between 1 to 7 ------------------ 
_random_generate_prof:
          mov eax, 6
          call randomrange		; generates number 0 to 6
          add eax, 1			; to avoid the number 0, _if 0 than 1. Because our options starts with 1.
          mov random_choice, eax   ; store the value of eax register so that we can use eax register to store other values
          mov eax, 3000            ; delay function- 3secs
          call delay
          mov eax, random_choice
          call writedec
          call crlf
          call crlf


          ;--------------------compare result ----------------------------
          cmp eax, 1			; eax has random (1 to 7 value) from random-choice
          je buyHouse			; _jumps if equal
          cmp eax, 2
          je sellProduct
          cmp eax, 3
          je bankrupt
          cmp eax, 4
          je buyCar
          cmp eax, 5
          je invest
          cmp eax, 6
          je startBusiness
          cmp eax, 7
          je buyLottery


          ;---------------------show result -------------------------------
          buyHouse:                                                                  ; main option 1 (_buy_house)
               mov edx, offset house_options    ; print options for house
               call writestring
               call crlf

               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_prof_buyhouse   

_try_again_prof_buyhouse:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_prof_buyhouse:
		call readint 
	     cmp eax, 1	
          jne _try_again_prof_buyhouse 

		mov edx, offset dice_roll_status
          call writestring	
		

		jmp _random_generate_prof_buyhouse
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_prof_buyhouse: 

               mov eax, 4
               call randomrange
               add eax, 1				; turns 0 value to 1 
               mov random_choice, eax
               mov eax, 3000				; there is a delay before dice roll
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf

		  ;---------------------sub_option_ buy house -------------------------------
               cmp eax, 1
               je penthouse		; depending on the random number value jump_equal will move to each different route
               cmp eax, 2
               je garden
               cmp eax, 3
               je sky
               cmp eax, 4
               je noHouse


               penthouse:                                                                  ; main option 1 sub option 1
                    mov eax , 1
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset penthouse_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 400
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision	; print statement that asks user if he wants to play again
                    call writestring
                    call readint				; takes user-input
                    mov ecx, 3                    ; save a value in ecx. Later in 2050 line, in start section, we will check the ecx value. Based on the value we will know which character these code 
                                                  ; belongs to currently. It's just use to track the character. We will use it in our future functions
                    cmp eax, 1                    ; compare user input to 1
                    je start                      ; if equal, then jump at start
                    jmp showItem                     ; otherwise exit


               garden:                                                                  ; main option 1 sub option 2
                    mov eax , 2
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset gardenApartment_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint				; takes user-input
                    mov ecx, 3                    ; save a value in ecx. Later in 2050 line, in start section, we will check the ecx value. Based on the value we will know which character these code 
                                                  ; belongs to currently. It's just use to track the character. We will use it in our future functions
                    cmp eax, 1                    ; compare user input to 1
                    je start                      ; if equal, then jump at start
                    jmp showItem                     ; otherwise exit


               sky:                                                                  ; main option 1 sub option 3
                    mov eax , 3
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset sky_loft_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint				; takes user-input
                    mov ecx, 3                    ; save a value in ecx. Later in 2050 line, in start section, we will check the ecx value. Based on the value we will know which character these code 
                                                  ; belongs to currently. It's just use to track the character. We will use it in our future functions
                    cmp eax, 1                    ; compare user input to 1
                    je start                      ; if equal, then jump at start
                    jmp showItem                     ; otherwise exit


               noHouse:                                                                  ; main option 1 sub option 4
                    mov edx, offset house_option4
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint				; takes user-input
                    mov ecx, 3                    ; save a value in ecx. Later in 2050 line, in start section, we will check the ecx value. Based on the value we will know which character these code 
                                                  ; belongs to currently. It's just use to track the character. We will use it in our future functions
                    cmp eax, 1                    ; compare user input to 1
                    je start                      ; if equal, then jump at start
                    jmp showItem                     ; otherwise exit


               sellProduct:                                                                  ; main option 2 (_sell_product)
               mov edx, offset product_options
               call writestring
               call crlf

               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_prof_sellproduct   

_try_again_prof_sellproduct:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_prof_sellproduct:
		call readint 
	     cmp eax, 1	
          jne _try_again_prof_sellproduct 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_prof_sellproduct 
;------------ randomly generate numbers between 1 to 3 ------------------ 
_random_generate_prof_sellproduct:         

               mov eax, 3
               call randomrange                   ; generate random number 0 to 3
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf

			;----- comparing _using dice value generated----
               cmp eax, 1
               je piano
               cmp eax, 2
               je watch
               cmp eax, 3
               je noSell

               ; --------------------------ouput based on the random value------------------------------------
               piano:                                                                  ; main option 2 sub option 1
                    mov edx, offset product_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset piano_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               watch:                                                                  ; main option 2 sub option 2
                    mov edx, offset product_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset watch_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 100
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               noSell:                                                                  ; main option 2 sub option 3
                    mov edx, offset product_option3
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

          bankrupt:
               
               mov edx, offset bankruptString                                    ; main option 3 (_bank_rupt))
               call writestring
               call crlf
               mov edx, offset userString1
               call writestring

               sub ebx, ebx		; making user balance _zero 
               mov eax, ebx
               call writedec  
               mov edx, offset dollar
               call writestring
               call crlf
               mov edx, offset userDecision
               call writestring
               call readint
               mov ecx, 3
               cmp eax, 1
               je start
               jmp showItem

          ; comments same as main option 1
          buyCar:                                                                  ; main option 4 (_buy_car)
               mov edx, offset car_options
               call writestring
               call crlf
              ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_prof_buycar    

_try_again_prof_buycar:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_prof_buycar:
		call readint 
	     cmp eax, 1	
          jne _try_again_prof_buycar 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_prof_buycar 
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_prof_buycar:         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je audi
               cmp eax, 2
               je lamborghini
               cmp eax, 3
               je ferrari
               cmp eax, 4
               je noCar

               audi:   
                                                               ; main option 4 sub option 1
                    mov eax , 4
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset audi_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               lamborghini:                                                                  ; main option 4 sub option 2
                    mov eax , 5
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset lamborghini_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               ferrari:                                                                  ; main option 4 sub option 3
                    mov eax , 6
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset ferrari_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 600
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               noCar:                                                                  ; main option 4 sub option 4
                    mov edx, offset car_option4
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

          invest:                                                                  ; main option 5 (_invest_)
               mov edx, offset invest_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_prof_invest    

_try_again_prof_invest :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_prof_invest :
		call readint 
	     cmp eax, 1	
          jne _try_again_prof_invest  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_prof_invest  
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_prof_invest :         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf

               cmp eax, 1
               je cokacola
               cmp eax, 2
               je acer
               cmp eax, 3
               je spacex
               cmp eax, 4
               je yahoo


               cokacola:                                                                  ; main option 5 sub option 1
                    mov eax , 7
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset coke_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem


               acer:                                                                  ; main option 5 sub option 2
                    mov eax , 8
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset acer_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem


               spacex:                                                                  ; main option 5 sub option 3
                    mov eax , 9
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset spacex_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem


               yahoo:                                                                  ; main option 5 sub option 4
                    mov eax , 10
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option4
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset yahoo_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

          startBusiness:                                                                  ; main option 6 (_startBusiness)
               mov edx, offset business_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_prof_startbusiness   

_try_again_prof_startbusiness  :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_prof_startbusiness:
		call readint 
	     cmp eax, 1	
          jne _try_again_prof_startbusiness   

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_prof_startbusiness   
;------------ randomly generate numbers between 1 to 3 ------------------ 
_random_generate_prof_startbusiness:         
               mov eax, 3
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je profit
               cmp eax, 2
               je noBusiness
               cmp eax, 3
               je loss

               profit:                                                                  ; main option 6 sub option 1
                    mov edx, offset business_option1
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 100
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               noBusiness:                                                                  ; main option 6 sub option 2
                    mov edx, offset business_option2
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               loss:                                                                  ; main option 6 sub option 3
                    mov edx, offset business_option3
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 50
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

          buyLottery:                                                                  ; main option 7 (_buy_lottery)
               mov edx, offset lottery_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_prof_lottery    

_try_again_prof_lottery :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_prof_lottery :
		call readint 
	     cmp eax, 1	
          jne _try_again_prof_lottery  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_prof_lottery  
;------------ randomly generate numbers between 1 or 2 ------------------ 
_random_generate_prof_lottery :         
               mov eax, 2
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je jackpot
               cmp eax, 2
               je nothing

               jackpot:                                                                  ; main option 7 sub option 1
                    mov edx, offset lottery_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset jackpot_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 1000
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem

               nothing:                                                                  ; main option 7 sub option 2
                    mov edx, offset lottery_option2
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 3
                    cmp eax, 1
                    je start
                    jmp showItem



;-------------------------- Character (Tokyo) ----------------------------------

	
     _Tokyo:                                                                  ; character - Tokyo
          ; -------------show option to tokyo -----------------------
          mov esi, offset property_list
          mov edx, offset welcome_tokyo
          call writestring
          call crlf
          call crlf
          tokyo_startGame:
          mov edx, offset tokyo1
          call writestring
          mov eax, ebx
          call writedec
          mov edx, offset dollar
          call writestring
          call crlf
          call crlf
          mov edx, offset main_options
          call writestring
          call crlf
          call crlf
          ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_tokyo   

_try_again_tokyo:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_tokyo:
		call readint 
	     cmp eax, 1	
          jne _try_again_tokyo 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_tokyo 
;------------ randomly generate numbers between 1 to 7 ------------------ 
_random_generate_tokyo:

          mov eax, 7
          call randomrange
          add eax, 1
          mov random_choice, eax
          mov eax, 3000
          call delay
          mov eax, random_choice
          call writedec
          call crlf
          call crlf
          ;--------------------compare result ----------------------------
          cmp eax, 1
          je tokyo_buyHouse
          cmp eax, 2
          je tokyo_sellProduct
          cmp eax, 3
          je tokyo_bankrupt
          cmp eax, 4
          je tokyo_buyCar
          cmp eax, 5
          je tokyo_invest
          cmp eax, 6
          je tokyo_startBusiness
          cmp eax, 7
          je tokyo_buyLottery
          ;---------------------show result -------------------------------
         

tokyo_buyHouse:                                                                  ; main option 1 (_buy_house)
               mov edx, offset house_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_tokyo_buyhouse   

_try_again_tokyo_buyhouse :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_tokyo_buyhouse :
		call readint 
	     cmp eax, 1	
          jne _try_again_tokyo_buyhouse  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_tokyo_buyhouse  
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_tokyo_buyhouse :         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je tokyo_penthouse
               cmp eax, 2
               je tokyo_garden
               cmp eax, 3
               je tokyo_sky
               cmp eax, 4
               je tokyo_noHouse

               tokyo_penthouse:                                                                  ; main option 1 sub option 1
                    mov eax , 1
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset penthouse_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 400
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_garden:                                                                  ; main option 1 sub option 2
                    mov eax , 2
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset gardenApartment_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    mov ecx, 1
                    call readint
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_sky:                                                                  ; main option 1 sub option 3
                    mov eax , 3
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset sky_loft_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_noHouse:                                                                  ; main option 1 sub option 4
                    mov edx, offset house_option4
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem



             
tokyo_sellProduct:                                                                  ; main option 2 (_sell_product)
               mov edx, offset product_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_tokyo_sellProduct    

_try_again_tokyo_sellProduct :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_tokyo_sellProduct :
		call readint 
	     cmp eax, 1	
          jne _try_again_tokyo_sellProduct  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_tokyo_sellProduct 

;------------ randomly generate numbers between 1 to 3 ------------------ 
_random_generate_tokyo_sellProduct :         
               mov eax, 3
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je tokyo_piano
               cmp eax, 2
               je tokyo_watch
               cmp eax, 3
               je tokyo_noSell

               tokyo_piano:                                                                  ; main option 2 sub option 1
                    mov edx, offset product_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset piano_graphic
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_watch:                                                                  ; main option 2 sub option 2
                    mov edx, offset product_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset watch_graphic
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 100
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_noSell:                                                                  ; main option 2 sub option 3
                    mov edx, offset product_option3
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem


          tokyo_bankrupt:                                                                  ; main option 3 (_bunkrupt)
               mov edx, offset bankruptString
               call writestring
               call crlf
               mov edx, offset userString1
               call writestring
               sub ebx, ebx
               mov eax, ebx
               call writedec
               mov edx, offset dollar
               call writestring
               call crlf
               mov edx, offset userDecision
               call writestring
               call readint
               mov ecx, 1
               cmp eax, 1
               je start
               jmp showItem


          tokyo_buyCar:                                                                  ; main option 4 (_buy_car)
               mov edx, offset car_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_tokyo_buyCar    

_try_again_tokyo_buyCar:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_tokyo_buyCar:
		call readint 
	     cmp eax, 1	
          jne _try_again_tokyo_buyCar 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_tokyo_buyCar 
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_tokyo_buyCar:         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je tokyo_audi
               cmp eax, 2
               je tokyo_lamborghini
               cmp eax, 3
               je tokyo_ferrari
               cmp eax, 4
               je tokyo_noCar

               tokyo_audi:                                                                  ; main option 4 sub option 1
                    mov eax , 4
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset audi_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_lamborghini:                                                                  ; main option 4 sub option 2
                    mov eax , 5
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset lamborghini_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_ferrari:                                                                  ; main option 4 sub option 3
                    mov eax , 6
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset ferrari_graphic
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 600
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_noCar:                                                                  ; main option 4 sub option 4
                    mov edx, offset car_option4
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem


          tokyo_invest:                                                                  ; main option 5 (_invest)
               mov edx, offset invest_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_tokyo_invest    

_try_again_tokyo_invest :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_tokyo_invest :
		call readint 
	     cmp eax, 1	
          jne _try_again_tokyo_invest  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_tokyo_invest  
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_tokyo_invest :         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je tokyo_cokacola
               cmp eax, 2
               je tokyo_acer
               cmp eax, 3
               je tokyo_spacex
               cmp eax, 4
               je tokyo_yahoo

               tokyo_cokacola:                                                                  ; main option 5 sub option 1
                    mov eax , 7
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset coke_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_acer:                                                                  ; main option 5 sub option 2
                    mov eax , 8
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset acer_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_spacex:                                                                  ; main option 5 sub option 3
                    mov eax , 9
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset spacex_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_yahoo:                                                                  ; main option 5 sub option 4
                    mov eax , 10
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option4
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset yahoo_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem


          tokyo_startBusiness:                                                                  ; main option 6 (_start business_)
               mov edx, offset business_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_tokyo_startBusiness    

_try_again_tokyo_startBusiness:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_tokyo_startBusiness:
		call readint 
	     cmp eax, 1	
          jne _try_again_tokyo_startBusiness 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_tokyo_startBusiness 
;------------ randomly generate numbers between 1 to 3 ------------------ 
_random_generate_tokyo_startBusiness:         
               mov eax, 3
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je tokyo_profit
               cmp eax, 2
               je tokyo_noBusiness
               cmp eax, 3
               je tokyo_loss

               tokyo_profit:                                                                  ; main option 6 sub option 1
                    mov edx, offset business_option1
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 100
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_noBusiness:                                                                  ; main option 6 sub option 2
                    mov edx, offset business_option2
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_loss:                                                                  ; main option 6 sub option 3
                    mov edx, offset business_option3
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 50
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem


          tokyo_buyLottery:                                                                  ; main option 7 (_buy lottery_)
               mov edx, offset lottery_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_tokyo_lottery    

_try_again_tokyo_lottery :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_tokyo_lottery :
		call readint 
	     cmp eax, 1	
          jne _try_again_tokyo_lottery  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_tokyo_lottery  
;------------ randomly generate numbers between 1 or 2 ------------------ 
_random_generate_tokyo_lottery :         
               mov eax, 2
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je tokyo_jackpot
               cmp eax, 2
               je tokyo_nothing

               tokyo_jackpot:                                                                  ; main option 7 sub option 1
                    mov edx, offset lottery_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset jackpot_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 1000
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem

               tokyo_nothing:                                                                  ; main option 7 sub option 2
                    mov edx, offset lottery_option2
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 1
                    cmp eax, 1
                    je start
                    jmp showItem



				
;------------------------------------------- Character (Denver) ------------------------------------------------


     _Denver:                                                                  ; character - Denver
          ; -------------show option to Denver -----------------------
          mov esi, offset property_list
          mov edx, offset welcome_denver
          call writestring
          call crlf
          call crlf
          denver_startGame:
          mov edx, offset den 
          call writestring
          mov eax, ebx
          call writedec
          mov edx, offset dollar
          call writestring
          call crlf
          call crlf
          mov edx, offset main_options2
          call writestring
          call crlf
          call crlf
          ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_denver    

_try_again_denver:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_denver:
		call readint 
	     cmp eax, 1	
          jne _try_again_denver 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_denver 
;------------ randomly generate numbers between 1 to 7 ------------------ 
_random_generate_denver:         
          mov eax, 6
          call randomrange
          add eax, 1
          mov random_choice, eax
          mov eax, 3000
          call delay
          mov eax, random_choice
          call writedec
          call crlf
          call crlf
          ;--------------------compare result ----------------------------
          cmp eax, 2
          je denver_buyHouse
          cmp eax, 4
          je denver_sellProduct
          cmp eax, 3
          je denver_bankrupt
          cmp eax, 1
          je denver_buyCar
          cmp eax, 5
          je denver_invest
          cmp eax, 6
          je denver_startBusiness
          cmp eax, 7
          je denver_buyLottery
          ;---------------------show result -------------------------------
          denver_buyHouse:                                                                  ; main option 1
               mov edx, offset house_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_denver_buyHouse    

_try_again_denver_buyHouse :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_denver_buyHouse :
		call readint 
	     cmp eax, 1	
          jne _try_again_denver_buyHouse  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_denver_buyHouse  
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_denver_buyHouse :         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je denver_penthouse
               cmp eax, 2
               je denver_garden
               cmp eax, 3
               je denver_sky
               cmp eax, 4
               je denver_noHouse
               denver_penthouse:                                                                  ; main option 1 sub option 1
                    mov eax , 1
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset penthouse_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 400
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_garden:                                                                  ; main option 1 sub option 2
                    mov eax , 2
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset gardenApartment_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_sky:                                                                  ; main option 1 sub option 3
                    mov eax , 3
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset house_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset sky_loft_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_noHouse:                                                                  ; main option 1 sub option 4
                    mov edx, offset house_option4
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_sellProduct:                                                                  ; main option 2
               mov edx, offset product_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_denver_sellProduct    

_try_again_denver_sellProduct :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_denver_sellProduct :
		call readint 
	     cmp eax, 1	
          jne _try_again_denver_sellProduct  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_denver_sellProduct  
;------------ randomly generate numbers between 1 to 3 ------------------ 
_random_generate_denver_sellProduct :         
               mov eax, 3
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je denver_piano
               cmp eax, 2
               je denver_watch
               cmp eax, 3
               je denver_noSell
               denver_piano:                                                                  ; main option 1 sub option 1
                    mov edx, offset product_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset piano_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_watch:                                                                  ; main option 2 sub option 2
                    mov edx, offset product_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset watch_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 100
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_noSell:                                                                  ; main option 2 sub option 3
                    mov edx, offset product_option3
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
          denver_bankrupt:                                                                  ; main option 3
               mov edx, offset bankruptString
               call writestring
               call crlf
               mov edx, offset userString1
               call writestring
               sub ebx, ebx
               mov eax, ebx
               call writedec
               mov edx, offset dollar
               call writestring
               call crlf
               mov edx, offset userDecision
               call writestring
               call readint
               mov ecx, 2
               cmp eax, 1
               je start
               jmp showItem
          denver_buyCar:                                                                  ; main option 4
               mov edx, offset car_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_denver_buyCar    

_try_again_denver_buyCar:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_denver_buyCar:
		call readint 
	     cmp eax, 1	
          jne _try_again_denver_buyCar 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_denver_buyCar 
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_denver_buyCar:         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je denver_audi
               cmp eax, 2
               je denver_lamborghini
               cmp eax, 3
               je denver_ferrari
               cmp eax, 4
               je denver_noCar
               denver_audi:                                                                  ; main option 4 sub option 1
                    mov eax , 4
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset audi_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_lamborghini:                                                                  ; main option 4 sub option 2
                    mov eax , 5
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset lamborghini_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_ferrari:                                                                  ; main option 4 sub option 3
                    mov eax , 6
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset car_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset ferrari_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 600
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_noCar:                                                                  ; main option 4 sub option 4
                    mov edx, offset car_option4
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
          denver_invest:                                                                  ; main option 5
               mov edx, offset invest_options
               call writestring
               call crlf
              ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_denver_invest   

_try_again_denver_invest :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_denver_invest :
		call readint 
	     cmp eax, 1	
          jne _try_again_denver_invest  

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_denver_invest  
;------------ randomly generate numbers between 1 to 4 ------------------ 
_random_generate_denver_invest :         
               mov eax, 4
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je denver_cokacola
               cmp eax, 2
               je denver_acer
               cmp eax, 3
               je denver_spacex
               cmp eax, 4
               je denver_yahoo
               denver_cokacola:                                                                  ; main option 5 sub option 1
                    mov eax , 7
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset coke_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 200
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_acer:                                                                  ; main option 5 sub option 2
                    mov eax , 8
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option2
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset acer_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 300
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_spacex:                                                                  ; main option 5 sub option 3
                    mov eax , 9
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option3
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset spacex_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_yahoo:                                                                  ; main option 5 sub option 4
                    mov eax , 10
                    mov [esi], eax
                    add esi, 4
                    mov edx, offset invest_option4
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset yahoo_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 500
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
          denver_startBusiness:                                                                  ; main option 6
               mov edx, offset business_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_denver_startBusiness    

_try_again_denver_startBusiness  :

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_denver_startBusiness  :
		call readint 
	     cmp eax, 1	
          jne _try_again_denver_startBusiness   

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_denver_startBusiness   
;------------ randomly generate numbers between 1 to 3 ------------------ 
_random_generate_denver_startBusiness  :         
               mov eax, 3
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je denver_profit
               cmp eax, 2
               je denver_noBusiness
               cmp eax, 3
               je denver_loss
               denver_profit:                                                                  ; main option 6 sub option 1
                    mov edx, offset business_option1
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 100
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_noBusiness:                                                                  ; main option 6 sub option 2
                    mov edx, offset business_option2
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_loss:                                                                  ; main option 6 sub option 3
                    mov edx, offset business_option3
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    sub ebx, 50
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
          denver_buyLottery:                                                                  ; main option 7
               mov edx, offset lottery_options
               call writestring
               call crlf
               ;------------roll the dice ---------------------
          mov edx, offset dice_roll
          call writestring
		call crlf

		jmp _skip_error_denver_lottery    

_try_again_denver_lottery:

		mov edx, offset dice_roll_error_message
          call writestring
		call crlf


_skip_error_denver_lottery:
		call readint 
	     cmp eax, 1	
          jne _try_again_denver_lottery 

		mov edx, offset dice_roll_status
          call writestring
		
		

		jmp _random_generate_denver_lottery 
;------------ randomly generate numbers between 1 or 2 ------------------ 
_random_generate_denver_lottery:         
               mov eax, 2
               call randomrange
               add eax, 1
               mov random_choice, eax
               mov eax, 3000
               call delay
               mov eax, random_choice
               call writedec
               call crlf
               call crlf
               cmp eax, 1
               je denver_jackpot
               cmp eax, 2
               je denver_nothing
               denver_jackpot:                                                                  ; main option 7 sub option 1
                    mov edx, offset lottery_option1
                    call writestring
                    call crlf
				call crlf
				call crlf
				mov edx, offset jackpot_graphic
                    call writestring
                    call crlf
				call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 1000
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
               denver_nothing:                                                                  ; main option 7 sub option 2
                    mov edx, offset lottery_option2
                    call writestring
                    call crlf
                    mov edx, offset userString1
                    call writestring
                    add ebx, 0
                    mov eax, ebx
                    call writedec
                    mov edx, offset dollar
                    call writestring
                    call crlf
                    mov edx, offset userDecision
                    call writestring
                    call readint
                    mov ecx, 2
                    cmp eax, 1
                    je start
                    jmp showItem
     _Nairobi:
          mov edx, offset welcome_nairobi ; welcome message for nairobi character
          call writestring
          call crlf
          call crlf
          jmp begin;  this character can not play and is just a comic inclusion so jump to begin and choose a character again
     _Others:
          mov edx, offset welcome_other 
          call writestring ; if player choose below 1 or above 5 value then error message will be printed
          call crlf
          call crlf
          jmp begin ; then show the oprions again
     start:
          cmp ebx, 0  ; if the total_money is 0 then the game will be over
          jbe gameOver
          cmp ecx, 1   ; if total_money is more than 0 then player can continue the game. based on the ecx value we can determine which character player is currently playing
          je tokyo_startGame
          cmp ecx, 2
          je denver_startGame
          cmp ecx, 3
          je professor_startGame
     gameOver:
          mov edx, offset noMoney ; if gameover appears then we will print message and exit
          call writestring
          call crlf
          jmp showItem
     showItem:
          mov ecx, 11
          mov esi, offset property_list
		call crlf
		call crlf
		call crlf
          mov edx, offset item_list
          call writestring
          call crlf



          fL:
          mov eax, [esi]
          cmp eax, 0
          je l
          cmp eax, 1
          je item1
          cmp eax, 2
          je item2
          cmp eax, 3
          je item3
          cmp eax, 4
          je item4
          cmp eax, 5
          je item5
          cmp eax, 6
          je item6
          cmp eax, 7
          je item7
          cmp eax, 8
          je item8
          cmp eax, 9
          je item9
          cmp eax, 10
          je item10
          jmp l
          item1:
          mov edx, offset Penthouse_item
          call writestring
          call crlf
          jmp l
          item2:
          mov edx, offset Garden_Apartment_item
          call writestring
          call crlf
          jmp l
          item3:
          mov edx, offset Sky_Loft_item
          call writestring
          call crlf
          jmp l
          item4:
          mov edx, offset Audi_item
          call writestring
          call crlf
          jmp l
          item5:
          mov edx, offset Lamborghini_item
          call writestring
          call crlf
          jmp l
          item6:
          mov edx, offset Ferrari_item
          call writestring
          call crlf
          jmp l
          item7:
          mov edx, offset Cokacola_item
          call writestring
          call crlf
          jmp l
          item8:
          mov edx, offset Acer_item
          call writestring
          call crlf
          jmp l
          item9:
          mov edx, offset SpaceX_item
          call writestring
          call crlf
          jmp l
          item10:
          mov edx, offset Yahoo_item
          call writestring
          call crlf
          l:
          add esi, 4
          dec ecx
          jne fL
          call crlf
          jmp _Exit
_Exit:
	mov edx, offset exit_desktop_message ;
     call writestring
	call crlf
          exit
main ENDP
END main
