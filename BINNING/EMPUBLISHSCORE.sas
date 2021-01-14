length _UFormat200 $200;
drop _UFormat200;
_UFormat200='';

*------------------------------------------------------------*;
* Variable: Above_Ground_Living_Area;
*------------------------------------------------------------*;
LABEL GRP_Above_Ground_Living_Area =
'Grouped: Above Ground Living Area';

if MISSING(Above_Ground_Living_Area) then do;
GRP_Above_Ground_Living_Area = .;
end;
else if NOT MISSING(Above_Ground_Living_Area) then do;
if Above_Ground_Living_Area < 1109 then do;
GRP_Above_Ground_Living_Area = 1;
end;
else
if 1109 <= Above_Ground_Living_Area AND Above_Ground_Living_Area < 1396 then do;
GRP_Above_Ground_Living_Area = 2;
end;
else
if 1396 <= Above_Ground_Living_Area AND Above_Ground_Living_Area < 1671 then do;
GRP_Above_Ground_Living_Area = 3;
end;
else
if 1671 <= Above_Ground_Living_Area then do;
GRP_Above_Ground_Living_Area = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Bsmt_Finish_Sqr_ft;
*------------------------------------------------------------*;
LABEL GRP_Bsmt_Finish_Sqr_ft =
'Grouped: Bsmt Finish Sqr ft';

if MISSING(Bsmt_Finish_Sqr_ft) then do;
GRP_Bsmt_Finish_Sqr_ft = .;
end;
else if NOT MISSING(Bsmt_Finish_Sqr_ft) then do;
if Bsmt_Finish_Sqr_ft < 0 then do;
GRP_Bsmt_Finish_Sqr_ft = 1;
end;
else
if 0 <= Bsmt_Finish_Sqr_ft AND Bsmt_Finish_Sqr_ft < 368 then do;
GRP_Bsmt_Finish_Sqr_ft = 2;
end;
else
if 368 <= Bsmt_Finish_Sqr_ft AND Bsmt_Finish_Sqr_ft < 717 then do;
GRP_Bsmt_Finish_Sqr_ft = 3;
end;
else
if 717 <= Bsmt_Finish_Sqr_ft then do;
GRP_Bsmt_Finish_Sqr_ft = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Bsmt_Unfinish_Sqr_ft;
*------------------------------------------------------------*;
LABEL GRP_Bsmt_Unfinish_Sqr_ft =
'Grouped: Bsmt Unfinish Sqr ft';

if MISSING(Bsmt_Unfinish_Sqr_ft) then do;
GRP_Bsmt_Unfinish_Sqr_ft = .;
end;
else if NOT MISSING(Bsmt_Unfinish_Sqr_ft) then do;
if Bsmt_Unfinish_Sqr_ft < 229 then do;
GRP_Bsmt_Unfinish_Sqr_ft = 1;
end;
else
if 229 <= Bsmt_Unfinish_Sqr_ft AND Bsmt_Unfinish_Sqr_ft < 462 then do;
GRP_Bsmt_Unfinish_Sqr_ft = 2;
end;
else
if 462 <= Bsmt_Unfinish_Sqr_ft AND Bsmt_Unfinish_Sqr_ft < 789 then do;
GRP_Bsmt_Unfinish_Sqr_ft = 3;
end;
else
if 789 <= Bsmt_Unfinish_Sqr_ft then do;
GRP_Bsmt_Unfinish_Sqr_ft = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Fireplaces;
*------------------------------------------------------------*;
LABEL GRP_Fireplaces = "Grouped: Fireplaces";

if MISSING(Fireplaces) then do;
GRP_Fireplaces = .;
end;
else if NOT MISSING(Fireplaces) then do;
if Fireplaces < 0 then do;
GRP_Fireplaces = 1;
end;
else
if 0 <= Fireplaces AND Fireplaces < 1 then do;
GRP_Fireplaces = 2;
end;
else
if 1 <= Fireplaces then do;
GRP_Fireplaces = 3;
end;
end;

