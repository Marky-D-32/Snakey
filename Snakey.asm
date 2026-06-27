
                ORG $1F41

                ;PMODE dispatch data
PmodeDispData   FCB   $34,$2C
                FCB   $31,$00

                ;SCREEN dispatch data
ScreenDispData  FCB   $31,$2C
                FCB   $31,$00

                ;PCLS dispatch data
PCLSDispData    FCB   $31,$00

                ;Draw dispatch data
DrawDispData    FCB   $22,$42
                FCB   $4D
                FCB   $37,$2C
                FCB   $38
                FCB   $3B
                FCB   $43
                FCB   $30,$3B
                FCB   $52
                FCB   $32,$34
                FCB   $31,$44
                FCB   $31,$37
                FCB   $37,$4C
                FCB   $32,$34
                FCB   $31,$55
                FCB   $31,$37
                FCB   $37,$22
                FCB   $00

                ;Paint dispatch data
PaintDispData   FCB   $28
                FCB   $31,$2C
                FCB   $31,$29
                FCB   $2C,$30
                FCB   $2c,$30
                FCB   $00

                ;Snake head left
HeadLeftGrp     FCB   $F1,$C4,$9E,$32
                FCB   $72,$9E,$C4,$F1

HeadRightGrp    FCB   $8F,$23,$79,$4E
                FCB   $4C,$79,$23,$8F

                ;Snake head down
HeadDownGrp     FCB   $81,$3C,$66,$24
                FCB   $BD,$99,$D3,$E7

                ;Snake head up
HeadUpGrp       FCB   $E7,$D3,$99,$BD
                FCB   $24,$66,$3C,$81

                ;Snake Body Data
SnakeBodyGrp    FCB   $C3,$DB,$12,$7E
                FCB   $7E,$12,$DB,$C3

                ;Mushroom graphic data
MushroomGrp     FCB   $E7,$C3
                FCB   $81,$00
                FCB   $00,$24
                FCB   $E7,$C3

                ;Beetle graphic data
BeetleGrp       FCB   $DB,$DB
                FCB   $66,$81
                FCB   $C3,$00
                FCB   $C3,$24

                ;Grub graphic data
GrubGrp         FCB   $DB,$66
                FCB   $81,$E7
                FCB   $3C,$E7
                FCB   $DB,$3C

                ;Numbers graphic data
NumberGrps      FCB   $FC,$CC,$CC,$CC,$FC       ;0
                FCB   $F0,$30,$30,$30,$FC       ;1
                FCB   $FC,$0C,$3C,$C0,$FC       ;2
                FCB   $FC,$0C,$3C,$0C,$FC       ;3
                FCB   $0C,$3C,$CC,$FC,$0C       ;4
                FCB   $FC,$C0,$FC,$0C,$F0       ;5
                FCB   $FC,$C0,$FC,$CC,$FC       ;6
                FCB   $FC,$CC,$0C,$30,$30       ;7
                FCB   $FC,$CC,$FC,$CC,$FC       ;8
                FCB   $FC,$CC,$FC,$0C,$30       ;9

                ;Score Text data
ScoreText       FCB   $3C,$40,$3C,$02,$42,$3C   ;S
                FCB   $3C,$42,$40,$40,$42,$3C   ;C
                FCB   $3C,$42,$42,$42,$42,$3C   ;O
                FCB   $7C,$42,$42,$7C,$44,$42   ;R
                FCB   $7E,$40,$7C,$40,$40,$7E   ;E
                FCB   $00,$3E,$00,$3E,$00,$00   ;=

                ;High Text data
HighText        FCB   $42,$42,$7E,$42,$42,$42   ;H
                FCB   $3E,$08,$08,$08,$08,$3E   ;I
                FCB   $3C,$42,$40,$4E,$42,$3C   ;G
                FCB   $42,$42,$7E,$42,$42,$42   ;H
                FCB   $00,$3E,$00,$3E,$00,$00   ;=

Score           FCB   $12,$34,$56               ;Ingame Score
ScoreInc50      FCB   $00,$00,$50               ;Increase score by 50 (if hit Beetle)
ScoreInc100     FCB   $00,$01,$00               ;Increase score by 100 (if hit grub)
ScoreDec10      FCB   $99,$99,$90               ;Decrease score by 10 (if hit self or wall)

ReqInstrText    FCB   /DO YOU REQUIRE INSTRUCTIONS?/

JoyStartText    FCB   /PRESS JOYSTICK/
ButtonStartText FCB   /BUTTON TO START/

                ;Instructions
