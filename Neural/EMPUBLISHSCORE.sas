***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4
;
      label GRP_Above_Ground_Living_Area1 =
'Dummy: GRP_Above_Ground_Living_Area=1' ;

      label GRP_Above_Ground_Living_Area2 =
'Dummy: GRP_Above_Ground_Living_Area=2' ;

      label GRP_Above_Ground_Living_Area3 =
'Dummy: GRP_Above_Ground_Living_Area=3' ;

      label GRP_Bsmt_Finish_Sqr_ft2 = 'Dummy: GRP_Bsmt_Finish_Sqr_ft=2' ;

      label GRP_Bsmt_Finish_Sqr_ft3 = 'Dummy: GRP_Bsmt_Finish_Sqr_ft=3' ;

      label GRP_Bsmt_Unfinish_Sqr_ft1 = 'Dummy: GRP_Bsmt_Unfinish_Sqr_ft=1' ;

      label GRP_Bsmt_Unfinish_Sqr_ft2 = 'Dummy: GRP_Bsmt_Unfinish_Sqr_ft=2' ;

      label GRP_Bsmt_Unfinish_Sqr_ft3 = 'Dummy: GRP_Bsmt_Unfinish_Sqr_ft=3' ;

      label GRP_Exterior_Quality1 = 'Dummy: GRP_Exterior_Quality=1' ;

      label GRP_Fireplaces2 = 'Dummy: GRP_Fireplaces=2' ;

      label GRP_Foundation1 = 'Dummy: GRP_Foundation=1' ;

      label GRP_Foundation2 = 'Dummy: GRP_Foundation=2' ;

      label GRP_Garage_Area1 = 'Dummy: GRP_Garage_Area=1' ;

      label GRP_Garage_Area2 = 'Dummy: GRP_Garage_Area=2' ;

      label GRP_Garage_Area3 = 'Dummy: GRP_Garage_Area=3' ;

      label GRP_Garage_Cars1 = 'Dummy: GRP_Garage_Cars=1' ;

      label GRP_Garage_Cars2 = 'Dummy: GRP_Garage_Cars=2' ;

      label GRP_Garage_Type1 = 'Dummy: GRP_Garage_Type=1' ;

      label GRP_Garage_Type2 = 'Dummy: GRP_Garage_Type=2' ;

      label GRP_Garage_Type3 = 'Dummy: GRP_Garage_Type=3' ;

      label GRP_Half_Bath_House1 = 'Dummy: GRP_Half_Bath_House=1' ;

      label GRP_Heating_QC1 = 'Dummy: GRP_Heating_QC=1' ;

      label GRP_Heating_QC2 = 'Dummy: GRP_Heating_QC=2' ;

      label GRP_Heating_QC3 = 'Dummy: GRP_Heating_QC=3' ;

      label GRP_Lot_Area1 = 'Dummy: GRP_Lot_Area=1' ;

      label GRP_Lot_Area2 = 'Dummy: GRP_Lot_Area=2' ;

      label GRP_Lot_Area3 = 'Dummy: GRP_Lot_Area=3' ;

      label GRP_Lot_Shape1 = 'Dummy: GRP_Lot_Shape=1' ;

      label GRP_Number_Full_Bath_House2 =
'Dummy: GRP_Number_Full_Bath_House=2' ;

      label GRP_Number_Room_Above_Ground1 =
'Dummy: GRP_Number_Room_Above_Ground=1' ;

      label GRP_Number_Room_Above_Ground2 =
'Dummy: GRP_Number_Room_Above_Ground=2' ;

      label GRP_Number_Room_Above_Ground3 =
'Dummy: GRP_Number_Room_Above_Ground=3' ;

      label GRP_Open_Porch_Sqr_ft2 = 'Dummy: GRP_Open_Porch_Sqr_ft=2' ;

      label GRP_Open_Porch_Sqr_ft3 = 'Dummy: GRP_Open_Porch_Sqr_ft=3' ;

      label GRP_Overall_Condition1 = 'Dummy: GRP_Overall_Condition=1' ;

      label GRP_Overall_Condition2 = 'Dummy: GRP_Overall_Condition=2' ;

      label GRP_Overall_Condition3 = 'Dummy: GRP_Overall_Condition=3' ;

      label GRP_Overall_Condition4 = 'Dummy: GRP_Overall_Condition=4' ;

      label GRP_Overall_Condition5 = 'Dummy: GRP_Overall_Condition=5' ;

      label GRP_Overall_Condition6 = 'Dummy: GRP_Overall_Condition=6' ;

      label GRP_Overall_Condition7 = 'Dummy: GRP_Overall_Condition=7' ;

      label GRP_Overall_Condition8 = 'Dummy: GRP_Overall_Condition=8' ;

      label GRP_Overall_Quality1 = 'Dummy: GRP_Overall_Quality=1' ;

      label GRP_Overall_Quality2 = 'Dummy: GRP_Overall_Quality=2' ;

      label GRP_Overall_Quality3 = 'Dummy: GRP_Overall_Quality=3' ;

      label GRP_Overall_Quality4 = 'Dummy: GRP_Overall_Quality=4' ;

      label GRP_Overall_Quality5 = 'Dummy: GRP_Overall_Quality=5' ;

      label GRP_Overall_Quality6 = 'Dummy: GRP_Overall_Quality=6' ;

      label GRP_Overall_Quality7 = 'Dummy: GRP_Overall_Quality=7' ;

      label GRP_Overall_Quality8 = 'Dummy: GRP_Overall_Quality=8' ;

      label GRP_Total_Bsmt_Sqr_ft1 = 'Dummy: GRP_Total_Bsmt_Sqr_ft=1' ;

      label GRP_Total_Bsmt_Sqr_ft2 = 'Dummy: GRP_Total_Bsmt_Sqr_ft=2' ;

      label GRP_Total_Bsmt_Sqr_ft3 = 'Dummy: GRP_Total_Bsmt_Sqr_ft=3' ;

      label GRP_Veneer_Area_of_Exterior_W2 =
'Dummy: GRP_Veneer_Area_of_Exterior_Wall=2' ;

      label GRP_Year_Built1 = 'Dummy: GRP_Year_Built=1' ;

      label GRP_Year_Built2 = 'Dummy: GRP_Year_Built=2' ;

      label GRP_Year_Built3 = 'Dummy: GRP_Year_Built=3' ;

      label GRP_Year_Remodel1 = 'Dummy: GRP_Year_Remodel=1' ;

      label GRP_Year_Remodel2 = 'Dummy: GRP_Year_Remodel=2' ;

      label GRP_Year_Remodel3 = 'Dummy: GRP_Year_Remodel=3' ;

      label GRP__1st_Flr_Sqr_ft1 = 'Dummy: GRP__1st_Flr_Sqr_ft=1' ;

      label GRP__1st_Flr_Sqr_ft2 = 'Dummy: GRP__1st_Flr_Sqr_ft=2' ;

      label GRP__1st_Flr_Sqr_ft3 = 'Dummy: GRP__1st_Flr_Sqr_ft=3' ;

      label GRP__2nd_Flr_Sqr_ft2 = 'Dummy: GRP__2nd_Flr_Sqr_ft=2' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label H14 = 'Hidden: H1=4' ;

      label H15 = 'Hidden: H1=5' ;

      label P_Sale_Price = 'Predicted: Sale_Price' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for GRP_Above_Ground_Living_Area ;
drop GRP_Above_Ground_Living_Area1 GRP_Above_Ground_Living_Area2
        GRP_Above_Ground_Living_Area3 ;
