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
      label S_Above_Ground_Living_Area =
'Standard: Above_Ground_Living_Area' ;

      label S_Bsmt_Finish_Sqr_ft = 'Standard: Bsmt_Finish_Sqr_ft' ;

      label S_Bsmt_Unfinish_Sqr_ft = 'Standard: Bsmt_Unfinish_Sqr_ft' ;

      label S_Fireplaces = 'Standard: Fireplaces' ;

      label S_Garage_Area = 'Standard: Garage_Area' ;

      label S_Garage_Cars = 'Standard: Garage_Cars' ;

      label S_Lot_Area = 'Standard: Lot_Area' ;

      label S_Number_Bedroom_Above_Ground =
'Standard: Number_Bedroom_Above_Ground' ;

      label S_Open_Porch_Sqr_ft = 'Standard: Open_Porch_Sqr_ft' ;

      label S_Total_Bsmt_Sqr_ft = 'Standard: Total_Bsmt_Sqr_ft' ;

      label S_Veneer_Area_of_Exterior_Wall =
'Standard: Veneer_Area_of_Exterior_Wall' ;

      label S_Year_Built = 'Standard: Year_Built' ;

      label S_Year_Remodel = 'Standard: Year_Remodel' ;

      label Bldg_Type0 = 'Dummy: Bldg_Type=0' ;

      label Lot_Shape0 = 'Dummy: Lot_Shape=0' ;

      label Heating_QC0 = 'Dummy: Heating_QC=0' ;

      label Heating_QC1 = 'Dummy: Heating_QC=1' ;

      label Heating_QC2 = 'Dummy: Heating_QC=2' ;

      label Overall_Condition1 = 'Dummy: Overall_Condition=1' ;

      label Overall_Condition2 = 'Dummy: Overall_Condition=2' ;

      label Overall_Condition3 = 'Dummy: Overall_Condition=3' ;

      label Overall_Condition4 = 'Dummy: Overall_Condition=4' ;

      label Overall_Condition5 = 'Dummy: Overall_Condition=5' ;

      label Overall_Condition6 = 'Dummy: Overall_Condition=6' ;

      label Overall_Condition7 = 'Dummy: Overall_Condition=7' ;

      label Overall_Condition8 = 'Dummy: Overall_Condition=8' ;

      label Overall_Quality2 = 'Dummy: Overall_Quality=2' ;

      label Overall_Quality3 = 'Dummy: Overall_Quality=3' ;

      label Overall_Quality4 = 'Dummy: Overall_Quality=4' ;

      label Overall_Quality5 = 'Dummy: Overall_Quality=5' ;

      label Overall_Quality6 = 'Dummy: Overall_Quality=6' ;

      label Overall_Quality7 = 'Dummy: Overall_Quality=7' ;

      label Overall_Quality8 = 'Dummy: Overall_Quality=8' ;

      label Overall_Quality9 = 'Dummy: Overall_Quality=9' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label H14 = 'Hidden: H1=4' ;

      label P_Sale_Price = 'Predicted: Sale_Price' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for Bldg_Type ;
drop Bldg_Type0 ;
if missing( Bldg_Type ) then do;
   Bldg_Type0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Bldg_Type , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      Bldg_Type0 = -1;
   end;
   else if _dm12 = '0'  then do;
      Bldg_Type0 = 1;
   end;
   else do;
      Bldg_Type0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Lot_Shape ;
drop Lot_Shape0 ;
if missing( Lot_Shape ) then do;
   Lot_Shape0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Lot_Shape , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '1'  then do;
      Lot_Shape0 = -1;
   end;
   else if _dm12 = '0'  then do;
      Lot_Shape0 = 1;
   end;
   else do;
      Lot_Shape0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Heating_QC ;