*------------------------------------------------------------*;
* Variable: Garage_Area;
*------------------------------------------------------------*;
LABEL GRP_Garage_Area =
'Grouped: Garage Area';

if MISSING(Garage_Area) then do;
GRP_Garage_Area = .;
end;
else if NOT MISSING(Garage_Area) then do;
if Garage_Area < 312 then do;
GRP_Garage_Area = 1;
end;
else
if 312 <= Garage_Area AND Garage_Area < 462 then do;
GRP_Garage_Area = 2;
end;
else
if 462 <= Garage_Area AND Garage_Area < 564 then do;
GRP_Garage_Area = 3;
end;
else
if 564 <= Garage_Area then do;
GRP_Garage_Area = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Garage_Cars;
*------------------------------------------------------------*;
LABEL GRP_Garage_Cars =
'Grouped: Garage Cars';

if MISSING(Garage_Cars) then do;
GRP_Garage_Cars = .;
end;
else if NOT MISSING(Garage_Cars) then do;
if Garage_Cars < 1 then do;
GRP_Garage_Cars = 1;
end;
else
if 1 <= Garage_Cars AND Garage_Cars < 2 then do;
GRP_Garage_Cars = 2;
end;
else
if 2 <= Garage_Cars then do;
GRP_Garage_Cars = 3;
end;
end;

*------------------------------------------------------------*;
* Variable: Lot_Area;
*------------------------------------------------------------*;
LABEL GRP_Lot_Area =
'Grouped: Lot Area';

if MISSING(Lot_Area) then do;
GRP_Lot_Area = .;
end;
else if NOT MISSING(Lot_Area) then do;
if Lot_Area < 7200 then do;
GRP_Lot_Area = 1;
end;
else
if 7200 <= Lot_Area AND Lot_Area < 9350 then do;
GRP_Lot_Area = 2;
end;
else
if 9350 <= Lot_Area AND Lot_Area < 11316 then do;
GRP_Lot_Area = 3;
end;
else
if 11316 <= Lot_Area then do;
GRP_Lot_Area = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Number_Full_Bath_House;
*------------------------------------------------------------*;
LABEL GRP_Number_Full_Bath_House =
'Grouped: Number Full Bath House';

if MISSING(Number_Full_Bath_House) then do;
GRP_Number_Full_Bath_House = .;
end;
else if NOT MISSING(Number_Full_Bath_House) then do;
if Number_Full_Bath_House < 1 then do;
GRP_Number_Full_Bath_House = 1;
end;
else
if 1 <= Number_Full_Bath_House AND Number_Full_Bath_House < 2 then do;
GRP_Number_Full_Bath_House = 2;
end;
else
if 2 <= Number_Full_Bath_House then do;
GRP_Number_Full_Bath_House = 3;
end;
end;

*------------------------------------------------------------*;
* Variable: Number_Room_Above_Ground;
*------------------------------------------------------------*;
LABEL GRP_Number_Room_Above_Ground =
'Grouped: Number Room Above Ground';

if MISSING(Number_Room_Above_Ground) then do;
GRP_Number_Room_Above_Ground = .;
end;
else if NOT MISSING(Number_Room_Above_Ground) then do;
if Number_Room_Above_Ground < 5 then do;
GRP_Number_Room_Above_Ground = 1;
end;
else
if 5 <= Number_Room_Above_Ground AND Number_Room_Above_Ground < 6 then do;
GRP_Number_Room_Above_Ground = 2;
end;
else
if 6 <= Number_Room_Above_Ground AND Number_Room_Above_Ground < 7 then do;
GRP_Number_Room_Above_Ground = 3;
end;
else
if 7 <= Number_Room_Above_Ground then do;
GRP_Number_Room_Above_Ground = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Open_Porch_Sqr_ft;
*------------------------------------------------------------*;
LABEL GRP_Open_Porch_Sqr_ft =
'Grouped: Open Porch Sqr ft';

