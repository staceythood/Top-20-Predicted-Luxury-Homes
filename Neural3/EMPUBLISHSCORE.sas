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

      label S_Number_Full_Bath_House = 'Standard: Number_Full_Bath_House' ;

      label S_Number_Room_Above_Ground =
'Standard: Number_Room_Above_Ground' ;

      label S_Open_Porch_Sqr_ft = 'Standard: Open_Porch_Sqr_ft' ;

      label S_Total_Bsmt_Sqr_ft = 'Standard: Total_Bsmt_Sqr_ft' ;

      label S_Wood_Deck_Sqr_ft = 'Standard: Wood_Deck_Sqr_ft' ;

      label S_Year_Built = 'Standard: Year_Built' ;

      label S_Year_Remodel = 'Standard: Year_Remodel' ;

      label S__1st_Flr_Sqr_ft = 'Standard: _1st_Flr_Sqr_ft' ;

      label S__2nd_Flr_Sqr_ft = 'Standard: _2nd_Flr_Sqr_ft' ;

      label Heating_QC0 = 'Dummy: Heating_QC=0' ;

      label Heating_QC1 = 'Dummy: Heating_QC=1' ;

      label Heating_QC2 = 'Dummy: Heating_QC=2' ;

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
   Number_Full_Bath_House ,
   Number_Room_Above_Ground ,
   Open_Porch_Sqr_ft ,
   Total_Bsmt_Sqr_ft ,
   Wood_Deck_Sqr_ft ,
   Year_Built ,
   Year_Remodel ,
   _1st_Flr_Sqr_ft ,
   _2nd_Flr_Sqr_ft   ) THEN DO;
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
   S_Number_Full_Bath_House  =    -3.00889977765633 +     1.99944569097387 *
        Number_Full_Bath_House ;
   S_Number_Room_Above_Ground
          =    -4.52990098867454 +     0.72525479725168 *
        Number_Room_Above_Ground ;
   S_Open_Porch_Sqr_ft  =    -0.71972446018953 +     0.01578828426648 *
        Open_Porch_Sqr_ft ;
   S_Total_Bsmt_Sqr_ft  =    -2.96700084769343 +     0.00287338734248 *
        Total_Bsmt_Sqr_ft ;
   S_Wood_Deck_Sqr_ft  =    -0.74767919575025 +     0.00839605357981 *
        Wood_Deck_Sqr_ft ;
   S_Year_Built  =    -65.4480701156959 +      0.0332083686631 * Year_Built ;
   S_Year_Remodel  =    -95.6664879203616 +     0.04821574721109 *
        Year_Remodel ;
   S__1st_Flr_Sqr_ft  =    -3.24752699131949 +     0.00292246914923 *
        _1st_Flr_Sqr_ft ;
   S__2nd_Flr_Sqr_ft  =    -0.79815456584151 +       0.002476514928 *
        _2nd_Flr_Sqr_ft ;
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
   IF MISSING( Number_Full_Bath_House ) THEN S_Number_Full_Bath_House  = . ;
   ELSE S_Number_Full_Bath_House
          =    -3.00889977765633 +     1.99944569097387 *
        Number_Full_Bath_House ;
   IF MISSING( Number_Room_Above_Ground ) THEN S_Number_Room_Above_Ground
          = . ;
   ELSE S_Number_Room_Above_Ground
          =    -4.52990098867454 +     0.72525479725168 *
        Number_Room_Above_Ground ;
   IF MISSING( Open_Porch_Sqr_ft ) THEN S_Open_Porch_Sqr_ft  = . ;
   ELSE S_Open_Porch_Sqr_ft  =    -0.71972446018953 +     0.01578828426648 *
        Open_Porch_Sqr_ft ;
   IF MISSING( Total_Bsmt_Sqr_ft ) THEN S_Total_Bsmt_Sqr_ft  = . ;
   ELSE S_Total_Bsmt_Sqr_ft  =    -2.96700084769343 +     0.00287338734248 *
        Total_Bsmt_Sqr_ft ;
   IF MISSING( Wood_Deck_Sqr_ft ) THEN S_Wood_Deck_Sqr_ft  = . ;
   ELSE S_Wood_Deck_Sqr_ft  =    -0.74767919575025 +     0.00839605357981 *
        Wood_Deck_Sqr_ft ;
   IF MISSING( Year_Built ) THEN S_Year_Built  = . ;
   ELSE S_Year_Built  =    -65.4480701156959 +      0.0332083686631 *
        Year_Built ;
   IF MISSING( Year_Remodel ) THEN S_Year_Remodel  = . ;
   ELSE S_Year_Remodel  =    -95.6664879203616 +     0.04821574721109 *
        Year_Remodel ;
   IF MISSING( _1st_Flr_Sqr_ft ) THEN S__1st_Flr_Sqr_ft  = . ;
   ELSE S__1st_Flr_Sqr_ft  =    -3.24752699131949 +     0.00292246914923 *
        _1st_Flr_Sqr_ft ;
   IF MISSING( _2nd_Flr_Sqr_ft ) THEN S__2nd_Flr_Sqr_ft  = . ;
   ELSE S__2nd_Flr_Sqr_ft  =    -0.79815456584151 +       0.002476514928 *
        _2nd_Flr_Sqr_ft ;