if missing( GRP_Above_Ground_Living_Area ) then do;
   GRP_Above_Ground_Living_Area1 = .;
   GRP_Above_Ground_Living_Area2 = .;
   GRP_Above_Ground_Living_Area3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Above_Ground_Living_Area , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      GRP_Above_Ground_Living_Area1 = 0.63245553203367;
      GRP_Above_Ground_Living_Area2 = 0.63245553203367;
      GRP_Above_Ground_Living_Area3 = 0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Above_Ground_Living_Area1 = 0.63245553203367;
      GRP_Above_Ground_Living_Area2 = 0.63245553203367;
      GRP_Above_Ground_Living_Area3 = -0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Above_Ground_Living_Area1 = -0.63245553203367;
      GRP_Above_Ground_Living_Area2 = -0.63245553203367;
      GRP_Above_Ground_Living_Area3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Above_Ground_Living_Area1 = 0.63245553203367;
      GRP_Above_Ground_Living_Area2 = -0.63245553203367;
      GRP_Above_Ground_Living_Area3 = -0.63245553203367;
   end;
   else do;
      GRP_Above_Ground_Living_Area1 = .;
      GRP_Above_Ground_Living_Area2 = .;
      GRP_Above_Ground_Living_Area3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Bsmt_Finish_Sqr_ft ;
drop GRP_Bsmt_Finish_Sqr_ft2 GRP_Bsmt_Finish_Sqr_ft3 ;
if missing( GRP_Bsmt_Finish_Sqr_ft ) then do;
   GRP_Bsmt_Finish_Sqr_ft2 = .;
   GRP_Bsmt_Finish_Sqr_ft3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Bsmt_Finish_Sqr_ft , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP_Bsmt_Finish_Sqr_ft2 = -0.75;
      GRP_Bsmt_Finish_Sqr_ft3 = -0.75;
   end;
   else if _dm12 = '4'  then do;
      GRP_Bsmt_Finish_Sqr_ft2 = 0.75;
      GRP_Bsmt_Finish_Sqr_ft3 = 0.75;
   end;
   else if _dm12 = '3'  then do;
      GRP_Bsmt_Finish_Sqr_ft2 = 0.75;
      GRP_Bsmt_Finish_Sqr_ft3 = -0.75;
   end;
   else do;
      GRP_Bsmt_Finish_Sqr_ft2 = .;
      GRP_Bsmt_Finish_Sqr_ft3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Bsmt_Unfinish_Sqr_ft ;
drop GRP_Bsmt_Unfinish_Sqr_ft1 GRP_Bsmt_Unfinish_Sqr_ft2
        GRP_Bsmt_Unfinish_Sqr_ft3 ;
if missing( GRP_Bsmt_Unfinish_Sqr_ft ) then do;
   GRP_Bsmt_Unfinish_Sqr_ft1 = .;
   GRP_Bsmt_Unfinish_Sqr_ft2 = .;
   GRP_Bsmt_Unfinish_Sqr_ft3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Bsmt_Unfinish_Sqr_ft , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      GRP_Bsmt_Unfinish_Sqr_ft1 = 0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft2 = 0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft3 = 0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Bsmt_Unfinish_Sqr_ft1 = 0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft2 = -0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft3 = -0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Bsmt_Unfinish_Sqr_ft1 = -0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft2 = -0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft3 = -0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Bsmt_Unfinish_Sqr_ft1 = 0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft2 = 0.63245553203367;
      GRP_Bsmt_Unfinish_Sqr_ft3 = -0.63245553203367;
   end;
   else do;
      GRP_Bsmt_Unfinish_Sqr_ft1 = .;
      GRP_Bsmt_Unfinish_Sqr_ft2 = .;
      GRP_Bsmt_Unfinish_Sqr_ft3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Exterior_Quality ;
drop GRP_Exterior_Quality1 ;
if missing( GRP_Exterior_Quality ) then do;
   GRP_Exterior_Quality1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Exterior_Quality , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      GRP_Exterior_Quality1 = -1;
   end;
   else if _dm12 = '2'  then do;
      GRP_Exterior_Quality1 = 1;
   end;
   else do;
      GRP_Exterior_Quality1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Fireplaces ;
drop GRP_Fireplaces2 ;
if missing( GRP_Fireplaces ) then do;
   GRP_Fireplaces2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Fireplaces , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '3'  then do;
      GRP_Fireplaces2 = 1;
   end;
   else if _dm12 = '2'  then do;
      GRP_Fireplaces2 = -1;
   end;
   else do;
      GRP_Fireplaces2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Foundation ;
drop GRP_Foundation1 GRP_Foundation2 ;
if missing( GRP_Foundation ) then do;
   GRP_Foundation1 = .;
   GRP_Foundation2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Foundation , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      GRP_Foundation1 = -0.75;
      GRP_Foundation2 = -0.75;
   end;
   else if _dm12 = '2'  then do;
      GRP_Foundation1 = 0.75;
      GRP_Foundation2 = -0.75;
   end;
   else if _dm12 = '3'  then do;
      GRP_Foundation1 = 0.75;
      GRP_Foundation2 = 0.75;
   end;
   else do;
      GRP_Foundation1 = .;
      GRP_Foundation2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Garage_Area ;
drop GRP_Garage_Area1 GRP_Garage_Area2 GRP_Garage_Area3 ;
if missing( GRP_Garage_Area ) then do;
   GRP_Garage_Area1 = .;
   GRP_Garage_Area2 = .;
   GRP_Garage_Area3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Garage_Area , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      GRP_Garage_Area1 = 0.63245553203367;
      GRP_Garage_Area2 = 0.63245553203367;
      GRP_Garage_Area3 = 0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Garage_Area1 = 0.63245553203367;
      GRP_Garage_Area2 = 0.63245553203367;
      GRP_Garage_Area3 = -0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Garage_Area1 = -0.63245553203367;
      GRP_Garage_Area2 = -0.63245553203367;
      GRP_Garage_Area3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Garage_Area1 = 0.63245553203367;
      GRP_Garage_Area2 = -0.63245553203367;
      GRP_Garage_Area3 = -0.63245553203367;
   end;
   else do;
      GRP_Garage_Area1 = .;
      GRP_Garage_Area2 = .;
      GRP_Garage_Area3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Garage_Cars ;
drop GRP_Garage_Cars1 GRP_Garage_Cars2 ;
if missing( GRP_Garage_Cars ) then do;
   GRP_Garage_Cars1 = .;
   GRP_Garage_Cars2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Garage_Cars , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '3'  then do;
      GRP_Garage_Cars1 = 0.75;
      GRP_Garage_Cars2 = 0.75;
   end;
   else if _dm12 = '2'  then do;
      GRP_Garage_Cars1 = 0.75;
      GRP_Garage_Cars2 = -0.75;
   end;
   else if _dm12 = '1'  then do;
      GRP_Garage_Cars1 = -0.75;
      GRP_Garage_Cars2 = -0.75;
   end;
   else do;
      GRP_Garage_Cars1 = .;
      GRP_Garage_Cars2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Garage_Type ;
drop GRP_Garage_Type1 GRP_Garage_Type2 GRP_Garage_Type3 ;
if missing( GRP_Garage_Type ) then do;
   GRP_Garage_Type1 = .;
   GRP_Garage_Type2 = .;
   GRP_Garage_Type3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Garage_Type , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      GRP_Garage_Type1 = -0.63245553203367;
      GRP_Garage_Type2 = -0.63245553203367;
      GRP_Garage_Type3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Garage_Type1 = 0.63245553203367;
      GRP_Garage_Type2 = -0.63245553203367;
      GRP_Garage_Type3 = -0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Garage_Type1 = 0.63245553203367;
      GRP_Garage_Type2 = 0.63245553203367;
      GRP_Garage_Type3 = -0.63245553203367;
   end;
   else if _dm12 = '4'  then do;
      GRP_Garage_Type1 = 0.63245553203367;
      GRP_Garage_Type2 = 0.63245553203367;
      GRP_Garage_Type3 = 0.63245553203367;
   end;
   else do;
      GRP_Garage_Type1 = .;
      GRP_Garage_Type2 = .;
      GRP_Garage_Type3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Half_Bath_House ;