drop Heating_QC0 Heating_QC1 Heating_QC2 ;
if missing( Heating_QC ) then do;
   Heating_QC0 = .;
   Heating_QC1 = .;
   Heating_QC2 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Heating_QC , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '3'  then do;
      Heating_QC0 = -1;
      Heating_QC1 = -1;
      Heating_QC2 = -1;
   end;
   else if _dm12 = '1'  then do;
      Heating_QC0 = 0;
      Heating_QC1 = 1;
      Heating_QC2 = 0;
   end;
   else if _dm12 = '2'  then do;
      Heating_QC0 = 0;
      Heating_QC1 = 0;
      Heating_QC2 = 1;
   end;
   else if _dm12 = '0'  then do;
      Heating_QC0 = 1;
      Heating_QC1 = 0;
      Heating_QC2 = 0;
   end;
   else do;
      Heating_QC0 = .;
      Heating_QC1 = .;
      Heating_QC2 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Overall_Condition ;
drop Overall_Condition1 Overall_Condition2 Overall_Condition3
        Overall_Condition4 Overall_Condition5 Overall_Condition6
        Overall_Condition7 Overall_Condition8 ;
*** encoding is sparse, initialize to zero;
Overall_Condition1 = 0;
Overall_Condition2 = 0;
Overall_Condition3 = 0;
Overall_Condition4 = 0;
Overall_Condition5 = 0;
Overall_Condition6 = 0;
Overall_Condition7 = 0;
Overall_Condition8 = 0;
if missing( Overall_Condition ) then do;
   Overall_Condition1 = .;
   Overall_Condition2 = .;
   Overall_Condition3 = .;
   Overall_Condition4 = .;
   Overall_Condition5 = .;
   Overall_Condition6 = .;
   Overall_Condition7 = .;
   Overall_Condition8 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm12 $ 12; drop _dm12 ;
   _dm12 = put( Overall_Condition , BEST12. );
   %DMNORMIP( _dm12 )
   if _dm12 = '5'  then do;
      Overall_Condition5 = 1;
   end;
   else if _dm12 = '6'  then do;
      Overall_Condition6 = 1;
   end;
   else if _dm12 = '7'  then do;
      Overall_Condition7 = 1;
   end;
   else if _dm12 = '8'  then do;
      Overall_Condition8 = 1;
   end;
   else if _dm12 = '4'  then do;
      Overall_Condition4 = 1;
   end;
   else if _dm12 = '9'  then do;
      Overall_Condition1 = -1;
      Overall_Condition2 = -1;
      Overall_Condition3 = -1;
      Overall_Condition4 = -1;
      Overall_Condition5 = -1;
      Overall_Condition6 = -1;
      Overall_Condition7 = -1;
      Overall_Condition8 = -1;
   end;
   else if _dm12 = '3'  then do;
      Overall_Condition3 = 1;
   end;
   else if _dm12 = '2'  then do;
      Overall_Condition2 = 1;
   end;
   else if _dm12 = '1'  then do;
      Overall_Condition1 = 1;
   end;
   else do;
      Overall_Condition1 = .;
      Overall_Condition2 = .;
      Overall_Condition3 = .;
      Overall_Condition4 = .;
      Overall_Condition5 = .;
      Overall_Condition6 = .;
      Overall_Condition7 = .;
      Overall_Condition8 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Overall_Quality ;
drop Overall_Quality2 Overall_Quality3 Overall_Quality4 Overall_Quality5
        Overall_Quality6 Overall_Quality7 Overall_Quality8 Overall_Quality9 ;