if MISSING(Open_Porch_Sqr_ft) then do;
GRP_Open_Porch_Sqr_ft = .;
end;
else if NOT MISSING(Open_Porch_Sqr_ft) then do;
if Open_Porch_Sqr_ft < 0 then do;
GRP_Open_Porch_Sqr_ft = 1;
end;
else
if 0 <= Open_Porch_Sqr_ft AND Open_Porch_Sqr_ft < 26 then do;
GRP_Open_Porch_Sqr_ft = 2;
end;
else
if 26 <= Open_Porch_Sqr_ft AND Open_Porch_Sqr_ft < 65 then do;
GRP_Open_Porch_Sqr_ft = 3;
end;
else
if 65 <= Open_Porch_Sqr_ft then do;
GRP_Open_Porch_Sqr_ft = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Total_Bsmt_Sqr_ft;
*------------------------------------------------------------*;
LABEL GRP_Total_Bsmt_Sqr_ft =
'Grouped: Total Bsmt Sqr ft';

if MISSING(Total_Bsmt_Sqr_ft) then do;
GRP_Total_Bsmt_Sqr_ft = .;
end;
else if NOT MISSING(Total_Bsmt_Sqr_ft) then do;
if Total_Bsmt_Sqr_ft < 795 then do;
GRP_Total_Bsmt_Sqr_ft = 1;
end;
else
if 795 <= Total_Bsmt_Sqr_ft AND Total_Bsmt_Sqr_ft < 976 then do;
GRP_Total_Bsmt_Sqr_ft = 2;
end;
else
if 976 <= Total_Bsmt_Sqr_ft AND Total_Bsmt_Sqr_ft < 1240 then do;
GRP_Total_Bsmt_Sqr_ft = 3;
end;
else
if 1240 <= Total_Bsmt_Sqr_ft then do;
GRP_Total_Bsmt_Sqr_ft = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Veneer_Area_of_Exterior_Wall;
*------------------------------------------------------------*;
LABEL GRP_Veneer_Area_of_Exterior_Wall =
'Grouped: Veneer Area of Exterior Wall';

if MISSING(Veneer_Area_of_Exterior_Wall) then do;
GRP_Veneer_Area_of_Exterior_Wall = .;
end;
else if NOT MISSING(Veneer_Area_of_Exterior_Wall) then do;
if Veneer_Area_of_Exterior_Wall < 0 then do;
GRP_Veneer_Area_of_Exterior_Wall = 1;
end;
else
if 0 <= Veneer_Area_of_Exterior_Wall AND Veneer_Area_of_Exterior_Wall < 144 then do;
GRP_Veneer_Area_of_Exterior_Wall = 2;
end;
else
if 144 <= Veneer_Area_of_Exterior_Wall then do;
GRP_Veneer_Area_of_Exterior_Wall = 3;
end;
end;

*------------------------------------------------------------*;
* Variable: Year_Built;
*------------------------------------------------------------*;
LABEL GRP_Year_Built =
'Grouped: Year Built';

if MISSING(Year_Built) then do;
GRP_Year_Built = .;
end;
else if NOT MISSING(Year_Built) then do;
if Year_Built < 1954 then do;
GRP_Year_Built = 1;
end;
else
if 1954 <= Year_Built AND Year_Built < 1972 then do;
GRP_Year_Built = 2;
end;
else
if 1972 <= Year_Built AND Year_Built < 1999 then do;
GRP_Year_Built = 3;
end;
else
if 1999 <= Year_Built then do;
GRP_Year_Built = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: Year_Remodel;
*------------------------------------------------------------*;
LABEL GRP_Year_Remodel =
'Grouped: Year Remodel';

if MISSING(Year_Remodel) then do;
GRP_Year_Remodel = .;
end;
else if NOT MISSING(Year_Remodel) then do;
if Year_Remodel < 1965 then do;
GRP_Year_Remodel = 1;
end;
else
if 1965 <= Year_Remodel AND Year_Remodel < 1993 then do;
GRP_Year_Remodel = 2;
end;
else
if 1993 <= Year_Remodel AND Year_Remodel < 2003 then do;
GRP_Year_Remodel = 3;
end;
else
if 2003 <= Year_Remodel then do;
GRP_Year_Remodel = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: _1st_Flr_Sqr_ft;
*------------------------------------------------------------*;
LABEL GRP__1st_Flr_Sqr_ft =
'Grouped: 1st Flr Sqr ft';

