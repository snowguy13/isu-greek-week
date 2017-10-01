CREATE TABLE auth(
  username  VARCHAR(20) PRIMARY KEY,
  password  VARCHAR(20)
);

CREATE TABLE teams(
  chapter    VARCHAR(32) PRIMARY KEY,
  team_name  VARCHAR(30) NOT NULL
);

-- Adding all the teams to the teams table
INSERT INTO teams VALUES
  ('ACACIA', ''),
  ('Adelante', ''),
  ('Alpha Chi Omega', ''),
  ('Alpha Delta Pi', ''),
  ('Alpha Gamma Delta', ''),
  ('Alpha Gamma Rho', ''),
  ('Alpha Kappa Lambda', ''),
  ('Alpha Omicron Pi', ''),
  ('Alpha Phi', ''),
  ('Alpha Sigma Kappa', ''),
  ('Alpha Sigma Phi', ''),
  ('Alpha Tau Omega', ''),
  ('Beta Sigma Psi', ''),
  ('Beta Theta Pi', ''),
  ('Chi Omega', ''),
  ('Chi Phi', ''),
  ('Delta Chi', ''),
  ('Delta Delta Delta', ''),
  ('Delta Gamma', ''),
  ('Delta Phi Lambda', ''),
  ('Delta Sigma Phi', ''),
  ('Delta Tau Delta', ''),
  ('Delta Upsilon', ''),
  ('Delta Zeta', ''),
  ('FarmHouse', ''),
  ('Gamma Phi Beta', ''),
  ('Gamma Rho Lambda', ''),
  ('Kappa Alpha Theta', ''),
  ('Kappa Delta', ''),
  ('Kappa Kappa Gamma', ''),
  ('Kappa Sigma', ''),
  ('Lambda Chi Alpha', ''),
  ('Phi Beta Chi', ''),
  ('Phi Delta Theta', ''),
  ('Phi Gamma Delta', ''),
  ('Phi Kappa Psi', ''),
  ('Phi Kappa Tau', ''),
  ('Phi Kappa Theta', ''),
  ('Pi Beta Phi', ''),
  ('Pi Kappa Phi', ''),
  ('Sigma Chi', ''),
  ('Sigma Kappa', ''),
  ('Sigma Phi Epsilon', ''),
  ('Sigma Pi', ''),
  ('Tau Kappa Epsilon', ''),
  ('Theta Chi', ''),
  ('Theta Delta Chi', ''),
  ('Theta Xi', ''),
  ('Triangle', '');

CREATE TABLE event_roster(
  id          CHAR(20)    PRIMARY KEY,
  isu_id      VARCHAR(9)  NOT NULL,
  net_id      VARCHAR(20) NOT NULL,
  first_name  VARCHAR(20) NOT NULL,
  last_name   VARCHAR(20) NOT NULL,
  chapter     VARCHAR(20) NOT NULL REFERENCES teams(chapter),
  gw_role     VARCHAR(7)  NOT NULL DEFAULT '',
  w_general   BOOLEAN     NOT NULL DEFAULT false, -- true if this person has filled out a general waiver
  technical   BOOLEAN     NOT NULL DEFAULT false, -- true if this person has received a technical foul in a tournament (this prohibits him or her from participating in other tournaments)
  events      TEXT[]      NOT NULL DEFAULT Array[]::TEXT[] -- array of events this person has checked in to
);