InstrText       FCB   / YOU ARE A SNAKE,IN ORDER TO    /
                FCB   /SURVIVE YOU MUST EAT THE GRUBS  /
                FCB   /AND BEETLES.BUT DO NOT EAT THE  /
                FCB   /MUSHROOMS,THEY ARE POISONOUS AND/
                FCB   /WILL KILL YOU INSTANTLY.THE     /
                FCB   /FIELD YOU ARE IN IS SURROUNDED  /
                FCB   /BY AN ELECTRIC FENCE AND        /
                FCB   /TOUCHING IT WILL CAUSE YOUR     /
                FCB   /SCORE TO DECREASE RAPIDLY. THE  /
                FCB   /SAME THING HAPPENS IF YOU       /
                FCB   /ATTEMPT TO MOVE ADJACENT TO YOUR/
                FCB   /BODY. IF YOU STOP YOU WILL DIE  /
                FCB   /OF STARVATION.  EATING A GRUB   /
                FCB   /CAUSES YOU BODY TO INCREASE BY  /
                FCB   /1 UNIT AND A BETTLE BY 2 UNITS  /
                FCB   /       PRESS ANY KEY.            /

                FCB   / IF YOU EAT ALL THE FOOD ON THE /
                FCB   /SCREEN,THE SNAKE WILL STOP AND  /
                FCB   /PRESSING THE FIRE BUTTON        /
                FCB   /GENERATES MORE FOOD BUT ALSO    /
                FCB   /MORE MUSHROOMS. YOUR SPEED ALSO /
                FCB   /INCREASES WITH  EACH SCREEN. THE/
                FCB   /SNAKE IS CONTROLED BY THE  RIGHT/
                FCB   /HAND JOYSTICK./

                ;
HignScore       FCB   $00,$00,$00               ;High Score
SnakeHeadPos    FCB   $FF,$00                   ;Snake head screen position
SnakeHeadPosOld FCB   $FF,$00                   ;Previous snake head screen position (after moving)
SnakeLength     FCB   $EF                       ;current Number of segments for snake
TempSnakePos    FCB   $00,$EF                   ;Temporary store for current position in SnakePosArr

                ;Snake segment positions on screen
SnakePosArr     FCB   $00,$EF                                   ;Will always contain position of snake head
                FCB   $00,$EF,$00,$EF,$00,$EF                   ;From here onwards, snake segment positions on screen
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$EF,$00,$EF
                FCB   $00,$EF,$00,$EF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF,$00,$FF,$00,$FF
                FCB   $00,$FF,$00,$FF

SnakeLastSegPtr FCB   $00,$FF                   ;Pointer to memory location holding psotion of last Snake segment

RandomNumSeed   FCB   $00,$00                   ;Random number seed
MushroomCnt     FCB   $00                       ;Initial Number of mushrooms
BeetleCnt       FCB   $FF                       ;Initial number of beetles
GrubCnt         FCB   $00                       ;Initial number of Grubs
BeetleGrobTot   FCB   $FF                       ;Total number of grubs + beatles
IncSnakeLen     FCB   $00                       ;Indicator to increase snake length
LastJoySPos     FCB   $EF                       ;Last Joystick position (1:left 2:right 3:down 4:up)
SoundVar        FCB   $00                       ;Used to play different types of Sound
GameSpeed       FCB   $2E,$E0                   ;Delay sounter to slow things down
GameSpdIncAmt   FCB   $03                       ;Increase in speed with each Screen
                FCB   $E8                       ;Not Used

                ;*******************
                ;Start point - $2566
                ;*******************
                LBSR  ClearTxtScr               ;Clear Screen

                ;Display Do You require Instructions?
                LDX   #$0422                    ;Screen address
                LEAY  ReqInstrText,PCR          ;Point to text
RI_1            LDA   ,Y+                       ;get character
                ORA   #$40                      ;make is displayable
                STA   ,X+                       ;Write to screen
                CMPX  #$043E                    ;finished?
                BNE   RI_1                      ;No

                ;Wait for key press
                LDD   #$0000
                STD   <$88
                JSR   $A0EA                     ;Wait for key press with cursor flashing
                CMPA  #$59                      ;Has 'Y' been pressed?
                LBEQ  DispInstr                 ;Yes - display Instructions

                ;Game Settings
