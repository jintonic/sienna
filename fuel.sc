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
rightstring A0 = "date"
rightstring B0 = "milage"
rightstring C0 = "added"
rightstring D0 = "efficiency"
rightstring E0 = "price"
rightstring F0 = "cost"
rightstring G0 = "total"
let A1 = @dts(2015,11,28)
fmt A1 "%F"
let B1 = 197482
let C1 = 16.626
let D1 = @avg(D2:D3)
let E1 = 1.819
let F1 = 30.24
let G1 = F1
let A2 = @dts(2015,12,5)
fmt A2 "%F"
let B2 = 197665
let C2 = 9.541
let D2 = (B2-B1)/C2
let E2 = 1.899
let F2 = 18.12
let G2 = G1+F2
let A3 = @dts(2015,12,12)
fmt A3 "%F"
let B3 = 197806
let C3 = 7.604
let D3 = (B3-B2)/C3
let E3 = 1.799
let F3 = 13.68
let G3 = G2+F3
let A4 = @dts(2016,1,19)
fmt A4 "%F"
let B4 = 197916
let C4 = 8.928
let D4 = (B4-B3)/C4
let E4 = 1.649
let F4 = 14.72
let G4 = G3+F4
rightstring H4 = "low T, in town, heavy load"
let A5 = @dts(2016,1,19)
fmt A5 "%F"
let B5 = 198031
let C5 = 6.119
let D5 = (B5-B4)/C5
let E5 = 1.649
let F5 = 10.09
let G5 = G4+F5
rightstring H5 = "pure highway"
let A6 = @dts(2016,1,21)
fmt A6 "%F"
let B6 = 198193
let C6 = 8.636
let D6 = (B6-B5)/C6
let E6 = 1.599
let F6 = 13.81
let G6 = G5+F6
let A7 = @dts(2016,1,24)
fmt A7 "%F"
let B7 = 198314
let C7 = 6.304
let D7 = (B7-B6)/C7
let E7 = 1.599
let F7 = 10.08
let G7 = G6+F7
goto G7 A0
