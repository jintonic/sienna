#!/bin/sh
carv=`sc -W % car.sc 2>/dev/null | tail -1 | awk '{print $NF}'`
oilv=`sc -W % oil.sc 2>/dev/null | tail -1 | awk '{print $NF}'`
extv=`sc -W % exterior.sc 2>/dev/null | tail -1 | awk '{print $NF}'`
fuev=`sc -W % fuel.sc 2>/dev/null | tail -1 | awk '{print $NF}'`
insv=`sc -W % insurance.sc 2>/dev/null | tail -1 | awk '{print $NF}'`
