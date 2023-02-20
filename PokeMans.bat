@echo off
set /a wildPokemonsAttack=0
set /a walkBackSteps=0
set /a walkBack=0
set /a yourPokemonHealthConstant=20
set /a pathSteps=0
set /a yourLevel=1
set /a yourPokemonHealth=20
set playerPosition=starterTown
set /a yourMoney=50
set /a pokeBalls=1
set /a potions=1
set /a pokemonNumber=1
set pokemon2Name=-----
set pokemon3Name=-----
set pokemon4Name=-----
set pokemon5Name=-----
set pokemon6Name=-----
set pokemon2Attack1=-----
set pokemon3Attack1=-----
set pokemon4Attack1=-----
set pokemon5Attack1=-----
set pokemon6Attack1=-----
set pokemon2Attack2=-----
set pokemon3Attack2=-----
set pokemon4Attack2=-----
set pokemon5Attack2=-----
set pokemon6Attack2=-----
set pokemon2Attack3=-----
set pokemon3Attack3=-----
set pokemon4Attack3=-----
set pokemon5Attack3=-----
set pokemon6Attack3=-----
set pokemon2Attack4=-----
set pokemon3Attack5=-----
set pokemon4Attack5=-----
set pokemon5Attack6=-----
set pokemon6Attack6=-----
set /a pokemon2Attack1PP=0
set /a pokemon3Attack1PP=0
set /a pokemon4Attack1PP=0
set /a pokemon5Attack1PP=0
set /a pokemon6Attack1PP=0
set /a pokemon2Attack2PP=0
set /a pokemon3Attack2PP=0
set /a pokemon4Attack2PP=0
set /a pokemon5Attack2PP=0
set /a pokemon6Attack2PP=0
set /a pokemon2Attack3PP=0
set /a pokemon3Attack3PP=0
set /a pokemon4Attack3PP=0
set /a pokemon5Attack3PP=0
set /a pokemon6Attack3PP=0
set /a pokemon2Attack4PP=0
set /a pokemon3Attack4PP=0
set /a pokemon4Attack4PP=0
set /a pokemon5Attack4PP=0
set /a pokemon6Attack4PP=0
set /a pokemon2Attack1PPConstant=0
set /a pokemon3Attack1PPConstant=0
set /a pokemon4Attack1PPConstant=0
set /a pokemon5Attack1PPConstant=0
set /a pokemon6Attack1PPConstant=0
set /a pokemon2Attack2PPConstant=0
set /a pokemon3Attack2PPConstant=0
set /a pokemon4Attack2PPConstant=0
set /a pokemon5Attack2PPConstant=0
set /a pokemon6Attack2PPConstant=0
set /a pokemon2Attack3PPConstant=0
set /a pokemon3Attack3PPConstant=0
set /a pokemon4Attack3PPConstant=0
set /a pokemon5Attack3PPConstant=0
set /a pokemon6Attack3PPConstant=0
set /a pokemon2Attack4PPConstant=0
set /a pokemon3Attack4PPConstant=0
set /a pokemon4Attack4PPConstant=0
set /a pokemon5Attack4PPConstant=0
set /a pokemon6Attack4PPConstant=0
set /a pokemon2Attack1Damage=0
set /a pokemon3Attack1Damage=0
set /a pokemon4Attack1Damage=0
set /a pokemon5Attack1Damage=0
set /a pokemon6Attack1Damage=0
set /a pokemon2Attack2Damage=0
set /a pokemon3Attack2Damage=0
set /a pokemon4Attack2Damage=0
set /a pokemon5Attack2Damage=0
set /a pokemon6Attack2Damage=0
set /a pokemon2Attack3Damage=0
set /a pokemon3Attack3Damage=0
set /a pokemon4Attack3Damage=0
set /a pokemon5Attack3Damage=0
set /a pokemon6Attack3Damage=0
set /a pokemon2Attack4Damage=0
set /a pokemon3Attack4Damage=0
set /a pokemon4Attack4Damage=0
set /a pokemon5Attack4Damage=0
set /a pokemon6Attack4Damage=0
set /a pokemon2Health=0
set /a pokemon3Health=0
set /a pokemon4Health=0
set /a pokemon5Health=0
set /a pokemon6Health=0
set /a pokemon2HealthConstant=0
set /a pokemon3HealthConstant=0
set /a pokemon4HealthConstant=0
set /a pokemon5HealthConstant=0
set /a pokemon6HealthConstant=0
echo Welcome to the world of Pokemon
echo This is a world where you kill and catch PokeMon!
pause
cls
:chooseStuffs
cls
color 07
set /p input= So whats your name? 
set yourName=%input%
set /p input= Now are you a boy or a girl? 
if %input%==boy goto setboy
if %input%==girl goto setgirl
goto chooseStuffs
pause
cls
pause
:verify
cls
set /p input=Oh so your name is %yourName%? And your a %gender%? (y,n)
if %input%==y goto choosePokemon
if %input%==n goto chooseStuffs
goto verify
:choosePokemon
cls
set /p input=Would you like a Charman, Squirtul, or a BulbasaurusRex?
if %input%==charman goto setCharman
if %input%==squirtul goto setSquirtul
if %input%==bulbasaurusrex goto setBulbasaurusRex
goto choosePokemon
:setCharman
set myPokemon=Charman
set move1=Scratch
set move2=Ember
set move3=-----
set move4=-----
set /a move1Damage=5*%yourLevel%
set /a move2Damage=10*%yourLevel%
set /a move3Damage=0
set /a move4Damage=0
set /a move1PP=40
set /a move2PP=15
set /a move3PP=0
set /a move4PP=0
goto play
:setSquirtul
set myPokemon=Squirtul
set move1=Tackle
set move2=Bubble
set move3=-----
set move4=-----
set /a move1Damage=6*%yourLevel%
set /a move2Damage=9*%yourLevel%
set /a move3Damage=0
set /a move4Damage=0
set /a move1PP=40
set /a move2PP=15
set /a move3PP=0
set /a move4PP=0
set /a move1PPConstant=40
set /a move2PPConstant=15
set /a move3PPConstant=0
set /a move4PPConstant=0
goto play
:setBulbasaurusRex
set myPokemon=BulbasaurusRex
set move1=Tackle
set move2=Vinewhip
set move3=-----
set move4=-----
set /a move1Damage=6*%yourLevel%
set /a move2Damage=11*%yourLevel%
set /a move3Damage=0
set /a move4Damage=0
set /a move1PP=35
set /a move2PP=10
set /a move3PP=0
set /a move4PP=0
goto play
:setgirl
color 5f
set gender=girl
goto verify
:setboy
color 1f
set gender=boy
goto verify
:play
set pokemonOutNow=%myPokemon%
set currentStatHealth=%yourPokemonHealth%
set currentStatMove1=%move1%
set currentStatMove2=%move2%
set currentStatMove3=%move3%
set currentStatMove4=%move4%
set /a currentStatMove1PP=%move1PP%
set /a currentStatMove2PP=%move2PP%
set /a currentStatMove3PP=%move3PP%
set /a currentStatMove4PP=%move4PP%
set /a currentStatMove1Damage=%move1Damage%
set /a currentStatMove2Damage=%move2Damage%
set /a currentStatMove3Damage=%move3Damage%
set /a currentStatMove4Damage=%move4Damage%
cls
echo Welcome!
pause
:starterTown
set /a walkBackSteps=0
cls
echo You are at StarterTown!
set /p input=Would you like to walk on Route 100[3 battles] to RedVille (walk), go to the shop (shop),  or go to the center (center)?
if %input%==walk goto route100
if %input%==shop goto shop
if %input%==center goto center
goto starterTown
:route100
cls
if %pathSteps%==3 goto redVille
if %walkBackSteps%==3 goto starterTown
cls
set playerPosition=route100
set /a randomPokemon=2*%random%/32768+1
if %randomPokemon%==1 goto setPidgey
if %randomPokemon%==2 goto setRattata
goto route100
:setPidgey
set wildPokemon=Pidgey
set /a wildPokemonHealth=%yourPokemonHealthConstant%-5
set /a wildPokemonHealthConstant=%yourPokemonHealthConstant%
set wildPokemonAttack1=Peck
set wildPokemonAttack2=Sand Attack
set /a wildPokemonAttack1Damage=3*%yourLevel%
set /a wildPokemonAttack2Damage=2*%yourLevel%
goto battle
:setRattata
set wildPokemon=Rattata
set /a wildPokemonHealth=%yourPokemonHealthConstant%-5
set /a wildPokemonHealthConstant=%yourPokemonHealthConstant%
set wildPokemonAttack1=Tackle
set wildPokemonAttack2=Tailslap
set /a wildPokemonAttack1Damage=3*%yourLevel%
set /a wildPokemonAttack2Damage=2*%yourLevel%
goto battle
:battle
cls
echo A wild %wildPokemon% appeared! %wildPokemon% has %wildPokemonHealth% health!
pause
cls
goto battleChoice
:battleChoice
cls
echo fight
echo run
echo catch
echo potion
echo switch
set /p input=What will %pokemonOutNow% do?
if %input%==fight goto fight
if %input%==run goto run
if %input%==catch goto catch
if %input%==potion goto potion
if %input%==switch goto switch
goto battleChoice
:switch
cls
echo %myPokemon% with %yourPokemonHealth% Health.
echo %pokemon2Name% with %pokemon2Health% Health.
echo %pokemon3Name% with %pokemon3Health% Health.
echo %pokemon4Name% with %pokemon4Health% Health.
echo %pokemon5Name% with %pokemon5Health% Health.
echo %pokemon6Name% with %pokemon6Health% Health.
set /p input=Who wil %yourName% choose? 
if %input%==%myPokemon% goto sendOutMyPokemon
if %input%==%pokemon2Name% goto sendOutPokemon2
if %input%==%pokemon3Name% goto sendOutPokemon3
if %input%==%pokemon4Name% goto sendOutPokemon4
if %input%==%pokemon5Name% goto sendOutPokemon5
if %input%==%pokemon6Name% goto sendOutPokemon6
goto switch
:sendOutMyPokemon
if %yourPokemonHealth% LEQ 0 goto selectPokemonError
if %pokemonOutNow%==%myPokemon% goto battleChoice
set pokemonOutNow=%myPokemon%
set currentStatHealth=%yourPokemonHealth%
set currentStatMove1=%pokemon2Attack1%
set currentStatMove2=%pokemon2Attack2%
set currentStatMove3=%pokemon2Attack3%
set currentStatMove4=%pokemon2Attack4%
set /a currentStatMove1PP=%move1PP%
set /a currentStatMove2PP=%move2PP%
set /a currentStatMove3PP=%move3PP%
set /a currentStatMove4PP=%move4PP%
set /a currentStatMove1Damage=%move1Damage%
set /a currentStatMove2Damage=%move2Damage%
set /a currentStatMove3Damage=%move3Damage%
set /a currentStatMove4Damage=%move4Damage%
goto wildPokemonsAttack2
:sendOutPokemon2
if %pokemon2Health% LEQ 0 goto selectPokemonError
set pokemonOutNow=%pokemon2Name%
if %pokemonOutNow%==%pokemon2Name% goto battleChoice
set pokemonOutNow=%pokemon2Name%
set currentStatHealth=%pokemon2Health%
set currentStatMove1=%pokemon2Attack1%
set currentStatMove2=%pokemon2Attack2%
set currentStatMove3=%pokemon2Attack3%
set currentStatMove4=%pokemon2Attack4%
set /a currentStatMove1PP=%pokemon2Attack1PP%
set /a currentStatMove2PP=%pokemon2Attack2PP%
set /a currentStatMove3PP=%pokemon2Attack3PP%
set /a currentStatMove4PP=%pokemon2Attack4PP%
set /a currentStatMove1Damage=%pokemon2Attack1Damage%
set /a currentStatMove2Damage=%pokemon2Attack2Damage%
set /a currentStatMove3Damage=%pokemon2Attack3Damage%
set /a currentStatMove4Damage=%pokemon2Attack4Damage%
goto wildPokemonsAttack1
:sendOutPokemon3
:sendOutPokemon4
:sendOutPokemon5
:sendOutPokemon6
:selectPokemonError
cls
echo That Pokemon is dead!Please select another one!
pause
cls
goto switch
:catch
if %pokeBalls%==0 goto catchError
set /a pokeBalls=%pokeBalls%-1
set /a catchChance=%wildPokemonHealth%*%random%/32768+1
if %catchChance%==1 goto catchSuccess
if %catchChance%==2 goto catchSuccess
if %catchChance%==3 goto catchSuccess
goto catchFail
:catchSuccess
cls
echo Wild %wildPokemon% was caught%!
pause
cls
:addPokemon
cls
if %pokemonNumber%==6 goto addPokemonError
set /a pokemonNumber=%pokemon%+1
if %pokemon2Name%==----- goto setNewPokemon2
pause
if %pokemon3Name%==----- goto setNewPokemon3
if %pokemon4Name%==----- goto setNewPokemon4
if %pokemon5Name%==----- goto setNewPokemon5
if %pokemon6Name%==----- goto setNewPokemon6
:setNewPokemon2
set /a pokemon2HealthConstant=%wildPokemonHealthConstant%
set /a pokemon2Health=%pokemon2HealthConstant%
set /a pokemon2Attack1Damage=%wildPokemonAttack1Damage%
set /a pokemon2Attack2Damage=%wildPokemonAttack2Damage%
set /a pokemon2Attack3Damage=%wildPokemonAttack3Damage%
set /a pokemon2Attack4Damage=%wildPokemonAttack4Damage%
set /a pokemon2Attack1PP=30
set /a pokemon2Attack2PP=40
set /a pokemon2Attack3PP=0
set /a pokemon2Attack4PP=0
set pokemon2Attack1=%wildPokemonAttack1%
set pokemon2Attack2=%wildPokemonAttack2%
set pokemon2Name=%wildPokemon%
goto checkPosition
:setNewPokemon3
:setnewPokemon4
:setNewPokemon5
:setNewPokemon6