drop GRP_Half_Bath_House1 ;
if missing( GRP_Half_Bath_House ) then do;
   GRP_Half_Bath_House1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Half_Bath_House , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      GRP_Half_Bath_House1 = -1;
   end;
   else if _dm12 = '2'  then do;
      GRP_Half_Bath_House1 = 1;
   end;
   else do;
      GRP_Half_Bath_House1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Heating_QC ;
drop GRP_Heating_QC1 GRP_Heating_QC2 GRP_Heating_QC3 ;
if missing( GRP_Heating_QC ) then do;
   GRP_Heating_QC1 = .;
   GRP_Heating_QC2 = .;
   GRP_Heating_QC3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Heating_QC , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      GRP_Heating_QC1 = -0.63245553203367;
      GRP_Heating_QC2 = -0.63245553203367;
      GRP_Heating_QC3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Heating_QC1 = 0.63245553203367;
      GRP_Heating_QC2 = -0.63245553203367;
      GRP_Heating_QC3 = -0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Heating_QC1 = 0.63245553203367;
      GRP_Heating_QC2 = 0.63245553203367;
      GRP_Heating_QC3 = -0.63245553203367;
   end;
   else if _dm12 = '4'  then do;
      GRP_Heating_QC1 = 0.63245553203367;
      GRP_Heating_QC2 = 0.63245553203367;
      GRP_Heating_QC3 = 0.63245553203367;
   end;
   else do;
      GRP_Heating_QC1 = .;
      GRP_Heating_QC2 = .;
      GRP_Heating_QC3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Lot_Area ;
drop GRP_Lot_Area1 GRP_Lot_Area2 GRP_Lot_Area3 ;
if missing( GRP_Lot_Area ) then do;
   GRP_Lot_Area1 = .;
   GRP_Lot_Area2 = .;
   GRP_Lot_Area3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Lot_Area , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP_Lot_Area1 = 0.63245553203367;
      GRP_Lot_Area2 = -0.63245553203367;
      GRP_Lot_Area3 = -0.63245553203367;
   end;
   else if _dm12 = '4'  then do;
      GRP_Lot_Area1 = 0.63245553203367;
      GRP_Lot_Area2 = 0.63245553203367;
      GRP_Lot_Area3 = 0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Lot_Area1 = 0.63245553203367;
      GRP_Lot_Area2 = 0.63245553203367;
      GRP_Lot_Area3 = -0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Lot_Area1 = -0.63245553203367;
      GRP_Lot_Area2 = -0.63245553203367;
      GRP_Lot_Area3 = -0.63245553203367;
   end;
   else do;
      GRP_Lot_Area1 = .;
      GRP_Lot_Area2 = .;
      GRP_Lot_Area3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Lot_Shape ;
drop GRP_Lot_Shape1 ;
if missing( GRP_Lot_Shape ) then do;
   GRP_Lot_Shape1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Lot_Shape , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      GRP_Lot_Shape1 = -1;
   end;
   else if _dm12 = '2'  then do;
      GRP_Lot_Shape1 = 1;
   end;
   else do;
      GRP_Lot_Shape1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Number_Full_Bath_House ;
drop GRP_Number_Full_Bath_House2 ;
if missing( GRP_Number_Full_Bath_House ) then do;
   GRP_Number_Full_Bath_House2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Number_Full_Bath_House , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '3'  then do;
      GRP_Number_Full_Bath_House2 = 1;
   end;
   else if _dm12 = '2'  then do;
      GRP_Number_Full_Bath_House2 = -1;
   end;
   else do;
      GRP_Number_Full_Bath_House2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Number_Room_Above_Ground ;
drop GRP_Number_Room_Above_Ground1 GRP_Number_Room_Above_Ground2
        GRP_Number_Room_Above_Ground3 ;
if missing( GRP_Number_Room_Above_Ground ) then do;
   GRP_Number_Room_Above_Ground1 = .;
   GRP_Number_Room_Above_Ground2 = .;
   GRP_Number_Room_Above_Ground3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Number_Room_Above_Ground , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      GRP_Number_Room_Above_Ground1 = 0.63245553203367;
      GRP_Number_Room_Above_Ground2 = 0.63245553203367;
      GRP_Number_Room_Above_Ground3 = 0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Number_Room_Above_Ground1 = 0.63245553203367;
      GRP_Number_Room_Above_Ground2 = 0.63245553203367;
      GRP_Number_Room_Above_Ground3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Number_Room_Above_Ground1 = 0.63245553203367;
      GRP_Number_Room_Above_Ground2 = -0.63245553203367;
      GRP_Number_Room_Above_Ground3 = -0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Number_Room_Above_Ground1 = -0.63245553203367;
      GRP_Number_Room_Above_Ground2 = -0.63245553203367;
      GRP_Number_Room_Above_Ground3 = -0.63245553203367;
   end;
   else do;
      GRP_Number_Room_Above_Ground1 = .;
      GRP_Number_Room_Above_Ground2 = .;
      GRP_Number_Room_Above_Ground3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Open_Porch_Sqr_ft ;
drop GRP_Open_Porch_Sqr_ft2 GRP_Open_Porch_Sqr_ft3 ;
if missing( GRP_Open_Porch_Sqr_ft ) then do;
   GRP_Open_Porch_Sqr_ft2 = .;
   GRP_Open_Porch_Sqr_ft3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Open_Porch_Sqr_ft , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP_Open_Porch_Sqr_ft2 = -0.75;
      GRP_Open_Porch_Sqr_ft3 = -0.75;
   end;
   else if _dm12 = '4'  then do;
      GRP_Open_Porch_Sqr_ft2 = 0.75;
      GRP_Open_Porch_Sqr_ft3 = 0.75;
   end;
   else if _dm12 = '3'  then do;
      GRP_Open_Porch_Sqr_ft2 = 0.75;
      GRP_Open_Porch_Sqr_ft3 = -0.75;
   end;
   else do;
      GRP_Open_Porch_Sqr_ft2 = .;
      GRP_Open_Porch_Sqr_ft3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Overall_Condition ;
drop GRP_Overall_Condition1 GRP_Overall_Condition2 GRP_Overall_Condition3
        GRP_Overall_Condition4 GRP_Overall_Condition5 GRP_Overall_Condition6
        GRP_Overall_Condition7 GRP_Overall_Condition8 ;
