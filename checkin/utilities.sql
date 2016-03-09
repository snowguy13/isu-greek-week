-- Selects total members per chapter and those with waivers
SELECT   teams.chapter, 
         COUNT( event_roster.id ) AS members, 
         COUNT(CASE WHEN event_roster.w_lipsync THEN true ELSE null END) AS w_lipsync 
FROM     teams LEFT OUTER JOIN event_roster ON (teams.chapter=event_roster.chapter) 
GROUP BY teams.chapter;