*** encoding is sparse, initialize to zero;
Overall_Quality2 = 0;
Overall_Quality3 = 0;
Overall_Quality4 = 0;
Overall_Quality5 = 0;
Overall_Quality6 = 0;
Overall_Quality7 = 0;
Overall_Quality8 = 0;
Overall_Quality9 = 0;
if missing( Overall_Quality ) then do;
   Overall_Quality2 = .;
   Overall_Quality3 = .;
   Overall_Quality4 = .;
   Overall_Quality5 = .;
   Overall_Quality6 = .;
   Overall_Quality7 = .;
   Overall_Quality8 = .;
   Overall_Quality9 = .;
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
               Overall_Quality2 = -1;
               Overall_Quality3 = -1;
               Overall_Quality4 = -1;
               Overall_Quality5 = -1;
               Overall_Quality6 = -1;
               Overall_Quality7 = -1;
               Overall_Quality8 = -1;
               Overall_Quality9 = -1;
               _dm_find = 1;
            end;
            else do;
               if _dm12 = '2'  then do;
                  Overall_Quality2 = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm12 = '3'  then do;
               Overall_Quality3 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '4'  then do;
            Overall_Quality4 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '5'  then do;
               Overall_Quality5 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm12 <= '7'  then do;
         if _dm12 = '6'  then do;
            Overall_Quality6 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '7'  then do;
               Overall_Quality7 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm12 = '8'  then do;
            Overall_Quality8 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm12 = '9'  then do;
               Overall_Quality9 = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      Overall_Quality2 = .;
      Overall_Quality3 = .;
      Overall_Quality4 = .;
      Overall_Quality5 = .;
      Overall_Quality6 = .;
      Overall_Quality7 = .;
      Overall_Quality8 = .;
      Overall_Quality9 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   Above_Ground_Living_Area ,
   Bsmt_Finish_Sqr_ft ,
   Bsmt_Unfinish_Sqr_ft ,
   Fireplaces ,
   Garage_Area ,
   Garage_Cars ,
   Lot_Area ,
   Number_Bedroom_Above_Ground ,
   Open_Porch_Sqr_ft ,
   Total_Bsmt_Sqr_ft ,
   Veneer_Area_of_Exterior_Wall ,
   Year_Built ,
   Year_Remodel   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_Above_Ground_Living_Area
          =     -3.2796913055929 +     0.00228007668608 *
        Above_Ground_Living_Area ;
   S_Bsmt_Finish_Sqr_ft  =     -1.0418728024759 +     0.00245325218904 *
        Bsmt_Finish_Sqr_ft ;
   S_Bsmt_Unfinish_Sqr_ft  =    -1.32906898910454 +     0.00239076622617 *
        Bsmt_Unfinish_Sqr_ft ;
   S_Fireplaces  =    -0.93510354152666 +     1.62091626264632 * Fireplaces ;
   S_Garage_Area  =    -2.32673702498937 +     0.00511930049659 * Garage_Area
         ;
   S_Garage_Cars  =    -2.41453290296347 +     1.41582770299342 * Garage_Cars
         ;
   S_Lot_Area  =    -1.76094118413741 +     0.00018188618421 * Lot_Area ;
   S_Number_Bedroom_Above_Ground
          =    -3.81984577104368 +     1.36006985517059 *
        Number_Bedroom_Above_Ground ;
   S_Open_Porch_Sqr_ft  =    -0.71972446018953 +     0.01578828426648 *
        Open_Porch_Sqr_ft ;
   S_Total_Bsmt_Sqr_ft  =    -2.96700084769343 +     0.00287338734248 *
        Total_Bsmt_Sqr_ft ;
   S_Veneer_Area_of_Exterior_Wall
          =    -0.55355654815969 +     0.00644409506937 *
        Veneer_Area_of_Exterior_Wall ;
   S_Year_Built  =    -65.4480701156959 +      0.0332083686631 * Year_Built ;
   S_Year_Remodel  =    -95.6664879203616 +     0.04821574721109 *
        Year_Remodel ;
