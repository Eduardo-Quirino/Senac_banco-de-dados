--insere novos campos 
ALTER TABLE Cliente
ADD e_mail VARCHAR(30);
SELECT*FROM Cliente --mostra os campos alterados após inclusão

------------------------------------------------------------

UPDATE Cliente --insere novos dados
SET e_mail = 'alex@senacsp.br'
WHERE nome  = 'Alex';

UPDATE Cliente 
SET e_mail = 'richard@senacsp.br'
WHERE nome  = 'Richard';

UPDATE Cliente 
SET e_mail = 'alexandre@senacsp.br'
WHERE nome  = 'Alexandre';
UPDATE Cliente 
SET e_mail = 'ozeas@senacsp.br'
WHERE nome  = 'Ozeas';

SELECT *FROM Cliente --mostra dados alterados

------------------------------------------------------------