if missing( GRP_Overall_Condition ) then do;
   GRP_Overall_Condition1 = .;
   GRP_Overall_Condition2 = .;
   GRP_Overall_Condition3 = .;
   GRP_Overall_Condition4 = .;
   GRP_Overall_Condition5 = .;
   GRP_Overall_Condition6 = .;
   GRP_Overall_Condition7 = .;
   GRP_Overall_Condition8 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Overall_Condition , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      GRP_Overall_Condition1 = -0.41079191812887;
      GRP_Overall_Condition2 = -0.41079191812887;
      GRP_Overall_Condition3 = -0.41079191812887;
      GRP_Overall_Condition4 = -0.41079191812887;
      GRP_Overall_Condition5 = -0.41079191812887;
      GRP_Overall_Condition6 = -0.41079191812887;
      GRP_Overall_Condition7 = -0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '2'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = -0.41079191812887;
      GRP_Overall_Condition3 = -0.41079191812887;
      GRP_Overall_Condition4 = -0.41079191812887;
      GRP_Overall_Condition5 = -0.41079191812887;
      GRP_Overall_Condition6 = -0.41079191812887;
      GRP_Overall_Condition7 = -0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '3'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = 0.41079191812887;
      GRP_Overall_Condition3 = -0.41079191812887;
      GRP_Overall_Condition4 = -0.41079191812887;
      GRP_Overall_Condition5 = -0.41079191812887;
      GRP_Overall_Condition6 = -0.41079191812887;
      GRP_Overall_Condition7 = -0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '4'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = 0.41079191812887;
      GRP_Overall_Condition3 = 0.41079191812887;
      GRP_Overall_Condition4 = -0.41079191812887;
      GRP_Overall_Condition5 = -0.41079191812887;
      GRP_Overall_Condition6 = -0.41079191812887;
      GRP_Overall_Condition7 = -0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '5'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = 0.41079191812887;
      GRP_Overall_Condition3 = 0.41079191812887;
      GRP_Overall_Condition4 = 0.41079191812887;
      GRP_Overall_Condition5 = -0.41079191812887;
      GRP_Overall_Condition6 = -0.41079191812887;
      GRP_Overall_Condition7 = -0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '6'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = 0.41079191812887;
      GRP_Overall_Condition3 = 0.41079191812887;
      GRP_Overall_Condition4 = 0.41079191812887;
      GRP_Overall_Condition5 = 0.41079191812887;
      GRP_Overall_Condition6 = -0.41079191812887;
      GRP_Overall_Condition7 = -0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '7'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = 0.41079191812887;
      GRP_Overall_Condition3 = 0.41079191812887;
      GRP_Overall_Condition4 = 0.41079191812887;
      GRP_Overall_Condition5 = 0.41079191812887;
      GRP_Overall_Condition6 = 0.41079191812887;
      GRP_Overall_Condition7 = -0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '8'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = 0.41079191812887;
      GRP_Overall_Condition3 = 0.41079191812887;
      GRP_Overall_Condition4 = 0.41079191812887;
      GRP_Overall_Condition5 = 0.41079191812887;
      GRP_Overall_Condition6 = 0.41079191812887;
      GRP_Overall_Condition7 = 0.41079191812887;
      GRP_Overall_Condition8 = -0.41079191812887;
   end;
   else if _dm12 = '9'  then do;
      GRP_Overall_Condition1 = 0.41079191812887;
      GRP_Overall_Condition2 = 0.41079191812887;
      GRP_Overall_Condition3 = 0.41079191812887;
      GRP_Overall_Condition4 = 0.41079191812887;
      GRP_Overall_Condition5 = 0.41079191812887;
      GRP_Overall_Condition6 = 0.41079191812887;
      GRP_Overall_Condition7 = 0.41079191812887;
      GRP_Overall_Condition8 = 0.41079191812887;
   end;
   else do;
      GRP_Overall_Condition1 = .;
      GRP_Overall_Condition2 = .;
      GRP_Overall_Condition3 = .;
      GRP_Overall_Condition4 = .;
      GRP_Overall_Condition5 = .;
      GRP_Overall_Condition6 = .;
      GRP_Overall_Condition7 = .;
      GRP_Overall_Condition8 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Overall_Quality ;
drop GRP_Overall_Quality1 GRP_Overall_Quality2 GRP_Overall_Quality3
        GRP_Overall_Quality4 GRP_Overall_Quality5 GRP_Overall_Quality6
        GRP_Overall_Quality7 GRP_Overall_Quality8 ;
if missing( GRP_Overall_Quality ) then do;
   GRP_Overall_Quality1 = .;
   GRP_Overall_Quality2 = .;
   GRP_Overall_Quality3 = .;
   GRP_Overall_Quality4 = .;
   GRP_Overall_Quality5 = .;
   GRP_Overall_Quality6 = .;
   GRP_Overall_Quality7 = .;
   GRP_Overall_Quality8 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Overall_Quality , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '5'  then do;
      if _dm12 <= '3'  then do;
         if _dm12 <= '2'  then do;
            if _dm12 = '1'  then do;
               GRP_Overall_Quality1 = -0.41079191812887;
               GRP_Overall_Quality2 = -0.41079191812887;
               GRP_Overall_Quality3 = -0.41079191812887;
               GRP_Overall_Quality4 = -0.41079191812887;
               GRP_Overall_Quality5 = -0.41079191812887;
               GRP_Overall_Quality6 = -0.41079191812887;
               GRP_Overall_Quality7 = -0.41079191812887;
               GRP_Overall_Quality8 = -0.41079191812887;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '2'  then do;
                  GRP_Overall_Quality1 = 0.41079191812887;
                  GRP_Overall_Quality2 = -0.41079191812887;
                  GRP_Overall_Quality3 = -0.41079191812887;
                  GRP_Overall_Quality4 = -0.41079191812887;
                  GRP_Overall_Quality5 = -0.41079191812887;
                  GRP_Overall_Quality6 = -0.41079191812887;
                  GRP_Overall_Quality7 = -0.41079191812887;
                  GRP_Overall_Quality8 = -0.41079191812887;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '3'  then do;
               GRP_Overall_Quality1 = 0.41079191812887;
               GRP_Overall_Quality2 = 0.41079191812887;
               GRP_Overall_Quality3 = -0.41079191812887;
               GRP_Overall_Quality4 = -0.41079191812887;
               GRP_Overall_Quality5 = -0.41079191812887;
               GRP_Overall_Quality6 = -0.41079191812887;
               GRP_Overall_Quality7 = -0.41079191812887;
               GRP_Overall_Quality8 = -0.41079191812887;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '4'  then do;
            GRP_Overall_Quality1 = 0.41079191812887;
            GRP_Overall_Quality2 = 0.41079191812887;
            GRP_Overall_Quality3 = 0.41079191812887;
            GRP_Overall_Quality4 = -0.41079191812887;
            GRP_Overall_Quality5 = -0.41079191812887;
            GRP_Overall_Quality6 = -0.41079191812887;
            GRP_Overall_Quality7 = -0.41079191812887;
            GRP_Overall_Quality8 = -0.41079191812887;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '5'  then do;
               GRP_Overall_Quality1 = 0.41079191812887;
               GRP_Overall_Quality2 = 0.41079191812887;
               GRP_Overall_Quality3 = 0.41079191812887;
               GRP_Overall_Quality4 = 0.41079191812887;
               GRP_Overall_Quality5 = -0.41079191812887;
               GRP_Overall_Quality6 = -0.41079191812887;
               GRP_Overall_Quality7 = -0.41079191812887;
               GRP_Overall_Quality8 = -0.41079191812887;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '7'  then do;
         if _dm12 = '6'  then do;
            GRP_Overall_Quality1 = 0.41079191812887;
            GRP_Overall_Quality2 = 0.41079191812887;
            GRP_Overall_Quality3 = 0.41079191812887;
            GRP_Overall_Quality4 = 0.41079191812887;
            GRP_Overall_Quality5 = 0.41079191812887;
            GRP_Overall_Quality6 = -0.41079191812887;
            GRP_Overall_Quality7 = -0.41079191812887;
            GRP_Overall_Quality8 = -0.41079191812887;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '7'  then do;
               GRP_Overall_Quality1 = 0.41079191812887;
               GRP_Overall_Quality2 = 0.41079191812887;
               GRP_Overall_Quality3 = 0.41079191812887;
               GRP_Overall_Quality4 = 0.41079191812887;
               GRP_Overall_Quality5 = 0.41079191812887;
               GRP_Overall_Quality6 = 0.41079191812887;
               GRP_Overall_Quality7 = -0.41079191812887;
               GRP_Overall_Quality8 = -0.41079191812887;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '8'  then do;
            GRP_Overall_Quality1 = 0.41079191812887;
            GRP_Overall_Quality2 = 0.41079191812887;
            GRP_Overall_Quality3 = 0.41079191812887;
            GRP_Overall_Quality4 = 0.41079191812887;
            GRP_Overall_Quality5 = 0.41079191812887;
            GRP_Overall_Quality6 = 0.41079191812887;
            GRP_Overall_Quality7 = 0.41079191812887;
            GRP_Overall_Quality8 = -0.41079191812887;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '9'  then do;
               GRP_Overall_Quality1 = 0.41079191812887;
               GRP_Overall_Quality2 = 0.41079191812887;
               GRP_Overall_Quality3 = 0.41079191812887;
               GRP_Overall_Quality4 = 0.41079191812887;
               GRP_Overall_Quality5 = 0.41079191812887;
               GRP_Overall_Quality6 = 0.41079191812887;
               GRP_Overall_Quality7 = 0.41079191812887;
               GRP_Overall_Quality8 = 0.41079191812887;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      GRP_Overall_Quality1 = .;
      GRP_Overall_Quality2 = .;
      GRP_Overall_Quality3 = .;
      GRP_Overall_Quality4 = .;
      GRP_Overall_Quality5 = .;
      GRP_Overall_Quality6 = .;
      GRP_Overall_Quality7 = .;
      GRP_Overall_Quality8 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Total_Bsmt_Sqr_ft ;
