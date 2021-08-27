#!/bin/sh

select1 () {
    cd 2021-08-26*
    mkdir ZZZ
    mv A* ZZZ/
    mv ZZZ/A4_W10* .
    mv ZZZ/A5_W10* .
    mv ZZZ/A6_W10* .
    mv ZZZ/A7_W10* .
    mv ZZZ/A8_W10* .
    mv ZZZ/A9_W10* .
    mv ZZZ/A4_W20* .
    mv ZZZ/A5_W20* .
    mv ZZZ/A6_W20* .
    mv ZZZ/A7_W20* .
    mv ZZZ/A8_W20* .
    mv ZZZ/A9_W20* .
    mv ZZZ/A4_W30* .
    mv ZZZ/A5_W30* .
    mv ZZZ/A6_W30* .
    mv ZZZ/A7_W30* .
    mv ZZZ/A8_W30* .
    mv ZZZ/A9_W30* .
    mv ZZZ/A4_W40* .
    mv ZZZ/A5_W40* .
    mv ZZZ/A6_W40* .
    mv ZZZ/A7_W40* .
    mv ZZZ/A8_W40* .
    mv ZZZ/A9_W40* .
    mv ZZZ/A4_W50* .
    mv ZZZ/A5_W50* .
    mv ZZZ/A6_W50* .
    mv ZZZ/A7_W50* .
    mv ZZZ/A8_W50* .
    mv ZZZ/A9_W50* .
    cd ..
    # benchmark-report -w 180 -c 120 2021-08-26*
}

select2 () {
    cd 2021-08-26*
    mkdir ZZZ
    mv A* ZZZ/
    mv ZZZ/A4_W100* .
    mv ZZZ/A5_W100* .
    mv ZZZ/A6_W100* .
    mv ZZZ/A7_W100* .
    mv ZZZ/A8_W100* .
    mv ZZZ/A9_W100* .
    mv ZZZ/A4_W200* .
    mv ZZZ/A5_W200* .
    mv ZZZ/A6_W200* .
    mv ZZZ/A7_W200* .
    mv ZZZ/A8_W200* .
    mv ZZZ/A9_W200* .
    mv ZZZ/A4_W300* .
    mv ZZZ/A5_W300* .
    mv ZZZ/A6_W300* .
    mv ZZZ/A7_W300* .
    mv ZZZ/A8_W300* .
    mv ZZZ/A9_W300* .
    mv ZZZ/A4_W400* .
    mv ZZZ/A5_W400* .
    mv ZZZ/A6_W400* .
    mv ZZZ/A7_W400* .
    mv ZZZ/A8_W400* .
    mv ZZZ/A9_W400* .
    mv ZZZ/A4_W500* .
    mv ZZZ/A5_W500* .
    mv ZZZ/A6_W500* .
    mv ZZZ/A7_W500* .
    mv ZZZ/A8_W500* .
    mv ZZZ/A9_W500* .
    cd ..
    # benchmark-report -w 180 -c 120 2021-08-26*
}

#
cd /Users/ramiz/simulator
mkdir sl
cd /Users/ramiz/simulator/4sl
select1
cp -r 2021-08-26* /Users/ramiz/simulator/sl/4.2.2

#
cd /Users/ramiz/simulator
mkdir st
cd /Users/ramiz/simulator/4st
select1
cp -r 2021-08-26* /Users/ramiz/simulator/st/4.2.2

#
cd /Users/ramiz/simulator
mkdir ul
cd /Users/ramiz/simulator/4ul
select2
cp -r 2021-08-26* /Users/ramiz/simulator/ul/4.2.2

#
cd /Users/ramiz/simulator
mkdir ut
cd /Users/ramiz/simulator/4ut
select2
cp -r 2021-08-26* /Users/ramiz/simulator/ut/4.2.2

#
cd /Users/ramiz/simulator
cd /Users/ramiz/simulator/5sl
select1
cp -r 2021-08-26* /Users/ramiz/simulator/sl/5.0-BETA-2

#
cd /Users/ramiz/simulator
cd /Users/ramiz/simulator/5st
select1
cp -r 2021-08-26* /Users/ramiz/simulator/st/5.0-BETA-2

#
cd /Users/ramiz/simulator
cd /Users/ramiz/simulator/5ul
select2
cp -r 2021-08-26* /Users/ramiz/simulator/ul/5.0-BETA-2

#
cd /Users/ramiz/simulator
cd /Users/ramiz/simulator/5ut
select2
cp -r 2021-08-26* /Users/ramiz/simulator/ut/5.0-BETA-2




cd /Users/ramiz/simulator/sl
benchmark-report -w 180 -c 120 4.2.2 5.0-BETA-2

cd /Users/ramiz/simulator/st
benchmark-report -w 180 -c 120 4.2.2 5.0-BETA-2

cd /Users/ramiz/simulator/ul
benchmark-report -w 180 -c 120 4.2.2 5.0-BETA-2

cd /Users/ramiz/simulator/ut
benchmark-report -w 180 -c 120 4.2.2 5.0-BETA-2
