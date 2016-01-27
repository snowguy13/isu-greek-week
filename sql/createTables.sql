CREATE TABLE Apparel(
  name   VARCHAR(30) PRIMARY KEY,
  sizes  VARCHAR(20),  -- Comma-separated list of possibles sizes for this apparel
  cost   MONEY,
  images VARCHAR(100)  -- The name of the image files for this item's proof, located in webapp/image/apparel/
);

CREATE TABLE Orders(
  netid   VARCHAR(50) PRIMARY KEY,  -- Who knows? It could happen
  code    CHAR(10),                 -- Random log-in code
  token   CHAR(20),                 -- Random token created whenever a log-in occurs
  name    VARCHAR(50),
  chapter VARCHAR(19)               -- The longest chapter name is 19 characters
);

CREATE TABLE OrderLineItems(
  id           SERIAL      PRIMARY KEY,
  order_netid  VARCHAR(50) REFERENCES Orders  (netid),
  apparel_name VARCHAR(30) REFERENCES Apparel (name),
  size         VARCHAR(4), -- longest value should be XXXL
  quantity     INTEGER
);