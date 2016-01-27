-- Delete all current rows
DELETE FROM Apparel *;

-- Add in the new apparel
INSERT INTO Apparel VALUES
  ('Short Sleeve A', 'S,M,L,XL',     11, 'ssa.png'),
  ('Short Sleeve B', 'S,M,L,XL',     14, 'ssb.png'),
  ('Long Sleeve A',  'S,M,L,XL,XXL', 18, 'ls.jpg');