GameSettings    LDD   #$0730                    ;Screen Snake Start Position
                STD   SnakeHeadPos,PCR          ;Save
                STD   SnakeHeadPosOld,PCR       ;Save
                LDA   #$06                      ;Snake initially 1 head + 5 segments long
                STA   SnakeLength,PCR           ;Save
                LDD   #$0735                    ;Screen position of last snake segment
                STD   TempSnakePos,PCR          ;Store
                LDD   #SnakePosArr+10           ;Current last array position - 6th
                STD   SnakeLastSegPtr,PCR       ;reference it it

                LDA   #$0A                      ;Initial number of grubs and mushrooms
                STA   MushroomCnt,PCR
                STA   BeetleCnt,PCR
                LDA   #$05                      ;Initial Number of beatles
                STA   GrubCnt,PCR
                LDA   #$0F                      ;Total number of grubs + beatles
                STA   BeetleGrobTot,PCR
                LDD   #$2EE0                    ;initial game speed
                STD   GameSpeed,PCR
                CLR   IncSnakeLen,PCR           ;Not increasing snake length
                LDX   #Score                    ;Set score to Zero
                CLRA
                CLRB
                STD   ,X++
                STA   ,X
                INCA
                STA   LastJoySPos,PCR           ;Set joystick to go left

                LDA   $FF01
                ANDA  #$F7
                STA   $FF01
                LDA   $FF03
                ANDA  #$F7
                STA   $FF03
                LDA   #$3F
                STA   $FF23

                LDY   #$00A6
                LEAX  PmodeDispData,PCR
                STX   ,Y
                JSR   $A9AF                     ;PMODE token dispatch address

                LEAX  PCLSDispData,PCR
                STX   ,Y
                JSR   $A8C0                     ;PCLS token dispatch address

                LEAX  DrawDispData,PCR
                STX   ,Y
                JSR   $B051                     ;DRAW token dispatch address

                LEAX  PaintDispData,PCR
                LDY   #$00A6
                STX   ,Y
                JSR   $AC87                     ;PAINT token dispatch address

                ;Draw snake head
                LBSR  MoveSnake

                ;Draw Snake body segments
                LDA   #$01
GS_1            LDX   #$0008                    ;Height of graphic
                LDU   SnakeHeadPos,PCR          ;Get position of snake head
                LDY   #SnakeBodyGrp             ;Point to Snake Body graphic data
GS_2            LDB   ,Y                        ;Get graphic byte
                STB   A,U                       ;Draw it
                LEAU  32,U                      ;Move down to next row
                LEAY  1,Y                       ;Get next graphic byte
                LEAX  -1,X                      ;Reduce row counter
                BNE   GS_2                      ;Not finished
                INCA                            ;Next body segment
                CMPA  #$06                      ;Finished?
                BNE   GS_1                      ;No

                LDU   #$0006                    ;Number of characters
                LDX   #ScoreText                ;Pointer to SCORE= text data
                LDY   #$0641                    ;Set screen position
                LBSR  WriteHiResText            ;Draw it

                LDU   #$0005                    ;Number of characters
                LDX   #HighText                 ;Pointer to HIGH= text data
                LDY   #$0654                    ;Set screen position
                LBSR  WriteHiResText            ;Draw it

                ;Draw current score to screen
                LBSR  DisplayScore

                ;Draw High Score (000000) to screen
                LDX   #$0659                    ;Set screen position
                LDU   #HignScore                ;Pointer to high score value
                LBSR  DisplayScore2             ;Write score to screen

                ;Setup initial snake position data
                LDA   #$06                      ;6 Body segments
                LDY   #$0730                    ;Initial position of head
                LDX   #SnakePosArr              ;Snake body location data
SINPD_1         STY   ,X++                      ;Store snake segment location
                LEAY  1,Y                       ;Calc next segment position
                DECA                            ;decrease segment count
                BNE   SINPD_1                   ;Not finished

                ;Display "press joystick"
                LDX   #JoyStartText             ;Point to text data
                LDY   #$0508                    ;Screen position
DPJ_1           LDA   ,X+                       ;Get character
                ORA   #$40                      ;Make it nice for display
                STA   ,Y+                       ;write to screen
                CMPY  #$0516                    ;Finished?
                BNE   DPJ_1                     ;No

                ;Display "button to start"
                LDX   #ButtonStartText          ;Point to text data
                LDY   #$0528                    ;screen position
DBS_1           LDA   ,X+                       ;get character
                ORA   #$40                      ;Make it nice for display
                STA   ,Y+                       ;write to screen
                CMPY  #$0537                    ;finished?
                BNE   DBS_1                     ;No

                ;***********************************
                ;Press Joystick button to start game
                ;***********************************
