CREATE TABLE event_roster(
  isu_id      CHAR(9) PRIMARY KEY,
  net_id      VARCHAR(20),
  first_name  VARCHAR(20),
  last_name   VARCHAR(20),
  chapter     VARCHAR(20),
  w_lipsync   BOOLEAN,      -- true if this person has filled out a lipsync waiver
  w_general   BOOLEAN,      -- true if this person has filled out a general waiver
  events      TEXT[]        -- array of events this person has checked in to
);