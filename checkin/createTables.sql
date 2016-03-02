CREATE TABLE event_roster(
  id          CHAR(20) PRIMARY KEY,
  isu_id      CHAR(9) NOT NULL,
  net_id      VARCHAR(20) NOT NULL,
  first_name  VARCHAR(20) NOT NULL,
  last_name   VARCHAR(20) NOT NULL,
  chapter     VARCHAR(20) NOT NULL,
  w_lipsync   BOOLEAN NOT NULL DEFAULT false, -- true if this person has filled out a lipsync waiver
  w_general   BOOLEAN NOT NULL DEFAULT false, -- true if this person has filled out a general waiver
  events      TEXT[] NOT NULL DEFAULT Array[]::TEXT[] -- array of events this person has checked in to
);