PlayGame        LDA   $FF00
                CMPA  #$7E                      ;Has Joystick button been pressed
                BEQ   DrawMushrooms             ;Yes
                CMPA  #$FE                      ;
                BEQ   DrawMushrooms             ;Yes
                INC   RandomNumSeed             ;Increase random number seed
                BRA   PlayGame                  ;Repeat check

                ;Draw mushrooms
DrawMushrooms   LBSR  GenRandomNbr              ;Generate random position number in X
                LDY   #MushroomGrp              ;Point to Mushroom graphic
                LDA   #$08                      ;Height of graphic
DM_1            LDB   ,Y+                       ;Get graphic byte
                STB   ,X                        ;Draw it
                LEAX  32,X                      ;Move down one row
                DECA                            ;Decrease row count
                BNE   DM_1                      ;Not finished
                DEC   MushroomCnt               ;Decrease number of mushrooms count
                BNE   DrawMushrooms             ;Draw more mushrooms

                ;Draw beetles
DrawBeetles     LBSR  GenRandomNbr              ;Generate random position number in X
                LDY   #BeetleGrp                ;Point to Beetle graphic
                LDA   #$08                      ;Height of graphic
DB_1            LDB   ,Y+                       ;Get graphic byte
                STB   ,X                        ;Draw it
                LEAX  32,X                      ;Move down one row
                DECA                            ;Decrease row count
                BNE   DB_1                      ;Not finished
                DEC   BeetleCnt                 ;Decrease number of beetles count
                BNE   DrawBeetles               ;Draw more beetles

                ;Draw grubs
DrawGrubs       LBSR  GenRandomNbr              ;Generate random position number in X
                LDY   #GrubGrp                  ;Point to Grub Graphic
                LDA   #$08                      ;Height of graphic
DG_1            LDB   ,Y+                       ;Get graphic byte
                STB   ,X                        ;Draw it
                LEAX  32,X                      ;move down one row
                DECA                            ;decrease row count
                BNE   DG_1                      ;Not finished
                DEC   GrubCnt                   ;Decrease number of grubs count
                BNE   DrawGrubs                 ;More grubs to Draw

                ;Display hires screen
                LEAX  ScreenDispData,PCR
                LDY   #$00A6
                STX   ,Y
                JSR   $A9FE                     ;Screen token dispatch address

                ;Initial Pause before game starts
                LDX   #$EA60
InitPause_1     LEAX  -1,X
                BNE   InitPause_1

                ;**********************
                ;Main game control loop
                ;**********************
MainLoop        LDX   GameSpeed                 ;Slow things down
ML_1            LEAX  -1,X
                BNE   ML_1

                JSR   $8012                     ;Read right joytick
ML_Continue     LDA   $015A                     ;Right Joystick X Values
                CMPA  #$0A                      ;Moved Left ?
                BLE   JoystickLeft              ;Yes - act on it
                CMPA  #$35                      ;moved right?
                BGE   JoystickRight             ;Yes - act on it
                LDA   $015B                     ;Right Joystick Y value
                CMPA  #$0A                      ;Moved Up ?
                LBLE   JoystickUp               ;Yes - act on it
                CMPA  #$35   5                  ;Moved down ?
                BGE   JoystickDown              ;Yes - act on it

                ;Joystick not changed - what did it do last time?
                LDA   LastJoySPos               ;Get last Joystick action
                DECA                            ;Moved left ?
                BEQ   JoystickLeft              ;Yes
                DECA                            ;Moved right ?
                BEQ   JoystickRight             ;Yes
                DECA                            ;Moved down?
                BEQ   JoystickDown              ;Yes
                BRA   JoystickUp                ;Must have moved Up

                ;Joystick moved left
JoystickLeft    LDX   SnakeHeadPos,PCR          ;Get Current position of snake head
                LEAY  -1,X                      ;Set New snake position 1 place left
                LBSR  ChkCanMove                ;Check if snake bites itself????
                LDA   #$01                      ;Joystick moved left value\const
                STA   LastJoySPos,PCR           ;Store it
                LBSR  MoveSnake                 ;Move the snake on screen
                BRA   MainLoop                  ;Return

                ;Joystick moved right
JoystickRight   LDX   SnakeHeadPos,PCR          ;Get Current position of snake head
                LEAY  1,X                       ;Set New snake position 1 place right
                LBSR  ChkCanMove                ;Check if snake can move?
                LDA   #$02                      ;Joystick moved right value\const
                STA   LastJoySPos,PCR           ;Store it
                LBSR  MoveSnake                 ;Move the snake on screen
                LBRA  MainLoop                  ;Return

                ;Joystick moved down
