drop schema if exists locadora_web;
create schema locadora_web;
use locadora_web;

create table usuario (
	id serial primary key,
    nome varchar(50) unique not null,
    email varchar(155) not null,
    senha varchar(255) not null
);

create table filme (
	id serial primary key,
    nome varchar(255),
    diretor varchar(255),
    sinopse varchar(255),
    categoria varchar(255),
    estrelas double,
    data_de_lancamento varchar(255),
    duracao varchar(255),
    preco double,
    imageURL varchar(255) default null
);

insert into filme (id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values
(default, 'Vingadores: Ultimato', 'Joe Russo',
 'Após os eventos devastadores de "Vingadores: Guerra Infinita", o universo está em ruínas. Com a ajuda dos aliados remanescentes, os Vingadores se reúnem mais uma vez para desfazer as ações de Thanos e restaurar a ordem no universo.',
 'Ação', 4.5, '26/04/2019', '01:03:00', 59.99),
(default, 'Interestelar', 'Christopher Nolan',
 'Um grupo de exploradores faz uso de um buraco de minhoca recém-descoberto para ultrapassar as limitações de viagens espaciais humanas e conquistar as grandes distâncias relacionadas a uma viagem interestelar.',
 'Ficção Científica', 4.8, '07/11/2014', '02:49:00', 39.99);
 
 insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'A Origem', 'Christopher Nolan',
 'Em um mundo onde é possível entrar na mente das pessoas através dos sonhos, um ladrão especializado em extrair informações é contratado para implantar uma ideia na mente de um CEO.',
 'Ficção Científica', 4.9, '16/07/2010', '02:28:00', 39.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Cidade de Deus', 'Fernando Meirelles e Kátia Lund',
 'A história de dois jovens crescentes em uma das favelas mais violentas do Rio de Janeiro, onde eles seguem caminhos diferentes: um se torna fotógrafo e o outro se torna traficante de drogas.',
 'Drama', 4.8, '30/08/2002', '02:10:00', 34.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Interestelar', 'Christopher Nolan',
 'Um grupo de exploradores faz uso de um buraco de minhoca recém-descoberto para ultrapassar as limitações de viagens espaciais humanas e conquistar as grandes distâncias relacionadas a uma viagem interestelar, em uma tentativa desesperada de salvar a humanidade.',
 'Ficção Científica', 4.8, '07/11/2014', '02:49:00', 39.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'O Grande Gatsby', 'Baz Luhrmann',
 'Na década de 1920, um jovem aspirante a escritor se muda para Long Island e se torna vizinho de Jay Gatsby, um milionário misterioso e excêntrico com um passado obscuro. O jovem é atraído para o mundo extravagante e sedutor de Gatsby, repleto de festas luxuosas e segredos.',
 'Drama', 4.7, '16/05/2013', '02:23:00', 29.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'A Vida é Bela', 'Roberto Benigni',
 'Durante a Segunda Guerra Mundial, um homem judeu utiliza sua imaginação e senso de humor para proteger seu filho dos horrores do campo de concentração em que estão presos.',
 'Comédia Dramática', 4.8, '20/12/1997', '01:56:00', 29.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'O Labirinto do Fauno', 'Guillermo del Toro',
 'Na Espanha de 1944, uma jovem órfã escapa para um mundo fantástico repleto de criaturas mágicas e perigosas, enquanto enfrenta os horrores da Guerra Civil Espanhola.',
 'Fantasia', 4.7, '11/10/2006', '01:59:00', 29.99);
 
 insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Pulp Fiction', 'Quentin Tarantino',
 'A trama interliga três histórias diferentes envolvendo o submundo do crime em Los Angeles.',
 'Crime', 4.7, '21/10/1994', '02:34:00', 29.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'O Poderoso Chefão', 'Francis Ford Coppola',
 'A história de uma família mafiosa ítalo-americana liderada por Don Vito Corleone.',
 'Crime', 4.9, '24/03/1972', '02:55:00', 39.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'O Senhor dos Anéis: O Retorno do Rei', 'Peter Jackson',
 'Frodo e Sam continuam sua jornada para destruir o Anel, enquanto Gandalf se prepara para a batalha final contra Sauron.',
 'Fantasia', 4.8, '17/12/2003', '03:21:00', 34.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Clube da Luta', 'David Fincher',
 'Um homem desiludido e entediado forma um clube de luta clandestino como forma de encontrar um propósito na vida.',
 'Drama', 4.6, '22/10/1999', '02:19:00', 29.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Forrest Gump: O Contador de Histórias', 'Robert Zemeckis',
 'A vida de Forrest Gump, um homem com um QI abaixo da média que acidentalmente se envolve em importantes eventos históricos.',
 'Drama', 4.7, '07/07/1994', '02:22:00', 29.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'O Iluminado', 'Stanley Kubrick',
 'Um escritor aceita um emprego como zelador de um hotel isolado, mas a solidão gradualmente o leva à loucura.',
 'Terror', 4.6, '13/07/1980', '02:26:00', 29.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Os Caçadores da Arca Perdida', 'Steven Spielberg',
 'Indiana Jones sai em busca da Arca da Aliança antes que os nazistas possam usá-la como arma sobrenatural.',
 'Aventura', 4.5, '12/06/1981', '01:55:00', 24.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Titanic', 'James Cameron',
 'O romance entre Rose e Jack é ameaçado pelo trágico naufrágio do Titanic.',
 'Romance', 4.7, '18/11/1997', '03:15:00', 34.99);

insert into filme(id, nome, diretor, sinopse, categoria, estrelas, data_de_lancamento, duracao, preco) values 
(default, 'Matrix', 'The Wachowski Brothers',
 'Um programador de computador descobre que a realidade que ele conhece é uma simulação criada por máquinas.',
 'Ficção Científica', 4.7, '31/03/1999', '02:16:00', 29.99);

insert into filme values 
(default, 'First Blood Part II', 'George P. Cosmatos',
 'First Blood is a 1982 American action film directed by Ted Kotcheff, and co-written by Sylvester Stallone, who also stars as Vietnam War veteran John Rambo.',
 'Ação', 4.7, '22/05/1985', '01:36:00', 29.99, 'https://www.mensjournal.com/wp-content/uploads/2018/10/rambo-main-3.jpg');

insert into usuario values (default, 'admin', 'admin@email.com', 'admin');

select * from filme;