END;
*** *************************;
*** Writing the Node nom ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =    -0.68281594863224 * S_Above_Ground_Living_Area
          +      0.0489715817552 * S_Bsmt_Finish_Sqr_ft
          +    -0.08042222458521 * S_Bsmt_Unfinish_Sqr_ft
          +     0.17829695855011 * S_Fireplaces  +     0.00941168539955 *
        S_Garage_Area  +     0.05606311940703 * S_Garage_Cars
          +    -0.05232635031722 * S_Lot_Area  +     0.11396706272885 *
        S_Number_Bedroom_Above_Ground  +     -0.0129988791043 *
        S_Number_Full_Bath_House  +    -0.01095081252384 *
        S_Number_Room_Above_Ground  +     0.00282893202523 *
        S_Open_Porch_Sqr_ft  +     0.09285876565026 * S_Total_Bsmt_Sqr_ft
          +     0.00714061158208 * S_Wood_Deck_Sqr_ft
          +     0.14283080944761 * S_Year_Built  +     0.48420012233291 *
        S_Year_Remodel  +      0.6250092136934 * S__1st_Flr_Sqr_ft
          +     0.77199587050195 * S__2nd_Flr_Sqr_ft ;
   H12  =     0.90441313590684 * S_Above_Ground_Living_Area
          +    -0.20857902893582 * S_Bsmt_Finish_Sqr_ft
          +    -0.78993976032394 * S_Bsmt_Unfinish_Sqr_ft
          +     0.28193344672001 * S_Fireplaces  +    -0.64469253390227 *
        S_Garage_Area  +     0.95504067515585 * S_Garage_Cars
          +     0.02445007171203 * S_Lot_Area  +    -0.41840937479706 *
        S_Number_Bedroom_Above_Ground  +     -3.2645992491221 *
        S_Number_Full_Bath_House  +     0.67021301483944 *
        S_Number_Room_Above_Ground  +    -0.14529276401103 *
        S_Open_Porch_Sqr_ft  +    -0.62529099154235 * S_Total_Bsmt_Sqr_ft
          +    -0.65050407248536 * S_Wood_Deck_Sqr_ft
          +     0.20309480532364 * S_Year_Built  +     -0.5209029301942 *
        S_Year_Remodel  +    -0.48963724043426 * S__1st_Flr_Sqr_ft
          +      0.0178988899115 * S__2nd_Flr_Sqr_ft ;
   H13  =     0.13887239586561 * S_Above_Ground_Living_Area
          +    -0.00304300261313 * S_Bsmt_Finish_Sqr_ft
          +     0.00514545573831 * S_Bsmt_Unfinish_Sqr_ft
          +     0.05555993898638 * S_Fireplaces  +    -0.03967616184979 *
        S_Garage_Area  +     0.01168616676315 * S_Garage_Cars
          +    -0.07055118069048 * S_Lot_Area  +     0.09201341921056 *
        S_Number_Bedroom_Above_Ground  +     0.02013785240938 *
        S_Number_Full_Bath_House  +      0.0017564467037 *
        S_Number_Room_Above_Ground  +     -0.0088351586026 *
        S_Open_Porch_Sqr_ft  +    -0.01657921323795 * S_Total_Bsmt_Sqr_ft
          +     0.00550818426445 * S_Wood_Deck_Sqr_ft
          +    -0.00101805696857 * S_Year_Built  +     0.06300349779441 *
        S_Year_Remodel  +    -0.25360429656105 * S__1st_Flr_Sqr_ft
          +    -0.25761420017739 * S__2nd_Flr_Sqr_ft ;
   H14  =     0.45206927610174 * S_Above_Ground_Living_Area
          +     -0.0004204422727 * S_Bsmt_Finish_Sqr_ft
          +    -0.07999829521554 * S_Bsmt_Unfinish_Sqr_ft
          +     0.14659237364991 * S_Fireplaces  +    -0.06158878211984 *
        S_Garage_Area  +       0.078225409079 * S_Garage_Cars
          +    -0.02128086166318 * S_Lot_Area  +     0.14484990891529 *
        S_Number_Bedroom_Above_Ground  +     0.03432742475184 *
        S_Number_Full_Bath_House  +     0.00548799186002 *
        S_Number_Room_Above_Ground  +     0.01531070142061 *
        S_Open_Porch_Sqr_ft  +     0.08919965712846 * S_Total_Bsmt_Sqr_ft
          +     0.02616484301504 * S_Wood_Deck_Sqr_ft
          +     0.10146498251948 * S_Year_Built  +     0.16877364803397 *
        S_Year_Remodel  +    -0.44477853195555 * S__1st_Flr_Sqr_ft
          +    -0.46550294116786 * S__2nd_Flr_Sqr_ft ;
   H11  = H11  +     0.43612826150255 * Heating_QC0  +    -0.17576756727195 *
        Heating_QC1  +    -0.02819703598157 * Heating_QC2
          +    -0.14679691117579 * Overall_Quality2  +    -0.65325333137216 *
        Overall_Quality3  +     -1.7792064701047 * Overall_Quality4
          +    -1.48368098608743 * Overall_Quality5  +    -0.16696719100687 *
        Overall_Quality6  +     0.33744573679167 * Overall_Quality7
          +     0.71217879481385 * Overall_Quality8  +     0.54933771955874 *
        Overall_Quality9 ;
   H12  = H12  +     0.66160544104095 * Heating_QC0  +    -0.24429275777591 *
        Heating_QC1  +    -1.04558028613249 * Heating_QC2
          +     0.72752446653325 * Overall_Quality2  +    -1.20666551981214 *
        Overall_Quality3  +    -2.53261967026951 * Overall_Quality4
          +    -3.46886548850085 * Overall_Quality5  +    -3.22338249077236 *
        Overall_Quality6  +    -3.54461087983909 * Overall_Quality7
          +    -1.09223329647731 * Overall_Quality8  +     2.56956866372051 *
        Overall_Quality9 ;
   H13  = H13  +     0.02269251895528 * Heating_QC0  +     -0.0027809190952 *
        Heating_QC1  +     0.01137314539486 * Heating_QC2
          +     0.66942528040999 * Overall_Quality2  +      0.2337280813437 *
        Overall_Quality3  +    -0.28382850203232 * Overall_Quality4
          +    -0.33547484416649 * Overall_Quality5  +    -0.09494063603047 *
        Overall_Quality6  +     0.04362674561602 * Overall_Quality7
          +     0.16534782620748 * Overall_Quality8  +    -0.18697823668458 *
        Overall_Quality9 ;
   H14  = H14  +    -0.07835348220423 * Heating_QC0  +    -0.00633140179038 *
        Heating_QC1  +     0.06394862998983 * Heating_QC2
          +    -1.10226736806661 * Overall_Quality2  +    -1.32158658286002 *
        Overall_Quality3  +     -2.1802293425927 * Overall_Quality4
          +    -2.13349520932755 * Overall_Quality5  +    -1.62006060686238 *
        Overall_Quality6  +     -1.1268212769306 * Overall_Quality7
          +    -0.20203358269271 * Overall_Quality8  +    -0.56240300494776 *
        Overall_Quality9 ;
   H11  =    -1.40150355079633 + H11 ;
   H12  =    -4.28098792773446 + H12 ;
   H13  =    -0.29764718201147 + H13 ;
   H14  =     2.27070172558705 + H14 ;
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
   P_Sale_Price  =     92784.9236874184 * H11  +     33731.5777084015 * H12
          +    -170555.096658197 * H13  +     79970.3063987341 * H14 ;
   P_Sale_Price  =     172083.902088574 + P_Sale_Price ;
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
S_Number_Full_Bath_House
S_Number_Room_Above_Ground
S_Open_Porch_Sqr_ft
S_Total_Bsmt_Sqr_ft
S_Wood_Deck_Sqr_ft
S_Year_Built
S_Year_Remodel
S__1st_Flr_Sqr_ft
S__2nd_Flr_Sqr_ft
H11
H12
H13
H14
;