drop GRP_Total_Bsmt_Sqr_ft1 GRP_Total_Bsmt_Sqr_ft2 GRP_Total_Bsmt_Sqr_ft3 ;
if missing( GRP_Total_Bsmt_Sqr_ft ) then do;
   GRP_Total_Bsmt_Sqr_ft1 = .;
   GRP_Total_Bsmt_Sqr_ft2 = .;
   GRP_Total_Bsmt_Sqr_ft3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Total_Bsmt_Sqr_ft , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      GRP_Total_Bsmt_Sqr_ft1 = 0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft2 = 0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft3 = 0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Total_Bsmt_Sqr_ft1 = 0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft2 = 0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Total_Bsmt_Sqr_ft1 = 0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft2 = -0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft3 = -0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Total_Bsmt_Sqr_ft1 = -0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft2 = -0.63245553203367;
      GRP_Total_Bsmt_Sqr_ft3 = -0.63245553203367;
   end;
   else do;
      GRP_Total_Bsmt_Sqr_ft1 = .;
      GRP_Total_Bsmt_Sqr_ft2 = .;
      GRP_Total_Bsmt_Sqr_ft3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Veneer_Area_of_Exterior_Wall ;
drop GRP_Veneer_Area_of_Exterior_W2 ;
if missing( GRP_Veneer_Area_of_Exterior_Wall ) then do;
   GRP_Veneer_Area_of_Exterior_W2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Veneer_Area_of_Exterior_Wall , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP_Veneer_Area_of_Exterior_W2 = -1;
   end;
   else if _dm12 = '3'  then do;
      GRP_Veneer_Area_of_Exterior_W2 = 1;
   end;
   else do;
      GRP_Veneer_Area_of_Exterior_W2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Year_Built ;
drop GRP_Year_Built1 GRP_Year_Built2 GRP_Year_Built3 ;
if missing( GRP_Year_Built ) then do;
   GRP_Year_Built1 = .;
   GRP_Year_Built2 = .;
   GRP_Year_Built3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Year_Built , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      GRP_Year_Built1 = 0.63245553203367;
      GRP_Year_Built2 = 0.63245553203367;
      GRP_Year_Built3 = 0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Year_Built1 = -0.63245553203367;
      GRP_Year_Built2 = -0.63245553203367;
      GRP_Year_Built3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Year_Built1 = 0.63245553203367;
      GRP_Year_Built2 = -0.63245553203367;
      GRP_Year_Built3 = -0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Year_Built1 = 0.63245553203367;
      GRP_Year_Built2 = 0.63245553203367;
      GRP_Year_Built3 = -0.63245553203367;
   end;
   else do;
      GRP_Year_Built1 = .;
      GRP_Year_Built2 = .;
      GRP_Year_Built3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP_Year_Remodel ;
drop GRP_Year_Remodel1 GRP_Year_Remodel2 GRP_Year_Remodel3 ;
if missing( GRP_Year_Remodel ) then do;
   GRP_Year_Remodel1 = .;
   GRP_Year_Remodel2 = .;
   GRP_Year_Remodel3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP_Year_Remodel , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '4'  then do;
      GRP_Year_Remodel1 = 0.63245553203367;
      GRP_Year_Remodel2 = 0.63245553203367;
      GRP_Year_Remodel3 = 0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP_Year_Remodel1 = -0.63245553203367;
      GRP_Year_Remodel2 = -0.63245553203367;
      GRP_Year_Remodel3 = -0.63245553203367;
   end;
   else if _dm12 = '2'  then do;
      GRP_Year_Remodel1 = 0.63245553203367;
      GRP_Year_Remodel2 = -0.63245553203367;
      GRP_Year_Remodel3 = -0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP_Year_Remodel1 = 0.63245553203367;
      GRP_Year_Remodel2 = 0.63245553203367;
      GRP_Year_Remodel3 = -0.63245553203367;
   end;
   else do;
      GRP_Year_Remodel1 = .;
      GRP_Year_Remodel2 = .;
      GRP_Year_Remodel3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP__1st_Flr_Sqr_ft ;
drop GRP__1st_Flr_Sqr_ft1 GRP__1st_Flr_Sqr_ft2 GRP__1st_Flr_Sqr_ft3 ;
if missing( GRP__1st_Flr_Sqr_ft ) then do;
   GRP__1st_Flr_Sqr_ft1 = .;
   GRP__1st_Flr_Sqr_ft2 = .;
   GRP__1st_Flr_Sqr_ft3 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP__1st_Flr_Sqr_ft , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP__1st_Flr_Sqr_ft1 = 0.63245553203367;
      GRP__1st_Flr_Sqr_ft2 = -0.63245553203367;
      GRP__1st_Flr_Sqr_ft3 = -0.63245553203367;
   end;
   else if _dm12 = '3'  then do;
      GRP__1st_Flr_Sqr_ft1 = 0.63245553203367;
      GRP__1st_Flr_Sqr_ft2 = 0.63245553203367;
      GRP__1st_Flr_Sqr_ft3 = -0.63245553203367;
   end;
   else if _dm12 = '4'  then do;
      GRP__1st_Flr_Sqr_ft1 = 0.63245553203367;
      GRP__1st_Flr_Sqr_ft2 = 0.63245553203367;
      GRP__1st_Flr_Sqr_ft3 = 0.63245553203367;
   end;
   else if _dm12 = '1'  then do;
      GRP__1st_Flr_Sqr_ft1 = -0.63245553203367;
      GRP__1st_Flr_Sqr_ft2 = -0.63245553203367;
      GRP__1st_Flr_Sqr_ft3 = -0.63245553203367;
   end;
   else do;
      GRP__1st_Flr_Sqr_ft1 = .;
      GRP__1st_Flr_Sqr_ft2 = .;
      GRP__1st_Flr_Sqr_ft3 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for GRP__2nd_Flr_Sqr_ft ;