JoystickDown    LDX   SnakeHeadPos,PCR          ;Get Current position of snake head
                LEAY  $0100,X                   ;Set New snake position 1 place down
                LBSR  ChkCanMove                ;Check if snake can move?
                LDA   #$03                      ;Joystick moved down value\const
                STA   LastJoySPos,PCR           ;Store it
                LBSR  MoveSnake                 ;Move the snake on screen
                LBRA  MainLoop                  ;Return

                ;Joystick moved Up
JoystickUp      LDX   SnakeHeadPos,PCR          ;Get Current position of snake head
                LEAY  $FF00,X                   ;Set New snake position 1 place up
                LBSR  ChkCanMove                ;Check if snake can move?
                LDA   #$04                      ;Joystick moved up value\const
                STA   LastJoySPos,PCR           ;Store it
                LBSR  MoveSnake                 ;Move the snake on screen
                LBRA  MainLoop                  ;Return

                ;Snake hit object (mushrrom,grub,beetle,wall)
SnakeHitObject  PULS  X
                CMPA  #$E7                      ;Hit Mushroom?
                BEQ   GameOver                  ;Yes
                CMPA  #$C3                      ;Go back into self??
                BEQ   GameOver                  ;Yes
                CMPA  #$DB                      ;Hit grub or beetle?
                LBEQ   HitBeetleGrub            ;Yes
                CMPA  #$00                      ;Hit wall ?
                BEQ   HitWall                   ;Yes
                LBRA  MainLoop                  ;Return

                ;**************************
                ;Can't move - reduce score?
                ;**************************
SnakeCantMove   PULS  X
                LDX   Score                     ;Get Score
                BNE   SCM_1                     ;Not zero - reduce score
                LDA   Score+2
                BEQ   GameOver
SCM_1           LDX   #ScoreDec10               ;Get amount score to decrease by
                LBSR  AdjustScore               ;Adjust score and display
                LBRA  MainLoop                  ;Go back to game

                ;********
                ;Hit wall
                ;********
HitWall         LDX   Score                     ;Get score
                BNE   HW_1                      ;If not zero - decrease
                LDA   Score+2                   ;get score
                BLS   GameOver                  ;If 0 or less - game over
HW_1            LDX   #ScoreDec10               ;Get score adjustment
                LBSR  AdjustScore               ;Adjust and display
                LBRA  MainLoop                  ;return to game

                ;*********************************************
                ;Hit mushroom or go back into self - game over
                ;*********************************************
GameOver        LDX   #Score                    ;Point to score
                LDB   #$03                      ;Need to check 3 digits
                LDY   #HignScore                ;Point to high score
GO_3            LDA   ,X+                       ;Get score digit
                CMPA  ,Y+                       ;Compare to high score
                BCS   GO_1                      ;Score lower than high score...
                BGT   GO_2                      ;Score greater than high score - copy
                DECB                            ;Finished
                BNE   GO_3                      ;No

                ;Copy score to high score
GO_2            LDX   #Score                    ;Point to score
                LDB   #$03                      ;Loop through 3 score digits
                LDY   #HignScore                ;Point to high score
GO_2a           LDA   ,X+                       ;Get score digit
                STA   ,Y+                       ;save to high score
                DECB                            ;finished?
                BNE   GO_2a                     ;No

                ;I'm not sure what this is trying to do
                ;$B798 prints contents of A register to screen
GO_1            LDB   #$19
                CLR   $0147
                LDX   #$B798
GO_1a           LDA   ,X+
                LBSR  Unknown
                LDA   ,X+
                LBSR  Unknown
                DEC   $0147
                BNE   GO_1a
                LDA   $FF23
                ANDA  #$F7
                STA   $FF23

FlashScreen     LDX   #$0600                    ;Start of screen
FS_1            LDA   ,X                        ;Get byte
                COMA                            ;Invert it
                STA   ,X+                       ;Write back to screen
                CMPX  #$1E00                    ;Have we finished?
                BNE   FS_1                      ;No
                DECB                            ;Yes - repeat
                BNE   FlashScreen               ;Finished repeating? - No
                LBRA  GameSettings              ;Restart new game

                ;******************
                ;Hit beetle or grub
                ;******************
HitBeetleGrub   LEAU  32,Y                      ;Point to graphic ahead of Snake,1 byte down
                LDA   ,U                        ;get graphic value
                CMPA  #$DB                      ;Hit beetle
                BEQ   HBG_1                     ;Yes
                LDA   #$FF                      ;Erase Grub
                LDB   #$08
