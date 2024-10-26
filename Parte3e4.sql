SELECT * 
from alunos inner 
join cidades on cidades.id = alunos.cidades_id;

SELECT *
from alunos left join cidades
on cidades.id = alunos.cidades_id 
order by alunos.nome;

select 
A.id as "RA",
A.nome as "nome",
A.data_nasc as "Data de nascimento"
from
Alunos A left join
cidades C
on A.cidades_id = C.id

where 
	C.nome like 'Sor%' and 
    A.data_nasc > '200'
    order by
    A.nome;
    
    
    
    