drop GRP__2nd_Flr_Sqr_ft2 ;
if missing( GRP__2nd_Flr_Sqr_ft ) then do;
   GRP__2nd_Flr_Sqr_ft2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( GRP__2nd_Flr_Sqr_ft , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      GRP__2nd_Flr_Sqr_ft2 = -1;
   end;
   else if _dm12 = '3'  then do;
      GRP__2nd_Flr_Sqr_ft2 = 1;
   end;
   else do;
      GRP__2nd_Flr_Sqr_ft2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;
*** *************************;
*** Writing the Node ord ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =  9.9999999993443E-11 * GRP_Above_Ground_Living_Area1
          +     0.43576892378017 * GRP_Above_Ground_Living_Area2
          +     0.49751224097267 * GRP_Above_Ground_Living_Area3
          +     0.34962991363968 * GRP_Bsmt_Finish_Sqr_ft2
          +      0.3152700971729 * GRP_Bsmt_Finish_Sqr_ft3
          +   1.000000000341E-10 * GRP_Bsmt_Unfinish_Sqr_ft1
          +   1.000000000341E-10 * GRP_Bsmt_Unfinish_Sqr_ft2
          +   1.000000000341E-10 * GRP_Bsmt_Unfinish_Sqr_ft3
          +     0.40961405960229 * GRP_Exterior_Quality1
          +     0.31200536045867 * GRP_Fireplaces2  +   1.000000000341E-10 *
        GRP_Foundation1  +   1.000000000341E-10 * GRP_Foundation2
          +  9.9999999600419E-11 * GRP_Garage_Area1  +   9.999999992568E-11 *
        GRP_Garage_Area2  +      0.5063087596285 * GRP_Garage_Area3
          +   1.000000000341E-10 * GRP_Garage_Cars1  +   1.000000000341E-10 *
        GRP_Garage_Cars2  +     0.06254756799247 * GRP_Garage_Type1
          +     0.20414830786919 * GRP_Garage_Type2  +     0.46712303531597 *
        GRP_Garage_Type3  +     0.22958192220707 * GRP_Half_Bath_House1
          +   9.999999997989E-11 * GRP_Heating_QC1  +  1.0000000000699E-10 *
        GRP_Heating_QC2  +     0.04620888476432 * GRP_Heating_QC3
          +   1.000000000341E-10 * GRP_Lot_Area1  +      0.1525092850926 *
        GRP_Lot_Area2  +     0.16822461123155 * GRP_Lot_Area3
          +   1.000000000341E-10 * GRP_Lot_Shape1  +   9.999999997989E-11 *
        GRP_Number_Full_Bath_House2  +   1.000000000341E-10 *
        GRP_Number_Room_Above_Ground1  +   9.999999997989E-11 *
        GRP_Number_Room_Above_Ground2  +     0.00319493950093 *
        GRP_Number_Room_Above_Ground3  +     0.19005457520869 *
        GRP_Open_Porch_Sqr_ft2  +   1.000000000341E-10 *
        GRP_Open_Porch_Sqr_ft3  +     0.16853813834731 *
        GRP_Overall_Condition1  +     0.33950446162071 *
        GRP_Overall_Condition2  +   9.999999997989E-11 *
        GRP_Overall_Condition3  +   1.000000000341E-10 *
        GRP_Overall_Condition4  +   1.000000000341E-10 *
        GRP_Overall_Condition5  +   1.000000000341E-10 *
        GRP_Overall_Condition6  +     0.23379468761319 *
        GRP_Overall_Condition7  +     0.18054222517738 *
        GRP_Overall_Condition8  +     0.13305840282948 * GRP_Overall_Quality1
          +     0.82271054580453 * GRP_Overall_Quality2
          +     1.00213582637796 * GRP_Overall_Quality3
          +      0.0781140931228 * GRP_Overall_Quality4
          +     0.45428098384694 * GRP_Overall_Quality5
          +     0.35416212683281 * GRP_Overall_Quality6
          +     0.20080511897801 * GRP_Overall_Quality7
          +     0.35596681466935 * GRP_Overall_Quality8
          +     0.46140232570052 * GRP_Total_Bsmt_Sqr_ft1
          +     0.35599660954892 * GRP_Total_Bsmt_Sqr_ft2
          +     0.40559418318927 * GRP_Total_Bsmt_Sqr_ft3
          +     0.09564008528358 * GRP_Veneer_Area_of_Exterior_W2
          +   1.000000000341E-10 * GRP_Year_Built1  +   9.999999981726E-11 *
        GRP_Year_Built2  +     0.07280722115937 * GRP_Year_Built3
          +     0.38855562958086 * GRP_Year_Remodel1
          +     0.42857779497768 * GRP_Year_Remodel2
          +     0.46089240697224 * GRP_Year_Remodel3
          +     0.04381162272463 * GRP__1st_Flr_Sqr_ft1
          +     0.63952632304155 * GRP__1st_Flr_Sqr_ft2
          +     0.58746419862223 * GRP__1st_Flr_Sqr_ft3
          +     0.49195914032227 * GRP__2nd_Flr_Sqr_ft2 ;
   H12  =     0.24089151878785 * GRP_Above_Ground_Living_Area1
          +     0.32158516976371 * GRP_Above_Ground_Living_Area2
          +   1.000000000341E-10 * GRP_Above_Ground_Living_Area3
          +     0.21143091300184 * GRP_Bsmt_Finish_Sqr_ft2
          +     0.10588204168142 * GRP_Bsmt_Finish_Sqr_ft3
          +   9.999999997989E-11 * GRP_Bsmt_Unfinish_Sqr_ft1
          +  9.9999999600419E-11 * GRP_Bsmt_Unfinish_Sqr_ft2
          +   1.000000000341E-10 * GRP_Bsmt_Unfinish_Sqr_ft3
          +     0.12351297520735 * GRP_Exterior_Quality1
          +     0.23154969063288 * GRP_Fireplaces2  +   1.000000000341E-10 *
        GRP_Foundation1  +  9.9999999600419E-11 * GRP_Foundation2
          +  9.9999999600419E-11 * GRP_Garage_Area1  +     0.09323836255105 *
        GRP_Garage_Area2  +   1.000000000341E-10 * GRP_Garage_Area3
          +     0.69242010359921 * GRP_Garage_Cars1  +     0.12845014627734 *
        GRP_Garage_Cars2  +   1.000000000341E-10 * GRP_Garage_Type1
          +   1.000000000341E-10 * GRP_Garage_Type2  +  1.0000000025094E-10 *
        GRP_Garage_Type3  +     0.10960929620574 * GRP_Half_Bath_House1
          +   9.999999992568E-11 * GRP_Heating_QC1  +  1.0000000025094E-10 *
        GRP_Heating_QC2  +  9.9999999993443E-11 * GRP_Heating_QC3
          +     0.35964859909085 * GRP_Lot_Area1  +  9.9999999600419E-11 *
        GRP_Lot_Area2  +     0.24664644322794 * GRP_Lot_Area3
          +     0.17590113489139 * GRP_Lot_Shape1  +     0.08463055634746 *
        GRP_Number_Full_Bath_House2  +  1.0000000000699E-10 *
        GRP_Number_Room_Above_Ground1  +     0.23957697614505 *
        GRP_Number_Room_Above_Ground2  +   1.000000000341E-10 *
        GRP_Number_Room_Above_Ground3  +   9.999999997989E-11 *
        GRP_Open_Porch_Sqr_ft2  +   9.999999997989E-11 *
        GRP_Open_Porch_Sqr_ft3  +     0.24124694519977 *
        GRP_Overall_Condition1  +   1.000000000341E-10 *
        GRP_Overall_Condition2  +   1.000000000341E-10 *
        GRP_Overall_Condition3  +  9.9999999993443E-11 *
        GRP_Overall_Condition4  +   1.000000000341E-10 *
        GRP_Overall_Condition5  +   9.999999997989E-11 *
        GRP_Overall_Condition6  +   1.000000000341E-10 *
        GRP_Overall_Condition7  +  9.9999999600419E-11 *
        GRP_Overall_Condition8  +   1.000000000341E-10 * GRP_Overall_Quality1
          +  1.0000000000699E-10 * GRP_Overall_Quality2
          +   1.000000000341E-10 * GRP_Overall_Quality3
          +  1.0000000000699E-10 * GRP_Overall_Quality4
          +   1.000000000341E-10 * GRP_Overall_Quality5
          +   1.000000000341E-10 * GRP_Overall_Quality6
          +   1.000000000341E-10 * GRP_Overall_Quality7
          +      0.0793427304268 * GRP_Overall_Quality8
          +     0.04773314604598 * GRP_Total_Bsmt_Sqr_ft1
          +     0.13552227276535 * GRP_Total_Bsmt_Sqr_ft2
          +     0.42763404437576 * GRP_Total_Bsmt_Sqr_ft3
          +     0.04214336633582 * GRP_Veneer_Area_of_Exterior_W2
          +     0.27641678542074 * GRP_Year_Built1  +     0.17402095215443 *
        GRP_Year_Built2  +     0.38154981156457 * GRP_Year_Built3
          +     0.11820348958034 * GRP_Year_Remodel1
          +     0.30664525969852 * GRP_Year_Remodel2
          +     0.05579982471354 * GRP_Year_Remodel3
          +  9.9999999600419E-11 * GRP__1st_Flr_Sqr_ft1
          +     0.10064208012585 * GRP__1st_Flr_Sqr_ft2
          +  1.0000000133514E-10 * GRP__1st_Flr_Sqr_ft3
          +     0.02368367659905 * GRP__2nd_Flr_Sqr_ft2 ;
   H13  =     0.26601746222554 * GRP_Above_Ground_Living_Area1
          +     0.81772442024738 * GRP_Above_Ground_Living_Area2
          +     0.51916877071891 * GRP_Above_Ground_Living_Area3
          +     0.43028039907184 * GRP_Bsmt_Finish_Sqr_ft2
          +     0.28879148087394 * GRP_Bsmt_Finish_Sqr_ft3
          +   9.999999997989E-11 * GRP_Bsmt_Unfinish_Sqr_ft1
          +   1.000000000341E-10 * GRP_Bsmt_Unfinish_Sqr_ft2
          +  9.9999999993443E-11 * GRP_Bsmt_Unfinish_Sqr_ft3
          +     0.25087712633139 * GRP_Exterior_Quality1
          +     0.30589386223903 * GRP_Fireplaces2  +   1.000000000341E-10 *
        GRP_Foundation1  +  9.9999998733058E-11 * GRP_Foundation2
          +   9.999999997989E-11 * GRP_Garage_Area1  +   1.000000000341E-10 *
        GRP_Garage_Area2  +  1.0000000000699E-10 * GRP_Garage_Area3
          +     0.26693828177503 * GRP_Garage_Cars1  +     0.22912814888217 *
        GRP_Garage_Cars2  +  1.0000000025094E-10 * GRP_Garage_Type1
          +     0.06425856217062 * GRP_Garage_Type2  +   1.000000000341E-10 *
        GRP_Garage_Type3  +     0.41611923728321 * GRP_Half_Bath_House1
          +   9.999999992568E-11 * GRP_Heating_QC1  +     0.32130461707033 *
        GRP_Heating_QC2  +     0.50855986931544 * GRP_Heating_QC3
          +      0.6103171699334 * GRP_Lot_Area1  +     0.02015195708006 *
        GRP_Lot_Area2  +     0.48309454302331 * GRP_Lot_Area3
          +     0.25955944472249 * GRP_Lot_Shape1  +     0.05994228561725 *
        GRP_Number_Full_Bath_House2  +  9.9999999600419E-11 *
        GRP_Number_Room_Above_Ground1  +   1.000000000341E-10 *
        GRP_Number_Room_Above_Ground2  +       0.039803845232 *
        GRP_Number_Room_Above_Ground3  +      0.1278677421878 *
        GRP_Open_Porch_Sqr_ft2  +     0.14431920555251 *
        GRP_Open_Porch_Sqr_ft3  +     0.44114356268695 *
        GRP_Overall_Condition1  +   9.999999997989E-11 *
        GRP_Overall_Condition2  +   9.999999992568E-11 *
        GRP_Overall_Condition3  +  1.0000000014252E-10 *
        GRP_Overall_Condition4  +   9.999999997989E-11 *
        GRP_Overall_Condition5  +   1.000000000341E-10 *
        GRP_Overall_Condition6  +     0.06225853771907 *
        GRP_Overall_Condition7  +     0.10220623276713 *
        GRP_Overall_Condition8  +     0.75373142463428 * GRP_Overall_Quality1
          +     0.37199365532858 * GRP_Overall_Quality2
          +     0.54058137471564 * GRP_Overall_Quality3
          +  9.9999999600419E-11 * GRP_Overall_Quality4
          +     0.29557504071265 * GRP_Overall_Quality5
          +     0.07500190225012 * GRP_Overall_Quality6
          +     0.15709995408688 * GRP_Overall_Quality7
          +     0.13617587429812 * GRP_Overall_Quality8
          +     0.01333713798671 * GRP_Total_Bsmt_Sqr_ft1
          +  9.9999999600419E-11 * GRP_Total_Bsmt_Sqr_ft2
          +  9.9999999600419E-11 * GRP_Total_Bsmt_Sqr_ft3
          +     0.03983094949723 * GRP_Veneer_Area_of_Exterior_W2
          +   1.000000000341E-10 * GRP_Year_Built1  +     0.16643466704191 *
        GRP_Year_Built2  +      0.2618606086197 * GRP_Year_Built3
          +  9.9999999600419E-11 * GRP_Year_Remodel1
          +     0.38630420986305 * GRP_Year_Remodel2
          +     0.02782183391508 * GRP_Year_Remodel3
          +   1.000000000341E-10 * GRP__1st_Flr_Sqr_ft1
          +     0.10101136350161 * GRP__1st_Flr_Sqr_ft2
          +  1.0000000000021E-10 * GRP__1st_Flr_Sqr_ft3
          +     0.51681124833387 * GRP__2nd_Flr_Sqr_ft2 ;
   H14  =     0.07379577798955 * GRP_Above_Ground_Living_Area1
          +   9.999999997989E-11 * GRP_Above_Ground_Living_Area2
          +     0.52568715092384 * GRP_Above_Ground_Living_Area3
          +     0.30739338228073 * GRP_Bsmt_Finish_Sqr_ft2
          +     0.07580897040173 * GRP_Bsmt_Finish_Sqr_ft3
          +  9.9999999600419E-11 * GRP_Bsmt_Unfinish_Sqr_ft1
          +  9.9999999600419E-11 * GRP_Bsmt_Unfinish_Sqr_ft2
          +   9.999999992568E-11 * GRP_Bsmt_Unfinish_Sqr_ft3
          +     0.45164702350529 * GRP_Exterior_Quality1
          +     0.15985608558557 * GRP_Fireplaces2  +  9.9999999993443E-11 *
        GRP_Foundation1  +   1.000000000341E-10 * GRP_Foundation2
          +   1.000000000341E-10 * GRP_Garage_Area1  +     0.03884477189609 *
        GRP_Garage_Area2  +      0.1308825164163 * GRP_Garage_Area3
          +   1.000000000341E-10 * GRP_Garage_Cars1  +     0.31136394023039 *
        GRP_Garage_Cars2  +   1.000000000341E-10 * GRP_Garage_Type1
          +      0.1517883968215 * GRP_Garage_Type2  +     0.35320074837155 *
        GRP_Garage_Type3  +     0.00440020406148 * GRP_Half_Bath_House1
          +   1.000000000341E-10 * GRP_Heating_QC1  +      0.0094132944037 *
        GRP_Heating_QC2  +     0.03664934869929 * GRP_Heating_QC3
          +     0.02968092046627 * GRP_Lot_Area1  +     0.14858544693119 *
        GRP_Lot_Area2  +     0.02648785847329 * GRP_Lot_Area3
          +     0.26520747851125 * GRP_Lot_Shape1  +     0.25457225593025 *
        GRP_Number_Full_Bath_House2  +   1.000000000341E-10 *
        GRP_Number_Room_Above_Ground1  +   9.999999992568E-11 *
        GRP_Number_Room_Above_Ground2  +   1.000000000341E-10 *
        GRP_Number_Room_Above_Ground3  +     0.33479298447744 *
        GRP_Open_Porch_Sqr_ft2  +     0.23090964011319 *
        GRP_Open_Porch_Sqr_ft3  +      0.1573626453953 *
        GRP_Overall_Condition1  +     0.22134109916821 *
        GRP_Overall_Condition2  +  9.9999999600419E-11 *
        GRP_Overall_Condition3  +   1.000000000341E-10 *
        GRP_Overall_Condition4  +   1.000000000341E-10 *
        GRP_Overall_Condition5  +   1.000000000341E-10 *
        GRP_Overall_Condition6  +     0.17144117315315 *
        GRP_Overall_Condition7  +     0.28023006980665 *
        GRP_Overall_Condition8  +     0.40725646323331 * GRP_Overall_Quality1
          +     0.28593288612388 * GRP_Overall_Quality2
          +     0.41796547651534 * GRP_Overall_Quality3
          +  9.9999994396249E-11 * GRP_Overall_Quality4
          +     0.39355085031959 * GRP_Overall_Quality5
          +     0.16475552738321 * GRP_Overall_Quality6
          +     0.42274613083529 * GRP_Overall_Quality7
          +     0.23121645460211 * GRP_Overall_Quality8
          +     0.20589262194452 * GRP_Total_Bsmt_Sqr_ft1
          +     0.39205234020652 * GRP_Total_Bsmt_Sqr_ft2
          +      0.3421704577032 * GRP_Total_Bsmt_Sqr_ft3
          +  1.0000000000699E-10 * GRP_Veneer_Area_of_Exterior_W2
          +     0.21354446541984 * GRP_Year_Built1  +      0.2793349310707 *
        GRP_Year_Built2  +  9.9999998733058E-11 * GRP_Year_Built3
          +     0.03475030380656 * GRP_Year_Remodel1
          +     0.85184798964653 * GRP_Year_Remodel2
          +   1.000000000341E-10 * GRP_Year_Remodel3
          +     0.49322592739304 * GRP__1st_Flr_Sqr_ft1
          +     0.64443694566268 * GRP__1st_Flr_Sqr_ft2
          +     0.52793819028381 * GRP__1st_Flr_Sqr_ft3
          +   1.000000000341E-10 * GRP__2nd_Flr_Sqr_ft2 ;
   H15  =     0.51979279980265 * GRP_Above_Ground_Living_Area1
          +     0.13200464357992 * GRP_Above_Ground_Living_Area2
          +  9.9999999600419E-11 * GRP_Above_Ground_Living_Area3
          +     0.37828154968486 * GRP_Bsmt_Finish_Sqr_ft2
          +     0.06678036051404 * GRP_Bsmt_Finish_Sqr_ft3
          +  9.9999999600419E-11 * GRP_Bsmt_Unfinish_Sqr_ft1
          +   9.999999997989E-11 * GRP_Bsmt_Unfinish_Sqr_ft2
          +   1.000000000341E-10 * GRP_Bsmt_Unfinish_Sqr_ft3
          +     0.15592617165379 * GRP_Exterior_Quality1
          +     0.27614805513806 * GRP_Fireplaces2  +   1.000000000341E-10 *
        GRP_Foundation1  +  9.9999999600419E-11 * GRP_Foundation2
          +     0.22291403147605 * GRP_Garage_Area1  +     0.04394765141666 *
        GRP_Garage_Area2  +     0.10493212724327 * GRP_Garage_Area3
          +     0.56185629238236 * GRP_Garage_Cars1  +   9.999999981726E-11 *
        GRP_Garage_Cars2  +     0.15944560655836 * GRP_Garage_Type1
          +   1.000000000341E-10 * GRP_Garage_Type2  +   1.000000000341E-10 *
        GRP_Garage_Type3  +   1.000000000341E-10 * GRP_Half_Bath_House1
          +   1.000000000341E-10 * GRP_Heating_QC1  +   1.000000000341E-10 *
        GRP_Heating_QC2  +  9.9999999600419E-11 * GRP_Heating_QC3
          +  9.9999999993443E-11 * GRP_Lot_Area1  +     0.01516237878566 *
        GRP_Lot_Area2  +     0.00422319668455 * GRP_Lot_Area3
          +   1.000000000341E-10 * GRP_Lot_Shape1  +   9.999999997989E-11 *
        GRP_Number_Full_Bath_House2  +     0.03372498677672 *
        GRP_Number_Room_Above_Ground1  +     0.16117778738108 *
        GRP_Number_Room_Above_Ground2  +  1.0000000000699E-10 *
        GRP_Number_Room_Above_Ground3  +     0.10235726357504 *
        GRP_Open_Porch_Sqr_ft2  +   1.000000000341E-10 *
        GRP_Open_Porch_Sqr_ft3  +     0.01471694192899 *
        GRP_Overall_Condition1  +  9.9999998733058E-11 *
        GRP_Overall_Condition2  +   1.000000000341E-10 *
        GRP_Overall_Condition3  +  1.0000000046778E-10 *
        GRP_Overall_Condition4  +  1.0000000046778E-10 *
        GRP_Overall_Condition5  +   1.000000000341E-10 *
        GRP_Overall_Condition6  +  9.9999999600419E-11 *
        GRP_Overall_Condition7  +  1.0000000133514E-10 *
        GRP_Overall_Condition8  +                1E-10 * GRP_Overall_Quality1
          +  9.9999999600419E-11 * GRP_Overall_Quality2
          +   9.999999997989E-11 * GRP_Overall_Quality3
          +   1.000000000341E-10 * GRP_Overall_Quality4
          +   9.999999997989E-11 * GRP_Overall_Quality5
          +  1.0000000000699E-10 * GRP_Overall_Quality6
          +   1.000000000341E-10 * GRP_Overall_Quality7
          +     0.02664601575958 * GRP_Overall_Quality8
          +     0.47772792849034 * GRP_Total_Bsmt_Sqr_ft1
          +     0.19259472167041 * GRP_Total_Bsmt_Sqr_ft2
          +   9.999999997989E-11 * GRP_Total_Bsmt_Sqr_ft3
          +     0.01177632357727 * GRP_Veneer_Area_of_Exterior_W2
          +     0.43490345330992 * GRP_Year_Built1  +     0.09553810224907 *
        GRP_Year_Built2  +     0.19599961878666 * GRP_Year_Built3
          +  1.0000000000699E-10 * GRP_Year_Remodel1
          +     0.38094392172776 * GRP_Year_Remodel2
          +     0.05562540625206 * GRP_Year_Remodel3
          +     0.43850811667192 * GRP__1st_Flr_Sqr_ft1
          +  9.9999999600419E-11 * GRP__1st_Flr_Sqr_ft2
          +   1.000000000341E-10 * GRP__1st_Flr_Sqr_ft3
          +     0.20269793085819 * GRP__2nd_Flr_Sqr_ft2 ;
   H11  =    -0.44839875356968 + H11 ;
   H12  =     0.92452001947136 + H12 ;
   H13  =     0.17047324052768 + H13 ;
   H14  =    -0.14713715043799 + H14 ;
   H15  =     1.65214005575846 + H15 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
   H14  = TANH(H14 );
   H15  = TANH(H15 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
   H14  = .;
   H15  = .;
END;
*** *************************;
*** Writing the Node intervalTargets ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   P_Sale_Price  =     18395.4842963468 * H11  +     20058.4540793676 * H12
          +     16421.9375568027 * H13  +     18984.6713169454 * H14
          +     13528.4097496349 * H15 ;
   P_Sale_Price  =     172083.903301145 + P_Sale_Price ;
END;
ELSE DO;
   P_Sale_Price  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_Sale_Price  =      172083.90201168;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
drop
H11
H12
H13
H14
H15
;