if MISSING(_1st_Flr_Sqr_ft) then do;
GRP__1st_Flr_Sqr_ft = .;
end;
else if NOT MISSING(_1st_Flr_Sqr_ft) then do;
if _1st_Flr_Sqr_ft < 864 then do;
GRP__1st_Flr_Sqr_ft = 1;
end;
else
if 864 <= _1st_Flr_Sqr_ft AND _1st_Flr_Sqr_ft < 1052 then do;
GRP__1st_Flr_Sqr_ft = 2;
end;
else
if 1052 <= _1st_Flr_Sqr_ft AND _1st_Flr_Sqr_ft < 1327 then do;
GRP__1st_Flr_Sqr_ft = 3;
end;
else
if 1327 <= _1st_Flr_Sqr_ft then do;
GRP__1st_Flr_Sqr_ft = 4;
end;
end;

*------------------------------------------------------------*;
* Variable: _2nd_Flr_Sqr_ft;
*------------------------------------------------------------*;
LABEL GRP__2nd_Flr_Sqr_ft =
'Grouped: 2nd Flr Sqr ft';

if MISSING(_2nd_Flr_Sqr_ft) then do;
GRP__2nd_Flr_Sqr_ft = .;
end;
else if NOT MISSING(_2nd_Flr_Sqr_ft) then do;
if _2nd_Flr_Sqr_ft < 0 then do;
GRP__2nd_Flr_Sqr_ft = 1;
end;
else
if 0 <= _2nd_Flr_Sqr_ft AND _2nd_Flr_Sqr_ft < 686 then do;
GRP__2nd_Flr_Sqr_ft = 2;
end;
else
if 686 <= _2nd_Flr_Sqr_ft then do;
GRP__2nd_Flr_Sqr_ft = 3;
end;
end;

*------------------------------------------------------------*;
* Variable: Exterior_Quality;
*------------------------------------------------------------*;
LABEL GRP_Exterior_Quality =
'Grouped: Exterior Quality';

_UFormat200 = put(Exterior_Quality,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Exterior_Quality = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '0'
) then do;
GRP_Exterior_Quality = 1;
end;
else
if (_UFormat200 eq '1'
) then do;
GRP_Exterior_Quality = 2;
end;
else do;
GRP_Exterior_Quality = .;
end;
end;

*------------------------------------------------------------*;
* Variable: Foundation;
*------------------------------------------------------------*;
LABEL GRP_Foundation = "Grouped: Foundation";

_UFormat200 = put(Foundation,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Foundation = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '2'
) then do;
GRP_Foundation = 1;
end;
else
if (_UFormat200 eq '1'
) then do;
GRP_Foundation = 2;
end;
else
if (_UFormat200 eq '0'
) then do;
GRP_Foundation = 3;
end;
else do;
GRP_Foundation = .;
end;
end;

*------------------------------------------------------------*;
* Variable: Garage_Type;
*------------------------------------------------------------*;
LABEL GRP_Garage_Type =
'Grouped: Garage Type';

_UFormat200 = put(Garage_Type,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Garage_Type = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '3'
) then do;
GRP_Garage_Type = 1;
end;
else
if (_UFormat200 eq '1'
) then do;
GRP_Garage_Type = 2;
end;
else
if (_UFormat200 eq '2'
) then do;
GRP_Garage_Type = 3;
end;
else
if (_UFormat200 eq '0'
) then do;
GRP_Garage_Type = 4;
end;
else do;
GRP_Garage_Type = .;
end;
end;

*------------------------------------------------------------*;
* Variable: Half_Bath_House;
*------------------------------------------------------------*;
LABEL GRP_Half_Bath_House =
'Grouped: Half Bath House';

