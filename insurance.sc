# This data file was generated by the Spreadsheet Calculator.
# You almost certainly shouldn't edit it.

set numeric color
format 5 = "%F"
format 6 = " %y-%m-%d %R"
format A 10 0 5
format B 7 2 0
format C 7 2 0
color 1 = @white;@black
color 7 = @white;@blue
rightstring A0 = "date"
rightstring B0 = "cost"
rightstring C0 = "total"
let A1 = @dts(2015,12,1)
let B1 = 40
let C1 = B1
let A2 = @dts(2016,10,20)
let B2 = 146.52
let C2 = B2+@nval("C",@myrow-1)
goto C2 A0