goto checkPosition
:addPokemonError
:catchFail
cls
echo The wild %wildPokemon% broke free! Dang!
pause
goto battleChoice
:catchError
cls
echo You dont have any PokeBalls!
pause
goto battleChoice
:run
set /a runChance=100*%random%/32768+1
if %runChance%=1 goto runFail
goto runAway
:runFail
cls
echo %yourName% couldn't escape!
pause
goto battleChoice
:runAway
cls
echo %yourName% ran away!
pause
goto checkPosition
:fight
cls
echo %wildPokemon% has %wildPokemonHealth% health! %currentStatMove1% %currentStatMove2%
echo %currentStatMove1% with %currentStatMove1PP% PP!
echo %currentStatMove2% with %currentStatMove2PP% PP!
echo %currentStatMove3% with %currentStatMove3PP% PP!
echo %currentStatMove4% with %currentStatMove4PP% PP!
set /p input=What will %yourName% do?
if %input%==%currentStatMove1% goto move1
if %input%==%currentStatMove2% goto move2
if %input%==%currentStatMove3% goto move3
if %input%==%currentStatMove4% goto move4
goto fight
:move1
if %currentStatMove1PP%==0 goto notEnoughPP
set /a currentStatMove1PP=%currentStatMove1PP%-1
set /a wildPokemonHealth=%wildPokemonHealth%-%currentStatMove1Damage%
cls
if %wildPokemonHealth% LEQ 0 goto battleSuccess
echo %pokemonOutNow% used %currentStatMove1%!
echo Wild %wildPokemon% has %wildPokemonHealth% health!
pause
cls
:wildPokemonDoesAttack
set /a wildPokemonsAttack=2*%random%/32768+1
if %wildPokemonsAttack%==1 goto wildPokemonsAttack1
if %wildPokemonsAttack%==2 goto wildPokemonsAttack2
:move2
if %currentStatMove2PP%==0 goto notEnoughPP
set /a currentStatMove2PP=%currentStatMove2PP%-1
set /a wildPokemonHealth=%wildPokemonHealth%-%currentStatMove2Damage%
cls
if %wildPokemonHealth% LEQ 0 goto battleSuccess
echo %pokemonOutNow% used %currentStatMove2%!
echo Wild %wildPokemon% has %wildPokemonHealth% health!
pause
set /a wildPokemonsAttack=2*%random%/32768+1
if %wildPokemonsAttack%==1 goto wildPokemonsAttack1
if %wildPokemonsAttack%==2 goto wildPokemonsAttack2
:move3
if %move3PP%==0 goto notEnoughPP
set /a currentStatMove3PP=%currentStatMove3PP%-1
set /a wildPokemonHealth=%wildPokemonHealth%-%currentStatMove3Damage%
cls
if %wildPokemonHealth% LEQ 0 goto battleSuccess
echo %pokemonOutNow% used %currentStatMove3%!
echo Wild %wildPokemon% has %wildPokemonHealth% health!
pause
set /a wildPokemonsAttack=2*%random%/32768+1
if %wildPokemonsAttack%==1 goto wildPokemonsAttack1
if %wildPokemonsAttack%==2 goto wildPokemonsAttack2
:move4
if %move4PP%==0 goto notEnoughPP
set /a CurrentStatMove4PP=%currentStatMove4PP%-1
set /a wildPokemonHealth=%wildPokemonHealth%-%currentStatMove4Damage%
cls
if %wildPokemonHealth% LEQ 0 goto battleSuccess
echo %pokemonOutNow% used %currentStatMove4%
echo Wild %wildPokemon% has %wildPokemonHealth% health!
pause
set /a wildPokemonsAttack=2*%random%/32768+1
if %wildPokemonsAttack%==1 goto wildPokemonsAttack1
if %wildPokemonsAttack%==2 goto wildPokemonsAttack2
:shop
cls
echo Welcome to the shop %yourName%! You currently have %yourMoney% $!
set /p input=We currently sell Pokeballs 15$ (ball), and Potions 30$ (potion). What would you like to purchase? 
if %input%==ball goto buyPokeball
if%input%==potion goto buyPotion
goto shop
:center
cls
echo Welcome to the Pokemon Center %yourName%!
set /p input=Would you like us to heal your Pokemon?(y,n)
if %input%==y goto healPokemon
if %input%==n goto exitCenter
goto center
:exitCenter
cls
set /p input=Would you like to leave the center now?(y,n)
if %input%==y goto checkPosition
if %input%==n goto center
goto exitCenter
:healPokemon
cls
set /a yourPokemonHealth=yourPokemonHealthConstant
set /a pokemon2Health=%pokemon2HealthConstant%
set /a pokemon3Health=%pokemon3HealthConstant%
set /a pokemon4Health=%pokemon4HealthConstant%
set /a pokemon5Health=%pokemon5HealthConstant%
set /a pokemon6Health=%pokemon6HealthConstant%
set /a move1PP=%move1PPConstant%
set /a move2PP=%move2PPConstant%
set /a move3PP=%move3PPConstant%
set /a move4PP=%move4PPConstant%
set /a pokemon2Attack1PP=%pokemon2Attack1PPConstant%
set /a pokemon2Attack2PP=%pokemon2Attack2PPConstant%
set /a pokemon2Attack3PP=%pokemon2Attack3PPConstant%
set /a pokemon2Attack4PP=%pokemon2Attack4PPConstant%
echo We have restored all your Pokemon to full health!
pause
cls
echo Thank you for coming to the Pokemon Center!
goto exitCenter
:buyPokeball
cls
if %yourMoney% LSS 15 goto buyError
set /a yourMoney=%yourMoney%-15
set /a pokeBalls=%pokeBalls%+1
echo you Bought a PokeBall! You now have %pokeBalls% PokeBalls!
pause
goto shopExit
:buyPotion
cls
if %yourMoney% LSS 30 goto buyError
set /a yourMoney=%yourMoney%-30
set /a potions=%potions%+1
echo you Bought a Potion! You now have %potions% potions!
pause
goto shopExit
:buyError
echo You dont have enough money for this item!
pause
:shopExit
set /p input=would you like to leave the shop? (y,n)
if %input%==n goto shop
if %input%==y goto checkPosition
goto shopExit
:checkPosition
if %playerPosition%==starterTown goto starterTown
if %playerPosition%==route100 goto route100
if %playerPosition%==redVille goto redVille
:battleSuccess
cls
set /a yourMoney=%yourMoney%+15*%yourLevel%
echo Wild %wildPokemon% fainted!
pause
cls
if %walkback%==1 goto battleSuccessSkipover
set /a pathSteps=%pathSteps%+1
goto CheckPosition
:battleSuccessSkipover
set /a walkBackSteps=%walkBackSteps%+1
goto checkPosition
:battleFailure
:notEnoughPP
cls
echo You dont have enough PP for this move!
pause
goto battleChoice
:redVille
set playerPosition=redVille
set /a pathSteps=0
cls
echo You are at RedVille!
set /p input=Would you like to walk on Route 100[3 battles] to StarterTown (walkback), go to the shop (shop),  or go to the center (center)?
if %input%==walkback goto route100
if %input%==shop goto shop
if %input%==center goto center
goto redVille
:wildPokemonsAttack1
cls
set /a currentStatHealth=%currentStatHealth%-%wildPokemonAttack1Damage%
if %currentStatHealth% LEQ 0 goto battleFailure
cls
echo Wild %wildPokemon% used %wildPokemonAttack1%! %pokemonOutNow% has %currentStatHealth% health!
pause
cls
goto battleChoice
:wildPokemonsAttack2
cls
set /a currentStatHealth=%currentStatHealth%-%wildPokemonAttack2Damage%
if %currentStatHealth% LEQ 0 goto battleFailure
echo Wild %wildPokemon% used %wildPokemonAttack2%! %pokemonOutNow% has %currentStatHealth% health!
pause
cls
goto battleChoice
