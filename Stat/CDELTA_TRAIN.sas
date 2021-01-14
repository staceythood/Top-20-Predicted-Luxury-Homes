if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'ABOVE_GROUND_LIVING_AREA'
'BLDG_TYPE'
'BSMT_FINISH_SQR_FT'
'BSMT_FINISH_TYPE'
'BSMT_UNFINISH_SQR_FT'
'EXTERIOR_QUALITY'
'FIREPLACES'
'FOUNDATION'
'GARAGE_AREA'
'GARAGE_CARS'
'GARAGE_TYPE'
'HALF_BATH_HOUSE'
'HEATING_QC'
'LOT_AREA'
'LOT_SHAPE'
'NUMBER_BEDROOM_ABOVE_GROUND'
'NUMBER_FULL_BATH_BSMT'
'NUMBER_FULL_BATH_HOUSE'
'NUMBER_ROOM_ABOVE_GROUND'
'OPEN_PORCH_SQR_FT'
'OVERALL_CONDITION'
'OVERALL_QUALITY'
'TOTAL_BSMT_SQR_FT'
'VENEER_AREA_OF_EXTERIOR_WALL'
'WOOD_DECK_SQR_FT'
'YEAR_BUILT'
'YEAR_REMODEL'
'_1ST_FLR_SQR_FT'
'_2ND_FLR_SQR_FT'
) then ROLE='INPUT';
else delete;
end;