HBG_2           STA   ,Y
                LEAY  32,Y
                DECB
                BNE   HBG_2
                LDA   #$02                      ;Increase length of snake by 2
                ADDA  IncSnakeLen
                STA   IncSnakeLen               ;Save
                LDX   #ScoreInc100              ;Get score increase amount
                LBSR  AdjustScore               ;Increase score
                LBSR  NoiseHitGrub              ;Make noise
                DEC   BeetleGrobTot             ;Reduce count of beetles\grubs
                LBEQ  ResetGame                 ;None left - level finished - reset
                LBRA  ML_Continue               ;Return

HBG_1           LDA   #$FF                      ;Erase Beetle
                LDB   #$08
HBG_3           STA   ,Y
                LEAY  32,Y
                DECB
                BNE   HBG_3
                LDA   #$01                      ;Increase snake length by 2
                ADDA  IncSnakeLen
                STA   IncSnakeLen               ;Save
                LDX   #ScoreInc50               ;Get score increase amount
                LBSR  AdjustScore               ;Increase score
                LBSR  NoiseHitBeetle            ;Make noise
                DEC   BeetleGrobTot             ;Reduce count of beetles\grubs
                LBEQ  ResetGame                 ;None left - level finished - reset
                LBRA  ML_Continue               ;Return

                ;*******************************************************************
                ;Move \ redraw Snake - draw body segment over previous head position
                ;*******************************************************************
MoveSnake       LDA   #$08                      ;Height of graphic
                LDX   SnakeHeadPosOld,PCR       ;Get position to draw segment
                LDY   #SnakeBodyGrp             ;Point to snake body graphic
MS_1            LDB   ,Y                        ;Get graphic
                STB   ,X                        ;Draw it
                LEAX  32,X                      ;Move down one row
                LEAY  1,Y                       ;Move to next graphic byte
                DECA                            ;Reduce row count
                BNE   MS_1                      ;Not finished

                ;********************************************************
                ;Point to relevant snake head and draw it in new position
                ;********************************************************
                LDA   #$08                      ;Reset row count
                LDX   SnakeHeadPos,PCR          ;Get new snake head position

                LDB   LastJoySPos,PCR           ;What was the last joystick position?
                CMPB  #$01                      ;left?
                BNE   MS_2                      ;No - check if right
                LDY   #HeadLeftGrp              ;Point to snake left head graphic
                BRA   MS_DrawHead               ;Draw it

MS_2            CMPB  #$02                      ;right?
                BNE   MS_3                      ;No - check up
                LDY   #HeadRightGrp             ;Point to snake right head graphic
                BRA   MS_DrawHead               ;Draw it

MS_3            CMPB  #$04                      ;Up?
                BNE   MS_4                      ;No - must be down
                LDY   #HeadUpGrp                ;Point to snake left head graphic
                BRA   MS_DrawHead               ;Draw it

MS_4            LDY   #HeadDownGrp              ;Point to down head graphic

                ;Draw snake head graphic
