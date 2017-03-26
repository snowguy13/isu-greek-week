CREATE TABLE teams(
  chapter    VARCHAR(20) PRIMARY KEY,
  team_name  VARCHAR(20) NOT NULL
);

-- Adding all the teams to the teams table
INSERT INTO teams VALUES
  ('Alpha Delta Pi', 'Alpha Trifecta'),
  ('Alpha Kappa Lambda', 'Alpha Trifecta'),
  ('Pi Kappa Alpha', 'Alpha Trifecta'),
  ('Lambda Chi Alpha', 'The Ash Branch'),
  ('Phi Gamma Delta', 'The Ash Branch'),
  ('Pi Beta Phi', 'The Ash Branch'),
  ('ACACIA', 'DAAKstreet Boyz');
  ('Alpha Sigma Kappa', 'DAAKstreet Boyz'),
  ('Delta Zeta', 'DAAKstreet Boyz'),
  ('Kappa Sigma', 'DAAKstreet Boyz'),
  ('Alpha Gamma Rho', 'Gamma Kappa Psi'),
  ('Beta Sigma Psi', 'Gamma Kappa Psi'),
  ('Kappa Delta', 'Gamma Kappa Psi'),
  ('Alpha Tau Omega', 'Greek AtTaK'),
  ('Kappa Kappa Gamma','Greek AtTaK'),
  ('Triangle', 'Greek AtTaK'),
  ('Alpha Gamma Delta', 'Greek Madness'),
  ('Chi Phi', 'Greek Madness'),
  ('Lambda Theta Alpha', 'Greek Madness'),
  ('Sigma Chi', 'Greek Madness'),
  ('Beta Theta Pi','GreekBusters'),
  ('Pi Kappa Phi', 'GreekBusters'),
  ('Sigma Kappa', 'GreekBusters'),
  ('Alpha Omicron Pi', 'Greekelodeon'),
  ('Delta Chi', 'Greekelodeon'),
  ('Phi Kappa Psi','Greekelodeon'),
  ('Alpha Sigma Phi', 'The Greek Gatsby'),
  ('Delta Gamma', 'The Greek Gatsby'),
  ('Delta Lambda Phi', 'The Greek Gatsby'),
  ('Delta Tau Delta', 'The Greek Gatsby'),
  ('Delta Delta Delta', 'IV League'),
  ('Phi Kappa Theta', 'IV League'),
  ('Tau Kappa Epsilon', 'IV League'),
  ('Theta Chi', 'IV League'),
  ('Adelante', 'Juju on that Greek'),
  ('Alpha Phi', 'Juju on that Greek'),
  ('Delta Sigma Phi', 'Juju on that Greek'),
  ('FarmHouse', 'Juju on that Greek'),
  ('Chi Omega', 'The Mighty Greeks'),
  ('Phi Beta Chi', 'The Mighty Greeks'),
  ('Sigma Pi', 'The Mighty Greeks'),
  ('Alpha Chi Omega', 'Peace Love Greeks'),
  ('Delta Upsilon', 'Peace Love Greeks'),
  ('Phi Kappa Tau', 'Peace Love Greeks'),
  ('Gamma Phi Beta', 'The Pirates of Greekland'),
  ('Sigma Phi Epsilon', 'The Pirates of Greekland'),
  ('Theta Xi', 'The Pirates of Greekland'),
  ('Kappa Alpha Theta', 'Threat Level Theta'),
  ('Phi Delta Theta', 'Threat Level Theta'),
  ('Theta Delta Chi', 'Threat Level Theta');

CREATE TABLE event_roster(
  id          CHAR(20)    PRIMARY KEY,
  isu_id      VARCHAR(9)  NOT NULL,
  net_id      VARCHAR(20) NOT NULL,
  first_name  VARCHAR(20) NOT NULL,
  last_name   VARCHAR(20) NOT NULL,
  chapter     VARCHAR(20) NOT NULL REFERENCES teams(chapter),
  gw_role     VARCHAR(7)  NOT NULL DEFAULT '',
  w_lipsync   BOOLEAN     NOT NULL DEFAULT false, -- true if this person has filled out a lipsync waiver
  w_general   BOOLEAN     NOT NULL DEFAULT false, -- true if this person has filled out a general waiver
  technical   BOOLEAN     NOT NULL DEFAULT false, -- true if this person has received a technical foul in a tournament (this prohibits him or her from participating in other tournaments)
  events      TEXT[]      NOT NULL DEFAULT Array[]::TEXT[] -- array of events this person has checked in to
);