_UFormat200 = put(Half_Bath_House,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Half_Bath_House = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '0'
) then do;
GRP_Half_Bath_House = 1;
end;
else
if (_UFormat200 eq '1'
) then do;
GRP_Half_Bath_House = 2;
end;
else do;
GRP_Half_Bath_House = .;
end;
end;

*------------------------------------------------------------*;
* Variable: Heating_QC;
*------------------------------------------------------------*;
LABEL GRP_Heating_QC =
'Grouped: Heating QC';

_UFormat200 = put(Heating_QC,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Heating_QC = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '3'
) then do;
GRP_Heating_QC = 1;
end;
else
if (_UFormat200 eq '1'
) then do;
GRP_Heating_QC = 2;
end;
else
if (_UFormat200 eq '2'
) then do;
GRP_Heating_QC = 3;
end;
else
if (_UFormat200 eq '0'
) then do;
GRP_Heating_QC = 4;
end;
else do;
GRP_Heating_QC = .;
end;
end;

*------------------------------------------------------------*;
* Variable: Lot_Shape;
*------------------------------------------------------------*;
LABEL GRP_Lot_Shape =
'Grouped: Lot Shape';

_UFormat200 = put(Lot_Shape,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Lot_Shape = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '1'
) then do;
GRP_Lot_Shape = 1;
end;
else
if (_UFormat200 eq '0'
) then do;
GRP_Lot_Shape = 2;
end;
else do;
GRP_Lot_Shape = .;
end;
end;

*------------------------------------------------------------*;
* Variable: Overall_Condition;
*------------------------------------------------------------*;
LABEL GRP_Overall_Condition =
'Grouped: Overall Condition';

_UFormat200 = put(Overall_Condition,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Overall_Condition = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '5'
) then do;
GRP_Overall_Condition = 1;
end;
else
if (_UFormat200 eq '6'
) then do;
GRP_Overall_Condition = 2;
end;
else
if (_UFormat200 eq '7'
) then do;
GRP_Overall_Condition = 3;
end;
else
if (_UFormat200 eq '8'
) then do;
GRP_Overall_Condition = 4;
end;
else
if (_UFormat200 eq '4'
) then do;
GRP_Overall_Condition = 5;
end;
else
if (_UFormat200 eq '9'
) then do;
GRP_Overall_Condition = 6;
end;
else
if (_UFormat200 eq '3'
) then do;
GRP_Overall_Condition = 7;
end;
else
if (_UFormat200 eq '2'
) then do;
GRP_Overall_Condition = 8;
end;
else
if (_UFormat200 eq '1'
) then do;
GRP_Overall_Condition = 9;
end;
else do;
GRP_Overall_Condition = .;
end;
end;

*------------------------------------------------------------*;
* Variable: Overall_Quality;
*------------------------------------------------------------*;
LABEL GRP_Overall_Quality =
'Grouped: Overall Quality';

_UFormat200 = put(Overall_Quality,BEST12.0);
%dmnormip(_UFormat200);
if MISSING(_UFormat200) then do;
GRP_Overall_Quality = .;
end;
else if NOT MISSING(_UFormat200) then do;
if (_UFormat200 eq '5'
) then do;
GRP_Overall_Quality = 1;
end;
else
if (_UFormat200 eq '6'
) then do;
GRP_Overall_Quality = 2;
end;
else
if (_UFormat200 eq '7'
) then do;
GRP_Overall_Quality = 3;
end;
else
if (_UFormat200 eq '8'
) then do;
GRP_Overall_Quality = 4;
end;
else
if (_UFormat200 eq '4'
) then do;
GRP_Overall_Quality = 5;
end;
else
if (_UFormat200 eq '9'
) then do;
GRP_Overall_Quality = 6;
end;
else
if (_UFormat200 eq '3'
) then do;
GRP_Overall_Quality = 7;
end;
else
if (_UFormat200 eq '2'
) then do;
GRP_Overall_Quality = 8;
end;
else
if (_UFormat200 eq '10'
) then do;
GRP_Overall_Quality = 9;
end;
else do;
GRP_Overall_Quality = .;
end;
end;