MS_DrawHead     LDB   ,Y+                       ;Get graphic position
                STB   ,X                        ;Draw it
                LEAX  32,X                      ;Move down one row
                DECA                            ;Decrease row count
                BNE   MS_DrawHead               ;Not finished

                ;Shuffle snake body positions in array
                LDX  [SnakeLastSegPtr]          ;Get last position data  (Initially points to &H636D (Last current array pos)
                STX   TempSnakePos              ;Temp store current last array position
                LDA   SnakeLength               ;Number of body segments
                LDX   SnakeLastSegPtr           ;Point to last array position
                LEAX  -2,X                      ;Move down one position
Shuffle_1       LDY   ,X++                      ;Get position value
                STY   ,X                        ;Store it in next array position along
                LEAX  -4,X                      ;Move to next array position
                DECA                            ;Decrease segment count
                BNE   Shuffle_1                 ;Repeat

                LDX   SnakeHeadPos              ;Get (new) position of head
                STX   SnakePosArr               ;Store it in 1st array position
                LDA   IncSnakeLen               ;Need to increase array length?
                BEQ   EraseLastSeg              ;No - erase last segment on screen

                DEC   IncSnakeLen               ;Decrease increase length indicator
                INC   SnakeLength               ;Increase number of segments
                LDX   SnakeLastSegPtr           ;Get last array position value
                LEAX  2,X                       ;Increase it
                STX   SnakeLastSegPtr           ;Save it
                LDX   TempSnakePos              ;Get Original last segment array
                STX   [SnakeLastSegPtr]         ;Restore it
                RTS                             ;return

                ;Blank out last previous last segment (as snake has moved)
EraseLastSeg    LDA   #$FF                      ;Graphics Character
                LDB   #$08                      ;Height of graphic
                LDX   TempSnakePos              ;Get position to be blanked out
ELS_1           STA   ,X                        ;Blank it out
                LEAX  32,X                      ;Move down
                DECB                            ;Finished?
                BNE   ELS_1                     ;No
                RTS                             ;Return

                ;***********************************************
                ;Random number generater - between 0600 and 1E00
                ;***********************************************
GenRandomNbr    LDD   RandomNumSeed             ;Get random number seed
                ADDA  RandomNumSeed+1           ;Do some things to the seed number
                ASLB
                ROLA
                ADDA  RandomNumSeed+1
                ASLB
                ROLA
                ADDD  RandomNumSeed
                ADDD  #$3619
                STD   RandomNumSeed             ;Save generated number, so result cannot be repeated
                ANDA  #$1F
                CMPA  #$1E                      ;greater than 1E00
                BGE   GenRandomNbr              ;Yes - try another
                CMPA  #$06                      ;Less than 0600
                BLS   GenRandomNbr              ;Yes try again
                ANDB  #$1F                      ;Ensure 2nd number between 0 and 1F
                ADDD  #$0020
                TFR   D,X                       ;Set screen position to random number
                LDA   ,X                        ;Get graphic at screen location
                CMPA  #$FF                      ;Something already there?
                BNE   GenRandomNbr              ;Yes - try again
                RTS

                ;******************
                ;Reset for new Game
                ;******************
ResetGame       LDA   #$0F                      ;Total number of beetles \ grubs
                STA   BeetleGrobTot
                LDA   #$0A                      ;Total number of mushrooms \ beetles
                STA   MushroomCnt
                STA   BeetleCnt
                LDA   #$05                      ;Total number of grubs
                STA   GrubCnt
                LDD   GameSpeed                 ;Get game speed
                BEQ   RG_Exit                   ;Zero - no need to adjust
                SUBD  GameSpdIncAmt             ;Adjust game speed
                STD   GameSpeed                 ;Save
RG_Exit         LBRA  PlayGame                  ;Start new game

                ;*********************************
                ;Check if snake is allowed to move
                ;*********************************
ChkCanMove      LDA   ,Y                        ;Get byte at next snake head position
                CMPA  #$C3                      ;Is it a snake body segment? i.e. Reversed direction
                BNE   CCM_2                     ;No
                PULS  X                         ;Yes - Game over
                LBRA  GameOver

CCM_2           LDA   1,Y                       ;Check right?
                CMPA  #$C3                      ;Is it a snake body segment?
                LBEQ  SnakeCantMove             ;Can't move

                LDA   -1,Y                      ;Check left?
                CMPA  #$C3                      ;Is it a snake body segment?
                LBEQ  SnakeCantMove             ;Can't move

                LDA   $0100,Y                   ;Check down
                CMPA  #$C3                      ;Is it a snake body segment?
                LBEQ  SnakeCantMove             ;Can't move

                LDA   $FF00,Y                   ;Check up
                CMPA  #$C3                      ;Is it a snake body segment?
                LBEQ  SnakeCantMove             ;Can't move

                LDA   ,Y                        ;Get graphic at new position
                CMPA  #$FF                      ;Has snake hit something?
                LBNE  SnakeHitObject            ;Yes

                ;Snake can move to next position
                STX   SnakeHeadPosOld,PCR       ;Store previous head screen position
                STY   SnakeHeadPos,PCR          ;Save new head screen position
                RTS                             ;return

                ;**********************************************
                ;Adjust Score - Reg X - points to adjust amount
                ;**********************************************
AdjustScore     LDU   #Score                    ;Point to current score
                LDB   #$03                      ;It's held in 3 memory locations
                LEAU  B,U                       ;Point to 3rd \least significant digit of score
                LEAX  B,X                       ;Point to 3rd \least significant digit of adjustment amount
                ANDCC #$FE
AS_1            LDA   ,-U                       ;Get value of score
                ADCA  ,-X                       ;Add value of adjustment amount
                DAA
                STA   ,U                        ;Store digit
                DECB                            ;decrease loop counter
                BNE   AS_1                      ;repeat with next highest significant digit

                ;*********************
                ;Display current score
                ;*********************
DisplayScore    LDX   #$0647                    ;Screen Position to sraw score
                LDU   #Score                    ;Point to score
DisplayScore2   LDB   #$03                      ;Need to deal with 3 mem locations

                ;Convert hex number to decimal for display
DS_2            LDA   ,U                        ;Get 1st value
                LSRA                            ;Shift right x4 - only left with 10 bit
                LSRA
                LSRA
                LSRA
                BSR   WriteScore                ;Write the digit
                LEAX  1,X                       ;Move to next screen position
                LDA   ,U+                       ;Get value again
                ANDA  #$0F                      ;remove 10 bit
                BSR   WriteScore                ;write digit
                LEAX  1,X                       ;move to next screen position
                DECB                            ;Decrease loop count
                BNE   DS_2                      ;repeat
                RTS

                ;Write score to screen
WriteScore      PSHS  A,B,X,U
                LDB   #$05                      ;Each screen digit is 5 bytes high
                MUL                             ;Calculate offset from first number graphic (zero)
                LEAU  NumberGrps,PCR            ;Point to first number (zero)
                LEAU  D,U                       ;repoint by calculated offset
                LDB   #$05                      ;Each digit is 5 characters high
WS_1            LDA   ,U+                       ;Get graphic byte
                STA   ,X                        ;draw it
                LEAX  32,X                      ;mov down screen
                DECB                            ;decrease row counter
                BNE   WS_1                      ;Not finished
                PULS  A,B,X,U,PC                ;return

                ;*****************
                ;Clear text Screen
                ;*****************
ClearTxtScr     LDX   #$0400                    ;Start of screen
                LDA   #$8F                      ;Character to write
CTS_1           STA   ,X+                       ;Write it
                CMPX  #$0601                    ;Finished?
                BNE   CTS_1                     ;No
                RTS                             ;return

                ;********************
                ;Display Instructions
                ;********************
DispInstr       LDX   #$0400                    ;Start of screen
                LDY   #InstrText                ;Point to instruction test
DI_1            LDA   ,Y+                       ;Get character
                ORA   #$40                      ;Make it nice for display
                STA   ,X+                       ;Write to screen
                CMPX  #$0601                    ;Finished?
                BNE   DI_1                      ;No

                JSR   $A0EA                     ;Wait for key press with cursor flashing
                BSR   ClearTxtScr               ;Clear Screen

                ;Display 2nd page of instructions
                LDX   #$0400                    ;Start of screen
DI_2            LDA   ,Y+                       ;Get character
                ORA   #$40                      ;Make it nice for display
                STA   ,X+                       ;Write to screen
                CMPX  #$04EE                    ;Finished?
                BNE   DI_2                      ;No
                LBRA  GameSettings              ;Yes - setup game

                ;***************************
                ;Write hi-res text to screen
                ;***************************
WriteHiResText  LDB   #$06                      ;All text is 6 rows high
WHRT_1          LDA   ,X+                       ;Get byte to write
                STA   ,Y                        ;Write it
                LEAY  32,Y                      ;Move down one row
                DECB                            ;Decrase count
                BNE   WHRT_1                    ;Not finished
                LEAU  -1,U                      ;Decrease num of chars count
                LEAY  $FF41,Y                   ;Repoint screen pointer
                CMPU  #$0000                    ;Finished all character?
                BNE   WriteHiResText            ;No
                RTS                             ;return

                ;***********************
                ;Make noise - hit beetle
                ;***********************
NoiseHitBeetle  CLR   SoundVar
NHB_3           INC   SoundVar
                LDB   SoundVar
NHB_1           DECB
                BNE   NHB_1
                LDA   #$28   (
                STA   $FF24
                LDB   SoundVar
NHB_2           DECB
                BNE   NHB_2
                CLRA
                STA   $FF24
                CMPA  SoundVar
                BNE   NHB_3
                RTS

                ;*********************
                ;Make noise - hit Grub
                ;*********************
NoiseHitGrub    LDB   #$FF
                STB   SoundVar
NHG_3           DEC   SoundVar
                LDB   SoundVar
NHG_1           DECB
                BNE   NHG_1
                LDA   #$28
                STA   $FF24
                LDB   SoundVar
NHG_2           DECB
                BNE   NHG_2
                CLRA
                STA   $FF24
                CMPA  SoundVar
                BNE   NHG_3
                RTS

                ;Not sure what this achieves
Unknown         ANDA  $0147
                STA   $FF20
                LDA   #$FF
UK_1            DECA
                BNE   UK_1
                RTS