END;
ELSE DO;
   IF MISSING( Above_Ground_Living_Area ) THEN S_Above_Ground_Living_Area
          = . ;
   ELSE S_Above_Ground_Living_Area
          =     -3.2796913055929 +     0.00228007668608 *
        Above_Ground_Living_Area ;
   IF MISSING( Bsmt_Finish_Sqr_ft ) THEN S_Bsmt_Finish_Sqr_ft  = . ;
   ELSE S_Bsmt_Finish_Sqr_ft  =     -1.0418728024759 +     0.00245325218904 *
        Bsmt_Finish_Sqr_ft ;
   IF MISSING( Bsmt_Unfinish_Sqr_ft ) THEN S_Bsmt_Unfinish_Sqr_ft  = . ;
   ELSE S_Bsmt_Unfinish_Sqr_ft
          =    -1.32906898910454 +     0.00239076622617 * Bsmt_Unfinish_Sqr_ft
         ;
   IF MISSING( Fireplaces ) THEN S_Fireplaces  = . ;
   ELSE S_Fireplaces  =    -0.93510354152666 +     1.62091626264632 *
        Fireplaces ;
   IF MISSING( Garage_Area ) THEN S_Garage_Area  = . ;
   ELSE S_Garage_Area  =    -2.32673702498937 +     0.00511930049659 *
        Garage_Area ;
   IF MISSING( Garage_Cars ) THEN S_Garage_Cars  = . ;
   ELSE S_Garage_Cars  =    -2.41453290296347 +     1.41582770299342 *
        Garage_Cars ;
   IF MISSING( Lot_Area ) THEN S_Lot_Area  = . ;
   ELSE S_Lot_Area  =    -1.76094118413741 +     0.00018188618421 * Lot_Area ;
   IF MISSING( Number_Bedroom_Above_Ground ) THEN
        S_Number_Bedroom_Above_Ground  = . ;
   ELSE S_Number_Bedroom_Above_Ground
          =    -3.81984577104368 +     1.36006985517059 *
        Number_Bedroom_Above_Ground ;
   IF MISSING( Open_Porch_Sqr_ft ) THEN S_Open_Porch_Sqr_ft  = . ;
   ELSE S_Open_Porch_Sqr_ft  =    -0.71972446018953 +     0.01578828426648 *
        Open_Porch_Sqr_ft ;
   IF MISSING( Total_Bsmt_Sqr_ft ) THEN S_Total_Bsmt_Sqr_ft  = . ;
   ELSE S_Total_Bsmt_Sqr_ft  =    -2.96700084769343 +     0.00287338734248 *
        Total_Bsmt_Sqr_ft ;
   IF MISSING( Veneer_Area_of_Exterior_Wall ) THEN
        S_Veneer_Area_of_Exterior_Wall  = . ;
   ELSE S_Veneer_Area_of_Exterior_Wall
          =    -0.55355654815969 +     0.00644409506937 *
        Veneer_Area_of_Exterior_Wall ;
   IF MISSING( Year_Built ) THEN S_Year_Built  = . ;
   ELSE S_Year_Built  =    -65.4480701156959 +      0.0332083686631 *
        Year_Built ;
   IF MISSING( Year_Remodel ) THEN S_Year_Remodel  = . ;
   ELSE S_Year_Remodel  =    -95.6664879203616 +     0.04821574721109 *
        Year_Remodel ;
