@echo off
cls
set /a seed=3
set /a seedcost=5
set /a allow1=0
set /a allow2=0
set /a allow3=0
set /a allow4=0
set /a money=0
:main
cls
echo Current holdings: %seed% seeds, $%money%
set /p input=Go where? (farm, crops, shop):
if %input%==farm goto plant
if %input%==crops goto crops
if %input%==shop goto shop1
:plant
cls
echo You have %seed% seeds, and $%money% 
set /p input=Plant how many? (1, 2, 3, 4):
if %input%==1 goto plant1
if %input%==2 goto check2
if %input%==3 goto check3
if %input%==4 goto check4
goto farm
:check2
if %allow2%==1 goto plant2
goto cannotplant
:check3
if %allow3%==1 goto plant3
goto cannotplant
:check4
if %allow4%==1 goto plant4
goto cannotplant
:cannotplant
echo You cant plant that many seeds at a time yet!
pause
goto main
:plant1
if %seed%==0 goto seederr
cls
echo.
echo.
echo.
echo.
echo.
echo __o__     _____     _____     _____
ping 1.1.1.1 -n 1 -w 3000 >> errortext.txt
del errortext.txt
cls
echo.
echo.
echo.
echo.
echo   l
echo __l__     _____     _____     _____
ping 1.1.1.1 -n 1 -w 3000 >> errortext.txt
del errortext.txt
cls
echo.
echo.
echo.
echo   l
echo   l
echo __l__     _____     _____     _____
ping 1.1.1.1 -n 1 -w 3000 >> errortext.txt
del errortext.txt
cls
echo.
echo.
echo   l
echo   l
echo   l
echo __l__     _____     _____     _____
ping 1.1.1.1 -n 1 -w 3000 >> errortext.txt
del errortext.txt
cls
echo.
echo   o
echo   l
echo   l
echo   l
echo __l__     _____     _____     _____
ping 1.1.1.1 -n 1 -w 3000 >> errortext.txt
del errortext.txt
cls
echo   +
echo +-@-+
echo   +
echo   l
echo   l
echo   l
echo __l__     _____     _____     _____
set /a money=%money%+10
set /a seed=%seed%-1
echo Crop sold! +10 $
echo you have %money% $ and %seed% seeds!
pause
goto main
:plant2
if %seed%==0 goto seederr
cls
echo.
echo.
echo.
echo.
echo.
echo __o__     __o__     _____     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
cls
echo.
echo.
echo.
echo.
echo   l         l
echo __l__     __l__     _____     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
cls
echo.
echo.
echo.
echo   l         l
echo   l         l
echo __l__     __l__     _____     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
cls
echo.
echo.
echo   l         l
echo   l         l
echo   l         l
echo __l__     __l__     _____     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
cls
echo.
echo   o         o
echo   l         l
echo   l         l
echo   l         l
echo __l__     __l__     _____     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
cls
echo   +         +
echo +-@-+     +-@-+
echo   +         +
echo   l         l
echo   l         l
echo   l	 l
echo __l__     __l__     _____     _____
set /a money=%money%+20
set /a seed=%seed%-2
echo Crop sold! +20$
echo you have %money% $ and %seed% seeds!
pause
goto main
:plant3
if %seed%==0 goto seederr
cls
echo.
echo.
echo.
echo.
echo.
echo __o__     __o__     __o__     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo.
echo.
echo.
echo   l         l	   l
echo __l__     __l__     __l__     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo.
echo.
echo   l         l         l
echo   l         l         l
echo __l__     __l__     __l__     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo.
echo   l         l         l
echo   l         l         l
echo   l         l         l
echo __l__     __l__     __l__     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo   o         o	   o
echo   l         l	   l
echo   l         l	   l
echo   l         l         l
echo __l__     __l__     __l__     _____
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo   +	 +	   +
echo +-@-+     +-@-+	 +-@-+
echo   +	 +	   +
echo   l	 l	   l
echo   l	 l	   l
echo   l	 l	   l
echo __l__     __l__     __l__     _____
set /a money=%money%+30
set /a seed=%seed%-3
echo Crop sold! +30$
echo you have %money% $ and %seed% seeds!
pause
goto main
:plant4
if %seed%==0 goto seederr
cls
echo.
echo.
echo.
echo.
echo.
echo __o__     __o__     __o__     __o__
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo.
echo.
echo.
echo   l         l	   l	     l
echo __l__     __l__     __l__     __l__
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo.
echo.
echo   l         l         l	     l
echo   l         l         l	     l
echo __l__     __l__     __l__     __l__
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo.
echo   l         l         l	     l
echo   l         l         l	     l
echo   l         l         l	     l
echo __l__     __l__     __l__     __l__
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo.
echo   o         o	   o	     o
echo   l         l	   l	     l
echo   l         l	   l	     l
echo   l         l         l	     l
echo __l__     __l__     __l__     __l__
ping 1.1.1.1 -n 1 -w 4000 >> errortext.txt
del errortext.txt
echo   +	 +	   +	     +
echo +-@-+     +-@-+	 +-@-+	   +-@-+
echo   +	 +	   +	     +
echo   l	 l	   l	     l
echo   l	 l	   l	     l
echo   l	 l	   l	     l
echo __l__     __l__     __l__     __l__
set /a money=%money%+40
set /a seed=%seed%-4
echo Crop sold! +40$
echo you have %money% $ and %seed% seeds!
pause
goto main
:seederr
echo you dont have any seeds!
pause
goto main
:shop1
cls
echo You have $%money%
echo [0] Exit shop
echo [1] Buy seeds ($%seedcost% each)
echo [2] Double planting ($100)
echo [3] Triple planting ($300)
echo [4] Quadruple planting ($500)
echo [5] Seed discount ($1000)
set /p input=Enter choice...
if %input%==0 goto main
if %input%==1 goto buyseeds
if %input%==2 goto buydplant
if %input%==3 goto buytplant
if %input%==4 goto buyqplant
if %input%==4 goto buydplant
if %input%==5 goto buydplant
cls
goto shop1
:buyseeds
cls
echo Seeds currently cost $%seedcost% each
echo You currently have %seed% seeds
set /p input=Enter number of seeds to buy:
set /a seed=%seed%+%input%
set /a money=%money%-(%input%*%seedcost%)
echo You now have %seed% seeds
pause
cls
goto main

:buydplant
cls
echo You currently have $%money%
set /p input=Are you sure you want to buy double planting ($100)? (yes, no):
if %input%==no goto shop1
if %money% LSS 100 goto nomoney
set /a money=%money%-100
set /a allow2=1
echo double planting bought!
pause
goto shop1
:buytplant
cls
echo You currently have $%money%
set /p input=Are you sure you want to buy triple planting ($300)? (yes, no):
if %input%==no goto shop1
if %money% LSS 300 goto nomoney
set /a money=%money%-300
set /a allow3=1
echo double planting bought!
pause
goto shop1
:buyqplant
cls
echo You currently have $%money%
set /p input=Are you sure you want to buy quadruple planting ($500)? (yes, no):
if %input%==no goto shop1
if %money% LSS 500 goto nomoney
set /a money=%money%-500
set /a allow4=1
echo double planting bought!
pause
goto shop1
:nomoney
echo You dont have enough money!
pause
goto shop1