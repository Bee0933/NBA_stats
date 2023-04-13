
with nba_stats_data as 
    (select * 
        from {{ source('nba_data', 'nba_stats_table') }})


select 
      Year as YEAR,
      Season_type as SEASON,
      PLAYER_ID,
      RANK as PLAYER_RANK,
      PLAYER as PLAYER_NAME,
      TEAM,
      GP
from nba_stats_data