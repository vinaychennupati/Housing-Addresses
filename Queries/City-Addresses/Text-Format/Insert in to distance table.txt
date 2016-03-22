INSERT OVERWRITE TABLE location_dis1 Select LAT,LON,HSE_DIR_CD,ASGN_STTS_IND,
	2 * asin(
    sqrt(
      cos(radians(34.0667))*
      cos(radians(LAT)) *
      pow(sin(radians(-118.1678 - LON)/2),2)
          +
      pow(sin(radians(34.0667 - LAT)/2),2)

    )) *3956