Select STR_NM,COUNT(STR_NM) as cnt FROM CITY_ADDRESSES WHERE ASGN_STTS_IND='U' GROUP BY STR_NM Order BY cnt DESC LIMIT 15;