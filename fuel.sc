# This data file was generated by the Spreadsheet Calculator.
# You almost certainly shouldn't edit it.

set numeric color
format 5 = "%F"
format A 10 2 5
format B 7 0 0
format C 7 3 0
format D 11 2 0
format E 6 3 0
format F 6 2 0
format G 8 3 0
color 1 = @white;@black
color 7 = @white;@blue
rightstring A0 = "date"
rightstring B0 = "milage"
rightstring C0 = "added"
rightstring D0 = "efficiency"
rightstring E0 = "price"
rightstring F0 = "cost"
rightstring G0 = "total"
let A1 = @dts(2015,11,28)
let B1 = 197482
let C1 = 16.626
let D1 = @avg(D2:D3)
let E1 = 1.819
let F1 = 30.24
let G1 = F1
let A2 = @dts(2015,12,5)
let B2 = 197665
let C2 = 9.541
let D2 = (B2-B1)/C2
let E2 = 1.899
let F2 = 18.12
let G2 = G1+F2
let A3 = @dts(2015,12,12)
let B3 = 197806
let C3 = 7.604
let D3 = (B3-B2)/C3
let E3 = 1.799
let F3 = 13.68
let G3 = G2+F3
goto D1 A0