END;
*** *************************;
*** Writing the Node bin ;
*** *************************;
*** *************************;
*** Writing the Node nom ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =    -0.31368440381628 * S_Above_Ground_Living_Area
          +    -0.02517216644688 * S_Bsmt_Finish_Sqr_ft
          +     0.08002373405877 * S_Bsmt_Unfinish_Sqr_ft
          +    -0.04558384074306 * S_Fireplaces  +     0.03957412960845 *
        S_Garage_Area  +    -0.21359857589456 * S_Garage_Cars
          +    -0.13843374341625 * S_Lot_Area  +     0.01422404982525 *
        S_Number_Bedroom_Above_Ground  +    -0.10015440761173 *
        S_Open_Porch_Sqr_ft  +    -0.00551832294243 * S_Total_Bsmt_Sqr_ft
          +     0.08804676637454 * S_Veneer_Area_of_Exterior_Wall
          +    -0.43713981209115 * S_Year_Built  +     -0.0440647369908 *
        S_Year_Remodel ;
   H12  =     0.37454738828162 * S_Above_Ground_Living_Area
          +     0.09273900452486 * S_Bsmt_Finish_Sqr_ft
          +    -0.05187536051458 * S_Bsmt_Unfinish_Sqr_ft
          +     0.04643497818431 * S_Fireplaces  +    -0.02393910406135 *
        S_Garage_Area  +     0.15205389586887 * S_Garage_Cars
          +     0.09257973114543 * S_Lot_Area  +    -0.03794496579511 *
        S_Number_Bedroom_Above_Ground  +    -0.00050400784848 *
        S_Open_Porch_Sqr_ft  +     0.10095756693584 * S_Total_Bsmt_Sqr_ft
          +    -0.02338416835618 * S_Veneer_Area_of_Exterior_Wall
          +     0.13599769984732 * S_Year_Built  +     0.05770197144413 *
        S_Year_Remodel ;
   H13  =    -0.81168422091252 * S_Above_Ground_Living_Area
          +    -0.07684170136807 * S_Bsmt_Finish_Sqr_ft
          +     0.11794725283251 * S_Bsmt_Unfinish_Sqr_ft
          +    -0.05008043164596 * S_Fireplaces  +    -0.18036755285554 *
        S_Garage_Area  +     0.07840832028508 * S_Garage_Cars
          +    -0.09367560648997 * S_Lot_Area  +     0.27409997800128 *
        S_Number_Bedroom_Above_Ground  +     0.00041468746027 *
        S_Open_Porch_Sqr_ft  +    -0.37105203204741 * S_Total_Bsmt_Sqr_ft
          +    -0.09125243770617 * S_Veneer_Area_of_Exterior_Wall
          +    -0.30164117018371 * S_Year_Built  +    -0.40497987193538 *
        S_Year_Remodel ;
   H14  =    -0.39926457855778 * S_Above_Ground_Living_Area
          +      0.6173168171612 * S_Bsmt_Finish_Sqr_ft
          +     0.45878529555574 * S_Bsmt_Unfinish_Sqr_ft
          +    -0.41562054849604 * S_Fireplaces  +     0.17463689734763 *
        S_Garage_Area  +      0.5891475120711 * S_Garage_Cars
          +    -0.00078156776088 * S_Lot_Area  +    -0.07125684933047 *
        S_Number_Bedroom_Above_Ground  +     0.04411404559264 *
        S_Open_Porch_Sqr_ft  +    -0.90026253807787 * S_Total_Bsmt_Sqr_ft
          +    -0.55204592996874 * S_Veneer_Area_of_Exterior_Wall
          +    -1.29793084442905 * S_Year_Built  +      0.5886491181365 *
        S_Year_Remodel ;
   H11  = H11  +     0.69941396214281 * Bldg_Type0  +    -1.56917151887731 *
        Lot_Shape0 ;
   H12  = H12  +    -0.00968400420617 * Bldg_Type0  +    -0.58502984793375 *
        Lot_Shape0 ;
   H13  = H13  +    -0.19247569220976 * Bldg_Type0  +     0.28066991779541 *
        Lot_Shape0 ;
   H14  = H14  +     0.87551286567065 * Bldg_Type0  +     1.46837356361329 *
        Lot_Shape0 ;
   H11  = H11  +     -0.1589852022279 * Heating_QC0  +     0.01521955192149 *
        Heating_QC1  +    -0.01422904406435 * Heating_QC2
          +     0.19273515703066 * Overall_Condition1
          +     0.83811945692701 * Overall_Condition2
          +     0.53846174474727 * Overall_Condition3
          +     0.60384943989791 * Overall_Condition4
          +    -0.20761490207419 * Overall_Condition5
          +    -0.52862967510666 * Overall_Condition6
          +    -0.59372233056464 * Overall_Condition7
          +    -0.60767968875563 * Overall_Condition8
          +     0.42209707055969 * Overall_Quality2  +     0.43909913039354 *
        Overall_Quality3  +     0.29146650112098 * Overall_Quality4
          +     0.07943932377687 * Overall_Quality5  +    -0.13210984753814 *
        Overall_Quality6  +     0.04909570913251 * Overall_Quality7
          +    -0.41189246720039 * Overall_Quality8  +     -2.0579084668409 *
        Overall_Quality9 ;
   H12  = H12  +     0.06555939917923 * Heating_QC0  +    -0.09443456489437 *
        Heating_QC1  +    -0.01724296090302 * Heating_QC2
          +    -4.16657541878319 * Overall_Condition1
          +    -0.13605696957762 * Overall_Condition2
          +     0.12796491877898 * Overall_Condition3
          +      0.5656483498183 * Overall_Condition4
          +     0.66513998919005 * Overall_Condition5
          +     0.73231203361821 * Overall_Condition6
          +     0.83827332215971 * Overall_Condition7
          +     0.93223959432721 * Overall_Condition8
          +    -1.58305602387354 * Overall_Quality2  +    -1.73374387794065 *
        Overall_Quality3  +    -1.83130975203766 * Overall_Quality4
          +    -1.45751421588689 * Overall_Quality5  +    -1.30945470643784 *
        Overall_Quality6  +    -1.21208789280015 * Overall_Quality7
          +    -0.97308236450333 * Overall_Quality8  +    -1.15704995813742 *
        Overall_Quality9 ;
   H13  = H13  +     1.14486657185368 * Heating_QC0  +    -0.17553976415231 *
        Heating_QC1  +    -0.49756401818597 * Heating_QC2
          +     2.01697084615623 * Overall_Condition1
          +    -0.83221653827871 * Overall_Condition2
          +     7.46613625073599 * Overall_Condition3
          +    -1.12969306336804 * Overall_Condition4
          +     -0.9818143605694 * Overall_Condition5
          +    -1.04309344654977 * Overall_Condition6
          +    -1.65360624629387 * Overall_Condition7
          +    -1.54447303050999 * Overall_Condition8
          +     0.15879146798629 * Overall_Quality2  +     0.72179430833599 *
        Overall_Quality3  +     0.05459218005731 * Overall_Quality4
          +     0.34804464537335 * Overall_Quality5  +     0.31883617171611 *
        Overall_Quality6  +    -0.01573918038762 * Overall_Quality7
          +    -0.20002303469261 * Overall_Quality8  +     -0.9770140119397 *
        Overall_Quality9 ;
   H14  = H14  +     1.88418495531378 * Heating_QC0  +    -0.52129740046426 *
        Heating_QC1  +    -0.63881869576065 * Heating_QC2
          +     0.89674899909754 * Overall_Condition1
          +     0.62601314439846 * Overall_Condition2
          +     2.38741540950128 * Overall_Condition3
          +     1.93674913521345 * Overall_Condition4
          +     0.22686517759341 * Overall_Condition5
          +     0.39738228712386 * Overall_Condition6
          +    -0.02073818640302 * Overall_Condition7
          +     0.32887672274636 * Overall_Condition8
          +     1.39296735728187 * Overall_Quality2  +     0.98778914623673 *
        Overall_Quality3  +    -0.21773626782774 * Overall_Quality4
          +     3.29813167289182 * Overall_Quality5  +     3.93084958556944 *
        Overall_Quality6  +     1.79188102582363 * Overall_Quality7
          +     0.25761675384112 * Overall_Quality8  +    -1.20654811870085 *
        Overall_Quality9 ;
   H11  =     0.09510172224062 + H11 ;
   H12  =     1.38467475651446 + H12 ;
   H13  =     3.07874745352838 + H13 ;
   H14  =    -0.65764092206797 + H14 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
   H14  = TANH(H14 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
   H14  = .;
END;
*** *************************;
*** Writing the Node intervalTargets ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   P_Sale_Price  =    -35015.3957310914 * H11  +     54091.4518070043 * H12
          +    -44457.5915878859 * H13  +    -7541.68063323156 * H14 ;
   P_Sale_Price  =     172083.906163111 + P_Sale_Price ;
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
S_Above_Ground_Living_Area
S_Bsmt_Finish_Sqr_ft
S_Bsmt_Unfinish_Sqr_ft
S_Fireplaces
S_Garage_Area
S_Garage_Cars
S_Lot_Area
S_Number_Bedroom_Above_Ground
S_Open_Porch_Sqr_ft
S_Total_Bsmt_Sqr_ft
S_Veneer_Area_of_Exterior_Wall
S_Year_Built
S_Year_Remodel
H11
H12
H13
H14
;
