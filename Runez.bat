@echo off
set craftItem1=RunicStones
set craftItem2=.
set craftItem3=.
set craftItem4=.
set craftItem5=.
set craftItem6=.
set craftItem7=.
set /a runicDust=5
set /a runicStones=20
set /a stormNUM=0
set /a smokeNUM=0
set /a wrathGlyphs=0
set /a balanceUnlock=0
set /a steamUnlock=0
set /a smokeUnlock=0
set /a stormUnlock=0
set /a dustUnlock=0
set /a mudUnlock=0
set /a steamUnlock=0
set /a magmaUnlock=0
set /a hybridsUnlock=0
set /a sceptreActive=0
set /a gValFINAL=0
set /a gValFINALLeveled
set /a char1NUM=0
set /a char2NUM=0
set /a char3NUM=0
set /a char4NUM=0
set /a glyphLevel=1
set /a glyphXP=0
set /a fireGlyphs=0
set /a waterGlyphs=0
set /a airGlyphs=0
set /a earthGlyphs=0
set /a steamGlyphs=0
set /a stormGlyphs=0
set /a dustGlyphs=0
set /a smokeGlyphs=0
set /a magmaGlyphs=0
set /a mudGlyphs=0
set /a balanceGlyphs=0
:runeCraftChoice
cls
set /p input=Would you like to craft runic items or infuse runes?[c, i]
if %input%==c goto craft
if %input%==i goto glyph1
goto runeCraftChoice
:craft
cls
set /p input=What would you like to craft? %craftItem1%, %craftItem2%, %craftItem3%, %craftItem4%, %craftItem5%, %craftItem6%, %craftItem7%
if %input%==%craftItem1% goto craftItem1
if %input%==%craftItem2% goto craftItem2
if %input%==%craftItem3% goto crafrItem3
if %input%==%craftItem4% goto craftItem4
if %input%==%craftItem5% goto craftItem5
if %input%==%craftItem6% goto craftItem6
if %input%==%craftItem7% goto craftItem7
goto craft
:notEnoughRunicDust
cls
echo You do not have enogh Runic Dust!
pause
goto runeCraftChoice
:craftItem1
cls
if %runicDust% LEQ 0 goto notEnoughRunicDust
set /a runicDust=%runicDust%-2
set /a runicStones=%runicStones%+1
echo You crafted a Runic Stone!
pause
cls
goto runeCraftChoice
:infusionFailure
cls
echo You dont have any Runic Stones!
pause
cls
goto runeCraftChoice
:glyph1
cls
set /p input=What would you like to infuse? (s, r)
if %input%==s goto setSceptre
if %input%==r goto glyph12
goto glyph1
:setSceptre
if %runicStones% LSS 4 goto infusionFailure
set /a sceptreActive=1
:glyph12
if %runicStones%==0 goto infusionFalure
set nextGlyph=glyph2
set /a char1NUM=0
set /a char2NUM=0
set /a char3NUM=0
set /a char4NUM=0
cls
echo You have %runicStones% Runic Stones.
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
if %hybridsUnlock%==1 goto echHybrids
set /p input=What will your first glyph be?
if %input%==! goto setChar1
if %input%==@ goto setChar2
if %input%==# goto setChar3
if %input%==$ goto setChar4
goto glyph12
:echHybrids
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
echo )(=Steam
echo -*=Storm
echo -@=Dust
echo -#=Smoke
echo *-=Magma
echo --=Mud
set /p input=What will your first glyph be?
if %input%==! goto setChar1
if %input%==@ goto setChar2
if %input%==# goto setChar3
if %input%==$ goto setChar4
if %input%==)( goto setSteam
if %input%==-* goto setStorm
if %input%==-@ goto setDust
if %input%==-# goto setSmoke
if %input%==*- goto setMagma
if %input%==-- goto setMud
goto echHybrids
:glyph2
set nextGlyph=glyph3
cls
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
if %hybridsUnlock%==1 goto echHybridsG2
set /p input=What will your second glyph be?
if %input%==! goto setChar1G2
if %input%==@ goto setChar2G2
if %input%==# goto setChar3G2
if %input%==$ goto setChar4G2
:echHybridsG2
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
echo )(=Steam
echo -*=Storm
echo -@=Dust
echo -#=Smoke
echo *-=Magma
echo --=Mud
set /p input=What will your second glyph be?
if %input%==! goto setChar1
if %input%==@ goto setChar2
if %input%==# goto setChar3
if %input%==$ goto setChar4
if %input%==)( goto setSteam
if %input%==-* goto setStorm
if %input%==-@ goto setDust
if %input%==-# goto setSmoke
if %input%==*- goto setMagma
if %input%==-- goto setMud
goto echHybridsG2
:glyph3
set nextGlyph=glyph4
cls
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
if %hybridsUnlock%==1 goto echHybridsG3
set /p input=What will your third glyph be?
if %input%==! goto setChar1G3
if %input%==@ goto setChar2G3
if %input%==# goto setChar3G3
if %input%==$ goto setChar4G3
goto glyph3
:echoHybridsG3
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
echo )(=Steam
echo -*=Storm
echo -@=Dust
echo -#=Smoke
echo *-=Magma
echo --=Mud
set /p input=What will your third glyph be?
if %input%==! goto setChar1
if %input%==@ goto setChar2
if %input%==# goto setChar3
if %input%==$ goto setChar4
if %input%==)( goto setSteam
if %input%==-* goto setStorm
if %input%==-@ goto setDust
if %input%==-# goto setSmoke
if %input%==*- goto setMagma
if %input%==-- goto setMud
goto echHybridsG3
:glyph4
cls
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
if %hybridsUnlock%==1 goto echHybridsG4
set /p input=What will your fourth glyph be?
if %input%==! goto setChar1G4
if %input%==@ goto setChar2G4
if %input%==# goto setChar3G4
if %input%==$ goto setChar4G4
goto glyph4
set nextGlyph=calcSUBSum
:echHybridsG4
echo !=Fire
echo @=Water
echo #=Air
echo $=Earth
echo )(=Steam
echo -*=Storm
echo -@=Dust
echo -#=Smoke
echo *-=Magma
echo --=Mud
set /p input=What will your fourth glyph be?
if %input%==! goto setChar1
if %input%==@ goto setChar2
if %input%==# goto setChar3
if %input%==$ goto setChar4
if %input%==)( goto setSteam
if %input%==-* goto setStorm
if %input%==-@ goto setDust
if %input%==-# goto setSmoke
if %input%==*- goto setMagma
if %input%==-- goto setMud
goto echHybridsG4
:setSteam
:setStorm
set /a gVal=10
set /a gValSUB=5
set /a stormNUM=%stormNUM%+1
goto %nextGlyph%
:setDust
:setSmoke
:setMagma
:setMud
:setChar1
set /a gValG1=3
set /a gValSUBG1=3
set /a char1NUM=%char1NUM%+1
goto glyph2
:setChar2
set /a gValG1=6
set /a gValSUBG1=4
set /a char2NUM=%char2NUM%+1
goto glyph2
:setChar3
set /a gValG1=9
set /a gValSUBG1=5
set /a char3NUM=%char3NUM%+1
goto glyph2
:setChar4
set /a gValG1=12
set /a gValSUBG1=5
set /a char4NUM=%char4NUM%+1
goto glyph2
:setChar1G2
set /a gValG2=4
set /a gValSUBG2=1
set /a char1NUM=%char1NUM%+1
goto glyph3
:setChar2G2
set /a gValG2=8
set /a gValSUBG2=3
set /a char2NUM=%char2NUM%+1
goto glyph3
:setChar3G2
set /a gValG2=12
set /a gValSUBG2=4
set /a char3NUM=%char3NUM%+1
goto glyph3
:setChar4G2
set /a gValG2=16
set /a gValSUBG2=6
set /a char4NUM=%char4NUM%+1
goto glyph3
:setChar1G3
set /a gValG3=1
set /a gValSUBG3=2
set /a char1NUM=%char1NUM%+1
goto glyph4
:setChar2G3
set /a gValG3=2
set /a gValSUBG3=4
set /a char2NUM=%char2NUM%+1
goto glyph4
:setChar3G3
set /a gValG3=3
set /a gValSUBG3=5
set /a char3NUM=%char3NUM%+1
goto glyph4
:setChar4G3
set /a gValG3=4
set /a gValSUBG3=2
set /a char4NUM=%char4NUM%+1
goto glyph4
:setChar1G4
set /a gValG4=4
set /a gValSUBG4=8
set /a char1NUM=%char1NUM%+1
goto calcSUBSum
:setChar2G4
set /a gValG4=4
set /a gValSUBG4=1
set /a char2NUM=%char2NUM%+1
goto calcSUBSum
:setChar3G4
set /a gValG4=4
set /a gValSUBG4=7
set /a char3NUM=%char3NUM%+1
goto calcSUBSum
:setChar4G4
set /a gValG4=4
set /a gValSUBG4=6
set /a char4NUM=%char4NUM%+1
goto calcSUBSum
:calcSUBSum
set /a SUBSum=%gValSUBG1%+%gValSUBG2%+%gValSUBG3%+%gValSUBG4%
:calcCHARSum

if %char1NUM%==4 goto setCHAR1DOM
if %char2NUM%==4 goto setCHAR2DOM
if %char3NUM%==4 goto SetCHAR3DOM
if %char4NUM%==4 goto setCHAR4DOM
if %char1NUM%==3 goto setCHAR1DOM
if %char2NUM%==3 goto setCHAR2DOM
if %char3NUM%==3 goto SetCHAR3DOM
if %char4NUM%==3 goto setCHAR4DOM
set /a char12NUM=%char1NUM%+%char2NUM%
set /a char23NUM=%char2NUM%+%char3NUM%
set /a char34NUM=%char3NUM%+%char4NUM%
set /a char13NUM=%char1NUM%+%char3NUM%
set /a char14NUM=%char1NUM%+%char4NUM%
set /a char24NUM=%char2NUM%+%char4NUM%
set /a charBalCheck=%char1NUM%+%char2NUM%+%char3NUM%+%char4NUM%
if %char12NUM%==4 goto CHAR1CHAR2Bal
if %char23NUM%==4 goto CHAR2CHAR3Bal
if %char34NUM%==4 goto CHAR3CHAR4Bal
if %char13NUM%==4 goto CHAR1CHAR3Bal
if %char14NUM%==4 goto CHAR1CHAR4Bal
if %char24NUM%==4 goto CHAR2CHAR4Bal
if %charBalCheck%==4 goto totalCHARBal
set /a stormSmokeTotal=%stormNUM%+%smokeNUM%
if %stormSmokeTotal%==4 goto stormSmokeCreate
:glyphFail
cls
echo The created glyph was energetically unstable and crumbled into Runic Dust
set /a runicDust=%runicDust%+1
set /a runicStones=%runicStones%-1
pause
goto runeCraftChoice
:stormSmokeCreate
set glyphType=Wrath
set /a wrathGlyphs=%wrathGlyphs%+1
:totalCHARBal
set glyphType=Balance
set /a balanceGlyphs=%balanceGlyphs%+1
set /a balanceUnlock=1
goto finalgValGen
:setCHAR1DOM
set glyphType=Fire
set /a fireGlyphs=%fireGlyphs%+1
goto finalgValGen
:setCHAR2DOM
set glyphType=Water
set /a waterGlyphs=%waterGlyphs%+1
goto finalgValGen
:setCHAR3DOM
set glyphType=Air
set /a airGlyphs=%airGlyphs%+1
goto finalgValGen
:setCHAR4DOM
set glyphType=Earth
set /a earthGlyphs=%earthGlyphs%+1
goto finalgValGen
:CHAR1CHAR2Bal
set glyphType=Steam
set /a steamGlyphs=%steamGlyphs%+1
set /a steamUnlock=1
cls
goto finalgValGen
:CHAR2CHAR3Bal
set glyphType=Storm
set /a stormGlyphs=%stormGlyphs%+1
set /a stormUnlock=1
goto finalgValGen
:CHAR3CHAR4Bal
set glyphType=Dust
set /a dustGlyphs=%dustGlyphs%+1
set /a dustUnlock=1
goto finalgValGen
:CHAR1CHAR3Bal
set glyphType=Smoke
set /a smokeGlyphs=%smokeGlyphs%+1
set /a smokeUnlock=1
goto finalgValGen
:CHAR1CHAR4Bal
set glyphType=Magma
set /a magmaGlyphs=%magmaGlyphs%+1
set /a magmaUnlock=1
goto finalgValGen
:CHAR2CHAR4Bal
set glyphType=Mud
set /a mudGlyphs=%mudGlyphs%+1
set /a mudUnlock=1
goto finalgValGen
:finalgValGen
cls
set /a gValFINAL=%gValG1%+%gValG2%+%gValG3%+%gValG4%*%SUBSum%
set /a gValFINALLeveled=%gValFINAL%*%glyphLevel%
set /a glyphXP=%glyphXP%+%gValFINALLeveled%
if %glyphXP% GEQ 6000000*%glyphLevel% goto glyphLevelUp
goto glyphStats
:glyphLevelUp
set /a glyphLevel=%glyphLevel%+1
set /a glyphXP=0
echo You leveled up in Glyph Making!
pause
cls
goto glyphStats
:glyphStats
cls
echo A glyph of %glyphType% was created!
pause
cls
set /a unlocks=%mudUnlock%+%magmaUnlock%+%smokeUnlock%+%dustUnlock%+%stormUnlock%+%steamUnlock%+%balanceUnlock%
if %unlocks%==7 goto unlockHybrids
:glyphStat1
echo you have created %fireGlyphs% Fire glyphs.
echo you have created %waterGlyphs% Water glyphs.
echo you have created %airGlyphs% Air glyphs.
echo you have created %earthGlyphs% Earth glyphs.
if %hybridsUnlock%==0 goto echSkip
echo you have created %balanceGlyphs% Balance glyphs.
echo you have created %steamGlyphs% Steam glyphs.
echo you have created %stormGlyphs% Storm glyphs.
echo you have created %dustGlyphs% Dust glyphs.
echo you have created %smokeGlyphs% Smoke glyphs.
echo you have created %magmaGlyphs% Magma glyphs.
echo you have created %mudGlyphs% Mud glyphs.
echo you have created %wrathGlyphs% Wrath glyphs
if %sceptreActive%==1 goto sceptreSkip
set /a runicStones=%runicStones%-1
:sceptreSkip
set /a sceptreActive=0
set /a runicStones=%runicStones%-4
set /a runicSceptreHeads=%runicSceptreHeads%+1
cls
echo A sceptre glyph of %glyphType%
pause
cls 
goto runeCraftChoice
:echSkip
set /a runicStones=%runicStones%-1
echo your Glyphmaking level is %glyphLevel%
pause
goto runeCraftChoice
:unlockHybrids
set /a hybridsUnlock=1
cls
set craftItem3=SceptreHandle
set craftItem4=SceptreHead
echo You have unlocked the hybrid glyphs!
pause
cls
goto glyphStat1
