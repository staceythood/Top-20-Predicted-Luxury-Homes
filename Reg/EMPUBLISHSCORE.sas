*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;


drop _DM_BAD;
_DM_BAD=0;

*** Check Above_Ground_Living_Area for missing values ;
if missing( Above_Ground_Living_Area ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Bsmt_Finish_Sqr_ft for missing values ;
if missing( Bsmt_Finish_Sqr_ft ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Bsmt_Unfinish_Sqr_ft for missing values ;
if missing( Bsmt_Unfinish_Sqr_ft ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Fireplaces for missing values ;
if missing( Fireplaces ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Garage_Area for missing values ;
if missing( Garage_Area ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Garage_Cars for missing values ;
if missing( Garage_Cars ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Lot_Area for missing values ;
if missing( Lot_Area ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Number_Bedroom_Above_Ground for missing values ;
if missing( Number_Bedroom_Above_Ground ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Open_Porch_Sqr_ft for missing values ;
if missing( Open_Porch_Sqr_ft ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Total_Bsmt_Sqr_ft for missing values ;
if missing( Total_Bsmt_Sqr_ft ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Veneer_Area_of_Exterior_Wall for missing values ;
if missing( Veneer_Area_of_Exterior_Wall ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Year_Built for missing values ;
if missing( Year_Built ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check Year_Remodel for missing values ;
if missing( Year_Remodel ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Generate dummy variables for Bldg_Type ;
drop _0_0 ;
if missing( Bldg_Type ) then do;
   _0_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Bldg_Type , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      _0_0 = -1;
   end;
   else if _dm12 = '0'  then do;
      _0_0 = 1;
   end;
   else do;
      _0_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Exterior_Quality ;
drop _2_0 ;
if missing( Exterior_Quality ) then do;
   _2_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Exterior_Quality , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '0'  then do;
      _2_0 = 1;
   end;
   else if _dm12 = '1'  then do;
      _2_0 = -1;
   end;
   else do;
      _2_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Foundation ;
drop _3_0 _3_1 ;
if missing( Foundation ) then do;
   _3_0 = .;
   _3_1 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Foundation , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '2'  then do;
      _3_0 = -1;
      _3_1 = -1;
   end;
   else if _dm12 = '1'  then do;
      _3_0 = 0;
      _3_1 = 1;
   end;
   else if _dm12 = '0'  then do;
      _3_0 = 1;
      _3_1 = 0;
   end;
   else do;
      _3_0 = .;
      _3_1 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Heating_QC ;
drop _6_0 _6_1 _6_2 ;
if missing( Heating_QC ) then do;
   _6_0 = .;
   _6_1 = .;
   _6_2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Heating_QC , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '3'  then do;
      _6_0 = -1;
      _6_1 = -1;
      _6_2 = -1;
   end;
   else if _dm12 = '1'  then do;
      _6_0 = 0;
      _6_1 = 1;
      _6_2 = 0;
   end;
   else if _dm12 = '2'  then do;
      _6_0 = 0;
      _6_1 = 0;
      _6_2 = 1;
   end;
   else if _dm12 = '0'  then do;
      _6_0 = 1;
      _6_1 = 0;
      _6_2 = 0;
   end;
   else do;
      _6_0 = .;
      _6_1 = .;
      _6_2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Lot_Shape ;
drop _7_0 ;
if missing( Lot_Shape ) then do;
   _7_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Lot_Shape , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      _7_0 = -1;
   end;
   else if _dm12 = '0'  then do;
      _7_0 = 1;
   end;
   else do;
      _7_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Overall_Condition ;
drop _9_0 _9_1 _9_2 _9_3 _9_4 _9_5 _9_6 _9_7 ;
*** encoding is sparse, initialize to zero;
_9_0 = 0;
_9_1 = 0;
_9_2 = 0;
_9_3 = 0;
_9_4 = 0;
_9_5 = 0;
_9_6 = 0;
_9_7 = 0;
if missing( Overall_Condition ) then do;
   _9_0 = .;
   _9_1 = .;
   _9_2 = .;
   _9_3 = .;
   _9_4 = .;
   _9_5 = .;
   _9_6 = .;
   _9_7 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Overall_Condition , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '5'  then do;
      _9_4 = 1;
   end;
   else if _dm12 = '6'  then do;
      _9_5 = 1;
   end;
   else if _dm12 = '7'  then do;
      _9_6 = 1;
   end;
   else if _dm12 = '8'  then do;
      _9_7 = 1;
   end;
   else if _dm12 = '4'  then do;
      _9_3 = 1;
   end;
   else if _dm12 = '9'  then do;
      _9_0 = -1;
      _9_1 = -1;
      _9_2 = -1;
      _9_3 = -1;
      _9_4 = -1;
      _9_5 = -1;
      _9_6 = -1;
      _9_7 = -1;
   end;
   else if _dm12 = '3'  then do;
      _9_2 = 1;
   end;
   else if _dm12 = '2'  then do;
      _9_1 = 1;
   end;
   else if _dm12 = '1'  then do;
      _9_0 = 1;
   end;
   else do;
      _9_0 = .;
      _9_1 = .;
      _9_2 = .;
      _9_3 = .;
      _9_4 = .;
      _9_5 = .;
      _9_6 = .;
      _9_7 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Overall_Quality ;
drop _10_0 _10_1 _10_2 _10_3 _10_4 _10_5 _10_6 _10_7 ;
*** encoding is sparse, initialize to zero;
_10_0 = 0;
_10_1 = 0;
_10_2 = 0;
_10_3 = 0;
_10_4 = 0;
_10_5 = 0;
_10_6 = 0;
_10_7 = 0;
if missing( Overall_Quality ) then do;
   _10_0 = .;
   _10_1 = .;
   _10_2 = .;
   _10_3 = .;
   _10_4 = .;
   _10_5 = .;
   _10_6 = .;
   _10_7 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Overall_Quality , BEST12. );
   %DMNORMIP( _dm12 )
   _dm_find = 0; drop _dm_find;
   if _dm12 <= '5'  then do;
      if _dm12 <= '3'  then do;
         if _dm12 <= '2'  then do;
            if _dm12 = '10'  then do;
               _10_0 = -1;
               _10_1 = -1;
               _10_2 = -1;
               _10_3 = -1;
               _10_4 = -1;
               _10_5 = -1;
               _10_6 = -1;
               _10_7 = -1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '2'  then do;
                  _10_0 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '3'  then do;
               _10_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '4'  then do;
            _10_2 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '5'  then do;
               _10_3 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '7'  then do;
         if _dm12 = '6'  then do;
            _10_4 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '7'  then do;
               _10_5 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '8'  then do;
            _10_6 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '9'  then do;
               _10_7 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      _10_0 = .;
      _10_1 = .;
      _10_2 = .;
      _10_3 = .;
      _10_4 = .;
      _10_5 = .;
      _10_6 = .;
      _10_7 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _LP0 =      172083.90201168;
   goto REGDR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: Above_Ground_Living_Area ;
_TEMP = Above_Ground_Living_Area ;
_LP0 = _LP0 + (    54.6799825541813 * _TEMP);

***  Effect: Bldg_Type ;
_TEMP = 1;
_LP0 = _LP0 + (   -6081.01846997987) * _TEMP * _0_0;

***  Effect: Bsmt_Finish_Sqr_ft ;
_TEMP = Bsmt_Finish_Sqr_ft ;
_LP0 = _LP0 + (    8.05687739035401 * _TEMP);

***  Effect: Bsmt_Unfinish_Sqr_ft ;
_TEMP = Bsmt_Unfinish_Sqr_ft ;
_LP0 = _LP0 + (   -13.0927533448603 * _TEMP);

***  Effect: Exterior_Quality ;
_TEMP = 1;
_LP0 = _LP0 + (   -2865.08244298637) * _TEMP * _2_0;

***  Effect: Fireplaces ;
_TEMP = Fireplaces ;
_LP0 = _LP0 + (    6333.90808918545 * _TEMP);

***  Effect: Foundation ;
_TEMP = 1;
_LP0 = _LP0 + (   -1011.99306011815) * _TEMP * _3_0;
_LP0 = _LP0 + (   -2909.54512690937) * _TEMP * _3_1;

***  Effect: Garage_Area ;
_TEMP = Garage_Area ;
_LP0 = _LP0 + (    11.8579044917728 * _TEMP);

***  Effect: Garage_Cars ;
_TEMP = Garage_Cars ;
_LP0 = _LP0 + (    3398.94386114452 * _TEMP);

***  Effect: Heating_QC ;
_TEMP = 1;
_LP0 = _LP0 + (   -2704.77994950495) * _TEMP * _6_0;
_LP0 = _LP0 + (   -2149.68662008875) * _TEMP * _6_1;
_LP0 = _LP0 + (    1571.09971161985) * _TEMP * _6_2;

***  Effect: Lot_Area ;
_TEMP = Lot_Area ;
_LP0 = _LP0 + (    0.74025705062493 * _TEMP);

***  Effect: Lot_Shape ;
_TEMP = 1;
_LP0 = _LP0 + (    1334.85118052818) * _TEMP * _7_0;

***  Effect: Number_Bedroom_Above_Ground ;
_TEMP = Number_Bedroom_Above_Ground ;
_LP0 = _LP0 + (    -5350.4669667304 * _TEMP);

***  Effect: Open_Porch_Sqr_ft ;
_TEMP = Open_Porch_Sqr_ft ;
_LP0 = _LP0 + (    21.0511358958065 * _TEMP);

***  Effect: Overall_Condition ;
_TEMP = 1;
_LP0 = _LP0 + (    -28833.962592643) * _TEMP * _9_0;
_LP0 = _LP0 + (   -33728.6006987012) * _TEMP * _9_1;
_LP0 = _LP0 + (   -18764.3783201373) * _TEMP * _9_2;
_LP0 = _LP0 + (    -6801.3159759359) * _TEMP * _9_3;
_LP0 = _LP0 + (    5313.08311019727) * _TEMP * _9_4;
_LP0 = _LP0 + (    11421.3396649612) * _TEMP * _9_5;
_LP0 = _LP0 + (    20923.5603360346) * _TEMP * _9_6;
_LP0 = _LP0 + (    23288.6030474044) * _TEMP * _9_7;

***  Effect: Overall_Quality ;
_TEMP = 1;
_LP0 = _LP0 + (   -44091.5102704613) * _TEMP * _10_0;
_LP0 = _LP0 + (   -37216.3103515501) * _TEMP * _10_1;
_LP0 = _LP0 + (    -39287.901718463) * _TEMP * _10_2;
_LP0 = _LP0 + (   -34481.9076354163) * _TEMP * _10_3;
_LP0 = _LP0 + (   -30382.4080960549) * _TEMP * _10_4;
_LP0 = _LP0 + (   -20241.1991800669) * _TEMP * _10_5;
_LP0 = _LP0 + (     8225.2725987261) * _TEMP * _10_6;
_LP0 = _LP0 + (    48428.5482088202) * _TEMP * _10_7;

***  Effect: Total_Bsmt_Sqr_ft ;
_TEMP = Total_Bsmt_Sqr_ft ;
_LP0 = _LP0 + (    30.2016653983495 * _TEMP);

***  Effect: Veneer_Area_of_Exterior_Wall ;
_TEMP = Veneer_Area_of_Exterior_Wall ;
_LP0 = _LP0 + (    17.4226727512561 * _TEMP);

***  Effect: Year_Built ;
_TEMP = Year_Built ;
_LP0 = _LP0 + (    398.538652007153 * _TEMP);

***  Effect: Year_Remodel ;
_TEMP = Year_Remodel ;
_LP0 = _LP0 + (    73.0127783869506 * _TEMP);
*--- Intercept ---*;
_LP0 = _LP0 + (   -863441.567698775);

REGDR1:

*** Predicted Value;
label P_Sale_Price = 'Predicted: Sale_Price' ;
P_Sale_Price = _LP0;


*************************************;
***** end scoring code for regression;
*************************************;
