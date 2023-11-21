* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
        
quietly infix                ///
  int		V0001		1-2		///
  int		V0002		3-7		///
  double		V0011		8-20		///
  double		V0300		21-28		///
  double		V0010		29-44		///
  byte		V1001		45-45		///
  int		V1002		46-47		///
  int		V1003		48-50		///
  int		V1004		51-52		///
  byte		V1006		53-53		///
  byte		V4001		54-55		///
  byte		V4002		56-57		///
  byte		V0201		58-58		///
  double		V2011		59-64		///
  double		V2012		65-73		///
  byte		V0202		74-74		///
  double		V0203		75-76		///
  double		V6203		77-79		///
  double		V0204		80-81		///
  double		V6204		82-84		///
  byte		V0205		85-85		///
  byte		V0206		86-86		///
  byte		V0207		87-87		///
  int		V0208		88-89		///
  byte		V0209		90-90		///
  byte		V0210		91-91		///
  byte		V0211		92-92		///
  byte		V0212		93-93		///
  byte		V0213		94-94		///
  byte		V0214		95-95		///
  byte		V0215		96-96		///
  byte		V0216		97-97		///
  byte		V0217		98-98		///
  byte		V0218		99-99		///
  byte		V0219		100-100		///
  byte		V0220		101-101		///
  byte		V0221		102-102		///
  byte		V0222		103-103		///
  byte		V0301		104-104		///
  double		V0401		105-106		///
  byte		V0402		107-107		///
  byte		V0701		108-108		///
  double		V6529		109-115		///
  double		V6530		116-125		///
  double		V6531		126-133		///
  double		V6532		134-142		///
  byte		V6600		143-143		///
  byte		V6210		144-144		///
  byte		M0201		145-145		///
  byte		M2011		146-146		///
  byte		M0202		147-147		///
  byte		M0203		148-148		///
  byte		M0204		149-149		///
  byte		M0205		150-150		///
  byte		M0206		151-151		///
  byte		M0207		152-152		///
  byte		M0208		153-153		///
  byte		M0209		154-154		///
  byte		M0210		155-155		///
  byte		M0211		156-156		///
  byte		M0212		157-157		///
  byte		M0213		158-158		///
  byte		M0214		159-159		///
  byte		M0215		160-160		///
  byte		M0216		161-161		///
  byte		M0217		162-162		///
  byte		M0218		163-163		///
  byte		M0219		164-164		///
  byte		M0220		165-165		///
  byte		M0221		166-166		///
  byte		M0222		167-167		///
  byte		M0301		168-168		///
  byte		M0401		169-169		///
  byte		M0402		170-170		///
  byte		M0701		171-171		///
  byte		V1005		172-172		///
  using `"../data/microdados/amostra_domicilios_2010_RJ.txt"', clear

format V0300 %08.0f
format V0010 %017.13f
format V2011 %06.0f
format V2012 %010.5f
format V0203 %02.0f
format V6203 %04.1f
format V0204 %02.0f
format V6204 %04.1f
format V0401 %02.0f
format V6529 %07.0f
format V6530 %011.5f
format V6531 %09.2f
format V6532 %010.5f

label var V0213		`"RÁDIO, EXISTÊNCIA"'
label var V0214		`"TELEVISÃO, EXISTÊNCIA"'
label var V1005		`"Situação do setor "'
label var V1002		`"CÓDIGO DA MESORREGIÃO"'
label var M0215		`"MARCA DE IMPUTAÇÃO NA V0215 "'
label var V0216		`"GELADEIRA, EXISTÊNCIA"'
label var M2011		`"MARCA DE IMPUTAÇÃO NA V2011"'
label var V6531		`"RENDIMENTO DOMICILIAR PER CAPITA EM JULHO DE 2010 "'
label var V6210		`"ADEQUAÇÃO DA MORADIA"'
label var M0401		`"MARCA DE IMPUTAÇÃO NA V0401  "'
label var V4001		`"ESPÉCIE DE UNIDADE VISITADA"'
label var V0217		`"TELEFONE CELULAR, EXISTÊNCIA"'
label var V0401		`"QUANTAS PESSOAS MORAVAM NESTE DOMICÍLIO EM 31 DE JULHO DE 2010"'
label var V0001		`"UNIDADE DA FEDERAÇÃO"'
label var M0210		`"MARCA DE IMPUTAÇÃO NA V0210 "'
label var M0205		`"MARCA DE IMPUTAÇÃO NA V0205 "'
label var V0209		`"ABASTECIMENTO DE ÁGUA, CANALIZAÇÃO"'
label var V1003		`"CÓDIGO DA MICRORREGIÃO"'
label var V0010		`"PESO AMOSTRAL"'
label var M0207		`"MARCA DE IMPUTAÇÃO NA V0207 "'
label var V0219		`"MICROCOMPUTADOR, EXISTÊNCIA"'
label var M0206		`"MARCA DE IMPUTAÇÃO NA V0206 "'
label var V0203		`"CÔMODOS, NÚMERO"'
label var M0222		`"MARCA DE IMPUTAÇÃO NA V0222  "'
label var V0212		`"EXISTÊNCIA DE MEDIDOR OU RELÓGIO, ENERGIA ELÉTRICA, COMPANHIA DISTRIBUIDORA"'
label var V0218		`"TELEFONE FIXO, EXISTÊNCIA"'
label var M0402		`"MARCA DE IMPUTAÇÃO NA V0402  "'
label var M0221		`"MARCA DE IMPUTAÇÃO NA V0221  "'
label var M0220		`"MARCA DE IMPUTAÇÃO NA V0220  "'
label var V0220		`"MICROCOMPUTADOR COM ACESSO À INTERNET, EXISTÊNCIA"'
label var M0213		`"MARCA DE IMPUTAÇÃO NA V0213 "'
label var V1006		`"SITUAÇÃO DO DOMICÍLIO"'
label var M0219		`"MARCA DE IMPUTAÇÃO NA V0219  "'
label var M0218		`"MARCA DE IMPUTAÇÃO NA V0218 "'
label var M0216		`"MARCA DE IMPUTAÇÃO NA V0216  "'
label var V0701		`"DE AGOSTO DE 2009 A JULHO DE 2010, FALECEU ALGUMA PESSOA QUE MORAVA COM VOCÊ(S) (INCLUSIVE CRIANÇAS RECÉM-NASCIDAS E IDOSOS)"'
label var V0222		`"AUTOMÓVEL PARA USO PARTICULAR, EXISTÊNCIA"'
label var V6600		`"Espécie da Unidade Doméstica"'
label var V0201		`"DOMICÍLIO, CONDIÇÃO DE OCUPAÇÃO"'
label var V6204		`"DENSIDADE DE MORADOR / DORMITÓRIO  "'
label var V1004		`"CÓDIGO DA REGIÃO METROPOLITANA"'
label var V0215		`"MÁQUINA DE LAVAR ROUPA, EXISTÊNCIA"'
label var V6532		`"RENDIMENTO DOMICILIAR PER CAPITA, EM Nº DE SALÁRIOS MÍNIMOS, EM JULHO DE 2010 "'
label var M0214		`"MARCA DE IMPUTAÇÃO NA V0214  "'
label var V2012		`"ALUGUEL EM Nº DE SALÁRIOS MÍNIMOS "'
label var V0210		`"LIXO, DESTINO"'
label var V2011		`"VALOR DO ALUGUEL (EM REAIS)             "'
label var V0221		`"MOTOCICLETA PARA USO PARTICULAR, EXISTÊNCIA"'
label var M0301		`"MARCA DE IMPUTAÇÃO NA V0301  "'
label var V6530		`"RENDIMENTO DOMICILIAR, SALÁRIOS MÍNIMOS, EM JULHO DE 2010 "'
label var V0204		`"CÔMODOS COMO DORMITÓRIO, NÚMERO"'
label var M0211		`"MARCA DE IMPUTAÇÃO NA V0211 "'
label var V6529		`"RENDIMENTO MENSAL DOMICILIAR EM JULHO DE 2010 "'
label var M0203		`"MARCA DE IMPUTAÇÃO NA V0203 "'
label var M0202		`"MARCA DE IMPUTAÇÃO NA V0202 "'
label var M0701		`"MARCA DE IMPUTAÇÃO NA V0701  "'
label var V1001		`"REGIÃO GEOGRÁFICA"'
label var M0204		`"MARCA DE IMPUTAÇÃO NA V0204 "'
label var M0201		`"MARCA DE IMPUTAÇÃO NA V0201  "'
label var V0402		`"A RESPONSABILIDADE PELO DOMICÍLIO É DE"'
label var V0208		`"ABASTECIMENTO DE ÁGUA, FORMA"'
label var V0011		`"ÁREA DE PONDERAÇÃO"'
label var V0205		`"BANHEIROS DE USO EXCLUSIVO, NÚMERO "'
label var V0301		`"ALGUMA PESSOA QUE MORAVA COM VOCÊ(S) ESTAVA MORANDO EM OUTRO PAÍS EM 31 DE JULHO DE 2010"'
label var M0217		`"MARCA DE IMPUTAÇÃO NA V0217  "'
label var V0211		`"ENERGIA ELÉTRICA, EXISTÊNCIA"'
label var V4002		`"TIPO DE ESPÉCIE"'
label var M0208		`"MARCA DE IMPUTAÇÃO NA V0208 "'
label var V0207		`"ESGOTAMENTO SANITÁRIO, TIPO"'
label var M0209		`"MARCA DE IMPUTAÇÃO NA V0209 "'
label var M0212		`"MARCA DE IMPUTAÇÃO NA V0212 "'
label var V0300		`"CONTROLE"'
label var V6203		`"DENSIDADE DE MORADOR/CÔMODO "'
label var V0202		`"MATERIAL PREDOMINANTE, PAREDES EXTERNAS"'
label var V0002		`"CÓDIGO DO MUNICÍPIO"'
label var V0206		`"SANITÁRIO OU BURACO PARA DEJEÇÕES, EXISTÊNCIA"'

label define V0001_lbl 11 `" Rondônia"', add
label define V0001_lbl 12 `" Acre"', add
label define V0001_lbl 13 `" Amazonas"', add
label define V0001_lbl 14 `" Roraima"', add
label define V0001_lbl 15 `" Pará"', add
label define V0001_lbl 16 `" Amapá"', add
label define V0001_lbl 17 `" Tocantins"', add
label define V0001_lbl 21 `" Maranhão"', add
label define V0001_lbl 22 `" Piauí"', add
label define V0001_lbl 23 `" Ceará"', add
label define V0001_lbl 24 `" Rio Grande do Norte"', add
label define V0001_lbl 25 `" Paraíba"', add
label define V0001_lbl 26 `" Pernambuco"', add
label define V0001_lbl 27 `" Alagoas"', add
label define V0001_lbl 28 `" Sergipe"', add
label define V0001_lbl 29 `" Bahia"', add
label define V0001_lbl 31 `" Minas Gerais"', add
label define V0001_lbl 32 `" Espírito Santo"', add
label define V0001_lbl 33 `" Rio de Janeiro"', add
label define V0001_lbl 35 `" São Paulo"', add
label define V0001_lbl 41 `" Paraná"', add
label define V0001_lbl 42 `" Santa Catarina"', add
label define V0001_lbl 43 `" Rio Grande do Sul"', add
label define V0001_lbl 50 `" Mato Grosso do Sul"', add
label define V0001_lbl 51 `" Mato Grosso"', add
label define V0001_lbl 52 `" Goiás"', add
label define V0001_lbl 53 `" Distrito Federal"', add
label define V1001_lbl 1 `" Região norte (uf=11 a 17)"', add
label define V1001_lbl 2 `" Região nordeste (uf=21 a 29)  "', add
label define V1001_lbl 3 `" Região sudeste (uf=31 a 33 e 35)"', add
label define V1001_lbl 4 `" Região sul (uf=41 a 43)"', add
label define V1001_lbl 5 `" Região centro"', add
label define V1006_lbl 1 `" Urbana"', add
label define V1006_lbl 2 `" Rural"', add
label define V4001_lbl 01 `" Domicílio particular permanente ocupado "', add
label define V4001_lbl 02 `" Domicílio particular permanente ocupado sem entrevista realizada "', add
label define V4001_lbl 05 `" Domicílio particular improvisado ocupado "', add
label define V4001_lbl 06 `" Domicílio coletivo com morador"', add
label define V4002_lbl 11 `" Casa"', add
label define V4002_lbl 12 `" Casa de vila ou em condomínio"', add
label define V4002_lbl 13 `" Apartamento"', add
label define V4002_lbl 14 `" Habitação em: casa de cômodos, cortiço ou cabeça de porco"', add
label define V4002_lbl 15 `" Oca ou maloca "', add
label define V4002_lbl 51 `" Tenda ou barraca"', add
label define V4002_lbl 52 `" Dentro de estabelecimento"', add
label define V4002_lbl 53 `" Outro (vagão, trailer, gruta, etc)"', add
label define V4002_lbl 61 `" Asilo, orfanato e similares  com morador"', add
label define V4002_lbl 62 `" Hotel, pensão e similares com morador"', add
label define V4002_lbl 63 `" Alojamento de trabalhadores com morador"', add
label define V4002_lbl 64 `" Penitenciária, presídio ou casa de detenção com morador"', add
label define V4002_lbl 65 `" Outro com morador"', add
label define V0201_lbl 1 `" Próprio de algum morador "', add
label define V0201_lbl 2 `" Próprio de algum morador "', add
label define V0201_lbl 3 `" Alugado"', add
label define V0201_lbl 4 `" Cedido por empregador"', add
label define V0201_lbl 5 `" Cedido de outra forma"', add
label define V0201_lbl 6 `" Outra condição"', add
label define V0201_lbl .a `"Branco"', add
label define V0202_lbl 1 `" Alvenaria com revestimento"', add
label define V0202_lbl 2 `" Alvenaria sem revestimento"', add
label define V0202_lbl 3 `" Madeira apropriada para construção (aparelhada)"', add
label define V0202_lbl 4 `" Taipa revestida"', add
label define V0202_lbl 5 `" Taipa não revestida"', add
label define V0202_lbl 6 `" Madeira aproveitada"', add
label define V0202_lbl 7 `" Palha"', add
label define V0202_lbl 8 `" Outro material"', add
label define V0202_lbl 9 `" Sem parede"', add
label define V0202_lbl .a `"Branco"', add
label define V0205_lbl 0 `" Zero banheiros"', add
label define V0205_lbl 1 `" Um banheiro"', add
label define V0205_lbl 2 `" Dois banheiros"', add
label define V0205_lbl 3 `" Três banheiros"', add
label define V0205_lbl 4 `" Quatro banheiros"', add
label define V0205_lbl 5 `" Cinco banheiros"', add
label define V0205_lbl 6 `" Seis banheiros"', add
label define V0205_lbl 7 `" Sete banheiros"', add
label define V0205_lbl 8 `" Oito banheiros"', add
label define V0205_lbl 9 `" Nove ou mais banheiros"', add
label define V0205_lbl .a `"Branco"', add
label define V0206_lbl 1 `" Sim"', add
label define V0206_lbl 2 `" Não"', add
label define V0206_lbl .a `"Branco"', add
label define V0207_lbl 1 `" Rede geral de esgoto ou pluvial"', add
label define V0207_lbl 2 `" Fossa séptica"', add
label define V0207_lbl 3 `" Fossa rudimentar"', add
label define V0207_lbl 4 `" Vala"', add
label define V0207_lbl 5 `" Rio, lago ou mar"', add
label define V0207_lbl 6 `" Outro "', add
label define V0207_lbl .a `"Branco"', add
label define V0208_lbl 01 `" Rede geral de distribuição"', add
label define V0208_lbl 02 `" Poço ou nascente na propriedade"', add
label define V0208_lbl 03 `" Poço ou nascente fora da propriedade"', add
label define V0208_lbl 04 `" Carro"', add
label define V0208_lbl 05 `" Água da chuva armazenada em cisterna"', add
label define V0208_lbl 06 `" Água da chuva armazenada de outra forma"', add
label define V0208_lbl 07 `" Rios, açudes, lagos e igarapés"', add
label define V0208_lbl 08 `" Outra "', add
label define V0208_lbl 09 `" Poço ou nascente na aldeia"', add
label define V0208_lbl 10 `" Poço ou nascente fora da aldeia"', add
label define V0208_lbl .a `"Branco"', add
label define V0209_lbl 1 `" Sim, em pelo menos um cômodo"', add
label define V0209_lbl 2 `" Sim, só na propriedade ou terreno"', add
label define V0209_lbl 3 `" Não"', add
label define V0209_lbl .a `"Branco"', add
label define V0210_lbl 1 `" Coletado diretamente por serviço de limpeza"', add
label define V0210_lbl 2 `" Colocado em caçamba de serviço de limpeza"', add
label define V0210_lbl 3 `" Queimado (na propriedade)"', add
label define V0210_lbl 4 `" Enterrado (na propriedade)"', add
label define V0210_lbl 5 `" Jogado em terreno baldio ou logradouro"', add
label define V0210_lbl 6 `" Jogado em rio, lago ou mar"', add
label define V0210_lbl 7 `" Tem outro destino"', add
label define V0210_lbl .a `"Branco"', add
label define V0211_lbl 1 `" Sim, de companhia distribuidora"', add
label define V0211_lbl 2 `" Sim, de outras fontes"', add
label define V0211_lbl 3 `" Não existe energia elétrica"', add
label define V0211_lbl .a `"Branco"', add
label define V0212_lbl 1 `" Sim, de uso exclusivo"', add
label define V0212_lbl 2 `" Sim, de uso comum "', add
label define V0212_lbl 3 `" Não tem medidor ou relógio"', add
label define V0212_lbl .a `"Branco"', add
label define V0213_lbl 1 `" Sim"', add
label define V0213_lbl 2 `" Não"', add
label define V0213_lbl .a `"Branco"', add
label define V0214_lbl 1 `" Sim"', add
label define V0214_lbl 2 `" Não"', add
label define V0214_lbl .a `"Branco"', add
label define V0215_lbl 1 `" Sim"', add
label define V0215_lbl 2 `" Não"', add
label define V0215_lbl .a `"Branco"', add
label define V0216_lbl 1 `" Sim"', add
label define V0216_lbl 2 `" Não"', add
label define V0216_lbl .a `"Branco"', add
label define V0217_lbl 1 `" Sim"', add
label define V0217_lbl 2 `" Não"', add
label define V0217_lbl .a `"Branco"', add
label define V0218_lbl 1 `" Sim"', add
label define V0218_lbl 2 `" Não"', add
label define V0218_lbl .a `"Branco"', add
label define V0219_lbl 1 `" Sim"', add
label define V0219_lbl 2 `" Não"', add
label define V0219_lbl .a `"Branco"', add
label define V0220_lbl 1 `" Sim"', add
label define V0220_lbl 2 `" Não"', add
label define V0220_lbl .a `"Branco"', add
label define V0221_lbl 1 `" Sim"', add
label define V0221_lbl 2 `" Não"', add
label define V0221_lbl .a `"Branco"', add
label define V0222_lbl 1 `" Sim"', add
label define V0222_lbl 2 `" Não"', add
label define V0222_lbl .a `"Branco"', add
label define V0301_lbl 1 `" Sim"', add
label define V0301_lbl 2 `" Não"', add
label define V0301_lbl .a `"Branco"', add
label define V0402_lbl 1 `" Apenas um morador"', add
label define V0402_lbl 2 `" Mais de um morador"', add
label define V0402_lbl 9 `" Ignorado"', add
label define V0402_lbl .a `"Branco"', add
label define V0701_lbl 1 `" Sim"', add
label define V0701_lbl 2 `" Não"', add
label define V0701_lbl .a `"Branco"', add
label define V6600_lbl 1 `" Unipessoal"', add
label define V6600_lbl 2 `" Nuclear"', add
label define V6600_lbl 3 `" Estendida"', add
label define V6600_lbl 4 `" Composta"', add
label define V6600_lbl .a `"Branco (Domicílio Coletivo)"', add
label define V6210_lbl 1 `"  Adequada"', add
label define V6210_lbl 2 `"  Semi"', add
label define V6210_lbl 3 `"  Inadequada"', add
label define V6210_lbl .a `"Branco"', add
label define M0201_lbl 1 `" Sim"', add
label define M0201_lbl 2 `" Não"', add
label define M2011_lbl 1 `" Sim"', add
label define M2011_lbl 2 `" Não"', add
label define M0202_lbl 1 `" Sim"', add
label define M0202_lbl 2 `" Não"', add
label define M0203_lbl 1 `" Sim"', add
label define M0203_lbl 2 `" Não"', add
label define M0204_lbl 1 `" Sim"', add
label define M0204_lbl 2 `" Não"', add
label define M0205_lbl 1 `" Sim"', add
label define M0205_lbl 2 `" Não"', add
label define M0206_lbl 1 `" Sim"', add
label define M0206_lbl 2 `" Não"', add
label define M0207_lbl 1 `" Sim"', add
label define M0207_lbl 2 `" Não"', add
label define M0208_lbl 1 `" Sim"', add
label define M0208_lbl 2 `" Não"', add
label define M0209_lbl 1 `" Sim"', add
label define M0209_lbl 2 `" Não"', add
label define M0210_lbl 1 `" Sim"', add
label define M0210_lbl 2 `" Não"', add
label define M0211_lbl 1 `" Sim"', add
label define M0211_lbl  2 `" Não  "', add
label define M0212_lbl 1 `" Sim"', add
label define M0212_lbl 2 `" Não"', add
label define M0213_lbl 1 `" Sim"', add
label define M0213_lbl 2 `" Não"', add
label define M0214_lbl 1 `" Sim"', add
label define M0214_lbl 2 `" Não"', add
label define M0215_lbl 1 `" Sim"', add
label define M0215_lbl 2 `" Não"', add
label define M0216_lbl 1 `" Sim"', add
label define M0216_lbl 2 `" Não"', add
label define M0217_lbl 1 `" Sim"', add
label define M0217_lbl 2 `" Não"', add
label define M0218_lbl 1 `" Sim"', add
label define M0218_lbl 2 `" Não"', add
label define M0219_lbl 1 `" Sim"', add
label define M0219_lbl 2 `" Não"', add
label define M0220_lbl 1 `" Sim"', add
label define M0220_lbl  2 `" Não  "', add
label define M0221_lbl 1 `" Sim"', add
label define M0221_lbl 2 `" Não"', add
label define M0222_lbl 1 `" Sim"', add
label define M0222_lbl 2 `" Não"', add
label define M0301_lbl 1 `" Sim"', add
label define M0301_lbl 2 `" Não"', add
label define M0401_lbl 1 `" Sim"', add
label define M0401_lbl 2 `" Não"', add
label define M0402_lbl 1 `" Sim"', add
label define M0402_lbl 2 `" Não"', add
label define M0701_lbl 1 `" Sim"', add
label define M0701_lbl 2 `" Não"', add
label define V1005_lbl 1  `" Área urbanizada"', add
label define V1005_lbl 2  `" Área não urbanizada"', add
label define V1005_lbl 3  `" Área urbanizada isolada"', add
label define V1005_lbl 4  `" Área rural de extensão urbana"', add
label define V1005_lbl 5  `" Aglomerado rural (povoado)"', add
label define V1005_lbl 6  `" Aglomerado rural (núcleo)"', add
label define V1005_lbl 7  `" Aglomerado rural (outros)"', add
label define V1005_lbl 8  `" Área rural exclusive aglomerado rural"', add
label define V1005_lbl .a `"Branco"', add

label values V1003 V1003_lbl
label values M0206 M0206_lbl
label values V0212 V0212_lbl
label values V1001 V1001_lbl
label values M0201 M0201_lbl
label values V0209 V0209_lbl
label values V1004 V1004_lbl
label values V0202 V0202_lbl
label values V0211 V0211_lbl
label values V4001 V4001_lbl
label values M0212 M0212_lbl
label values V1005 V1005_lbl
label values V0221 V0221_lbl
label values V1002 V1002_lbl
label values V0213 V0213_lbl
label values M0215 M0215_lbl
label values V6600 V6600_lbl
label values M0204 M0204_lbl
label values V6210 V6210_lbl
label values V0216 V0216_lbl
label values M0222 M0222_lbl
label values V0215 V0215_lbl
label values V0217 V0217_lbl
label values M0208 M0208_lbl
label values V0203 V0203_lbl
label values M2011 M2011_lbl
label values V0208 V0208_lbl
label values V0206 V0206_lbl
label values M0202 M0202_lbl
label values V0204 V0204_lbl
label values M0210 M0210_lbl
label values M0219 M0219_lbl
label values M0401 M0401_lbl
label values V0205 V0205_lbl
label values V0207 V0207_lbl
label values M0211 M0211_lbl
label values V0219 V0219_lbl
label values M0301 M0301_lbl
label values V4002 V4002_lbl
label values V0214 V0214_lbl
label values V0220 V0220_lbl
label values V0301 V0301_lbl
label values V0402 V0402_lbl
label values M0213 M0213_lbl
label values M0218 M0218_lbl
label values M0221 M0221_lbl
label values M0207 M0207_lbl
label values M0209 M0209_lbl
label values V0201 V0201_lbl
label values M0203 M0203_lbl
label values M0214 M0214_lbl
label values M0205 M0205_lbl
label values M0220 M0220_lbl
label values V0222 V0222_lbl
label values V0210 V0210_lbl
label values V0001 V0001_lbl
label values M0217 M0217_lbl
label values V0218 V0218_lbl
label values V0701 V0701_lbl
label values M0402 M0402_lbl
label values M0216 M0216_lbl
label values M0701 M0701_lbl
label values V1006 V1006_lbl

label define V0002_lbl 5200050 `"Abadia de Goiás"', add
label define V0002_lbl 3100104 `"Abadia dos Dourados"', add
label define V0002_lbl 5200100 `"Abadiânia"', add
label define V0002_lbl 3100203 `"Abaeté"', add
label define V0002_lbl 1500107 `"Abaetetuba"', add
label define V0002_lbl 2300101 `"Abaiara"', add
label define V0002_lbl 2900108 `"Abaíra"', add
label define V0002_lbl 2900207 `"Abaré"', add
label define V0002_lbl 4100103 `"Abatiá"', add
label define V0002_lbl 4200051 `"Abdon Batista"', add
label define V0002_lbl 1500131 `"Abel Figueiredo"', add
label define V0002_lbl 4200101 `"Abelardo Luz"', add
label define V0002_lbl 3100302 `"Abre Campo"', add
label define V0002_lbl 2600054 `"Abreu e Lima"', add
label define V0002_lbl 1700251 `"Abreulândia"', add
label define V0002_lbl 3100401 `"Acaiaca"', add
label define V0002_lbl 2100055 `"Açailândia"', add
label define V0002_lbl 2900306 `"Acajutiba"', add
label define V0002_lbl 1500206 `"Acará"', add
label define V0002_lbl 2300150 `"Acarape"', add
label define V0002_lbl 2300200 `"Acaraú"', add
label define V0002_lbl 2400109 `"Acari"', add
label define V0002_lbl 2200053 `"Acauã"', add
label define V0002_lbl 4300034 `"Aceguá"', add
label define V0002_lbl 2300309 `"Acopiara"', add
label define V0002_lbl 5100102 `"Acorizal"', add
label define V0002_lbl 1200013 `"Acrelândia"', add
label define V0002_lbl 5200134 `"Acreúna"', add
label define V0002_lbl 2400208 `"Açu"', add
label define V0002_lbl 3100500 `"Açucena"', add
label define V0002_lbl 3500105 `"Adamantina"', add
label define V0002_lbl 5200159 `"Adelândia"', add
label define V0002_lbl 3500204 `"Adolfo"', add
label define V0002_lbl 4100202 `"Adrianópolis"', add
label define V0002_lbl 2900355 `"Adustina"', add
label define V0002_lbl 2600104 `"Afogados da Ingazeira"', add
label define V0002_lbl 2400307 `"Afonso Bezerra"', add
label define V0002_lbl 3200102 `"Afonso Cláudio"', add
label define V0002_lbl 2100105 `"Afonso Cunha"', add
label define V0002_lbl 2600203 `"Afrânio"', add
label define V0002_lbl 1500305 `"Afuá"', add
label define V0002_lbl 2600302 `"Agrestina"', add
label define V0002_lbl 2200103 `"Agricolândia"', add
label define V0002_lbl 4200200 `"Agrolândia"', add
label define V0002_lbl 4200309 `"Agronômica"', add
label define V0002_lbl 1500347 `"Água Azul do Norte"', add
label define V0002_lbl 3100609 `"Água Boa"', add
label define V0002_lbl 5100201 `"Água Boa"', add
label define V0002_lbl 2700102 `"Água Branca"', add
label define V0002_lbl 2200202 `"Água Branca"', add
label define V0002_lbl 2500106 `"Água Branca"', add
label define V0002_lbl 5000203 `"Água Clara"', add
label define V0002_lbl 3100708 `"Água Comprida"', add
label define V0002_lbl 4200408 `"Água Doce"', add
label define V0002_lbl 2100154 `"Água Doce do Maranhão"', add
label define V0002_lbl 3200169 `"Água Doce do Norte"', add
label define V0002_lbl 2900405 `"Água Fria"', add
label define V0002_lbl 5200175 `"Água Fria de Goiás"', add
label define V0002_lbl 5200209 `"Água Limpa"', add
label define V0002_lbl 2400406 `"Água Nova"', add
label define V0002_lbl 2600401 `"Água Preta"', add
label define V0002_lbl 4300059 `"Água Santa"', add
label define V0002_lbl 3500303 `"Aguaí"', add
label define V0002_lbl 3100807 `"Aguanil"', add
label define V0002_lbl 2600500 `"Águas Belas"', add
label define V0002_lbl 3500402 `"Águas da Prata"', add
label define V0002_lbl 4200507 `"Águas de Chapecó"', add
label define V0002_lbl 3500501 `"Águas de Lindóia"', add
label define V0002_lbl 3500550 `"Águas de Santa Bárbara"', add
label define V0002_lbl 3500600 `"Águas de São Pedro"', add
label define V0002_lbl 3100906 `"Águas Formosas"', add
label define V0002_lbl 4200556 `"Águas Frias"', add
label define V0002_lbl 5200258 `"Águas Lindas de Goiás"', add
label define V0002_lbl 4200606 `"Águas Mornas"', add
label define V0002_lbl 3101003 `"Águas Vermelhas"', add
label define V0002_lbl 4300109 `"Agudo"', add
label define V0002_lbl 3500709 `"Agudos"', add
label define V0002_lbl 4100301 `"Agudos do Sul"', add
label define V0002_lbl 3200136 `"Águia Branca"', add
label define V0002_lbl 2500205 `"Aguiar"', add
label define V0002_lbl 1700301 `"Aguiarnópolis"', add
label define V0002_lbl 3101102 `"Aimorés"', add
label define V0002_lbl 2900603 `"Aiquara"', add
label define V0002_lbl 2300408 `"Aiuaba"', add
label define V0002_lbl 3101201 `"Aiuruoca"', add
label define V0002_lbl 4300208 `"Ajuricaba"', add
label define V0002_lbl 3101300 `"Alagoa"', add
label define V0002_lbl 2500304 `"Alagoa Grande"', add
label define V0002_lbl 2500403 `"Alagoa Nova"', add
label define V0002_lbl 2500502 `"Alagoinha"', add
label define V0002_lbl 2600609 `"Alagoinha"', add
label define V0002_lbl 2200251 `"Alagoinha do Piauí"', add
label define V0002_lbl 2900702 `"Alagoinhas"', add
label define V0002_lbl 3500758 `"Alambari"', add
label define V0002_lbl 3101409 `"Albertina"', add
label define V0002_lbl 2100204 `"Alcântara"', add
label define V0002_lbl 2300507 `"Alcântaras"', add
label define V0002_lbl 2500536 `"Alcantil"', add
label define V0002_lbl 5000252 `"Alcinópolis"', add
label define V0002_lbl 2900801 `"Alcobaça"', add
label define V0002_lbl 2100303 `"Aldeias Altas"', add
label define V0002_lbl 4300307 `"Alecrim"', add
label define V0002_lbl 3200201 `"Alegre"', add
label define V0002_lbl 4300406 `"Alegrete"', add
label define V0002_lbl 2200277 `"Alegrete do Piauí"', add
label define V0002_lbl 4300455 `"Alegria"', add
label define V0002_lbl 3101508 `"Além Paraíba"', add
label define V0002_lbl 1500404 `"Alenquer"', add
label define V0002_lbl 2400505 `"Alexandria"', add
label define V0002_lbl 5200308 `"Alexânia"', add
label define V0002_lbl 3101607 `"Alfenas"', add
label define V0002_lbl 3200300 `"Alfredo Chaves"', add
label define V0002_lbl 3500808 `"Alfredo Marcondes"', add
label define V0002_lbl 3101631 `"Alfredo Vasconcelos"', add
label define V0002_lbl 4200705 `"Alfredo Wagner"', add
label define V0002_lbl 2500577 `"Algodão de Jandaíra"', add
label define V0002_lbl 2500601 `"Alhandra"', add
label define V0002_lbl 2600708 `"Aliança"', add
label define V0002_lbl 1700350 `"Aliança do Tocantins"', add
label define V0002_lbl 2900900 `"Almadina"', add
label define V0002_lbl 1700400 `"Almas"', add
label define V0002_lbl 1500503 `"Almeirim"', add
label define V0002_lbl 3101706 `"Almenara"', add
label define V0002_lbl 2400604 `"Almino Afonso"', add
label define V0002_lbl 4100400 `"Almirante Tamandaré"', add
label define V0002_lbl 4300471 `"Almirante Tamandaré do Sul"', add
label define V0002_lbl 5200506 `"Aloândia"', add
label define V0002_lbl 3101805 `"Alpercata"', add
label define V0002_lbl 4300505 `"Alpestre"', add
label define V0002_lbl 3101904 `"Alpinópolis"', add
label define V0002_lbl 5100250 `"Alta Floresta"', add
label define V0002_lbl 1100015 `"Alta Floresta D'Oeste"', add
label define V0002_lbl 3500907 `"Altair"', add
label define V0002_lbl 1500602 `"Altamira"', add
label define V0002_lbl 2100402 `"Altamira do Maranhão"', add
label define V0002_lbl 4100459 `"Altamira do Paraná"', add
label define V0002_lbl 2300606 `"Altaneira"', add
label define V0002_lbl 3102001 `"Alterosa"', add
label define V0002_lbl 2600807 `"Altinho"', add
label define V0002_lbl 3501004 `"Altinópolis"', add
label define V0002_lbl 3501103 `"Alto Alegre"', add
label define V0002_lbl 4300554 `"Alto Alegre"', add
label define V0002_lbl 1400050 `"Alto Alegre"', add
label define V0002_lbl 2100436 `"Alto Alegre do Maranhão"', add
label define V0002_lbl 2100477 `"Alto Alegre do Pindaré"', add
label define V0002_lbl 1100379 `"Alto Alegre dos Parecis"', add
label define V0002_lbl 5100300 `"Alto Araguaia"', add
label define V0002_lbl 4200754 `"Alto Bela Vista"', add
label define V0002_lbl 5100359 `"Alto Boa Vista"', add
label define V0002_lbl 3102050 `"Alto Caparaó"', add
label define V0002_lbl 2400703 `"Alto do Rodrigues"', add
label define V0002_lbl 4300570 `"Alto Feliz"', add
label define V0002_lbl 5100409 `"Alto Garças"', add
label define V0002_lbl 5200555 `"Alto Horizonte"', add
label define V0002_lbl 3153509 `"Alto Jequitibá"', add
label define V0002_lbl 2200301 `"Alto Longá"', add
label define V0002_lbl 5100508 `"Alto Paraguai"', add
label define V0002_lbl 4128625 `"Alto Paraíso"', add
label define V0002_lbl 1100403 `"Alto Paraíso"', add
label define V0002_lbl 5200605 `"Alto Paraíso de Goiás"', add
label define V0002_lbl 4100608 `"Alto Paraná"', add
label define V0002_lbl 2100501 `"Alto Parnaíba"', add
label define V0002_lbl 4100707 `"Alto Piquiri"', add
label define V0002_lbl 3102100 `"Alto Rio Doce"', add
label define V0002_lbl 3200359 `"Alto Rio Novo"', add
label define V0002_lbl 2300705 `"Alto Santo"', add
label define V0002_lbl 5100607 `"Alto Taquari"', add
label define V0002_lbl 4100509 `"Altônia"', add
label define V0002_lbl 2200400 `"Altos"', add
label define V0002_lbl 3501152 `"Alumínio"', add
label define V0002_lbl 1300029 `"Alvarães"', add
label define V0002_lbl 3102209 `"Alvarenga"', add
label define V0002_lbl 3501202 `"Álvares Florence"', add
label define V0002_lbl 3501301 `"Álvares Machado"', add
label define V0002_lbl 3501400 `"Álvaro de Carvalho"', add
label define V0002_lbl 3501509 `"Alvinlândia"', add
label define V0002_lbl 3102308 `"Alvinópolis"', add
label define V0002_lbl 1700707 `"Alvorada"', add
label define V0002_lbl 4300604 `"Alvorada"', add
label define V0002_lbl 3102407 `"Alvorada de Minas"', add
label define V0002_lbl 2200459 `"Alvorada do Gurguéia"', add
label define V0002_lbl 5200803 `"Alvorada do Norte"', add
label define V0002_lbl 4100806 `"Alvorada do Sul"', add
label define V0002_lbl 1100346 `"Alvorada D'Oeste"', add
label define V0002_lbl 1400027 `"Amajari"', add
label define V0002_lbl 5000609 `"Amambai"', add
label define V0002_lbl 1600105 `"Amapá"', add
label define V0002_lbl 2100550 `"Amapá do Maranhão"', add
label define V0002_lbl 4100905 `"Amaporã"', add
label define V0002_lbl 2600906 `"Amaraji"', add
label define V0002_lbl 4300638 `"Amaral Ferrador"', add
label define V0002_lbl 5200829 `"Amaralina"', add
label define V0002_lbl 2200509 `"Amarante"', add
label define V0002_lbl 2100600 `"Amarante do Maranhão"', add
label define V0002_lbl 2901007 `"Amargosa"', add
label define V0002_lbl 1300060 `"Amaturá"', add
label define V0002_lbl 2901106 `"Amélia Rodrigues"', add
label define V0002_lbl 2901155 `"América Dourada"', add
label define V0002_lbl 3501608 `"Americana"', add
label define V0002_lbl 5200852 `"Americano do Brasil"', add
label define V0002_lbl 3501707 `"Américo Brasiliense"', add
label define V0002_lbl 3501806 `"Américo de Campos"', add
label define V0002_lbl 4300646 `"Ametista do Sul"', add
label define V0002_lbl 2300754 `"Amontada"', add
label define V0002_lbl 5200902 `"Amorinópolis"', add
label define V0002_lbl 3501905 `"Amparo"', add
label define V0002_lbl 2500734 `"Amparo"', add
label define V0002_lbl 2800100 `"Amparo do São Francisco"', add
label define V0002_lbl 3102506 `"Amparo do Serra"', add
label define V0002_lbl 4101002 `"Ampére"', add
label define V0002_lbl 2700201 `"Anadia"', add
label define V0002_lbl 2901205 `"Anagé"', add
label define V0002_lbl 4101051 `"Anahy"', add
label define V0002_lbl 1500701 `"Anajás"', add
label define V0002_lbl 2100709 `"Anajatuba"', add
label define V0002_lbl 3502002 `"Analândia"', add
label define V0002_lbl 1300086 `"Anamã"', add
label define V0002_lbl 1701002 `"Ananás"', add
label define V0002_lbl 1500800 `"Ananindeua"', add
label define V0002_lbl 5201108 `"Anápolis"', add
label define V0002_lbl 1500859 `"Anapu"', add
label define V0002_lbl 2100808 `"Anapurus"', add
label define V0002_lbl 5000708 `"Anastácio"', add
label define V0002_lbl 5000807 `"Anaurilândia"', add
label define V0002_lbl 3200409 `"Anchieta"', add
label define V0002_lbl 4200804 `"Anchieta"', add
label define V0002_lbl 2901304 `"Andaraí"', add
label define V0002_lbl 4101101 `"Andirá"', add
label define V0002_lbl 2901353 `"Andorinha"', add
label define V0002_lbl 3102605 `"Andradas"', add
label define V0002_lbl 3502101 `"Andradina"', add
label define V0002_lbl 4300661 `"André da Rocha"', add
label define V0002_lbl 3102803 `"Andrelândia"', add
label define V0002_lbl 3502200 `"Angatuba"', add
label define V0002_lbl 3102852 `"Angelândia"', add
label define V0002_lbl 5000856 `"Angélica"', add
label define V0002_lbl 2601003 `"Angelim"', add
label define V0002_lbl 4200903 `"Angelina"', add
label define V0002_lbl 2901403 `"Angical"', add
label define V0002_lbl 2200608 `"Angical do Piauí"', add
label define V0002_lbl 1701051 `"Angico"', add
label define V0002_lbl 2400802 `"Angicos"', add
label define V0002_lbl 3300100 `"Angra dos Reis"', add
label define V0002_lbl 2901502 `"Anguera"', add
label define V0002_lbl 4101150 `"Ângulo"', add
label define V0002_lbl 5201207 `"Anhanguera"', add
label define V0002_lbl 3502309 `"Anhembi"', add
label define V0002_lbl 3502408 `"Anhumas"', add
label define V0002_lbl 5201306 `"Anicuns"', add
label define V0002_lbl 2200707 `"Anísio de Abreu"', add
label define V0002_lbl 4201000 `"Anita Garibaldi"', add
label define V0002_lbl 4201109 `"Anitápolis"', add
label define V0002_lbl 1300102 `"Anori"', add
label define V0002_lbl 4300703 `"Anta Gorda"', add
label define V0002_lbl 2901601 `"Antas"', add
label define V0002_lbl 4101200 `"Antonina"', add
label define V0002_lbl 2300804 `"Antonina do Norte"', add
label define V0002_lbl 2200806 `"Antônio Almeida"', add
label define V0002_lbl 2901700 `"Antônio Cardoso"', add
label define V0002_lbl 3102902 `"Antônio Carlos"', add
label define V0002_lbl 4201208 `"Antônio Carlos"', add
label define V0002_lbl 3103009 `"Antônio Dias"', add
label define V0002_lbl 2901809 `"Antônio Gonçalves"', add
label define V0002_lbl 5000906 `"Antônio João"', add
label define V0002_lbl 2400901 `"Antônio Martins"', add
label define V0002_lbl 4101309 `"Antônio Olinto"', add
label define V0002_lbl 4300802 `"Antônio Prado"', add
label define V0002_lbl 3103108 `"Antônio Prado de Minas"', add
label define V0002_lbl 2500775 `"Aparecida"', add
label define V0002_lbl 3502507 `"Aparecida"', add
label define V0002_lbl 5201405 `"Aparecida de Goiânia"', add
label define V0002_lbl 5201454 `"Aparecida do Rio Doce"', add
label define V0002_lbl 1701101 `"Aparecida do Rio Negro"', add
label define V0002_lbl 5001003 `"Aparecida do Taboado"', add
label define V0002_lbl 3502606 `"Aparecida d'Oeste"', add
label define V0002_lbl 3300159 `"Aperibé"', add
label define V0002_lbl 3200508 `"Apiacá"', add
label define V0002_lbl 5100805 `"Apiacás"', add
label define V0002_lbl 3502705 `"Apiaí"', add
label define V0002_lbl 2100832 `"Apicum-Açu"', add
label define V0002_lbl 4201257 `"Apiúna"', add
label define V0002_lbl 2401008 `"Apodi"', add
label define V0002_lbl 2901908 `"Aporá"', add
label define V0002_lbl 5201504 `"Aporé"', add
label define V0002_lbl 2901957 `"Apuarema"', add
label define V0002_lbl 4101408 `"Apucarana"', add
label define V0002_lbl 1300144 `"Apuí"', add
label define V0002_lbl 2300903 `"Apuiarés"', add
label define V0002_lbl 2800209 `"Aquidabã"', add
label define V0002_lbl 5001102 `"Aquidauana"', add
label define V0002_lbl 2301000 `"Aquiraz"', add
label define V0002_lbl 4201273 `"Arabutã"', add
label define V0002_lbl 2500809 `"Araçagi"', add
label define V0002_lbl 3103207 `"Araçaí"', add
label define V0002_lbl 2800308 `"Aracaju"', add
label define V0002_lbl 3502754 `"Araçariguama"', add
label define V0002_lbl 2902054 `"Araçás"', add
label define V0002_lbl 2301109 `"Aracati"', add
label define V0002_lbl 2902005 `"Aracatu"', add
label define V0002_lbl 3502804 `"Araçatuba"', add
label define V0002_lbl 2902104 `"Araci"', add
label define V0002_lbl 3103306 `"Aracitaba"', add
label define V0002_lbl 2301208 `"Aracoiaba"', add
label define V0002_lbl 2601052 `"Araçoiaba"', add
label define V0002_lbl 3502903 `"Araçoiaba da Serra"', add
label define V0002_lbl 3200607 `"Aracruz"', add
label define V0002_lbl 5201603 `"Araçu"', add
label define V0002_lbl 3103405 `"Araçuaí"', add
label define V0002_lbl 5201702 `"Aragarças"', add
label define V0002_lbl 5201801 `"Aragoiânia"', add
label define V0002_lbl 1701309 `"Aragominas"', add
label define V0002_lbl 1701903 `"Araguacema"', add
label define V0002_lbl 1702000 `"Araguaçu"', add
label define V0002_lbl 5101001 `"Araguaiana"', add
label define V0002_lbl 1702109 `"Araguaína"', add
label define V0002_lbl 5101209 `"Araguainha"', add
label define V0002_lbl 1702158 `"Araguanã"', add
label define V0002_lbl 2100873 `"Araguanã"', add
label define V0002_lbl 5202155 `"Araguapaz"', add
label define V0002_lbl 3103504 `"Araguari"', add
label define V0002_lbl 1702208 `"Araguatins"', add
label define V0002_lbl 2100907 `"Araioses"', add
label define V0002_lbl 5001243 `"Aral Moreira"', add
label define V0002_lbl 2902203 `"Aramari"', add
label define V0002_lbl 4300851 `"Arambaré"', add
label define V0002_lbl 2100956 `"Arame"', add
label define V0002_lbl 3503000 `"Aramina"', add
label define V0002_lbl 3503109 `"Arandu"', add
label define V0002_lbl 3103603 `"Arantina"', add
label define V0002_lbl 3503158 `"Arapeí"', add
label define V0002_lbl 2700300 `"Arapiraca"', add
label define V0002_lbl 1702307 `"Arapoema"', add
label define V0002_lbl 3103702 `"Araponga"', add
label define V0002_lbl 4101507 `"Arapongas"', add
label define V0002_lbl 3103751 `"Araporã"', add
label define V0002_lbl 4101606 `"Arapoti"', add
label define V0002_lbl 3103801 `"Arapuá"', add
label define V0002_lbl 4101655 `"Arapuã"', add
label define V0002_lbl 5101258 `"Araputanga"', add
label define V0002_lbl 4201307 `"Araquari"', add
label define V0002_lbl 2500908 `"Arara"', add
label define V0002_lbl 4201406 `"Araranguá"', add
label define V0002_lbl 3503208 `"Araraquara"', add
label define V0002_lbl 3503307 `"Araras"', add
label define V0002_lbl 2301257 `"Ararendá"', add
label define V0002_lbl 2101004 `"Arari"', add
label define V0002_lbl 4300877 `"Araricá"', add
label define V0002_lbl 2301307 `"Araripe"', add
label define V0002_lbl 2601102 `"Araripina"', add
label define V0002_lbl 3300209 `"Araruama"', add
label define V0002_lbl 4101705 `"Araruna"', add
label define V0002_lbl 2501005 `"Araruna"', add
label define V0002_lbl 2902252 `"Arataca"', add
label define V0002_lbl 4300901 `"Aratiba"', add
label define V0002_lbl 2301406 `"Aratuba"', add
label define V0002_lbl 2902302 `"Aratuípe"', add
label define V0002_lbl 2800407 `"Arauá"', add
label define V0002_lbl 4101804 `"Araucária"', add
label define V0002_lbl 3103900 `"Araújos"', add
label define V0002_lbl 3104007 `"Araxá"', add
label define V0002_lbl 3104106 `"Arceburgo"', add
label define V0002_lbl 3503356 `"Arco-Íris"', add
label define V0002_lbl 3104205 `"Arcos"', add
label define V0002_lbl 2601201 `"Arcoverde"', add
label define V0002_lbl 3104304 `"Areado"', add
label define V0002_lbl 3300225 `"Areal"', add
label define V0002_lbl 3503406 `"Arealva"', add
label define V0002_lbl 2501104 `"Areia"', add
label define V0002_lbl 2401107 `"Areia Branca"', add
label define V0002_lbl 2800506 `"Areia Branca"', add
label define V0002_lbl 2501153 `"Areia de Baraúnas"', add
label define V0002_lbl 2501203 `"Areial"', add
label define V0002_lbl 3503505 `"Areias"', add
label define V0002_lbl 3503604 `"Areiópolis"', add
label define V0002_lbl 5101308 `"Arenápolis"', add
label define V0002_lbl 5202353 `"Arenópolis"', add
label define V0002_lbl 2401206 `"Arês"', add
label define V0002_lbl 3104403 `"Argirita"', add
label define V0002_lbl 3104452 `"Aricanduva"', add
label define V0002_lbl 3104502 `"Arinos"', add
label define V0002_lbl 5101407 `"Aripuanã"', add
label define V0002_lbl 1100023 `"Ariquemes"', add
label define V0002_lbl 3503703 `"Ariranha"', add
label define V0002_lbl 4101853 `"Ariranha do Ivaí"', add
label define V0002_lbl 3300233 `"Armação dos Búzios"', add
label define V0002_lbl 4201505 `"Armazém"', add
label define V0002_lbl 2301505 `"Arneiroz"', add
label define V0002_lbl 2200905 `"Aroazes"', add
label define V0002_lbl 2501302 `"Aroeiras"', add
label define V0002_lbl 2200954 `"Aroeiras do Itaim"', add
label define V0002_lbl 2201002 `"Arraial"', add
label define V0002_lbl 3300258 `"Arraial do Cabo"', add
label define V0002_lbl 1702406 `"Arraias"', add
label define V0002_lbl 4301008 `"Arroio do Meio"', add
label define V0002_lbl 4301073 `"Arroio do Padre"', add
label define V0002_lbl 4301057 `"Arroio do Sal"', add
label define V0002_lbl 4301206 `"Arroio do Tigre"', add
label define V0002_lbl 4301107 `"Arroio dos Ratos"', add
label define V0002_lbl 4301305 `"Arroio Grande"', add
label define V0002_lbl 4201604 `"Arroio Trinta"', add
label define V0002_lbl 3503802 `"Artur Nogueira"', add
label define V0002_lbl 5202502 `"Aruanã"', add
label define V0002_lbl 3503901 `"Arujá"', add
label define V0002_lbl 4201653 `"Arvoredo"', add
label define V0002_lbl 4301404 `"Arvorezinha"', add
label define V0002_lbl 4201703 `"Ascurra"', add
label define V0002_lbl 3503950 `"Aspásia"', add
label define V0002_lbl 4101903 `"Assaí"', add
label define V0002_lbl 2301604 `"Assaré"', add
label define V0002_lbl 3504008 `"Assis"', add
label define V0002_lbl 1200054 `"Assis Brasil"', add
label define V0002_lbl 4102000 `"Assis Chateaubriand"', add
label define V0002_lbl 2501351 `"Assunção"', add
label define V0002_lbl 2201051 `"Assunção do Piauí"', add
label define V0002_lbl 3104601 `"Astolfo Dutra"', add
label define V0002_lbl 4102109 `"Astorga"', add
label define V0002_lbl 4102208 `"Atalaia"', add
label define V0002_lbl 2700409 `"Atalaia"', add
label define V0002_lbl 1300201 `"Atalaia do Norte"', add
label define V0002_lbl 4201802 `"Atalanta"', add
label define V0002_lbl 3104700 `"Ataléia"', add
label define V0002_lbl 3504107 `"Atibaia"', add
label define V0002_lbl 3200706 `"Atílio Vivácqua"', add
label define V0002_lbl 1702554 `"Augustinópolis"', add
label define V0002_lbl 1500909 `"Augusto Corrêa"', add
label define V0002_lbl 3104809 `"Augusto de Lima"', add
label define V0002_lbl 4301503 `"Augusto Pestana"', add
label define V0002_lbl 4301552 `"Áurea"', add
label define V0002_lbl 2902401 `"Aurelino Leal"', add
label define V0002_lbl 3504206 `"Auriflama"', add
label define V0002_lbl 5202601 `"Aurilândia"', add
label define V0002_lbl 4201901 `"Aurora"', add
label define V0002_lbl 2301703 `"Aurora"', add
label define V0002_lbl 1500958 `"Aurora do Pará"', add
label define V0002_lbl 1702703 `"Aurora do Tocantins"', add
label define V0002_lbl 1300300 `"Autazes"', add
label define V0002_lbl 3504305 `"Avaí"', add
label define V0002_lbl 3504404 `"Avanhandava"', add
label define V0002_lbl 3504503 `"Avaré"', add
label define V0002_lbl 1501006 `"Aveiro"', add
label define V0002_lbl 2201101 `"Avelino Lopes"', add
label define V0002_lbl 5202809 `"Avelinópolis"', add
label define V0002_lbl 2101103 `"Axixá"', add
label define V0002_lbl 1702901 `"Axixá do Tocantins"', add
label define V0002_lbl 1703008 `"Babaçulândia"', add
label define V0002_lbl 2101202 `"Bacabal"', add
label define V0002_lbl 2101251 `"Bacabeira"', add
label define V0002_lbl 2101301 `"Bacuri"', add
label define V0002_lbl 2101350 `"Bacurituba"', add
label define V0002_lbl 3504602 `"Bady Bassitt"', add
label define V0002_lbl 3104908 `"Baependi"', add
label define V0002_lbl 4301602 `"Bagé"', add
label define V0002_lbl 1501105 `"Bagre"', add
label define V0002_lbl 2501401 `"Baía da Traição"', add
label define V0002_lbl 2401404 `"Baía Formosa"', add
label define V0002_lbl 2902500 `"Baianópolis"', add
label define V0002_lbl 1501204 `"Baião"', add
label define V0002_lbl 2902609 `"Baixa Grande"', add
label define V0002_lbl 2201150 `"Baixa Grande do Ribeiro"', add
label define V0002_lbl 2301802 `"Baixio"', add
label define V0002_lbl 3200805 `"Baixo Guandu"', add
label define V0002_lbl 3504701 `"Balbinos"', add
label define V0002_lbl 3105004 `"Baldim"', add
label define V0002_lbl 5203104 `"Baliza"', add
label define V0002_lbl 4201950 `"Balneário Arroio do Silva"', add
label define V0002_lbl 4202057 `"Balneário Barra do Sul"', add
label define V0002_lbl 4202008 `"Balneário Camboriú"', add
label define V0002_lbl 4202073 `"Balneário Gaivota"', add
label define V0002_lbl 4212809 `"Balneário Piçarras"', add
label define V0002_lbl 4301636 `"Balneário Pinhal"', add
label define V0002_lbl 4220000 `"Balneário Rincão"', add
label define V0002_lbl 4102307 `"Balsa Nova"', add
label define V0002_lbl 3504800 `"Bálsamo"', add
label define V0002_lbl 2101400 `"Balsas"', add
label define V0002_lbl 3105103 `"Bambuí"', add
label define V0002_lbl 2301851 `"Banabuiú"', add
label define V0002_lbl 3504909 `"Bananal"', add
label define V0002_lbl 2501500 `"Bananeiras"', add
label define V0002_lbl 3105202 `"Bandeira"', add
label define V0002_lbl 3105301 `"Bandeira do Sul"', add
label define V0002_lbl 4202081 `"Bandeirante"', add
label define V0002_lbl 4102406 `"Bandeirantes"', add
label define V0002_lbl 5001508 `"Bandeirantes"', add
label define V0002_lbl 1703057 `"Bandeirantes do Tocantins"', add
label define V0002_lbl 1501253 `"Bannach"', add
label define V0002_lbl 2902658 `"Banzaê"', add
label define V0002_lbl 4301651 `"Barão"', add
label define V0002_lbl 3505005 `"Barão de Antonina"', add
label define V0002_lbl 3105400 `"Barão de Cocais"', add
label define V0002_lbl 4301701 `"Barão de Cotegipe"', add
label define V0002_lbl 2101509 `"Barão de Grajaú"', add
label define V0002_lbl 5101605 `"Barão de Melgaço"', add
label define V0002_lbl 3105509 `"Barão de Monte Alto"', add
label define V0002_lbl 4301750 `"Barão do Triunfo"', add
label define V0002_lbl 2501534 `"Baraúna"', add
label define V0002_lbl 2401453 `"Baraúna"', add
label define V0002_lbl 3105608 `"Barbacena"', add
label define V0002_lbl 2301901 `"Barbalha"', add
label define V0002_lbl 3505104 `"Barbosa"', add
label define V0002_lbl 4102505 `"Barbosa Ferraz"', add
label define V0002_lbl 1501303 `"Barcarena"', add
label define V0002_lbl 2401503 `"Barcelona"', add
label define V0002_lbl 1300409 `"Barcelos"', add
label define V0002_lbl 3505203 `"Bariri"', add
label define V0002_lbl 2902708 `"Barra"', add
label define V0002_lbl 3505302 `"Barra Bonita"', add
label define V0002_lbl 4202099 `"Barra Bonita"', add
label define V0002_lbl 2902807 `"Barra da Estiva"', add
label define V0002_lbl 2201176 `"Barra D'Alcântara"', add
label define V0002_lbl 2601300 `"Barra de Guabiraba"', add
label define V0002_lbl 2501609 `"Barra de Santa Rosa"', add
label define V0002_lbl 2501575 `"Barra de Santana"', add
label define V0002_lbl 2700508 `"Barra de Santo Antônio"', add
label define V0002_lbl 3200904 `"Barra de São Francisco"', add
label define V0002_lbl 2700607 `"Barra de São Miguel"', add
label define V0002_lbl 2501708 `"Barra de São Miguel"', add
label define V0002_lbl 5101704 `"Barra do Bugres"', add
label define V0002_lbl 3505351 `"Barra do Chapéu"', add
label define V0002_lbl 2902906 `"Barra do Choça"', add
label define V0002_lbl 2101608 `"Barra do Corda"', add
label define V0002_lbl 5101803 `"Barra do Garças"', add
label define V0002_lbl 4301859 `"Barra do Guarita"', add
label define V0002_lbl 4102703 `"Barra do Jacaré"', add
label define V0002_lbl 2903003 `"Barra do Mendes"', add
label define V0002_lbl 1703073 `"Barra do Ouro"', add
label define V0002_lbl 3300308 `"Barra do Piraí"', add
label define V0002_lbl 4301875 `"Barra do Quaraí"', add
label define V0002_lbl 4301909 `"Barra do Ribeiro"', add
label define V0002_lbl 4301925 `"Barra do Rio Azul"', add
label define V0002_lbl 2903102 `"Barra do Rocha"', add
label define V0002_lbl 3505401 `"Barra do Turvo"', add
label define V0002_lbl 2800605 `"Barra dos Coqueiros"', add
label define V0002_lbl 4301958 `"Barra Funda"', add
label define V0002_lbl 3105707 `"Barra Longa"', add
label define V0002_lbl 3300407 `"Barra Mansa"', add
label define V0002_lbl 4202107 `"Barra Velha"', add
label define V0002_lbl 4102604 `"Barracão"', add
label define V0002_lbl 4301800 `"Barracão"', add
label define V0002_lbl 2201200 `"Barras"', add
label define V0002_lbl 2301950 `"Barreira"', add
label define V0002_lbl 2903201 `"Barreiras"', add
label define V0002_lbl 2201309 `"Barreiras do Piauí"', add
label define V0002_lbl 1300508 `"Barreirinha"', add
label define V0002_lbl 2101707 `"Barreirinhas"', add
label define V0002_lbl 2601409 `"Barreiros"', add
label define V0002_lbl 3505500 `"Barretos"', add
label define V0002_lbl 3505609 `"Barrinha"', add
label define V0002_lbl 2302008 `"Barro"', add
label define V0002_lbl 2903235 `"Barro Alto"', add
label define V0002_lbl 5203203 `"Barro Alto"', add
label define V0002_lbl 2201408 `"Barro Duro"', add
label define V0002_lbl 2903300 `"Barro Preto"', add
label define V0002_lbl 2903276 `"Barrocas"', add
label define V0002_lbl 1703107 `"Barrolândia"', add
label define V0002_lbl 2302057 `"Barroquinha"', add
label define V0002_lbl 4302006 `"Barros Cassal"', add
label define V0002_lbl 3105905 `"Barroso"', add
label define V0002_lbl 3505708 `"Barueri"', add
label define V0002_lbl 3505807 `"Bastos"', add
label define V0002_lbl 5001904 `"Bataguassu"', add
label define V0002_lbl 2700706 `"Batalha"', add
label define V0002_lbl 2201507 `"Batalha"', add
label define V0002_lbl 3505906 `"Batatais"', add
label define V0002_lbl 5002001 `"Batayporã"', add
label define V0002_lbl 2302107 `"Baturité"', add
label define V0002_lbl 3506003 `"Bauru"', add
label define V0002_lbl 2501807 `"Bayeux"', add
label define V0002_lbl 3506102 `"Bebedouro"', add
label define V0002_lbl 2302206 `"Beberibe"', add
label define V0002_lbl 2302305 `"Bela Cruz"', add
label define V0002_lbl 5002100 `"Bela Vista"', add
label define V0002_lbl 4102752 `"Bela Vista da Caroba"', add
label define V0002_lbl 5203302 `"Bela Vista de Goiás"', add
label define V0002_lbl 3106002 `"Bela Vista de Minas"', add
label define V0002_lbl 2101772 `"Bela Vista do Maranhão"', add
label define V0002_lbl 4102802 `"Bela Vista do Paraíso"', add
label define V0002_lbl 2201556 `"Bela Vista do Piauí"', add
label define V0002_lbl 4202131 `"Bela Vista do Toldo"', add
label define V0002_lbl 2101731 `"Belágua"', add
label define V0002_lbl 1501402 `"Belém"', add
label define V0002_lbl 2501906 `"Belém"', add
label define V0002_lbl 2700805 `"Belém"', add
label define V0002_lbl 2601508 `"Belém de Maria"', add
label define V0002_lbl 2502003 `"Belém do Brejo do Cruz"', add
label define V0002_lbl 2201572 `"Belém do Piauí"', add
label define V0002_lbl 2601607 `"Belém do São Francisco"', add
label define V0002_lbl 3300456 `"Belford Roxo"', add
label define V0002_lbl 3106101 `"Belmiro Braga"', add
label define V0002_lbl 2903409 `"Belmonte"', add
label define V0002_lbl 4202156 `"Belmonte"', add
label define V0002_lbl 2903508 `"Belo Campo"', add
label define V0002_lbl 3106200 `"Belo Horizonte"', add
label define V0002_lbl 2601706 `"Belo Jardim"', add
label define V0002_lbl 2700904 `"Belo Monte"', add
label define V0002_lbl 3106309 `"Belo Oriente"', add
label define V0002_lbl 3106408 `"Belo Vale"', add
label define V0002_lbl 1501451 `"Belterra"', add
label define V0002_lbl 2201606 `"Beneditinos"', add
label define V0002_lbl 2101806 `"Benedito Leite"', add
label define V0002_lbl 4202206 `"Benedito Novo"', add
label define V0002_lbl 1501501 `"Benevides"', add
label define V0002_lbl 1300607 `"Benjamin Constant"', add
label define V0002_lbl 4302055 `"Benjamin Constant do Sul"', add
label define V0002_lbl 3506201 `"Bento de Abreu"', add
label define V0002_lbl 2401602 `"Bento Fernandes"', add
label define V0002_lbl 4302105 `"Bento Gonçalves"', add
label define V0002_lbl 2101905 `"Bequimão"', add
label define V0002_lbl 3106507 `"Berilo"', add
label define V0002_lbl 3106655 `"Berizal"', add
label define V0002_lbl 2502052 `"Bernardino Batista"', add
label define V0002_lbl 3506300 `"Bernardino de Campos"', add
label define V0002_lbl 2101939 `"Bernardo do Mearim"', add
label define V0002_lbl 1703206 `"Bernardo Sayão"', add
label define V0002_lbl 3506359 `"Bertioga"', add
label define V0002_lbl 2201705 `"Bertolínia"', add
label define V0002_lbl 3106606 `"Bertópolis"', add
label define V0002_lbl 1300631 `"Beruri"', add
label define V0002_lbl 2601805 `"Betânia"', add
label define V0002_lbl 2201739 `"Betânia do Piauí"', add
label define V0002_lbl 3106705 `"Betim"', add
label define V0002_lbl 2601904 `"Bezerros"', add
label define V0002_lbl 3106804 `"Bias Fortes"', add
label define V0002_lbl 3106903 `"Bicas"', add
label define V0002_lbl 4202305 `"Biguaçu"', add
label define V0002_lbl 3506409 `"Bilac"', add
label define V0002_lbl 3107000 `"Biquinhas"', add
label define V0002_lbl 3506508 `"Birigui"', add
label define V0002_lbl 3506607 `"Biritiba Mirim"', add
label define V0002_lbl 2903607 `"Biritinga"', add
label define V0002_lbl 4102901 `"Bituruna"', add
label define V0002_lbl 4202404 `"Blumenau"', add
label define V0002_lbl 4103008 `"Boa Esperança"', add
label define V0002_lbl 3201001 `"Boa Esperança"', add
label define V0002_lbl 3107109 `"Boa Esperança"', add
label define V0002_lbl 4103024 `"Boa Esperança do Iguaçu"', add
label define V0002_lbl 3506706 `"Boa Esperança do Sul"', add
label define V0002_lbl 2201770 `"Boa Hora"', add
label define V0002_lbl 2903706 `"Boa Nova"', add
label define V0002_lbl 2502102 `"Boa Ventura"', add
label define V0002_lbl 4103040 `"Boa Ventura de São Roque"', add
label define V0002_lbl 2302404 `"Boa Viagem"', add
label define V0002_lbl 1400100 `"Boa Vista"', add
label define V0002_lbl 2502151 `"Boa Vista"', add
label define V0002_lbl 4103057 `"Boa Vista da Aparecida"', add
label define V0002_lbl 4302154 `"Boa Vista das Missões"', add
label define V0002_lbl 4302204 `"Boa Vista do Buricá"', add
label define V0002_lbl 4302220 `"Boa Vista do Cadeado"', add
label define V0002_lbl 2101970 `"Boa Vista do Gurupi"', add
label define V0002_lbl 4302238 `"Boa Vista do Incra"', add
label define V0002_lbl 1300680 `"Boa Vista do Ramos"', add
label define V0002_lbl 4302253 `"Boa Vista do Sul"', add
label define V0002_lbl 2903805 `"Boa Vista do Tupim"', add
label define V0002_lbl 2701001 `"Boca da Mata"', add
label define V0002_lbl 1300706 `"Boca do Acre"', add
label define V0002_lbl 2201804 `"Bocaina"', add
label define V0002_lbl 3506805 `"Bocaina"', add
label define V0002_lbl 3107208 `"Bocaina de Minas"', add
label define V0002_lbl 4202438 `"Bocaina do Sul"', add
label define V0002_lbl 3107307 `"Bocaiúva"', add
label define V0002_lbl 4103107 `"Bocaiúva do Sul"', add
label define V0002_lbl 2401651 `"Bodó"', add
label define V0002_lbl 2602001 `"Bodocó"', add
label define V0002_lbl 5002159 `"Bodoquena"', add
label define V0002_lbl 3506904 `"Bofete"', add
label define V0002_lbl 3507001 `"Boituva"', add
label define V0002_lbl 2602100 `"Bom Conselho"', add
label define V0002_lbl 3107406 `"Bom Despacho"', add
label define V0002_lbl 2602209 `"Bom Jardim"', add
label define V0002_lbl 2102002 `"Bom Jardim"', add
label define V0002_lbl 3300506 `"Bom Jardim"', add
label define V0002_lbl 4202503 `"Bom Jardim da Serra"', add
label define V0002_lbl 5203401 `"Bom Jardim de Goiás"', add
label define V0002_lbl 3107505 `"Bom Jardim de Minas"', add
label define V0002_lbl 2502201 `"Bom Jesus"', add
label define V0002_lbl 2201903 `"Bom Jesus"', add
label define V0002_lbl 2401701 `"Bom Jesus"', add
label define V0002_lbl 4302303 `"Bom Jesus"', add
label define V0002_lbl 4202537 `"Bom Jesus"', add
label define V0002_lbl 2903904 `"Bom Jesus da Lapa"', add
label define V0002_lbl 3107604 `"Bom Jesus da Penha"', add
label define V0002_lbl 2903953 `"Bom Jesus da Serra"', add
label define V0002_lbl 2102036 `"Bom Jesus das Selvas"', add
label define V0002_lbl 5203500 `"Bom Jesus de Goiás"', add
label define V0002_lbl 3107703 `"Bom Jesus do Amparo"', add
label define V0002_lbl 5101852 `"Bom Jesus do Araguaia"', add
label define V0002_lbl 3107802 `"Bom Jesus do Galho"', add
label define V0002_lbl 3300605 `"Bom Jesus do Itabapoana"', add
label define V0002_lbl 3201100 `"Bom Jesus do Norte"', add
label define V0002_lbl 4202578 `"Bom Jesus do Oeste"', add
label define V0002_lbl 4103156 `"Bom Jesus do Sul"', add
label define V0002_lbl 1703305 `"Bom Jesus do Tocantins"', add
label define V0002_lbl 1501576 `"Bom Jesus do Tocantins"', add
label define V0002_lbl 3507100 `"Bom Jesus dos Perdões"', add
label define V0002_lbl 2102077 `"Bom Lugar"', add
label define V0002_lbl 4302352 `"Bom Princípio"', add
label define V0002_lbl 2201919 `"Bom Princípio do Piauí"', add
label define V0002_lbl 4302378 `"Bom Progresso"', add
label define V0002_lbl 3107901 `"Bom Repouso"', add
label define V0002_lbl 4202602 `"Bom Retiro"', add
label define V0002_lbl 4302402 `"Bom Retiro do Sul"', add
label define V0002_lbl 4103206 `"Bom Sucesso"', add
label define V0002_lbl 3108008 `"Bom Sucesso"', add
label define V0002_lbl 2502300 `"Bom Sucesso"', add
label define V0002_lbl 3507159 `"Bom Sucesso de Itararé"', add
label define V0002_lbl 4103222 `"Bom Sucesso do Sul"', add
label define V0002_lbl 4202453 `"Bombinhas"', add
label define V0002_lbl 3108107 `"Bonfim"', add
label define V0002_lbl 1400159 `"Bonfim"', add
label define V0002_lbl 2201929 `"Bonfim do Piauí"', add
label define V0002_lbl 5203559 `"Bonfinópolis"', add
label define V0002_lbl 3108206 `"Bonfinópolis de Minas"', add
label define V0002_lbl 2904001 `"Boninal"', add
label define V0002_lbl 2904050 `"Bonito"', add
label define V0002_lbl 2602308 `"Bonito"', add
label define V0002_lbl 1501600 `"Bonito"', add
label define V0002_lbl 5002209 `"Bonito"', add
label define V0002_lbl 3108255 `"Bonito de Minas"', add
label define V0002_lbl 2502409 `"Bonito de Santa Fé"', add
label define V0002_lbl 5203575 `"Bonópolis"', add
label define V0002_lbl 2502508 `"Boqueirão"', add
label define V0002_lbl 4302451 `"Boqueirão do Leão"', add
label define V0002_lbl 2201945 `"Boqueirão do Piauí"', add
label define V0002_lbl 2800670 `"Boquim"', add
label define V0002_lbl 2904100 `"Boquira"', add
label define V0002_lbl 3507209 `"Borá"', add
label define V0002_lbl 3507308 `"Boracéia"', add
label define V0002_lbl 1300805 `"Borba"', add
label define V0002_lbl 2502706 `"Borborema"', add
label define V0002_lbl 3507407 `"Borborema"', add
label define V0002_lbl 3108305 `"Borda da Mata"', add
label define V0002_lbl 3507456 `"Borebi"', add
label define V0002_lbl 4103305 `"Borrazópolis"', add
label define V0002_lbl 4302501 `"Bossoroca"', add
label define V0002_lbl 3108404 `"Botelhos"', add
label define V0002_lbl 3507506 `"Botucatu"', add
label define V0002_lbl 3108503 `"Botumirim"', add
label define V0002_lbl 2904209 `"Botuporã"', add
label define V0002_lbl 4202701 `"Botuverá"', add
label define V0002_lbl 4302584 `"Bozano"', add
label define V0002_lbl 4202800 `"Braço do Norte"', add
label define V0002_lbl 4202859 `"Braço do Trombudo"', add
label define V0002_lbl 4302600 `"Braga"', add
label define V0002_lbl 1501709 `"Bragança"', add
label define V0002_lbl 3507605 `"Bragança Paulista"', add
label define V0002_lbl 4103354 `"Braganey"', add
label define V0002_lbl 2701100 `"Branquinha"', add
label define V0002_lbl 3108701 `"Brás Pires"', add
label define V0002_lbl 1501725 `"Brasil Novo"', add
label define V0002_lbl 5002308 `"Brasilândia"', add
label define V0002_lbl 3108552 `"Brasilândia de Minas"', add
label define V0002_lbl 4103370 `"Brasilândia do Sul"', add
label define V0002_lbl 1703602 `"Brasilândia do Tocantins"', add
label define V0002_lbl 1200104 `"Brasiléia"', add
label define V0002_lbl 2201960 `"Brasileira"', add
label define V0002_lbl 5300108 `"Brasília"', add
label define V0002_lbl 3108602 `"Brasília de Minas"', add
label define V0002_lbl 5101902 `"Brasnorte"', add
label define V0002_lbl 3507704 `"Braúna"', add
label define V0002_lbl 3108800 `"Braúnas"', add
label define V0002_lbl 5203609 `"Brazabrantes"', add
label define V0002_lbl 3108909 `"Brazópolis"', add
label define V0002_lbl 2602407 `"Brejão"', add
label define V0002_lbl 3201159 `"Brejetuba"', add
label define V0002_lbl 2602506 `"Brejinho"', add
label define V0002_lbl 2401800 `"Brejinho"', add
label define V0002_lbl 1703701 `"Brejinho de Nazaré"', add
label define V0002_lbl 2102101 `"Brejo"', add
label define V0002_lbl 3507753 `"Brejo Alegre"', add
label define V0002_lbl 2602605 `"Brejo da Madre de Deus"', add
label define V0002_lbl 2102150 `"Brejo de Areia"', add
label define V0002_lbl 2502805 `"Brejo do Cruz"', add
label define V0002_lbl 2201988 `"Brejo do Piauí"', add
label define V0002_lbl 2502904 `"Brejo dos Santos"', add
label define V0002_lbl 2800704 `"Brejo Grande"', add
label define V0002_lbl 1501758 `"Brejo Grande do Araguaia"', add
label define V0002_lbl 2302503 `"Brejo Santo"', add
label define V0002_lbl 2904308 `"Brejões"', add
label define V0002_lbl 2904407 `"Brejolândia"', add
label define V0002_lbl 1501782 `"Breu Branco"', add
label define V0002_lbl 1501808 `"Breves"', add
label define V0002_lbl 5203807 `"Britânia"', add
label define V0002_lbl 4302659 `"Brochier"', add
label define V0002_lbl 3507803 `"Brodowski"', add
label define V0002_lbl 3507902 `"Brotas"', add
label define V0002_lbl 2904506 `"Brotas de Macaúbas"', add
label define V0002_lbl 3109006 `"Brumadinho"', add
label define V0002_lbl 2904605 `"Brumado"', add
label define V0002_lbl 4202875 `"Brunópolis"', add
label define V0002_lbl 4202909 `"Brusque"', add
label define V0002_lbl 3109105 `"Bueno Brandão"', add
label define V0002_lbl 3109204 `"Buenópolis"', add
label define V0002_lbl 2602704 `"Buenos Aires"', add
label define V0002_lbl 2904704 `"Buerarema"', add
label define V0002_lbl 3109253 `"Bugre"', add
label define V0002_lbl 2602803 `"Buíque"', add
label define V0002_lbl 1200138 `"Bujari"', add
label define V0002_lbl 1501907 `"Bujaru"', add
label define V0002_lbl 3508009 `"Buri"', add
label define V0002_lbl 3508108 `"Buritama"', add
label define V0002_lbl 2102200 `"Buriti"', add
label define V0002_lbl 5203906 `"Buriti Alegre"', add
label define V0002_lbl 2102309 `"Buriti Bravo"', add
label define V0002_lbl 5203939 `"Buriti de Goiás"', add
label define V0002_lbl 1703800 `"Buriti do Tocantins"', add
label define V0002_lbl 2202000 `"Buriti dos Lopes"', add
label define V0002_lbl 2202026 `"Buriti dos Montes"', add
label define V0002_lbl 2102325 `"Buriticupu"', add
label define V0002_lbl 5203962 `"Buritinópolis"', add
label define V0002_lbl 2904753 `"Buritirama"', add
label define V0002_lbl 2102358 `"Buritirana"', add
label define V0002_lbl 1100452 `"Buritis"', add
label define V0002_lbl 3109303 `"Buritis"', add
label define V0002_lbl 3508207 `"Buritizal"', add
label define V0002_lbl 3109402 `"Buritizeiro"', add
label define V0002_lbl 4302709 `"Butiá"', add
label define V0002_lbl 1300839 `"Caapiranga"', add
label define V0002_lbl 2503001 `"Caaporã"', add
label define V0002_lbl 5002407 `"Caarapó"', add
label define V0002_lbl 2904803 `"Caatiba"', add
label define V0002_lbl 2503100 `"Cabaceiras"', add
label define V0002_lbl 2904852 `"Cabaceiras do Paraguaçu"', add
label define V0002_lbl 3109451 `"Cabeceira Grande"', add
label define V0002_lbl 5204003 `"Cabeceiras"', add
label define V0002_lbl 2202059 `"Cabeceiras do Piauí"', add
label define V0002_lbl 2503209 `"Cabedelo"', add
label define V0002_lbl 1100031 `"Cabixi"', add
label define V0002_lbl 2602902 `"Cabo de Santo Agostinho"', add
label define V0002_lbl 3300704 `"Cabo Frio"', add
label define V0002_lbl 3109501 `"Cabo Verde"', add
label define V0002_lbl 3508306 `"Cabrália Paulista"', add
label define V0002_lbl 3508405 `"Cabreúva"', add
label define V0002_lbl 2603009 `"Cabrobó"', add
label define V0002_lbl 4203006 `"Caçador"', add
label define V0002_lbl 3508504 `"Caçapava"', add
label define V0002_lbl 4302808 `"Caçapava do Sul"', add
label define V0002_lbl 1100601 `"Cacaulândia"', add
label define V0002_lbl 4302907 `"Cacequi"', add
label define V0002_lbl 5102504 `"Cáceres"', add
label define V0002_lbl 2904902 `"Cachoeira"', add
label define V0002_lbl 5204102 `"Cachoeira Alta"', add
label define V0002_lbl 3109600 `"Cachoeira da Prata"', add
label define V0002_lbl 5204201 `"Cachoeira de Goiás"', add
label define V0002_lbl 3109709 `"Cachoeira de Minas"', add
label define V0002_lbl 3102704 `"Cachoeira de Pajeú"', add
label define V0002_lbl 1502004 `"Cachoeira do Arari"', add
label define V0002_lbl 1501956 `"Cachoeira do Piriá"', add
label define V0002_lbl 4303004 `"Cachoeira do Sul"', add
label define V0002_lbl 2503308 `"Cachoeira dos Índios"', add
label define V0002_lbl 3109808 `"Cachoeira Dourada"', add
label define V0002_lbl 5204250 `"Cachoeira Dourada"', add
label define V0002_lbl 2102374 `"Cachoeira Grande"', add
label define V0002_lbl 3508603 `"Cachoeira Paulista"', add
label define V0002_lbl 3300803 `"Cachoeiras de Macacu"', add
label define V0002_lbl 4303103 `"Cachoeirinha"', add
label define V0002_lbl 2603108 `"Cachoeirinha"', add
label define V0002_lbl 1703826 `"Cachoeirinha"', add
label define V0002_lbl 3201209 `"Cachoeiro de Itapemirim"', add
label define V0002_lbl 2503407 `"Cacimba de Areia"', add
label define V0002_lbl 2503506 `"Cacimba de Dentro"', add
label define V0002_lbl 2503555 `"Cacimbas"', add
label define V0002_lbl 2701209 `"Cacimbinhas"', add
label define V0002_lbl 4303202 `"Cacique Doble"', add
label define V0002_lbl 1100049 `"Cacoal"', add
label define V0002_lbl 3508702 `"Caconde"', add
label define V0002_lbl 5204300 `"Caçu"', add
label define V0002_lbl 2905008 `"Caculé"', add
label define V0002_lbl 2905107 `"Caém"', add
label define V0002_lbl 3109907 `"Caetanópolis"', add
label define V0002_lbl 2905156 `"Caetanos"', add
label define V0002_lbl 3110004 `"Caeté"', add
label define V0002_lbl 2603207 `"Caetés"', add
label define V0002_lbl 2905206 `"Caetité"', add
label define V0002_lbl 2905305 `"Cafarnaum"', add
label define V0002_lbl 4103404 `"Cafeara"', add
label define V0002_lbl 4103453 `"Cafelândia"', add
label define V0002_lbl 3508801 `"Cafelândia"', add
label define V0002_lbl 4103479 `"Cafezal do Sul"', add
label define V0002_lbl 3508900 `"Caiabu"', add
label define V0002_lbl 3110103 `"Caiana"', add
label define V0002_lbl 5204409 `"Caiapônia"', add
label define V0002_lbl 4303301 `"Caibaté"', add
label define V0002_lbl 4203105 `"Caibi"', add
label define V0002_lbl 4303400 `"Caiçara"', add
label define V0002_lbl 2503605 `"Caiçara"', add
label define V0002_lbl 2401859 `"Caiçara do Norte"', add
label define V0002_lbl 2401909 `"Caiçara do Rio do Vento"', add
label define V0002_lbl 2402006 `"Caicó"', add
label define V0002_lbl 3509007 `"Caieiras"', add
label define V0002_lbl 2905404 `"Cairu"', add
label define V0002_lbl 3509106 `"Caiuá"', add
label define V0002_lbl 3509205 `"Cajamar"', add
label define V0002_lbl 2102408 `"Cajapió"', add
label define V0002_lbl 2102507 `"Cajari"', add
label define V0002_lbl 3509254 `"Cajati"', add
label define V0002_lbl 2503704 `"Cajazeiras"', add
label define V0002_lbl 2202075 `"Cajazeiras do Piauí"', add
label define V0002_lbl 2503753 `"Cajazeirinhas"', add
label define V0002_lbl 3509304 `"Cajobi"', add
label define V0002_lbl 2701308 `"Cajueiro"', add
label define V0002_lbl 2202083 `"Cajueiro da Praia"', add
label define V0002_lbl 3110202 `"Cajuri"', add
label define V0002_lbl 3509403 `"Cajuru"', add
label define V0002_lbl 2603306 `"Calçado"', add
label define V0002_lbl 1600204 `"Calçoene"', add
label define V0002_lbl 3110301 `"Caldas"', add
label define V0002_lbl 2503803 `"Caldas Brandão"', add
label define V0002_lbl 5204508 `"Caldas Novas"', add
label define V0002_lbl 5204557 `"Caldazinha"', add
label define V0002_lbl 2905503 `"Caldeirão Grande"', add
label define V0002_lbl 2202091 `"Caldeirão Grande do Piauí"', add
label define V0002_lbl 4103503 `"Califórnia"', add
label define V0002_lbl 4203154 `"Calmon"', add
label define V0002_lbl 2603405 `"Calumbi"', add
label define V0002_lbl 2905602 `"Camacan"', add
label define V0002_lbl 2905701 `"Camaçari"', add
label define V0002_lbl 3110400 `"Camacho"', add
label define V0002_lbl 2503902 `"Camalaú"', add
label define V0002_lbl 2905800 `"Camamu"', add
label define V0002_lbl 3110509 `"Camanducaia"', add
label define V0002_lbl 5002605 `"Camapuã"', add
label define V0002_lbl 4303509 `"Camaquã"', add
label define V0002_lbl 2603454 `"Camaragibe"', add
label define V0002_lbl 4303558 `"Camargo"', add
label define V0002_lbl 4103602 `"Cambará"', add
label define V0002_lbl 4303608 `"Cambará do Sul"', add
label define V0002_lbl 4103701 `"Cambé"', add
label define V0002_lbl 4103800 `"Cambira"', add
label define V0002_lbl 4203204 `"Camboriú"', add
label define V0002_lbl 3300902 `"Cambuci"', add
label define V0002_lbl 3110608 `"Cambuí"', add
label define V0002_lbl 3110707 `"Cambuquira"', add
label define V0002_lbl 1502103 `"Cametá"', add
label define V0002_lbl 2302602 `"Camocim"', add
label define V0002_lbl 2603504 `"Camocim de São Félix"', add
label define V0002_lbl 3110806 `"Campanário"', add
label define V0002_lbl 3110905 `"Campanha"', add
label define V0002_lbl 3111002 `"Campestre"', add
label define V0002_lbl 2701357 `"Campestre"', add
label define V0002_lbl 4303673 `"Campestre da Serra"', add
label define V0002_lbl 5204607 `"Campestre de Goiás"', add
label define V0002_lbl 2102556 `"Campestre do Maranhão"', add
label define V0002_lbl 4103909 `"Campina da Lagoa"', add
label define V0002_lbl 4303707 `"Campina das Missões"', add
label define V0002_lbl 3509452 `"Campina do Monte Alegre"', add
label define V0002_lbl 4103958 `"Campina do Simão"', add
label define V0002_lbl 2504009 `"Campina Grande"', add
label define V0002_lbl 4104006 `"Campina Grande do Sul"', add
label define V0002_lbl 3111101 `"Campina Verde"', add
label define V0002_lbl 5204656 `"Campinaçu"', add
label define V0002_lbl 5102603 `"Campinápolis"', add
label define V0002_lbl 3509502 `"Campinas"', add
label define V0002_lbl 2202109 `"Campinas do Piauí"', add
label define V0002_lbl 4303806 `"Campinas do Sul"', add
label define V0002_lbl 5204706 `"Campinorte"', add
label define V0002_lbl 4203303 `"Campo Alegre"', add
label define V0002_lbl 2701407 `"Campo Alegre"', add
label define V0002_lbl 5204805 `"Campo Alegre de Goiás"', add
label define V0002_lbl 2905909 `"Campo Alegre de Lourdes"', add
label define V0002_lbl 2202117 `"Campo Alegre do Fidalgo"', add
label define V0002_lbl 3111150 `"Campo Azul"', add
label define V0002_lbl 3111200 `"Campo Belo"', add
label define V0002_lbl 4203402 `"Campo Belo do Sul"', add
label define V0002_lbl 4303905 `"Campo Bom"', add
label define V0002_lbl 4104055 `"Campo Bonito"', add
label define V0002_lbl 2801009 `"Campo do Brito"', add
label define V0002_lbl 3111309 `"Campo do Meio"', add
label define V0002_lbl 4104105 `"Campo do Tenente"', add
label define V0002_lbl 4203501 `"Campo Erê"', add
label define V0002_lbl 3111408 `"Campo Florido"', add
label define V0002_lbl 2906006 `"Campo Formoso"', add
label define V0002_lbl 2701506 `"Campo Grande"', add
label define V0002_lbl 2401305 `"Campo Grande"', add
label define V0002_lbl 5002704 `"Campo Grande"', add
label define V0002_lbl 2202133 `"Campo Grande do Piauí"', add
label define V0002_lbl 4104204 `"Campo Largo"', add
label define V0002_lbl 2202174 `"Campo Largo do Piauí"', add
label define V0002_lbl 5204854 `"Campo Limpo de Goiás"', add
label define V0002_lbl 3509601 `"Campo Limpo Paulista"', add
label define V0002_lbl 4104253 `"Campo Magro"', add
label define V0002_lbl 2202208 `"Campo Maior"', add
label define V0002_lbl 4104303 `"Campo Mourão"', add
label define V0002_lbl 4304002 `"Campo Novo"', add
label define V0002_lbl 1100700 `"Campo Novo de Rondônia"', add
label define V0002_lbl 5102637 `"Campo Novo do Parecis"', add
label define V0002_lbl 2402105 `"Campo Redondo"', add
label define V0002_lbl 5102678 `"Campo Verde"', add
label define V0002_lbl 3111507 `"Campos Altos"', add
label define V0002_lbl 5204904 `"Campos Belos"', add
label define V0002_lbl 4304101 `"Campos Borges"', add
label define V0002_lbl 5102686 `"Campos de Júlio"', add
label define V0002_lbl 3509700 `"Campos do Jordão"', add
label define V0002_lbl 3301009 `"Campos dos Goytacazes"', add
label define V0002_lbl 3111606 `"Campos Gerais"', add
label define V0002_lbl 1703842 `"Campos Lindos"', add
label define V0002_lbl 4203600 `"Campos Novos"', add
label define V0002_lbl 3509809 `"Campos Novos Paulista"', add
label define V0002_lbl 2302701 `"Campos Sales"', add
label define V0002_lbl 5204953 `"Campos Verdes"', add
label define V0002_lbl 2603603 `"Camutanga"', add
label define V0002_lbl 3111903 `"Cana Verde"', add
label define V0002_lbl 3111705 `"Canaã"', add
label define V0002_lbl 1502152 `"Canaã dos Carajás"', add
label define V0002_lbl 5102694 `"Canabrava do Norte"', add
label define V0002_lbl 3509908 `"Cananéia"', add
label define V0002_lbl 2701605 `"Canapi"', add
label define V0002_lbl 2906105 `"Canápolis"', add
label define V0002_lbl 3111804 `"Canápolis"', add
label define V0002_lbl 2906204 `"Canarana"', add
label define V0002_lbl 5102702 `"Canarana"', add
label define V0002_lbl 3509957 `"Canas"', add
label define V0002_lbl 2202251 `"Canavieira"', add
label define V0002_lbl 2906303 `"Canavieiras"', add
label define V0002_lbl 2906402 `"Candeal"', add
label define V0002_lbl 2906501 `"Candeias"', add
label define V0002_lbl 3112000 `"Candeias"', add
label define V0002_lbl 1100809 `"Candeias do Jamari"', add
label define V0002_lbl 4304200 `"Candelária"', add
label define V0002_lbl 2906600 `"Candiba"', add
label define V0002_lbl 4104402 `"Cândido de Abreu"', add
label define V0002_lbl 4304309 `"Cândido Godói"', add
label define V0002_lbl 2102606 `"Cândido Mendes"', add
label define V0002_lbl 3510005 `"Cândido Mota"', add
label define V0002_lbl 3510104 `"Cândido Rodrigues"', add
label define V0002_lbl 2906709 `"Cândido Sales"', add
label define V0002_lbl 4304358 `"Candiota"', add
label define V0002_lbl 4104428 `"Candói"', add
label define V0002_lbl 4304408 `"Canela"', add
label define V0002_lbl 4203709 `"Canelinha"', add
label define V0002_lbl 2402204 `"Canguaretama"', add
label define V0002_lbl 4304507 `"Canguçu"', add
label define V0002_lbl 2801108 `"Canhoba"', add
label define V0002_lbl 2603702 `"Canhotinho"', add
label define V0002_lbl 2302800 `"Canindé"', add
label define V0002_lbl 2801207 `"Canindé de São Francisco"', add
label define V0002_lbl 3510153 `"Canitar"', add
label define V0002_lbl 4304606 `"Canoas"', add
label define V0002_lbl 4203808 `"Canoinhas"', add
label define V0002_lbl 2906808 `"Cansanção"', add
label define V0002_lbl 1400175 `"Cantá"', add
label define V0002_lbl 3112059 `"Cantagalo"', add
label define V0002_lbl 4104451 `"Cantagalo"', add
label define V0002_lbl 3301108 `"Cantagalo"', add
label define V0002_lbl 2102705 `"Cantanhede"', add
label define V0002_lbl 2202307 `"Canto do Buriti"', add
label define V0002_lbl 2906824 `"Canudos"', add
label define V0002_lbl 4304614 `"Canudos do Vale"', add
label define V0002_lbl 1300904 `"Canutama"', add
label define V0002_lbl 1502202 `"Capanema"', add
label define V0002_lbl 4104501 `"Capanema"', add
label define V0002_lbl 4203253 `"Capão Alto"', add
label define V0002_lbl 3510203 `"Capão Bonito"', add
label define V0002_lbl 4304622 `"Capão Bonito do Sul"', add
label define V0002_lbl 4304630 `"Capão da Canoa"', add
label define V0002_lbl 4304655 `"Capão do Cipó"', add
label define V0002_lbl 4304663 `"Capão do Leão"', add
label define V0002_lbl 3112109 `"Caparaó"', add
label define V0002_lbl 2801306 `"Capela"', add
label define V0002_lbl 2701704 `"Capela"', add
label define V0002_lbl 4304689 `"Capela de Santana"', add
label define V0002_lbl 3510302 `"Capela do Alto"', add
label define V0002_lbl 2906857 `"Capela do Alto Alegre"', add
label define V0002_lbl 3112208 `"Capela Nova"', add
label define V0002_lbl 3112307 `"Capelinha"', add
label define V0002_lbl 3112406 `"Capetinga"', add
label define V0002_lbl 2504033 `"Capim"', add
label define V0002_lbl 3112505 `"Capim Branco"', add
label define V0002_lbl 2906873 `"Capim Grosso"', add
label define V0002_lbl 3112604 `"Capinópolis"', add
label define V0002_lbl 4203907 `"Capinzal"', add
label define V0002_lbl 2102754 `"Capinzal do Norte"', add
label define V0002_lbl 2302909 `"Capistrano"', add
label define V0002_lbl 4304697 `"Capitão"', add
label define V0002_lbl 3112653 `"Capitão Andrade"', add
label define V0002_lbl 2202406 `"Capitão de Campos"', add
label define V0002_lbl 3112703 `"Capitão Enéas"', add
label define V0002_lbl 2202455 `"Capitão Gervásio Oliveira"', add
label define V0002_lbl 4104600 `"Capitão Leônidas Marques"', add
label define V0002_lbl 1502301 `"Capitão Poço"', add
label define V0002_lbl 3112802 `"Capitólio"', add
label define V0002_lbl 3510401 `"Capivari"', add
label define V0002_lbl 4203956 `"Capivari de Baixo"', add
label define V0002_lbl 4304671 `"Capivari do Sul"', add
label define V0002_lbl 1200179 `"Capixaba"', add
label define V0002_lbl 2603801 `"Capoeiras"', add
label define V0002_lbl 3112901 `"Caputira"', add
label define V0002_lbl 4304713 `"Caraá"', add
label define V0002_lbl 1400209 `"Caracaraí"', add
label define V0002_lbl 2202505 `"Caracol"', add
label define V0002_lbl 5002803 `"Caracol"', add
label define V0002_lbl 3510500 `"Caraguatatuba"', add
label define V0002_lbl 3113008 `"Caraí"', add
label define V0002_lbl 2906899 `"Caraíbas"', add
label define V0002_lbl 4104659 `"Carambeí"', add
label define V0002_lbl 3113107 `"Caranaíba"', add
label define V0002_lbl 3113206 `"Carandaí"', add
label define V0002_lbl 3113305 `"Carangola"', add
label define V0002_lbl 3300936 `"Carapebus"', add
label define V0002_lbl 3510609 `"Carapicuíba"', add
label define V0002_lbl 3113404 `"Caratinga"', add
label define V0002_lbl 1301001 `"Carauari"', add
label define V0002_lbl 2504074 `"Caraúbas"', add
label define V0002_lbl 2402303 `"Caraúbas"', add
label define V0002_lbl 2202539 `"Caraúbas do Piauí"', add
label define V0002_lbl 2906907 `"Caravelas"', add
label define V0002_lbl 4304705 `"Carazinho"', add
label define V0002_lbl 3113503 `"Carbonita"', add
label define V0002_lbl 2907004 `"Cardeal da Silva"', add
label define V0002_lbl 3510708 `"Cardoso"', add
label define V0002_lbl 3301157 `"Cardoso Moreira"', add
label define V0002_lbl 3113602 `"Careaçu"', add
label define V0002_lbl 1301100 `"Careiro"', add
label define V0002_lbl 1301159 `"Careiro da Várzea"', add
label define V0002_lbl 3201308 `"Cariacica"', add
label define V0002_lbl 2303006 `"Caridade"', add
label define V0002_lbl 2202554 `"Caridade do Piauí"', add
label define V0002_lbl 2907103 `"Carinhanha"', add
label define V0002_lbl 2801405 `"Carira"', add
label define V0002_lbl 2303105 `"Cariré"', add
label define V0002_lbl 1703867 `"Cariri do Tocantins"', add
label define V0002_lbl 2303204 `"Caririaçu"', add
label define V0002_lbl 2303303 `"Cariús"', add
label define V0002_lbl 5102793 `"Carlinda"', add
label define V0002_lbl 4104709 `"Carlópolis"', add
label define V0002_lbl 4304804 `"Carlos Barbosa"', add
label define V0002_lbl 3113701 `"Carlos Chagas"', add
label define V0002_lbl 4304853 `"Carlos Gomes"', add
label define V0002_lbl 3113800 `"Carmésia"', add
label define V0002_lbl 3301207 `"Carmo"', add
label define V0002_lbl 3113909 `"Carmo da Cachoeira"', add
label define V0002_lbl 3114006 `"Carmo da Mata"', add
label define V0002_lbl 3114105 `"Carmo de Minas"', add
label define V0002_lbl 3114204 `"Carmo do Cajuru"', add
label define V0002_lbl 3114303 `"Carmo do Paranaíba"', add
label define V0002_lbl 3114402 `"Carmo do Rio Claro"', add
label define V0002_lbl 5205000 `"Carmo do Rio Verde"', add
label define V0002_lbl 1703883 `"Carmolândia"', add
label define V0002_lbl 2801504 `"Carmópolis"', add
label define V0002_lbl 3114501 `"Carmópolis de Minas"', add
label define V0002_lbl 2603900 `"Carnaíba"', add
label define V0002_lbl 2402402 `"Carnaúba dos Dantas"', add
label define V0002_lbl 2402501 `"Carnaubais"', add
label define V0002_lbl 2303402 `"Carnaubal"', add
label define V0002_lbl 2603926 `"Carnaubeira da Penha"', add
label define V0002_lbl 3114550 `"Carneirinho"', add
label define V0002_lbl 2701803 `"Carneiros"', add
label define V0002_lbl 1400233 `"Caroebe"', add
label define V0002_lbl 2102804 `"Carolina"', add
label define V0002_lbl 2604007 `"Carpina"', add
label define V0002_lbl 3114600 `"Carrancas"', add
label define V0002_lbl 2504108 `"Carrapateira"', add
label define V0002_lbl 1703891 `"Carrasco Bonito"', add
label define V0002_lbl 2604106 `"Caruaru"', add
label define V0002_lbl 2102903 `"Carutapera"', add
label define V0002_lbl 3114709 `"Carvalhópolis"', add
label define V0002_lbl 3114808 `"Carvalhos"', add
label define V0002_lbl 3510807 `"Casa Branca"', add
label define V0002_lbl 3114907 `"Casa Grande"', add
label define V0002_lbl 2907202 `"Casa Nova"', add
label define V0002_lbl 4304903 `"Casca"', add
label define V0002_lbl 3115003 `"Cascalho Rico"', add
label define V0002_lbl 2303501 `"Cascavel"', add
label define V0002_lbl 4104808 `"Cascavel"', add
label define V0002_lbl 1703909 `"Caseara"', add
label define V0002_lbl 4304952 `"Caseiros"', add
label define V0002_lbl 3301306 `"Casimiro de Abreu"', add
label define V0002_lbl 2604155 `"Casinhas"', add
label define V0002_lbl 2504157 `"Casserengue"', add
label define V0002_lbl 3115102 `"Cássia"', add
label define V0002_lbl 3510906 `"Cássia dos Coqueiros"', add
label define V0002_lbl 5002902 `"Cassilândia"', add
label define V0002_lbl 1502400 `"Castanhal"', add
label define V0002_lbl 5102850 `"Castanheira"', add
label define V0002_lbl 1100908 `"Castanheiras"', add
label define V0002_lbl 5205059 `"Castelândia"', add
label define V0002_lbl 3201407 `"Castelo"', add
label define V0002_lbl 2202604 `"Castelo do Piauí"', add
label define V0002_lbl 3511003 `"Castilho"', add
label define V0002_lbl 4104907 `"Castro"', add
label define V0002_lbl 2907301 `"Castro Alves"', add
label define V0002_lbl 3115300 `"Cataguases"', add
label define V0002_lbl 5205109 `"Catalão"', add
label define V0002_lbl 3511102 `"Catanduva"', add
label define V0002_lbl 4105003 `"Catanduvas"', add
label define V0002_lbl 4204004 `"Catanduvas"', add
label define V0002_lbl 2303600 `"Catarina"', add
label define V0002_lbl 3115359 `"Catas Altas"', add
label define V0002_lbl 3115409 `"Catas Altas da Noruega"', add
label define V0002_lbl 2604205 `"Catende"', add
label define V0002_lbl 3511201 `"Catiguá"', add
label define V0002_lbl 2504207 `"Catingueira"', add
label define V0002_lbl 2907400 `"Catolândia"', add
label define V0002_lbl 2504306 `"Catolé do Rocha"', add
label define V0002_lbl 2907509 `"Catu"', add
label define V0002_lbl 4305009 `"Catuípe"', add
label define V0002_lbl 3115458 `"Catuji"', add
label define V0002_lbl 2303659 `"Catunda"', add
label define V0002_lbl 5205208 `"Caturaí"', add
label define V0002_lbl 2907558 `"Caturama"', add
label define V0002_lbl 2504355 `"Caturité"', add
label define V0002_lbl 3115474 `"Catuti"', add
label define V0002_lbl 2303709 `"Caucaia"', add
label define V0002_lbl 5205307 `"Cavalcante"', add
label define V0002_lbl 3115508 `"Caxambu"', add
label define V0002_lbl 4204103 `"Caxambu do Sul"', add
label define V0002_lbl 2103000 `"Caxias"', add
label define V0002_lbl 4305108 `"Caxias do Sul"', add
label define V0002_lbl 2202653 `"Caxingó"', add
label define V0002_lbl 2402600 `"Ceará-Mirim"', add
label define V0002_lbl 2103109 `"Cedral"', add
label define V0002_lbl 3511300 `"Cedral"', add
label define V0002_lbl 2604304 `"Cedro"', add
label define V0002_lbl 2303808 `"Cedro"', add
label define V0002_lbl 2801603 `"Cedro de São João"', add
label define V0002_lbl 3115607 `"Cedro do Abaeté"', add
label define V0002_lbl 4204152 `"Celso Ramos"', add
label define V0002_lbl 4305116 `"Centenário"', add
label define V0002_lbl 1704105 `"Centenário"', add
label define V0002_lbl 4105102 `"Centenário do Sul"', add
label define V0002_lbl 2907608 `"Central"', add
label define V0002_lbl 3115706 `"Central de Minas"', add
label define V0002_lbl 2103125 `"Central do Maranhão"', add
label define V0002_lbl 3115805 `"Centralina"', add
label define V0002_lbl 2103158 `"Centro do Guilherme"', add
label define V0002_lbl 2103174 `"Centro Novo do Maranhão"', add
label define V0002_lbl 1100056 `"Cerejeiras"', add
label define V0002_lbl 5205406 `"Ceres"', add
label define V0002_lbl 3511409 `"Cerqueira César"', add
label define V0002_lbl 3511508 `"Cerquilho"', add
label define V0002_lbl 4305124 `"Cerrito"', add
label define V0002_lbl 4105201 `"Cerro Azul"', add
label define V0002_lbl 4305132 `"Cerro Branco"', add
label define V0002_lbl 2402709 `"Cerro Corá"', add
label define V0002_lbl 4305157 `"Cerro Grande"', add
label define V0002_lbl 4305173 `"Cerro Grande do Sul"', add
label define V0002_lbl 4305207 `"Cerro Largo"', add
label define V0002_lbl 4204178 `"Cerro Negro"', add
label define V0002_lbl 3511607 `"Cesário Lange"', add
label define V0002_lbl 4105300 `"Céu Azul"', add
label define V0002_lbl 5205455 `"Cezarina"', add
label define V0002_lbl 2604403 `"Chã de Alegria"', add
label define V0002_lbl 2604502 `"Chã Grande"', add
label define V0002_lbl 2701902 `"Chã Preta"', add
label define V0002_lbl 3115904 `"Chácara"', add
label define V0002_lbl 3116001 `"Chalé"', add
label define V0002_lbl 4305306 `"Chapada"', add
label define V0002_lbl 1705102 `"Chapada da Natividade"', add
label define V0002_lbl 1704600 `"Chapada de Areia"', add
label define V0002_lbl 3116100 `"Chapada do Norte"', add
label define V0002_lbl 5103007 `"Chapada dos Guimarães"', add
label define V0002_lbl 3116159 `"Chapada Gaúcha"', add
label define V0002_lbl 5205471 `"Chapadão do Céu"', add
label define V0002_lbl 4204194 `"Chapadão do Lageado"', add
label define V0002_lbl 5002951 `"Chapadão do Sul"', add
label define V0002_lbl 2103208 `"Chapadinha"', add
label define V0002_lbl 4204202 `"Chapecó"', add
label define V0002_lbl 3511706 `"Charqueada"', add
label define V0002_lbl 4305355 `"Charqueadas"', add
label define V0002_lbl 4305371 `"Charrua"', add
label define V0002_lbl 2303907 `"Chaval"', add
label define V0002_lbl 3557204 `"Chavantes"', add
label define V0002_lbl 1502509 `"Chaves"', add
label define V0002_lbl 3116209 `"Chiador"', add
label define V0002_lbl 4305405 `"Chiapetta"', add
label define V0002_lbl 4105409 `"Chopinzinho"', add
label define V0002_lbl 2303931 `"Choró"', add
label define V0002_lbl 2303956 `"Chorozinho"', add
label define V0002_lbl 2907707 `"Chorrochó"', add
label define V0002_lbl 4305439 `"Chuí"', add
label define V0002_lbl 1100924 `"Chupinguaia"', add
label define V0002_lbl 4305447 `"Chuvisca"', add
label define V0002_lbl 4105508 `"Cianorte"', add
label define V0002_lbl 2907806 `"Cícero Dantas"', add
label define V0002_lbl 4105607 `"Cidade Gaúcha"', add
label define V0002_lbl 5205497 `"Cidade Ocidental"', add
label define V0002_lbl 2103257 `"Cidelândia"', add
label define V0002_lbl 4305454 `"Cidreira"', add
label define V0002_lbl 2907905 `"Cipó"', add
label define V0002_lbl 3116308 `"Cipotânea"', add
label define V0002_lbl 4305504 `"Ciríaco"', add
label define V0002_lbl 3116407 `"Claraval"', add
label define V0002_lbl 3116506 `"Claro dos Poções"', add
label define V0002_lbl 5103056 `"Cláudia"', add
label define V0002_lbl 3116605 `"Cláudio"', add
label define V0002_lbl 3511904 `"Clementina"', add
label define V0002_lbl 4105706 `"Clevelândia"', add
label define V0002_lbl 2908002 `"Coaraci"', add
label define V0002_lbl 1301209 `"Coari"', add
label define V0002_lbl 2202703 `"Cocal"', add
label define V0002_lbl 2202711 `"Cocal de Telha"', add
label define V0002_lbl 4204251 `"Cocal do Sul"', add
label define V0002_lbl 2202729 `"Cocal dos Alves"', add
label define V0002_lbl 5103106 `"Cocalinho"', add
label define V0002_lbl 5205513 `"Cocalzinho de Goiás"', add
label define V0002_lbl 2908101 `"Cocos"', add
label define V0002_lbl 1301308 `"Codajás"', add
label define V0002_lbl 2103307 `"Codó"', add
label define V0002_lbl 2103406 `"Coelho Neto"', add
label define V0002_lbl 3116704 `"Coimbra"', add
label define V0002_lbl 2702009 `"Coité do Nóia"', add
label define V0002_lbl 2202737 `"Coivaras"', add
label define V0002_lbl 1502608 `"Colares"', add
label define V0002_lbl 3201506 `"Colatina"', add
label define V0002_lbl 5103205 `"Colíder"', add
label define V0002_lbl 3512001 `"Colina"', add
label define V0002_lbl 4305587 `"Colinas"', add
label define V0002_lbl 2103505 `"Colinas"', add
label define V0002_lbl 5205521 `"Colinas do Sul"', add
label define V0002_lbl 1705508 `"Colinas do Tocantins"', add
label define V0002_lbl 1716703 `"Colméia"', add
label define V0002_lbl 5103254 `"Colniza"', add
label define V0002_lbl 3512100 `"Colômbia"', add
label define V0002_lbl 4105805 `"Colombo"', add
label define V0002_lbl 2202752 `"Colônia do Gurguéia"', add
label define V0002_lbl 2202778 `"Colônia do Piauí"', add
label define V0002_lbl 2702108 `"Colônia Leopoldina"', add
label define V0002_lbl 4105904 `"Colorado"', add
label define V0002_lbl 4305603 `"Colorado"', add
label define V0002_lbl 1100064 `"Colorado do Oeste"', add
label define V0002_lbl 3116803 `"Coluna"', add
label define V0002_lbl 1705557 `"Combinado"', add
label define V0002_lbl 3116902 `"Comendador Gomes"', add
label define V0002_lbl 3300951 `"Comendador Levy Gasparian"', add
label define V0002_lbl 3117009 `"Comercinho"', add
label define V0002_lbl 5103304 `"Comodoro"', add
label define V0002_lbl 2504405 `"Conceição"', add
label define V0002_lbl 3117108 `"Conceição da Aparecida"', add
label define V0002_lbl 3201605 `"Conceição da Barra"', add
label define V0002_lbl 3115201 `"Conceição da Barra de Minas"', add
label define V0002_lbl 2908200 `"Conceição da Feira"', add
label define V0002_lbl 3117306 `"Conceição das Alagoas"', add
label define V0002_lbl 3117207 `"Conceição das Pedras"', add
label define V0002_lbl 3117405 `"Conceição de Ipanema"', add
label define V0002_lbl 3301405 `"Conceição de Macabu"', add
label define V0002_lbl 2908309 `"Conceição do Almeida"', add
label define V0002_lbl 1502707 `"Conceição do Araguaia"', add
label define V0002_lbl 2202802 `"Conceição do Canindé"', add
label define V0002_lbl 3201704 `"Conceição do Castelo"', add
label define V0002_lbl 2908408 `"Conceição do Coité"', add
label define V0002_lbl 2908507 `"Conceição do Jacuípe"', add
label define V0002_lbl 2103554 `"Conceição do Lago-Açu"', add
label define V0002_lbl 3117504 `"Conceição do Mato Dentro"', add
label define V0002_lbl 3117603 `"Conceição do Pará"', add
label define V0002_lbl 3117702 `"Conceição do Rio Verde"', add
label define V0002_lbl 1705607 `"Conceição do Tocantins"', add
label define V0002_lbl 3117801 `"Conceição dos Ouros"', add
label define V0002_lbl 3512209 `"Conchal"', add
label define V0002_lbl 3512308 `"Conchas"', add
label define V0002_lbl 4204301 `"Concórdia"', add
label define V0002_lbl 1502756 `"Concórdia do Pará"', add
label define V0002_lbl 2504504 `"Condado"', add
label define V0002_lbl 2604601 `"Condado"', add
label define V0002_lbl 2504603 `"Conde"', add
label define V0002_lbl 2908606 `"Conde"', add
label define V0002_lbl 2908705 `"Condeúba"', add
label define V0002_lbl 4305702 `"Condor"', add
label define V0002_lbl 3117836 `"Cônego Marinho"', add
label define V0002_lbl 3117876 `"Confins"', add
label define V0002_lbl 5103353 `"Confresa"', add
label define V0002_lbl 2504702 `"Congo"', add
label define V0002_lbl 3117900 `"Congonhal"', add
label define V0002_lbl 3118007 `"Congonhas"', add
label define V0002_lbl 3118106 `"Congonhas do Norte"', add
label define V0002_lbl 4106001 `"Congonhinhas"', add
label define V0002_lbl 3118205 `"Conquista"', add
label define V0002_lbl 5103361 `"Conquista D'Oeste"', add
label define V0002_lbl 3118304 `"Conselheiro Lafaiete"', add
label define V0002_lbl 4106100 `"Conselheiro Mairinck"', add
label define V0002_lbl 3118403 `"Conselheiro Pena"', add
label define V0002_lbl 3118502 `"Consolação"', add
label define V0002_lbl 4305801 `"Constantina"', add
label define V0002_lbl 3118601 `"Contagem"', add
label define V0002_lbl 4106209 `"Contenda"', add
label define V0002_lbl 2908804 `"Contendas do Sincorá"', add
label define V0002_lbl 3118700 `"Coqueiral"', add
label define V0002_lbl 4305835 `"Coqueiro Baixo"', add
label define V0002_lbl 2702207 `"Coqueiro Seco"', add
label define V0002_lbl 4305850 `"Coqueiros do Sul"', add
label define V0002_lbl 3118809 `"Coração de Jesus"', add
label define V0002_lbl 2908903 `"Coração de Maria"', add
label define V0002_lbl 4106308 `"Corbélia"', add
label define V0002_lbl 3301504 `"Cordeiro"', add
label define V0002_lbl 3512407 `"Cordeirópolis"', add
label define V0002_lbl 2909000 `"Cordeiros"', add
label define V0002_lbl 4204350 `"Cordilheira Alta"', add
label define V0002_lbl 3118908 `"Cordisburgo"', add
label define V0002_lbl 3119005 `"Cordislândia"', add
label define V0002_lbl 2304004 `"Coreaú"', add
label define V0002_lbl 2504801 `"Coremas"', add
label define V0002_lbl 5003108 `"Corguinho"', add
label define V0002_lbl 2909109 `"Coribe"', add
label define V0002_lbl 3119104 `"Corinto"', add
label define V0002_lbl 4106407 `"Cornélio Procópio"', add
label define V0002_lbl 3119203 `"Coroaci"', add
label define V0002_lbl 3512506 `"Coroados"', add
label define V0002_lbl 2103604 `"Coroatá"', add
label define V0002_lbl 3119302 `"Coromandel"', add
label define V0002_lbl 4305871 `"Coronel Barros"', add
label define V0002_lbl 4305900 `"Coronel Bicaco"', add
label define V0002_lbl 4106456 `"Coronel Domingos Soares"', add
label define V0002_lbl 2402808 `"Coronel Ezequiel"', add
label define V0002_lbl 3119401 `"Coronel Fabriciano"', add
label define V0002_lbl 4204400 `"Coronel Freitas"', add
label define V0002_lbl 2402907 `"Coronel João Pessoa"', add
label define V0002_lbl 2909208 `"Coronel João Sá"', add
label define V0002_lbl 2202851 `"Coronel José Dias"', add
label define V0002_lbl 3512605 `"Coronel Macedo"', add
label define V0002_lbl 4204459 `"Coronel Martins"', add
label define V0002_lbl 3119500 `"Coronel Murta"', add
label define V0002_lbl 3119609 `"Coronel Pacheco"', add
label define V0002_lbl 4305934 `"Coronel Pilar"', add
label define V0002_lbl 5003157 `"Coronel Sapucaia"', add
label define V0002_lbl 4106506 `"Coronel Vivida"', add
label define V0002_lbl 3119708 `"Coronel Xavier Chaves"', add
label define V0002_lbl 3119807 `"Córrego Danta"', add
label define V0002_lbl 3119906 `"Córrego do Bom Jesus"', add
label define V0002_lbl 5205703 `"Córrego do Ouro"', add
label define V0002_lbl 3119955 `"Córrego Fundo"', add
label define V0002_lbl 3120003 `"Córrego Novo"', add
label define V0002_lbl 4204558 `"Correia Pinto"', add
label define V0002_lbl 2202901 `"Corrente"', add
label define V0002_lbl 2604700 `"Correntes"', add
label define V0002_lbl 2909307 `"Correntina"', add
label define V0002_lbl 2604809 `"Cortês"', add
label define V0002_lbl 5003207 `"Corumbá"', add
label define V0002_lbl 5205802 `"Corumbá de Goiás"', add
label define V0002_lbl 5205901 `"Corumbaíba"', add
label define V0002_lbl 3512704 `"Corumbataí"', add
label define V0002_lbl 4106555 `"Corumbataí do Sul"', add
label define V0002_lbl 1100072 `"Corumbiara"', add
label define V0002_lbl 4204509 `"Corupá"', add
label define V0002_lbl 2702306 `"Coruripe"', add
label define V0002_lbl 3512803 `"Cosmópolis"', add
label define V0002_lbl 3512902 `"Cosmorama"', add
label define V0002_lbl 1100080 `"Costa Marques"', add
label define V0002_lbl 5003256 `"Costa Rica"', add
label define V0002_lbl 2909406 `"Cotegipe"', add
label define V0002_lbl 3513009 `"Cotia"', add
label define V0002_lbl 4305959 `"Cotiporã"', add
label define V0002_lbl 5103379 `"Cotriguaçu"', add
label define V0002_lbl 3120102 `"Couto de Magalhães de Minas"', add
label define V0002_lbl 1706001 `"Couto Magalhães"', add
label define V0002_lbl 4305975 `"Coxilha"', add
label define V0002_lbl 5003306 `"Coxim"', add
label define V0002_lbl 2504850 `"Coxixola"', add
label define V0002_lbl 2702355 `"Craíbas"', add
label define V0002_lbl 2304103 `"Crateús"', add
label define V0002_lbl 2304202 `"Crato"', add
label define V0002_lbl 3513108 `"Cravinhos"', add
label define V0002_lbl 2909505 `"Cravolândia"', add
label define V0002_lbl 4204608 `"Criciúma"', add
label define V0002_lbl 3120151 `"Crisólita"', add
label define V0002_lbl 2909604 `"Crisópolis"', add
label define V0002_lbl 4306007 `"Crissiumal"', add
label define V0002_lbl 3120201 `"Cristais"', add
label define V0002_lbl 3513207 `"Cristais Paulista"', add
label define V0002_lbl 4306056 `"Cristal"', add
label define V0002_lbl 4306072 `"Cristal do Sul"', add
label define V0002_lbl 1706100 `"Cristalândia"', add
label define V0002_lbl 2203008 `"Cristalândia do Piauí"', add
label define V0002_lbl 3120300 `"Cristália"', add
label define V0002_lbl 5206206 `"Cristalina"', add
label define V0002_lbl 3120409 `"Cristiano Otoni"', add
label define V0002_lbl 5206305 `"Cristianópolis"', add
label define V0002_lbl 3120508 `"Cristina"', add
label define V0002_lbl 2801702 `"Cristinápolis"', add
label define V0002_lbl 2203107 `"Cristino Castro"', add
label define V0002_lbl 2909703 `"Cristópolis"', add
label define V0002_lbl 5206404 `"Crixás"', add
label define V0002_lbl 1706258 `"Crixás do Tocantins"', add
label define V0002_lbl 2304236 `"Croatá"', add
label define V0002_lbl 5206503 `"Cromínia"', add
label define V0002_lbl 3120607 `"Crucilândia"', add
label define V0002_lbl 2304251 `"Cruz"', add
label define V0002_lbl 4306106 `"Cruz Alta"', add
label define V0002_lbl 2909802 `"Cruz das Almas"', add
label define V0002_lbl 2504900 `"Cruz do Espírito Santo"', add
label define V0002_lbl 4106803 `"Cruz Machado"', add
label define V0002_lbl 3513306 `"Cruzália"', add
label define V0002_lbl 4306130 `"Cruzaltense"', add
label define V0002_lbl 3513405 `"Cruzeiro"', add
label define V0002_lbl 3120706 `"Cruzeiro da Fortaleza"', add
label define V0002_lbl 4106571 `"Cruzeiro do Iguaçu"', add
label define V0002_lbl 4106605 `"Cruzeiro do Oeste"', add
label define V0002_lbl 4106704 `"Cruzeiro do Sul"', add
label define V0002_lbl 4306205 `"Cruzeiro do Sul"', add
label define V0002_lbl 1200203 `"Cruzeiro do Sul"', add
label define V0002_lbl 2403004 `"Cruzeta"', add
label define V0002_lbl 3120805 `"Cruzília"', add
label define V0002_lbl 4106852 `"Cruzmaltina"', add
label define V0002_lbl 3513504 `"Cubatão"', add
label define V0002_lbl 2505006 `"Cubati"', add
label define V0002_lbl 5103403 `"Cuiabá"', add
label define V0002_lbl 2505105 `"Cuité"', add
label define V0002_lbl 2505238 `"Cuité de Mamanguape"', add
label define V0002_lbl 2505204 `"Cuitegi"', add
label define V0002_lbl 1100940 `"Cujubim"', add
label define V0002_lbl 5206602 `"Cumari"', add
label define V0002_lbl 2604908 `"Cumaru"', add
label define V0002_lbl 1502764 `"Cumaru do Norte"', add
label define V0002_lbl 2801900 `"Cumbe"', add
label define V0002_lbl 3513603 `"Cunha"', add
label define V0002_lbl 4204707 `"Cunha Porã"', add
label define V0002_lbl 4204756 `"Cunhataí"', add
label define V0002_lbl 3120839 `"Cuparaque"', add
label define V0002_lbl 2605004 `"Cupira"', add
label define V0002_lbl 2909901 `"Curaçá"', add
label define V0002_lbl 2203206 `"Curimatá"', add
label define V0002_lbl 1502772 `"Curionópolis"', add
label define V0002_lbl 4106902 `"Curitiba"', add
label define V0002_lbl 4204806 `"Curitibanos"', add
label define V0002_lbl 4107009 `"Curiúva"', add
label define V0002_lbl 2203230 `"Currais"', add
label define V0002_lbl 2403103 `"Currais Novos"', add
label define V0002_lbl 2505279 `"Curral de Cima"', add
label define V0002_lbl 3120870 `"Curral de Dentro"', add
label define V0002_lbl 2203271 `"Curral Novo do Piauí"', add
label define V0002_lbl 2505303 `"Curral Velho"', add
label define V0002_lbl 1502806 `"Curralinho"', add
label define V0002_lbl 2203255 `"Curralinhos"', add
label define V0002_lbl 1502855 `"Curuá"', add
label define V0002_lbl 1502905 `"Curuçá"', add
label define V0002_lbl 2103703 `"Cururupu"', add
label define V0002_lbl 5103437 `"Curvelândia"', add
label define V0002_lbl 3120904 `"Curvelo"', add
label define V0002_lbl 2605103 `"Custódia"', add
label define V0002_lbl 1600212 `"Cutias"', add
label define V0002_lbl 5206701 `"Damianópolis"', add
label define V0002_lbl 2505352 `"Damião"', add
label define V0002_lbl 5206800 `"Damolândia"', add
label define V0002_lbl 1706506 `"Darcinópolis"', add
label define V0002_lbl 2910008 `"Dário Meira"', add
label define V0002_lbl 3121001 `"Datas"', add
label define V0002_lbl 4306304 `"David Canabarro"', add
label define V0002_lbl 5206909 `"Davinópolis"', add
label define V0002_lbl 2103752 `"Davinópolis"', add
label define V0002_lbl 3121100 `"Delfim Moreira"', add
label define V0002_lbl 3121209 `"Delfinópolis"', add
label define V0002_lbl 2702405 `"Delmiro Gouveia"', add
label define V0002_lbl 3121258 `"Delta"', add
label define V0002_lbl 2203305 `"Demerval Lobão"', add
label define V0002_lbl 5103452 `"Denise"', add
label define V0002_lbl 5003454 `"Deodápolis"', add
label define V0002_lbl 2304269 `"Deputado Irapuan Pinheiro"', add
label define V0002_lbl 4306320 `"Derrubadas"', add
label define V0002_lbl 3513702 `"Descalvado"', add
label define V0002_lbl 4204905 `"Descanso"', add
label define V0002_lbl 3121308 `"Descoberto"', add
label define V0002_lbl 2505402 `"Desterro"', add
label define V0002_lbl 3121407 `"Desterro de Entre Rios"', add
label define V0002_lbl 3121506 `"Desterro do Melo"', add
label define V0002_lbl 4306353 `"Dezesseis de Novembro"', add
label define V0002_lbl 3513801 `"Diadema"', add
label define V0002_lbl 2505600 `"Diamante"', add
label define V0002_lbl 4107108 `"Diamante do Norte"', add
label define V0002_lbl 4107124 `"Diamante do Sul"', add
label define V0002_lbl 4107157 `"Diamante D'Oeste"', add
label define V0002_lbl 3121605 `"Diamantina"', add
label define V0002_lbl 5103502 `"Diamantino"', add
label define V0002_lbl 1707009 `"Dianópolis"', add
label define V0002_lbl 2910057 `"Dias d'Ávila"', add
label define V0002_lbl 4306379 `"Dilermando de Aguiar"', add
label define V0002_lbl 3121704 `"Diogo de Vasconcelos"', add
label define V0002_lbl 3121803 `"Dionísio"', add
label define V0002_lbl 4205001 `"Dionísio Cerqueira"', add
label define V0002_lbl 5207105 `"Diorama"', add
label define V0002_lbl 3513850 `"Dirce Reis"', add
label define V0002_lbl 2203354 `"Dirceu Arcoverde"', add
label define V0002_lbl 2802007 `"Divina Pastora"', add
label define V0002_lbl 3121902 `"Divinésia"', add
label define V0002_lbl 3122009 `"Divino"', add
label define V0002_lbl 3122108 `"Divino das Laranjeiras"', add
label define V0002_lbl 3201803 `"Divino de São Lourenço"', add
label define V0002_lbl 3513900 `"Divinolândia"', add
label define V0002_lbl 3122207 `"Divinolândia de Minas"', add
label define V0002_lbl 3122306 `"Divinópolis"', add
label define V0002_lbl 5208301 `"Divinópolis de Goiás"', add
label define V0002_lbl 1707108 `"Divinópolis do Tocantins"', add
label define V0002_lbl 3122355 `"Divisa Alegre"', add
label define V0002_lbl 3122405 `"Divisa Nova"', add
label define V0002_lbl 3122454 `"Divisópolis"', add
label define V0002_lbl 3514007 `"Dobrada"', add
label define V0002_lbl 3514106 `"Dois Córregos"', add
label define V0002_lbl 4306403 `"Dois Irmãos"', add
label define V0002_lbl 4306429 `"Dois Irmãos das Missões"', add
label define V0002_lbl 5003488 `"Dois Irmãos do Buriti"', add
label define V0002_lbl 1707207 `"Dois Irmãos do Tocantins"', add
label define V0002_lbl 4306452 `"Dois Lajeados"', add
label define V0002_lbl 2702504 `"Dois Riachos"', add
label define V0002_lbl 4107207 `"Dois Vizinhos"', add
label define V0002_lbl 3514205 `"Dolcinópolis"', add
label define V0002_lbl 5103601 `"Dom Aquino"', add
label define V0002_lbl 2910107 `"Dom Basílio"', add
label define V0002_lbl 3122470 `"Dom Bosco"', add
label define V0002_lbl 3122504 `"Dom Cavati"', add
label define V0002_lbl 1502939 `"Dom Eliseu"', add
label define V0002_lbl 2203404 `"Dom Expedito Lopes"', add
label define V0002_lbl 4306502 `"Dom Feliciano"', add
label define V0002_lbl 2203453 `"Dom Inocêncio"', add
label define V0002_lbl 3122603 `"Dom Joaquim"', add
label define V0002_lbl 2910206 `"Dom Macedo Costa"', add
label define V0002_lbl 4306601 `"Dom Pedrito"', add
label define V0002_lbl 2103802 `"Dom Pedro"', add
label define V0002_lbl 4306551 `"Dom Pedro de Alcântara"', add
label define V0002_lbl 3122702 `"Dom Silvério"', add
label define V0002_lbl 3122801 `"Dom Viçoso"', add
label define V0002_lbl 3201902 `"Domingos Martins"', add
label define V0002_lbl 2203420 `"Domingos Mourão"', add
label define V0002_lbl 4205100 `"Dona Emma"', add
label define V0002_lbl 3122900 `"Dona Euzébia"', add
label define V0002_lbl 4306700 `"Dona Francisca"', add
label define V0002_lbl 2505709 `"Dona Inês"', add
label define V0002_lbl 3123007 `"Dores de Campos"', add
label define V0002_lbl 3123106 `"Dores de Guanhães"', add
label define V0002_lbl 3123205 `"Dores do Indaiá"', add
label define V0002_lbl 3202009 `"Dores do Rio Preto"', add
label define V0002_lbl 3123304 `"Dores do Turvo"', add
label define V0002_lbl 3123403 `"Doresópolis"', add
label define V0002_lbl 2605152 `"Dormentes"', add
label define V0002_lbl 4107256 `"Douradina"', add
label define V0002_lbl 5003504 `"Douradina"', add
label define V0002_lbl 3514304 `"Dourado"', add
label define V0002_lbl 3123502 `"Douradoquara"', add
label define V0002_lbl 5003702 `"Dourados"', add
label define V0002_lbl 4107306 `"Doutor Camargo"', add
label define V0002_lbl 4306734 `"Doutor Maurício Cardoso"', add
label define V0002_lbl 4205159 `"Doutor Pedrinho"', add
label define V0002_lbl 4306759 `"Doutor Ricardo"', add
label define V0002_lbl 2403202 `"Doutor Severiano"', add
label define V0002_lbl 4128633 `"Doutor Ulysses"', add
label define V0002_lbl 5207253 `"Doverlândia"', add
label define V0002_lbl 3514403 `"Dracena"', add
label define V0002_lbl 3514502 `"Duartina"', add
label define V0002_lbl 3301603 `"Duas Barras"', add
label define V0002_lbl 2505808 `"Duas Estradas"', add
label define V0002_lbl 1707306 `"Dueré"', add
label define V0002_lbl 3514601 `"Dumont"', add
label define V0002_lbl 2103901 `"Duque Bacelar"', add
label define V0002_lbl 3301702 `"Duque de Caxias"', add
label define V0002_lbl 3123528 `"Durandé"', add
label define V0002_lbl 3514700 `"Echaporã"', add
label define V0002_lbl 3202108 `"Ecoporanga"', add
label define V0002_lbl 5207352 `"Edealina"', add
label define V0002_lbl 5207402 `"Edéia"', add
label define V0002_lbl 1301407 `"Eirunepé"', add
label define V0002_lbl 5003751 `"Eldorado"', add
label define V0002_lbl 3514809 `"Eldorado"', add
label define V0002_lbl 1502954 `"Eldorado do Carajás"', add
label define V0002_lbl 4306767 `"Eldorado do Sul"', add
label define V0002_lbl 2203503 `"Elesbão Veloso"', add
label define V0002_lbl 3514908 `"Elias Fausto"', add
label define V0002_lbl 2203602 `"Eliseu Martins"', add
label define V0002_lbl 3514924 `"Elisiário"', add
label define V0002_lbl 2910305 `"Elísio Medrado"', add
label define V0002_lbl 3123601 `"Elói Mendes"', add
label define V0002_lbl 2505907 `"Emas"', add
label define V0002_lbl 3514957 `"Embaúba"', add
label define V0002_lbl 3515004 `"Embu das Artes"', add
label define V0002_lbl 3515103 `"Embu-Guaçu"', add
label define V0002_lbl 3515129 `"Emilianópolis"', add
label define V0002_lbl 4306809 `"Encantado"', add
label define V0002_lbl 2403301 `"Encanto"', add
label define V0002_lbl 2910404 `"Encruzilhada"', add
label define V0002_lbl 4306908 `"Encruzilhada do Sul"', add
label define V0002_lbl 4107405 `"Enéas Marques"', add
label define V0002_lbl 4107504 `"Engenheiro Beltrão"', add
label define V0002_lbl 3123700 `"Engenheiro Caldas"', add
label define V0002_lbl 3515152 `"Engenheiro Coelho"', add
label define V0002_lbl 3123809 `"Engenheiro Navarro"', add
label define V0002_lbl 3301801 `"Engenheiro Paulo de Frontin"', add
label define V0002_lbl 4306924 `"Engenho Velho"', add
label define V0002_lbl 3123858 `"Entre Folhas"', add
label define V0002_lbl 2910503 `"Entre Rios"', add
label define V0002_lbl 4205175 `"Entre Rios"', add
label define V0002_lbl 3123908 `"Entre Rios de Minas"', add
label define V0002_lbl 4107538 `"Entre Rios do Oeste"', add
label define V0002_lbl 4306957 `"Entre Rios do Sul"', add
label define V0002_lbl 4306932 `"Entre-Ijuís"', add
label define V0002_lbl 1301506 `"Envira"', add
label define V0002_lbl 1200252 `"Epitaciolândia"', add
label define V0002_lbl 2403400 `"Equador"', add
label define V0002_lbl 4306973 `"Erebango"', add
label define V0002_lbl 4307005 `"Erechim"', add
label define V0002_lbl 2304277 `"Ereré"', add
label define V0002_lbl 2900504 `"Érico Cardoso"', add
label define V0002_lbl 4205191 `"Ermo"', add
label define V0002_lbl 4307054 `"Ernestina"', add
label define V0002_lbl 4307203 `"Erval Grande"', add
label define V0002_lbl 4307302 `"Erval Seco"', add
label define V0002_lbl 4205209 `"Erval Velho"', add
label define V0002_lbl 3124005 `"Ervália"', add
label define V0002_lbl 2605202 `"Escada"', add
label define V0002_lbl 4307401 `"Esmeralda"', add
label define V0002_lbl 3124104 `"Esmeraldas"', add
label define V0002_lbl 3124203 `"Espera Feliz"', add
label define V0002_lbl 2506004 `"Esperança"', add
label define V0002_lbl 4307450 `"Esperança do Sul"', add
label define V0002_lbl 4107520 `"Esperança Nova"', add
label define V0002_lbl 2203701 `"Esperantina"', add
label define V0002_lbl 1707405 `"Esperantina"', add
label define V0002_lbl 2104008 `"Esperantinópolis"', add
label define V0002_lbl 4107546 `"Espigão Alto do Iguaçu"', add
label define V0002_lbl 1100098 `"Espigão D'Oeste"', add
label define V0002_lbl 3124302 `"Espinosa"', add
label define V0002_lbl 2403509 `"Espírito Santo"', add
label define V0002_lbl 3124401 `"Espírito Santo do Dourado"', add
label define V0002_lbl 3515186 `"Espírito Santo do Pinhal"', add
label define V0002_lbl 3515194 `"Espírito Santo do Turvo"', add
label define V0002_lbl 2910602 `"Esplanada"', add
label define V0002_lbl 4307500 `"Espumoso"', add
label define V0002_lbl 4307559 `"Estação"', add
label define V0002_lbl 2802106 `"Estância"', add
label define V0002_lbl 4307609 `"Estância Velha"', add
label define V0002_lbl 4307708 `"Esteio"', add
label define V0002_lbl 3124500 `"Estiva"', add
label define V0002_lbl 3557303 `"Estiva Gerbi"', add
label define V0002_lbl 2104057 `"Estreito"', add
label define V0002_lbl 4307807 `"Estrela"', add
label define V0002_lbl 3124609 `"Estrela Dalva"', add
label define V0002_lbl 2702553 `"Estrela de Alagoas"', add
label define V0002_lbl 3124708 `"Estrela do Indaiá"', add
label define V0002_lbl 5207501 `"Estrela do Norte"', add
label define V0002_lbl 3515301 `"Estrela do Norte"', add
label define V0002_lbl 3124807 `"Estrela do Sul"', add
label define V0002_lbl 3515202 `"Estrela d'Oeste"', add
label define V0002_lbl 4307815 `"Estrela Velha"', add
label define V0002_lbl 2910701 `"Euclides da Cunha"', add
label define V0002_lbl 3515350 `"Euclides da Cunha Paulista"', add
label define V0002_lbl 4307831 `"Eugênio de Castro"', add
label define V0002_lbl 3124906 `"Eugenópolis"', add
label define V0002_lbl 2910727 `"Eunápolis"', add
label define V0002_lbl 2304285 `"Eusébio"', add
label define V0002_lbl 3125002 `"Ewbank da Câmara"', add
label define V0002_lbl 3125101 `"Extrema"', add
label define V0002_lbl 2403608 `"Extremoz"', add
label define V0002_lbl 2605301 `"Exu"', add
label define V0002_lbl 2506103 `"Fagundes"', add
label define V0002_lbl 4307864 `"Fagundes Varela"', add
label define V0002_lbl 5207535 `"Faina"', add
label define V0002_lbl 3125200 `"Fama"', add
label define V0002_lbl 3125309 `"Faria Lemos"', add
label define V0002_lbl 2304301 `"Farias Brito"', add
label define V0002_lbl 1503002 `"Faro"', add
label define V0002_lbl 4107553 `"Farol"', add
label define V0002_lbl 4307906 `"Farroupilha"', add
label define V0002_lbl 3515400 `"Fartura"', add
label define V0002_lbl 2203750 `"Fartura do Piauí"', add
label define V0002_lbl 1707553 `"Fátima"', add
label define V0002_lbl 2910750 `"Fátima"', add
label define V0002_lbl 5003801 `"Fátima do Sul"', add
label define V0002_lbl 4107603 `"Faxinal"', add
label define V0002_lbl 4308003 `"Faxinal do Soturno"', add
label define V0002_lbl 4205308 `"Faxinal dos Guedes"', add
label define V0002_lbl 4308052 `"Faxinalzinho"', add
label define V0002_lbl 5207600 `"Fazenda Nova"', add
label define V0002_lbl 4107652 `"Fazenda Rio Grande"', add
label define V0002_lbl 4308078 `"Fazenda Vilanova"', add
label define V0002_lbl 1200302 `"Feijó"', add
label define V0002_lbl 2910776 `"Feira da Mata"', add
label define V0002_lbl 2910800 `"Feira de Santana"', add
label define V0002_lbl 2702603 `"Feira Grande"', add
label define V0002_lbl 2802205 `"Feira Nova"', add
label define V0002_lbl 2605400 `"Feira Nova"', add
label define V0002_lbl 2104073 `"Feira Nova do Maranhão"', add
label define V0002_lbl 3125408 `"Felício dos Santos"', add
label define V0002_lbl 2403707 `"Felipe Guerra"', add
label define V0002_lbl 3125606 `"Felisburgo"', add
label define V0002_lbl 3125705 `"Felixlândia"', add
label define V0002_lbl 4308102 `"Feliz"', add
label define V0002_lbl 2702702 `"Feliz Deserto"', add
label define V0002_lbl 5103700 `"Feliz Natal"', add
label define V0002_lbl 4107702 `"Fênix"', add
label define V0002_lbl 4107736 `"Fernandes Pinheiro"', add
label define V0002_lbl 3125804 `"Fernandes Tourinho"', add
label define V0002_lbl 2605459 `"Fernando de Noronha"', add
label define V0002_lbl 2104081 `"Fernando Falcão"', add
label define V0002_lbl 2403756 `"Fernando Pedroza"', add
label define V0002_lbl 3515608 `"Fernando Prestes"', add
label define V0002_lbl 3515509 `"Fernandópolis"', add
label define V0002_lbl 3515657 `"Fernão"', add
label define V0002_lbl 3515707 `"Ferraz de Vasconcelos"', add
label define V0002_lbl 1600238 `"Ferreira Gomes"', add
label define V0002_lbl 2605509 `"Ferreiros"', add
label define V0002_lbl 3125903 `"Ferros"', add
label define V0002_lbl 3125952 `"Fervedouro"', add
label define V0002_lbl 4107751 `"Figueira"', add
label define V0002_lbl 5003900 `"Figueirão"', add
label define V0002_lbl 1707652 `"Figueirópolis"', add
label define V0002_lbl 5103809 `"Figueirópolis D'Oeste"', add
label define V0002_lbl 1707702 `"Filadélfia"', add
label define V0002_lbl 2910859 `"Filadélfia"', add
label define V0002_lbl 2910909 `"Firmino Alves"', add
label define V0002_lbl 5207808 `"Firminópolis"', add
label define V0002_lbl 2702801 `"Flexeiras"', add
label define V0002_lbl 4107850 `"Flor da Serra do Sul"', add
label define V0002_lbl 4205357 `"Flor do Sertão"', add
label define V0002_lbl 3515806 `"Flora Rica"', add
label define V0002_lbl 4107801 `"Floraí"', add
label define V0002_lbl 2403806 `"Florânia"', add
label define V0002_lbl 3515905 `"Floreal"', add
label define V0002_lbl 2605608 `"Flores"', add
label define V0002_lbl 4308201 `"Flores da Cunha"', add
label define V0002_lbl 5207907 `"Flores de Goiás"', add
label define V0002_lbl 2203800 `"Flores do Piauí"', add
label define V0002_lbl 2605707 `"Floresta"', add
label define V0002_lbl 4107900 `"Floresta"', add
label define V0002_lbl 2911006 `"Floresta Azul"', add
label define V0002_lbl 1503044 `"Floresta do Araguaia"', add
label define V0002_lbl 2203859 `"Floresta do Piauí"', add
label define V0002_lbl 3126000 `"Florestal"', add
label define V0002_lbl 4108007 `"Florestópolis"', add
label define V0002_lbl 2203909 `"Floriano"', add
label define V0002_lbl 4308250 `"Floriano Peixoto"', add
label define V0002_lbl 4205407 `"Florianópolis"', add
label define V0002_lbl 4108106 `"Flórida"', add
label define V0002_lbl 3516002 `"Flórida Paulista"', add
label define V0002_lbl 3516101 `"Florínea"', add
label define V0002_lbl 1301605 `"Fonte Boa"', add
label define V0002_lbl 4308300 `"Fontoura Xavier"', add
label define V0002_lbl 3126109 `"Formiga"', add
label define V0002_lbl 4308409 `"Formigueiro"', add
label define V0002_lbl 5208004 `"Formosa"', add
label define V0002_lbl 2104099 `"Formosa da Serra Negra"', add
label define V0002_lbl 4108205 `"Formosa do Oeste"', add
label define V0002_lbl 2911105 `"Formosa do Rio Preto"', add
label define V0002_lbl 4205431 `"Formosa do Sul"', add
label define V0002_lbl 5208103 `"Formoso"', add
label define V0002_lbl 3126208 `"Formoso"', add
label define V0002_lbl 1708205 `"Formoso do Araguaia"', add
label define V0002_lbl 4308433 `"Forquetinha"', add
label define V0002_lbl 2304350 `"Forquilha"', add
label define V0002_lbl 4205456 `"Forquilhinha"', add
label define V0002_lbl 2304400 `"Fortaleza"', add
label define V0002_lbl 3126307 `"Fortaleza de Minas"', add
label define V0002_lbl 2104107 `"Fortaleza dos Nogueiras"', add
label define V0002_lbl 4308458 `"Fortaleza dos Valos"', add
label define V0002_lbl 2304459 `"Fortim"', add
label define V0002_lbl 2104206 `"Fortuna"', add
label define V0002_lbl 3126406 `"Fortuna de Minas"', add
label define V0002_lbl 4108304 `"Foz do Iguaçu"', add
label define V0002_lbl 4108452 `"Foz do Jordão"', add
label define V0002_lbl 4205506 `"Fraiburgo"', add
label define V0002_lbl 3516200 `"Franca"', add
label define V0002_lbl 2204006 `"Francinópolis"', add
label define V0002_lbl 4108320 `"Francisco Alves"', add
label define V0002_lbl 2204105 `"Francisco Ayres"', add
label define V0002_lbl 3126505 `"Francisco Badaró"', add
label define V0002_lbl 4108403 `"Francisco Beltrão"', add
label define V0002_lbl 2403905 `"Francisco Dantas"', add
label define V0002_lbl 3126604 `"Francisco Dumont"', add
label define V0002_lbl 2204154 `"Francisco Macedo"', add
label define V0002_lbl 3516309 `"Francisco Morato"', add
label define V0002_lbl 3126703 `"Francisco Sá"', add
label define V0002_lbl 2204204 `"Francisco Santos"', add
label define V0002_lbl 3126752 `"Franciscópolis"', add
label define V0002_lbl 3516408 `"Franco da Rocha"', add
label define V0002_lbl 2304509 `"Frecheirinha"', add
label define V0002_lbl 4308508 `"Frederico Westphalen"', add
label define V0002_lbl 3126802 `"Frei Gaspar"', add
label define V0002_lbl 3126901 `"Frei Inocêncio"', add
label define V0002_lbl 3126950 `"Frei Lagonegro"', add
label define V0002_lbl 2506202 `"Frei Martinho"', add
label define V0002_lbl 2605806 `"Frei Miguelinho"', add
label define V0002_lbl 2802304 `"Frei Paulo"', add
label define V0002_lbl 4205555 `"Frei Rogério"', add
label define V0002_lbl 3127008 `"Fronteira"', add
label define V0002_lbl 3127057 `"Fronteira dos Vales"', add
label define V0002_lbl 2204303 `"Fronteiras"', add
label define V0002_lbl 3127073 `"Fruta de Leite"', add
label define V0002_lbl 3127107 `"Frutal"', add
label define V0002_lbl 2404002 `"Frutuoso Gomes"', add
label define V0002_lbl 3202207 `"Fundão"', add
label define V0002_lbl 3127206 `"Funilândia"', add
label define V0002_lbl 3516507 `"Gabriel Monteiro"', add
label define V0002_lbl 2506251 `"Gado Bravo"', add
label define V0002_lbl 3516606 `"Gália"', add
label define V0002_lbl 3127305 `"Galiléia"', add
label define V0002_lbl 2404101 `"Galinhos"', add
label define V0002_lbl 4205605 `"Galvão"', add
label define V0002_lbl 2605905 `"Gameleira"', add
label define V0002_lbl 5208152 `"Gameleira de Goiás"', add
label define V0002_lbl 3127339 `"Gameleiras"', add
label define V0002_lbl 2911204 `"Gandu"', add
label define V0002_lbl 2606002 `"Garanhuns"', add
label define V0002_lbl 2802403 `"Gararu"', add
label define V0002_lbl 3516705 `"Garça"', add
label define V0002_lbl 4308607 `"Garibaldi"', add
label define V0002_lbl 4205704 `"Garopaba"', add
label define V0002_lbl 1503077 `"Garrafão do Norte"', add
label define V0002_lbl 4308656 `"Garruchos"', add
label define V0002_lbl 4205803 `"Garuva"', add
label define V0002_lbl 4205902 `"Gaspar"', add
label define V0002_lbl 3516804 `"Gastão Vidigal"', add
label define V0002_lbl 5103858 `"Gaúcha do Norte"', add
label define V0002_lbl 4308706 `"Gaurama"', add
label define V0002_lbl 2911253 `"Gavião"', add
label define V0002_lbl 3516853 `"Gavião Peixoto"', add
label define V0002_lbl 2204352 `"Geminiano"', add
label define V0002_lbl 4308805 `"General Câmara"', add
label define V0002_lbl 5103908 `"General Carneiro"', add
label define V0002_lbl 4108502 `"General Carneiro"', add
label define V0002_lbl 2802502 `"General Maynard"', add
label define V0002_lbl 3516903 `"General Salgado"', add
label define V0002_lbl 2304608 `"General Sampaio"', add
label define V0002_lbl 4308854 `"Gentil"', add
label define V0002_lbl 2911303 `"Gentio do Ouro"', add
label define V0002_lbl 3517000 `"Getulina"', add
label define V0002_lbl 4308904 `"Getúlio Vargas"', add
label define V0002_lbl 2204402 `"Gilbués"', add
label define V0002_lbl 2702900 `"Girau do Ponciano"', add
label define V0002_lbl 4309001 `"Giruá"', add
label define V0002_lbl 3127354 `"Glaucilândia"', add
label define V0002_lbl 3517109 `"Glicério"', add
label define V0002_lbl 2911402 `"Glória"', add
label define V0002_lbl 5004007 `"Glória de Dourados"', add
label define V0002_lbl 2606101 `"Glória do Goitá"', add
label define V0002_lbl 5103957 `"Glória D'Oeste"', add
label define V0002_lbl 4309050 `"Glorinha"', add
label define V0002_lbl 2104305 `"Godofredo Viana"', add
label define V0002_lbl 4108551 `"Godoy Moreira"', add
label define V0002_lbl 3127370 `"Goiabeira"', add
label define V0002_lbl 2606200 `"Goiana"', add
label define V0002_lbl 3127388 `"Goianá"', add
label define V0002_lbl 5208400 `"Goianápolis"', add
label define V0002_lbl 5208509 `"Goiandira"', add
label define V0002_lbl 5208608 `"Goianésia"', add
label define V0002_lbl 1503093 `"Goianésia do Pará"', add
label define V0002_lbl 5208707 `"Goiânia"', add
label define V0002_lbl 2404200 `"Goianinha"', add
label define V0002_lbl 5208806 `"Goianira"', add
label define V0002_lbl 1708304 `"Goianorte"', add
label define V0002_lbl 5208905 `"Goiás"', add
label define V0002_lbl 1709005 `"Goiatins"', add
label define V0002_lbl 5209101 `"Goiatuba"', add
label define V0002_lbl 4108601 `"Goioerê"', add
label define V0002_lbl 4108650 `"Goioxim"', add
label define V0002_lbl 3127404 `"Gonçalves"', add
label define V0002_lbl 2104404 `"Gonçalves Dias"', add
label define V0002_lbl 2911501 `"Gongogi"', add
label define V0002_lbl 3127503 `"Gonzaga"', add
label define V0002_lbl 3127602 `"Gouveia"', add
label define V0002_lbl 5209150 `"Gouvelândia"', add
label define V0002_lbl 2104503 `"Governador Archer"', add
label define V0002_lbl 4206009 `"Governador Celso Ramos"', add
label define V0002_lbl 2404309 `"Governador Dix-Sept Rosado"', add
label define V0002_lbl 2104552 `"Governador Edison Lobão"', add
label define V0002_lbl 2104602 `"Governador Eugênio Barros"', add
label define V0002_lbl 1101005 `"Governador Jorge Teixeira"', add
label define V0002_lbl 3202256 `"Governador Lindenberg"', add
label define V0002_lbl 2104628 `"Governador Luiz Rocha"', add
label define V0002_lbl 2911600 `"Governador Mangabeira"', add
label define V0002_lbl 2104651 `"Governador Newton Bello"', add
label define V0002_lbl 2104677 `"Governador Nunes Freire"', add
label define V0002_lbl 3127701 `"Governador Valadares"', add
label define V0002_lbl 2304657 `"Graça"', add
label define V0002_lbl 2104701 `"Graça Aranha"', add
label define V0002_lbl 2802601 `"Gracho Cardoso"', add
label define V0002_lbl 2104800 `"Grajaú"', add
label define V0002_lbl 4309100 `"Gramado"', add
label define V0002_lbl 4309126 `"Gramado dos Loureiros"', add
label define V0002_lbl 4309159 `"Gramado Xavier"', add
label define V0002_lbl 4108700 `"Grandes Rios"', add
label define V0002_lbl 2606309 `"Granito"', add
label define V0002_lbl 2304707 `"Granja"', add
label define V0002_lbl 2304806 `"Granjeiro"', add
label define V0002_lbl 3127800 `"Grão Mogol"', add
label define V0002_lbl 4206108 `"Grão-Pará"', add
label define V0002_lbl 2606408 `"Gravatá"', add
label define V0002_lbl 4309209 `"Gravataí"', add
label define V0002_lbl 4206207 `"Gravatal"', add
label define V0002_lbl 2304905 `"Groaíras"', add
label define V0002_lbl 2404408 `"Grossos"', add
label define V0002_lbl 3127909 `"Grupiara"', add
label define V0002_lbl 4309258 `"Guabiju"', add
label define V0002_lbl 4206306 `"Guabiruba"', add
label define V0002_lbl 3202306 `"Guaçuí"', add
label define V0002_lbl 2204501 `"Guadalupe"', add
label define V0002_lbl 4309308 `"Guaíba"', add
label define V0002_lbl 3517208 `"Guaiçara"', add
label define V0002_lbl 3517307 `"Guaimbê"', add
label define V0002_lbl 3517406 `"Guaíra"', add
label define V0002_lbl 4108809 `"Guaíra"', add
label define V0002_lbl 4108908 `"Guairaçá"', add
label define V0002_lbl 2304954 `"Guaiúba"', add
label define V0002_lbl 1301654 `"Guajará"', add
label define V0002_lbl 1100106 `"Guajará-Mirim"', add
label define V0002_lbl 2911659 `"Guajeru"', add
label define V0002_lbl 2404507 `"Guamaré"', add
label define V0002_lbl 4108957 `"Guamiranga"', add
label define V0002_lbl 2911709 `"Guanambi"', add
label define V0002_lbl 3128006 `"Guanhães"', add
label define V0002_lbl 3128105 `"Guapé"', add
label define V0002_lbl 3517505 `"Guapiaçu"', add
label define V0002_lbl 3517604 `"Guapiara"', add
label define V0002_lbl 3301850 `"Guapimirim"', add
label define V0002_lbl 4109005 `"Guapirama"', add
label define V0002_lbl 5209200 `"Guapó"', add
label define V0002_lbl 4309407 `"Guaporé"', add
label define V0002_lbl 4109104 `"Guaporema"', add
label define V0002_lbl 3517703 `"Guará"', add
label define V0002_lbl 2506301 `"Guarabira"', add
label define V0002_lbl 3517802 `"Guaraçaí"', add
label define V0002_lbl 3517901 `"Guaraci"', add
label define V0002_lbl 4109203 `"Guaraci"', add
label define V0002_lbl 4206405 `"Guaraciaba"', add
label define V0002_lbl 3128204 `"Guaraciaba"', add
label define V0002_lbl 2305001 `"Guaraciaba do Norte"', add
label define V0002_lbl 3128253 `"Guaraciama"', add
label define V0002_lbl 1709302 `"Guaraí"', add
label define V0002_lbl 5209291 `"Guaraíta"', add
label define V0002_lbl 2305100 `"Guaramiranga"', add
label define V0002_lbl 4206504 `"Guaramirim"', add
label define V0002_lbl 3128303 `"Guaranésia"', add
label define V0002_lbl 3128402 `"Guarani"', add
label define V0002_lbl 4309506 `"Guarani das Missões"', add
label define V0002_lbl 5209408 `"Guarani de Goiás"', add
label define V0002_lbl 3518008 `"Guarani d'Oeste"', add
label define V0002_lbl 4109302 `"Guaraniaçu"', add
label define V0002_lbl 3518107 `"Guarantã"', add
label define V0002_lbl 5104104 `"Guarantã do Norte"', add
label define V0002_lbl 3202405 `"Guarapari"', add
label define V0002_lbl 4109401 `"Guarapuava"', add
label define V0002_lbl 4109500 `"Guaraqueçaba"', add
label define V0002_lbl 3128501 `"Guarará"', add
label define V0002_lbl 3518206 `"Guararapes"', add
label define V0002_lbl 3518305 `"Guararema"', add
label define V0002_lbl 2911808 `"Guaratinga"', add
label define V0002_lbl 3518404 `"Guaratinguetá"', add
label define V0002_lbl 4109609 `"Guaratuba"', add
label define V0002_lbl 3128600 `"Guarda-Mor"', add
label define V0002_lbl 3518503 `"Guareí"', add
label define V0002_lbl 3518602 `"Guariba"', add
label define V0002_lbl 2204550 `"Guaribas"', add
label define V0002_lbl 5209457 `"Guarinos"', add
label define V0002_lbl 3518701 `"Guarujá"', add
label define V0002_lbl 4206603 `"Guarujá do Sul"', add
label define V0002_lbl 3518800 `"Guarulhos"', add
label define V0002_lbl 4206652 `"Guatambú"', add
label define V0002_lbl 3518859 `"Guatapará"', add
label define V0002_lbl 3128709 `"Guaxupé"', add
label define V0002_lbl 5004106 `"Guia Lopes da Laguna"', add
label define V0002_lbl 3128808 `"Guidoval"', add
label define V0002_lbl 2104909 `"Guimarães"', add
label define V0002_lbl 3128907 `"Guimarânia"', add
label define V0002_lbl 5104203 `"Guiratinga"', add
label define V0002_lbl 3129004 `"Guiricema"', add
label define V0002_lbl 3129103 `"Gurinhatã"', add
label define V0002_lbl 2506400 `"Gurinhém"', add
label define V0002_lbl 2506509 `"Gurjão"', add
label define V0002_lbl 1503101 `"Gurupá"', add
label define V0002_lbl 1709500 `"Gurupi"', add
label define V0002_lbl 3518909 `"Guzolândia"', add
label define V0002_lbl 4309555 `"Harmonia"', add
label define V0002_lbl 5209606 `"Heitoraí"', add
label define V0002_lbl 3129202 `"Heliodora"', add
label define V0002_lbl 2911857 `"Heliópolis"', add
label define V0002_lbl 3519006 `"Herculândia"', add
label define V0002_lbl 4307104 `"Herval"', add
label define V0002_lbl 4206702 `"Herval d'Oeste"', add
label define V0002_lbl 4309571 `"Herveiras"', add
label define V0002_lbl 5209705 `"Hidrolândia"', add
label define V0002_lbl 2305209 `"Hidrolândia"', add
label define V0002_lbl 5209804 `"Hidrolina"', add
label define V0002_lbl 3519055 `"Holambra"', add
label define V0002_lbl 4109658 `"Honório Serpa"', add
label define V0002_lbl 2305233 `"Horizonte"', add
label define V0002_lbl 4309605 `"Horizontina"', add
label define V0002_lbl 3519071 `"Hortolândia"', add
label define V0002_lbl 2204600 `"Hugo Napoleão"', add
label define V0002_lbl 4309654 `"Hulha Negra"', add
label define V0002_lbl 4309704 `"Humaitá"', add
label define V0002_lbl 1301704 `"Humaitá"', add
label define V0002_lbl 2105005 `"Humberto de Campos"', add
label define V0002_lbl 3519105 `"Iacanga"', add
label define V0002_lbl 5209903 `"Iaciara"', add
label define V0002_lbl 3519204 `"Iacri"', add
label define V0002_lbl 2911907 `"Iaçu"', add
label define V0002_lbl 3129301 `"Iapu"', add
label define V0002_lbl 3519253 `"Iaras"', add
label define V0002_lbl 2606507 `"Iati"', add
label define V0002_lbl 4109708 `"Ibaiti"', add
label define V0002_lbl 4309753 `"Ibarama"', add
label define V0002_lbl 2305266 `"Ibaretama"', add
label define V0002_lbl 3519303 `"Ibaté"', add
label define V0002_lbl 2703007 `"Ibateguara"', add
label define V0002_lbl 3202454 `"Ibatiba"', add
label define V0002_lbl 4109757 `"Ibema"', add
label define V0002_lbl 3129400 `"Ibertioga"', add
label define V0002_lbl 3129509 `"Ibiá"', add
label define V0002_lbl 4309803 `"Ibiaçá"', add
label define V0002_lbl 3129608 `"Ibiaí"', add
label define V0002_lbl 4206751 `"Ibiam"', add
label define V0002_lbl 2305308 `"Ibiapina"', add
label define V0002_lbl 2506608 `"Ibiara"', add
label define V0002_lbl 2912004 `"Ibiassucê"', add
label define V0002_lbl 2912103 `"Ibicaraí"', add
label define V0002_lbl 4206801 `"Ibicaré"', add
label define V0002_lbl 2912202 `"Ibicoara"', add
label define V0002_lbl 2912301 `"Ibicuí"', add
label define V0002_lbl 2305332 `"Ibicuitinga"', add
label define V0002_lbl 2606606 `"Ibimirim"', add
label define V0002_lbl 2912400 `"Ibipeba"', add
label define V0002_lbl 2912509 `"Ibipitanga"', add
label define V0002_lbl 4109807 `"Ibiporã"', add
label define V0002_lbl 2912608 `"Ibiquera"', add
label define V0002_lbl 3519402 `"Ibirá"', add
label define V0002_lbl 3129657 `"Ibiracatu"', add
label define V0002_lbl 3129707 `"Ibiraci"', add
label define V0002_lbl 3202504 `"Ibiraçu"', add
label define V0002_lbl 4309902 `"Ibiraiaras"', add
label define V0002_lbl 2606705 `"Ibirajuba"', add
label define V0002_lbl 4206900 `"Ibirama"', add
label define V0002_lbl 2912707 `"Ibirapitanga"', add
label define V0002_lbl 2912806 `"Ibirapuã"', add
label define V0002_lbl 4309951 `"Ibirapuitã"', add
label define V0002_lbl 3519501 `"Ibirarema"', add
label define V0002_lbl 2912905 `"Ibirataia"', add
label define V0002_lbl 3129806 `"Ibirité"', add
label define V0002_lbl 4310009 `"Ibirubá"', add
label define V0002_lbl 2913002 `"Ibitiara"', add
label define V0002_lbl 3519600 `"Ibitinga"', add
label define V0002_lbl 3202553 `"Ibitirama"', add
label define V0002_lbl 2913101 `"Ibititá"', add
label define V0002_lbl 3129905 `"Ibitiúra de Minas"', add
label define V0002_lbl 3130002 `"Ibituruna"', add
label define V0002_lbl 3519709 `"Ibiúna"', add
label define V0002_lbl 2913200 `"Ibotirama"', add
label define V0002_lbl 2305357 `"Icapuí"', add
label define V0002_lbl 4207007 `"Içara"', add
label define V0002_lbl 3130051 `"Icaraí de Minas"', add
label define V0002_lbl 4109906 `"Icaraíma"', add
label define V0002_lbl 2105104 `"Icatu"', add
label define V0002_lbl 3519808 `"Icém"', add
label define V0002_lbl 2913309 `"Ichu"', add
label define V0002_lbl 2305407 `"Icó"', add
label define V0002_lbl 3202603 `"Iconha"', add
label define V0002_lbl 2404606 `"Ielmo Marinho"', add
label define V0002_lbl 3519907 `"Iepê"', add
label define V0002_lbl 2703106 `"Igaci"', add
label define V0002_lbl 2913408 `"Igaporã"', add
label define V0002_lbl 3520004 `"Igaraçu do Tietê"', add
label define V0002_lbl 2502607 `"Igaracy"', add
label define V0002_lbl 3520103 `"Igarapava"', add
label define V0002_lbl 3130101 `"Igarapé"', add
label define V0002_lbl 2105153 `"Igarapé do Meio"', add
label define V0002_lbl 2105203 `"Igarapé Grande"', add
label define V0002_lbl 1503200 `"Igarapé-Açu"', add
label define V0002_lbl 1503309 `"Igarapé-Miri"', add
label define V0002_lbl 2606804 `"Igarassu"', add
label define V0002_lbl 3520202 `"Igaratá"', add
label define V0002_lbl 3130200 `"Igaratinga"', add
label define V0002_lbl 2913457 `"Igrapiúna"', add
label define V0002_lbl 2703205 `"Igreja Nova"', add
label define V0002_lbl 4310108 `"Igrejinha"', add
label define V0002_lbl 3301876 `"Iguaba Grande"', add
label define V0002_lbl 2913507 `"Iguaí"', add
label define V0002_lbl 3520301 `"Iguape"', add
label define V0002_lbl 4110003 `"Iguaraçu"', add
label define V0002_lbl 2606903 `"Iguaracy"', add
label define V0002_lbl 3130309 `"Iguatama"', add
label define V0002_lbl 5004304 `"Iguatemi"', add
label define V0002_lbl 4110052 `"Iguatu"', add
label define V0002_lbl 2305506 `"Iguatu"', add
label define V0002_lbl 3130408 `"Ijaci"', add
label define V0002_lbl 4310207 `"Ijuí"', add
label define V0002_lbl 3520426 `"Ilha Comprida"', add
label define V0002_lbl 2802700 `"Ilha das Flores"', add
label define V0002_lbl 2607604 `"Ilha de Itamaracá"', add
label define V0002_lbl 2204659 `"Ilha Grande"', add
label define V0002_lbl 3520442 `"Ilha Solteira"', add
label define V0002_lbl 3520400 `"Ilhabela"', add
label define V0002_lbl 2913606 `"Ilhéus"', add
label define V0002_lbl 4207106 `"Ilhota"', add
label define V0002_lbl 3130507 `"Ilicínea"', add
label define V0002_lbl 4310306 `"Ilópolis"', add
label define V0002_lbl 2506707 `"Imaculada"', add
label define V0002_lbl 4207205 `"Imaruí"', add
label define V0002_lbl 4110078 `"Imbaú"', add
label define V0002_lbl 4310330 `"Imbé"', add
label define V0002_lbl 3130556 `"Imbé de Minas"', add
label define V0002_lbl 4207304 `"Imbituba"', add
label define V0002_lbl 4110102 `"Imbituva"', add
label define V0002_lbl 4207403 `"Imbuia"', add
label define V0002_lbl 4310363 `"Imigrante"', add
label define V0002_lbl 2105302 `"Imperatriz"', add
label define V0002_lbl 4110201 `"Inácio Martins"', add
label define V0002_lbl 5209937 `"Inaciolândia"', add
label define V0002_lbl 4110300 `"Inajá"', add
label define V0002_lbl 2607000 `"Inajá"', add
label define V0002_lbl 3130606 `"Inconfidentes"', add
label define V0002_lbl 3130655 `"Indaiabira"', add
label define V0002_lbl 4207502 `"Indaial"', add
label define V0002_lbl 3520509 `"Indaiatuba"', add
label define V0002_lbl 4310405 `"Independência"', add
label define V0002_lbl 2305605 `"Independência"', add
label define V0002_lbl 3520608 `"Indiana"', add
label define V0002_lbl 4110409 `"Indianópolis"', add
label define V0002_lbl 3130705 `"Indianópolis"', add
label define V0002_lbl 3520707 `"Indiaporã"', add
label define V0002_lbl 5209952 `"Indiara"', add
label define V0002_lbl 2802809 `"Indiaroba"', add
label define V0002_lbl 5104500 `"Indiavaí"', add
label define V0002_lbl 2506806 `"Ingá"', add
label define V0002_lbl 3130804 `"Ingaí"', add
label define V0002_lbl 2607109 `"Ingazeira"', add
label define V0002_lbl 4310413 `"Inhacorá"', add
label define V0002_lbl 2913705 `"Inhambupe"', add
label define V0002_lbl 1503408 `"Inhangapi"', add
label define V0002_lbl 2703304 `"Inhapi"', add
label define V0002_lbl 3130903 `"Inhapim"', add
label define V0002_lbl 3131000 `"Inhaúma"', add
label define V0002_lbl 2204709 `"Inhuma"', add
label define V0002_lbl 5210000 `"Inhumas"', add
label define V0002_lbl 3131109 `"Inimutaba"', add
label define V0002_lbl 5004403 `"Inocência"', add
label define V0002_lbl 3520806 `"Inúbia Paulista"', add
label define V0002_lbl 4207577 `"Iomerê"', add
label define V0002_lbl 3131158 `"Ipaba"', add
label define V0002_lbl 5210109 `"Ipameri"', add
label define V0002_lbl 3131208 `"Ipanema"', add
label define V0002_lbl 2404705 `"Ipanguaçu"', add
label define V0002_lbl 2305654 `"Ipaporanga"', add
label define V0002_lbl 3131307 `"Ipatinga"', add
label define V0002_lbl 2305704 `"Ipaumirim"', add
label define V0002_lbl 3520905 `"Ipaussu"', add
label define V0002_lbl 4310439 `"Ipê"', add
label define V0002_lbl 2913804 `"Ipecaetá"', add
label define V0002_lbl 3521002 `"Iperó"', add
label define V0002_lbl 3521101 `"Ipeúna"', add
label define V0002_lbl 3131406 `"Ipiaçu"', add
label define V0002_lbl 2913903 `"Ipiaú"', add
label define V0002_lbl 3521150 `"Ipiguá"', add
label define V0002_lbl 4207601 `"Ipira"', add
label define V0002_lbl 2914000 `"Ipirá"', add
label define V0002_lbl 4110508 `"Ipiranga"', add
label define V0002_lbl 5210158 `"Ipiranga de Goiás"', add
label define V0002_lbl 5104526 `"Ipiranga do Norte"', add
label define V0002_lbl 2204808 `"Ipiranga do Piauí"', add
label define V0002_lbl 4310462 `"Ipiranga do Sul"', add
label define V0002_lbl 1301803 `"Ipixuna"', add
label define V0002_lbl 1503457 `"Ipixuna do Pará"', add
label define V0002_lbl 2607208 `"Ipojuca"', add
label define V0002_lbl 5210208 `"Iporá"', add
label define V0002_lbl 4110607 `"Iporã"', add
label define V0002_lbl 4207650 `"Iporã do Oeste"', add
label define V0002_lbl 3521200 `"Iporanga"', add
label define V0002_lbl 2305803 `"Ipu"', add
label define V0002_lbl 3521309 `"Ipuã"', add
label define V0002_lbl 4207684 `"Ipuaçu"', add
label define V0002_lbl 2607307 `"Ipubi"', add
label define V0002_lbl 2404804 `"Ipueira"', add
label define V0002_lbl 2305902 `"Ipueiras"', add
label define V0002_lbl 1709807 `"Ipueiras"', add
label define V0002_lbl 3131505 `"Ipuiúna"', add
label define V0002_lbl 4207700 `"Ipumirim"', add
label define V0002_lbl 2914109 `"Ipupiara"', add
label define V0002_lbl 1400282 `"Iracema"', add
label define V0002_lbl 2306009 `"Iracema"', add
label define V0002_lbl 4110656 `"Iracema do Oeste"', add
label define V0002_lbl 3521408 `"Iracemápolis"', add
label define V0002_lbl 4207759 `"Iraceminha"', add
label define V0002_lbl 4310504 `"Iraí"', add
label define V0002_lbl 3131604 `"Iraí de Minas"', add
label define V0002_lbl 2914208 `"Irajuba"', add
label define V0002_lbl 2914307 `"Iramaia"', add
label define V0002_lbl 1301852 `"Iranduba"', add
label define V0002_lbl 4207809 `"Irani"', add
label define V0002_lbl 3521507 `"Irapuã"', add
label define V0002_lbl 3521606 `"Irapuru"', add
label define V0002_lbl 2914406 `"Iraquara"', add
label define V0002_lbl 2914505 `"Irará"', add
label define V0002_lbl 4110706 `"Irati"', add
label define V0002_lbl 4207858 `"Irati"', add
label define V0002_lbl 2306108 `"Irauçuba"', add
label define V0002_lbl 2914604 `"Irecê"', add
label define V0002_lbl 4110805 `"Iretama"', add
label define V0002_lbl 4207908 `"Irineópolis"', add
label define V0002_lbl 1503507 `"Irituia"', add
label define V0002_lbl 3202652 `"Irupi"', add
label define V0002_lbl 2204907 `"Isaías Coelho"', add
label define V0002_lbl 5210307 `"Israelândia"', add
label define V0002_lbl 4208005 `"Itá"', add
label define V0002_lbl 4310538 `"Itaara"', add
label define V0002_lbl 2506905 `"Itabaiana"', add
label define V0002_lbl 2802908 `"Itabaiana"', add
label define V0002_lbl 2803005 `"Itabaianinha"', add
label define V0002_lbl 2914653 `"Itabela"', add
label define V0002_lbl 3521705 `"Itaberá"', add
label define V0002_lbl 2914703 `"Itaberaba"', add
label define V0002_lbl 5210406 `"Itaberaí"', add
label define V0002_lbl 2803104 `"Itabi"', add
label define V0002_lbl 3131703 `"Itabira"', add
label define V0002_lbl 3131802 `"Itabirinha"', add
label define V0002_lbl 3131901 `"Itabirito"', add
label define V0002_lbl 3301900 `"Itaboraí"', add
label define V0002_lbl 2914802 `"Itabuna"', add
label define V0002_lbl 1710508 `"Itacajá"', add
label define V0002_lbl 3132008 `"Itacambira"', add
label define V0002_lbl 3132107 `"Itacarambi"', add
label define V0002_lbl 2914901 `"Itacaré"', add
label define V0002_lbl 1301902 `"Itacoatiara"', add
label define V0002_lbl 2607406 `"Itacuruba"', add
label define V0002_lbl 4310553 `"Itacurubi"', add
label define V0002_lbl 2915007 `"Itaeté"', add
label define V0002_lbl 2915106 `"Itagi"', add
label define V0002_lbl 2915205 `"Itagibá"', add
label define V0002_lbl 2915304 `"Itagimirim"', add
label define V0002_lbl 3202702 `"Itaguaçu"', add
label define V0002_lbl 2915353 `"Itaguaçu da Bahia"', add
label define V0002_lbl 3302007 `"Itaguaí"', add
label define V0002_lbl 4110904 `"Itaguajé"', add
label define V0002_lbl 3132206 `"Itaguara"', add
label define V0002_lbl 5210562 `"Itaguari"', add
label define V0002_lbl 5210604 `"Itaguaru"', add
label define V0002_lbl 1710706 `"Itaguatins"', add
label define V0002_lbl 3521804 `"Itaí"', add
label define V0002_lbl 2607505 `"Itaíba"', add
label define V0002_lbl 2306207 `"Itaiçaba"', add
label define V0002_lbl 2205003 `"Itainópolis"', add
label define V0002_lbl 4208104 `"Itaiópolis"', add
label define V0002_lbl 2105351 `"Itaipava do Grajaú"', add
label define V0002_lbl 3132305 `"Itaipé"', add
label define V0002_lbl 4110953 `"Itaipulândia"', add
label define V0002_lbl 2306256 `"Itaitinga"', add
label define V0002_lbl 1503606 `"Itaituba"', add
label define V0002_lbl 2404853 `"Itajá"', add
label define V0002_lbl 5210802 `"Itajá"', add
label define V0002_lbl 4208203 `"Itajaí"', add
label define V0002_lbl 3521903 `"Itajobi"', add
label define V0002_lbl 3522000 `"Itaju"', add
label define V0002_lbl 2915403 `"Itaju do Colônia"', add
label define V0002_lbl 3132404 `"Itajubá"', add
label define V0002_lbl 2915502 `"Itajuípe"', add
label define V0002_lbl 3302056 `"Italva"', add
label define V0002_lbl 2915601 `"Itamaraju"', add
label define V0002_lbl 3132503 `"Itamarandiba"', add
label define V0002_lbl 1301951 `"Itamarati"', add
label define V0002_lbl 3132602 `"Itamarati de Minas"', add
label define V0002_lbl 2915700 `"Itamari"', add
label define V0002_lbl 3132701 `"Itambacuri"', add
label define V0002_lbl 4111001 `"Itambaracá"', add
label define V0002_lbl 4111100 `"Itambé"', add
label define V0002_lbl 2915809 `"Itambé"', add
label define V0002_lbl 2607653 `"Itambé"', add
label define V0002_lbl 3132800 `"Itambé do Mato Dentro"', add
label define V0002_lbl 3132909 `"Itamogi"', add
label define V0002_lbl 3133006 `"Itamonte"', add
label define V0002_lbl 2915908 `"Itanagra"', add
label define V0002_lbl 3522109 `"Itanhaém"', add
label define V0002_lbl 3133105 `"Itanhandu"', add
label define V0002_lbl 5104542 `"Itanhangá"', add
label define V0002_lbl 2916005 `"Itanhém"', add
label define V0002_lbl 3133204 `"Itanhomi"', add
label define V0002_lbl 3133303 `"Itaobim"', add
label define V0002_lbl 3522158 `"Itaoca"', add
label define V0002_lbl 3302106 `"Itaocara"', add
label define V0002_lbl 5210901 `"Itapaci"', add
label define V0002_lbl 3133402 `"Itapagipe"', add
label define V0002_lbl 2306306 `"Itapajé"', add
label define V0002_lbl 2916104 `"Itaparica"', add
label define V0002_lbl 2916203 `"Itapé"', add
label define V0002_lbl 2916302 `"Itapebi"', add
label define V0002_lbl 3133501 `"Itapecerica"', add
label define V0002_lbl 3522208 `"Itapecerica da Serra"', add
label define V0002_lbl 2105401 `"Itapecuru Mirim"', add
label define V0002_lbl 4111209 `"Itapejara d'Oeste"', add
label define V0002_lbl 4208302 `"Itapema"', add
label define V0002_lbl 3202801 `"Itapemirim"', add
label define V0002_lbl 4111258 `"Itaperuçu"', add
label define V0002_lbl 3302205 `"Itaperuna"', add
label define V0002_lbl 2607703 `"Itapetim"', add
label define V0002_lbl 2916401 `"Itapetinga"', add
label define V0002_lbl 3522307 `"Itapetininga"', add
label define V0002_lbl 3522406 `"Itapeva"', add
label define V0002_lbl 3133600 `"Itapeva"', add
label define V0002_lbl 3522505 `"Itapevi"', add
label define V0002_lbl 2916500 `"Itapicuru"', add
label define V0002_lbl 2306405 `"Itapipoca"', add
label define V0002_lbl 3522604 `"Itapira"', add
label define V0002_lbl 4208401 `"Itapiranga"', add
label define V0002_lbl 1302009 `"Itapiranga"', add
label define V0002_lbl 5211008 `"Itapirapuã"', add
label define V0002_lbl 3522653 `"Itapirapuã Paulista"', add
label define V0002_lbl 1710904 `"Itapiratins"', add
label define V0002_lbl 2607752 `"Itapissuma"', add
label define V0002_lbl 2916609 `"Itapitanga"', add
label define V0002_lbl 2306504 `"Itapiúna"', add
label define V0002_lbl 4208450 `"Itapoá"', add
label define V0002_lbl 3522703 `"Itápolis"', add
label define V0002_lbl 5004502 `"Itaporã"', add
label define V0002_lbl 1711100 `"Itaporã do Tocantins"', add
label define V0002_lbl 2507002 `"Itaporanga"', add
label define V0002_lbl 3522802 `"Itaporanga"', add
label define V0002_lbl 2803203 `"Itaporanga d'Ajuda"', add
label define V0002_lbl 2507101 `"Itapororoca"', add
label define V0002_lbl 1101104 `"Itapuã do Oeste"', add
label define V0002_lbl 4310579 `"Itapuca"', add
label define V0002_lbl 3522901 `"Itapuí"', add
label define V0002_lbl 3523008 `"Itapura"', add
label define V0002_lbl 5211206 `"Itapuranga"', add
label define V0002_lbl 3523107 `"Itaquaquecetuba"', add
label define V0002_lbl 2916708 `"Itaquara"', add
label define V0002_lbl 4310603 `"Itaqui"', add
label define V0002_lbl 5004601 `"Itaquiraí"', add
label define V0002_lbl 2607802 `"Itaquitinga"', add
label define V0002_lbl 3202900 `"Itarana"', add
label define V0002_lbl 2916807 `"Itarantim"', add
label define V0002_lbl 3523206 `"Itararé"', add
label define V0002_lbl 2306553 `"Itarema"', add
label define V0002_lbl 3523305 `"Itariri"', add
label define V0002_lbl 5211305 `"Itarumã"', add
label define V0002_lbl 4310652 `"Itati"', add
label define V0002_lbl 3302254 `"Itatiaia"', add
label define V0002_lbl 3133709 `"Itatiaiuçu"', add
label define V0002_lbl 3523404 `"Itatiba"', add
label define V0002_lbl 4310702 `"Itatiba do Sul"', add
label define V0002_lbl 2916856 `"Itatim"', add
label define V0002_lbl 3523503 `"Itatinga"', add
label define V0002_lbl 2306603 `"Itatira"', add
label define V0002_lbl 2507200 `"Itatuba"', add
label define V0002_lbl 2404903 `"Itaú"', add
label define V0002_lbl 3133758 `"Itaú de Minas"', add
label define V0002_lbl 5104559 `"Itaúba"', add
label define V0002_lbl 1600253 `"Itaubal"', add
label define V0002_lbl 5211404 `"Itauçu"', add
label define V0002_lbl 2205102 `"Itaueira"', add
label define V0002_lbl 3133808 `"Itaúna"', add
label define V0002_lbl 4111308 `"Itaúna do Sul"', add
label define V0002_lbl 3133907 `"Itaverava"', add
label define V0002_lbl 3134004 `"Itinga"', add
label define V0002_lbl 2105427 `"Itinga do Maranhão"', add
label define V0002_lbl 5104609 `"Itiquira"', add
label define V0002_lbl 3523602 `"Itirapina"', add
label define V0002_lbl 3523701 `"Itirapuã"', add
label define V0002_lbl 2916906 `"Itiruçu"', add
label define V0002_lbl 2917003 `"Itiúba"', add
label define V0002_lbl 3523800 `"Itobi"', add
label define V0002_lbl 2917102 `"Itororó"', add
label define V0002_lbl 3523909 `"Itu"', add
label define V0002_lbl 2917201 `"Ituaçu"', add
label define V0002_lbl 2917300 `"Ituberá"', add
label define V0002_lbl 3134103 `"Itueta"', add
label define V0002_lbl 3134202 `"Ituiutaba"', add
label define V0002_lbl 5211503 `"Itumbiara"', add
label define V0002_lbl 3134301 `"Itumirim"', add
label define V0002_lbl 3524006 `"Itupeva"', add
label define V0002_lbl 1503705 `"Itupiranga"', add
label define V0002_lbl 4208500 `"Ituporanga"', add
label define V0002_lbl 3134400 `"Iturama"', add
label define V0002_lbl 3134509 `"Itutinga"', add
label define V0002_lbl 3524105 `"Ituverava"', add
label define V0002_lbl 2917334 `"Iuiu"', add
label define V0002_lbl 3203007 `"Iúna"', add
label define V0002_lbl 4111407 `"Ivaí"', add
label define V0002_lbl 4111506 `"Ivaiporã"', add
label define V0002_lbl 4111555 `"Ivaté"', add
label define V0002_lbl 4111605 `"Ivatuba"', add
label define V0002_lbl 5004700 `"Ivinhema"', add
label define V0002_lbl 5211602 `"Ivolândia"', add
label define V0002_lbl 4310751 `"Ivorá"', add
label define V0002_lbl 4310801 `"Ivoti"', add
label define V0002_lbl 2607901 `"Jaboatão dos Guararapes"', add
label define V0002_lbl 4208609 `"Jaborá"', add
label define V0002_lbl 3524204 `"Jaborandi"', add
label define V0002_lbl 2917359 `"Jaborandi"', add
label define V0002_lbl 4111704 `"Jaboti"', add
label define V0002_lbl 4310850 `"Jaboticaba"', add
label define V0002_lbl 3524303 `"Jaboticabal"', add
label define V0002_lbl 3134608 `"Jaboticatubas"', add
label define V0002_lbl 2405009 `"Jaçanã"', add
label define V0002_lbl 2917409 `"Jacaraci"', add
label define V0002_lbl 2507309 `"Jacaraú"', add
label define V0002_lbl 2703403 `"Jacaré dos Homens"', add
label define V0002_lbl 1503754 `"Jacareacanga"', add
label define V0002_lbl 3524402 `"Jacareí"', add
label define V0002_lbl 4111803 `"Jacarezinho"', add
label define V0002_lbl 3524501 `"Jaci"', add
label define V0002_lbl 5104807 `"Jaciara"', add
label define V0002_lbl 3134707 `"Jacinto"', add
label define V0002_lbl 4208708 `"Jacinto Machado"', add
label define V0002_lbl 2917508 `"Jacobina"', add
label define V0002_lbl 2205151 `"Jacobina do Piauí"', add
label define V0002_lbl 3134806 `"Jacuí"', add
label define V0002_lbl 2703502 `"Jacuípe"', add
label define V0002_lbl 4310876 `"Jacuizinho"', add
label define V0002_lbl 1503804 `"Jacundá"', add
label define V0002_lbl 3524600 `"Jacupiranga"', add
label define V0002_lbl 4310900 `"Jacutinga"', add
label define V0002_lbl 3134905 `"Jacutinga"', add
label define V0002_lbl 4111902 `"Jaguapitã"', add
label define V0002_lbl 2917607 `"Jaguaquara"', add
label define V0002_lbl 3135001 `"Jaguaraçu"', add
label define V0002_lbl 4311007 `"Jaguarão"', add
label define V0002_lbl 2917706 `"Jaguarari"', add
label define V0002_lbl 3203056 `"Jaguaré"', add
label define V0002_lbl 2306702 `"Jaguaretama"', add
label define V0002_lbl 4311106 `"Jaguari"', add
label define V0002_lbl 4112009 `"Jaguariaíva"', add
label define V0002_lbl 2306801 `"Jaguaribara"', add
label define V0002_lbl 2306900 `"Jaguaribe"', add
label define V0002_lbl 2917805 `"Jaguaripe"', add
label define V0002_lbl 3524709 `"Jaguariúna"', add
label define V0002_lbl 2307007 `"Jaguaruana"', add
label define V0002_lbl 4208807 `"Jaguaruna"', add
label define V0002_lbl 3135050 `"Jaíba"', add
label define V0002_lbl 2205201 `"Jaicós"', add
label define V0002_lbl 3524808 `"Jales"', add
label define V0002_lbl 3524907 `"Jambeiro"', add
label define V0002_lbl 3135076 `"Jampruca"', add
label define V0002_lbl 3135100 `"Janaúba"', add
label define V0002_lbl 5211701 `"Jandaia"', add
label define V0002_lbl 4112108 `"Jandaia do Sul"', add
label define V0002_lbl 2917904 `"Jandaíra"', add
label define V0002_lbl 2405108 `"Jandaíra"', add
label define V0002_lbl 3525003 `"Jandira"', add
label define V0002_lbl 2405207 `"Janduís"', add
label define V0002_lbl 5104906 `"Jangada"', add
label define V0002_lbl 4112207 `"Janiópolis"', add
label define V0002_lbl 3135209 `"Januária"', add
label define V0002_lbl 2405306 `"Januário Cicco"', add
label define V0002_lbl 3135308 `"Japaraíba"', add
label define V0002_lbl 2703601 `"Japaratinga"', add
label define V0002_lbl 2803302 `"Japaratuba"', add
label define V0002_lbl 3302270 `"Japeri"', add
label define V0002_lbl 2405405 `"Japi"', add
label define V0002_lbl 4112306 `"Japira"', add
label define V0002_lbl 2803401 `"Japoatã"', add
label define V0002_lbl 3135357 `"Japonvar"', add
label define V0002_lbl 5004809 `"Japorã"', add
label define V0002_lbl 4112405 `"Japurá"', add
label define V0002_lbl 1302108 `"Japurá"', add
label define V0002_lbl 2607950 `"Jaqueira"', add
label define V0002_lbl 4311122 `"Jaquirana"', add
label define V0002_lbl 5211800 `"Jaraguá"', add
label define V0002_lbl 4208906 `"Jaraguá do Sul"', add
label define V0002_lbl 5004908 `"Jaraguari"', add
label define V0002_lbl 2703700 `"Jaramataia"', add
label define V0002_lbl 2307106 `"Jardim"', add
label define V0002_lbl 5005004 `"Jardim"', add
label define V0002_lbl 4112504 `"Jardim Alegre"', add
label define V0002_lbl 2405504 `"Jardim de Angicos"', add
label define V0002_lbl 2405603 `"Jardim de Piranhas"', add
label define V0002_lbl 2205250 `"Jardim do Mulato"', add
label define V0002_lbl 2405702 `"Jardim do Seridó"', add
label define V0002_lbl 4112603 `"Jardim Olinda"', add
label define V0002_lbl 3525102 `"Jardinópolis"', add
label define V0002_lbl 4208955 `"Jardinópolis"', add
label define V0002_lbl 4311130 `"Jari"', add
label define V0002_lbl 3525201 `"Jarinu"', add
label define V0002_lbl 1100114 `"Jaru"', add
label define V0002_lbl 5211909 `"Jataí"', add
label define V0002_lbl 4112702 `"Jataizinho"', add
label define V0002_lbl 2608008 `"Jataúba"', add
label define V0002_lbl 5005103 `"Jateí"', add
label define V0002_lbl 2307205 `"Jati"', add
label define V0002_lbl 2105450 `"Jatobá"', add
label define V0002_lbl 2608057 `"Jatobá"', add
label define V0002_lbl 2205276 `"Jatobá do Piauí"', add
label define V0002_lbl 3525300 `"Jaú"', add
label define V0002_lbl 1711506 `"Jaú do Tocantins"', add
label define V0002_lbl 5212006 `"Jaupaci"', add
label define V0002_lbl 5105002 `"Jauru"', add
label define V0002_lbl 3135407 `"Jeceaba"', add
label define V0002_lbl 3135456 `"Jenipapo de Minas"', add
label define V0002_lbl 2105476 `"Jenipapo dos Vieiras"', add
label define V0002_lbl 3135506 `"Jequeri"', add
label define V0002_lbl 2703759 `"Jequiá da Praia"', add
label define V0002_lbl 2918001 `"Jequié"', add
label define V0002_lbl 3135605 `"Jequitaí"', add
label define V0002_lbl 3135704 `"Jequitibá"', add
label define V0002_lbl 3135803 `"Jequitinhonha"', add
label define V0002_lbl 2918100 `"Jeremoabo"', add
label define V0002_lbl 2507408 `"Jericó"', add
label define V0002_lbl 3525409 `"Jeriquara"', add
label define V0002_lbl 3203106 `"Jerônimo Monteiro"', add
label define V0002_lbl 2205300 `"Jerumenha"', add
label define V0002_lbl 3135902 `"Jesuânia"', add
label define V0002_lbl 4112751 `"Jesuítas"', add
label define V0002_lbl 5212055 `"Jesúpolis"', add
label define V0002_lbl 2307254 `"Jijoca de Jericoacoara"', add
label define V0002_lbl 1100122 `"Ji-Paraná"', add
label define V0002_lbl 2918209 `"Jiquiriçá"', add
label define V0002_lbl 2918308 `"Jitaúna"', add
label define V0002_lbl 4209003 `"Joaçaba"', add
label define V0002_lbl 3136009 `"Joaíma"', add
label define V0002_lbl 3136108 `"Joanésia"', add
label define V0002_lbl 3525508 `"Joanópolis"', add
label define V0002_lbl 2608107 `"João Alfredo"', add
label define V0002_lbl 2405801 `"João Câmara"', add
label define V0002_lbl 2205359 `"João Costa"', add
label define V0002_lbl 2405900 `"João Dias"', add
label define V0002_lbl 2918357 `"João Dourado"', add
label define V0002_lbl 2105500 `"João Lisboa"', add
label define V0002_lbl 3136207 `"João Monlevade"', add
label define V0002_lbl 3203130 `"João Neiva"', add
label define V0002_lbl 2507507 `"João Pessoa"', add
label define V0002_lbl 3136306 `"João Pinheiro"', add
label define V0002_lbl 3525607 `"João Ramalho"', add
label define V0002_lbl 3136405 `"Joaquim Felício"', add
label define V0002_lbl 2703809 `"Joaquim Gomes"', add
label define V0002_lbl 2608206 `"Joaquim Nabuco"', add
label define V0002_lbl 2205409 `"Joaquim Pires"', add
label define V0002_lbl 4112801 `"Joaquim Távora"', add
label define V0002_lbl 2513653 `"Joca Claudino"', add
label define V0002_lbl 2205458 `"Joca Marques"', add
label define V0002_lbl 4311155 `"Jóia"', add
label define V0002_lbl 4209102 `"Joinville"', add
label define V0002_lbl 3136504 `"Jordânia"', add
label define V0002_lbl 1200328 `"Jordão"', add
label define V0002_lbl 4209151 `"José Boiteux"', add
label define V0002_lbl 3525706 `"José Bonifácio"', add
label define V0002_lbl 2406007 `"José da Penha"', add
label define V0002_lbl 2205508 `"José de Freitas"', add
label define V0002_lbl 3136520 `"José Gonçalves de Minas"', add
label define V0002_lbl 3136553 `"José Raydan"', add
label define V0002_lbl 2105609 `"Joselândia"', add
label define V0002_lbl 3136579 `"Josenópolis"', add
label define V0002_lbl 5212105 `"Joviânia"', add
label define V0002_lbl 5105101 `"Juara"', add
label define V0002_lbl 2507606 `"Juarez Távora"', add
label define V0002_lbl 1711803 `"Juarina"', add
label define V0002_lbl 3136652 `"Juatuba"', add
label define V0002_lbl 2507705 `"Juazeirinho"', add
label define V0002_lbl 2918407 `"Juazeiro"', add
label define V0002_lbl 2307304 `"Juazeiro do Norte"', add
label define V0002_lbl 2205516 `"Juazeiro do Piauí"', add
label define V0002_lbl 2307403 `"Jucás"', add
label define V0002_lbl 2608255 `"Jucati"', add
label define V0002_lbl 2918456 `"Jucuruçu"', add
label define V0002_lbl 2406106 `"Jucurutu"', add
label define V0002_lbl 5105150 `"Juína"', add
label define V0002_lbl 3136702 `"Juiz de Fora"', add
label define V0002_lbl 2205524 `"Júlio Borges"', add
label define V0002_lbl 4311205 `"Júlio de Castilhos"', add
label define V0002_lbl 3525805 `"Júlio Mesquita"', add
label define V0002_lbl 3525854 `"Jumirim"', add
label define V0002_lbl 2105658 `"Junco do Maranhão"', add
label define V0002_lbl 2507804 `"Junco do Seridó"', add
label define V0002_lbl 2406155 `"Jundiá"', add
label define V0002_lbl 2703908 `"Jundiá"', add
label define V0002_lbl 3525904 `"Jundiaí"', add
label define V0002_lbl 4112900 `"Jundiaí do Sul"', add
label define V0002_lbl 2704005 `"Junqueiro"', add
label define V0002_lbl 3526001 `"Junqueirópolis"', add
label define V0002_lbl 2608305 `"Jupi"', add
label define V0002_lbl 4209177 `"Jupiá"', add
label define V0002_lbl 3526100 `"Juquiá"', add
label define V0002_lbl 3526209 `"Juquitiba"', add
label define V0002_lbl 3136801 `"Juramento"', add
label define V0002_lbl 4112959 `"Juranda"', add
label define V0002_lbl 2608404 `"Jurema"', add
label define V0002_lbl 2205532 `"Jurema"', add
label define V0002_lbl 2507903 `"Juripiranga"', add
label define V0002_lbl 2508000 `"Juru"', add
label define V0002_lbl 1302207 `"Juruá"', add
label define V0002_lbl 3136900 `"Juruaia"', add
label define V0002_lbl 5105176 `"Juruena"', add
label define V0002_lbl 1503903 `"Juruti"', add
label define V0002_lbl 5105200 `"Juscimeira"', add
label define V0002_lbl 5212204 `"Jussara"', add
label define V0002_lbl 4113007 `"Jussara"', add
label define V0002_lbl 2918506 `"Jussara"', add
label define V0002_lbl 2918555 `"Jussari"', add
label define V0002_lbl 2918605 `"Jussiape"', add
label define V0002_lbl 1302306 `"Jutaí"', add
label define V0002_lbl 5005152 `"Juti"', add
label define V0002_lbl 3136959 `"Juvenília"', add
label define V0002_lbl 4113106 `"Kaloré"', add
label define V0002_lbl 1302405 `"Lábrea"', add
label define V0002_lbl 4209201 `"Lacerdópolis"', add
label define V0002_lbl 3137007 `"Ladainha"', add
label define V0002_lbl 5005202 `"Ladário"', add
label define V0002_lbl 2918704 `"Lafaiete Coutinho"', add
label define V0002_lbl 3137106 `"Lagamar"', add
label define V0002_lbl 2803500 `"Lagarto"', add
label define V0002_lbl 4209300 `"Lages"', add
label define V0002_lbl 2105708 `"Lago da Pedra"', add
label define V0002_lbl 2105807 `"Lago do Junco"', add
label define V0002_lbl 2105948 `"Lago dos Rodrigues"', add
label define V0002_lbl 2105906 `"Lago Verde"', add
label define V0002_lbl 2508109 `"Lagoa"', add
label define V0002_lbl 2205557 `"Lagoa Alegre"', add
label define V0002_lbl 4311239 `"Lagoa Bonita do Sul"', add
label define V0002_lbl 2704104 `"Lagoa da Canoa"', add
label define V0002_lbl 1711902 `"Lagoa da Confusão"', add
label define V0002_lbl 3137205 `"Lagoa da Prata"', add
label define V0002_lbl 2406205 `"Lagoa d'Anta"', add
label define V0002_lbl 2508208 `"Lagoa de Dentro"', add
label define V0002_lbl 2608503 `"Lagoa de Itaenga"', add
label define V0002_lbl 2406304 `"Lagoa de Pedras"', add
label define V0002_lbl 2205573 `"Lagoa de São Francisco"', add
label define V0002_lbl 2406403 `"Lagoa de Velhos"', add
label define V0002_lbl 2205565 `"Lagoa do Barro do Piauí"', add
label define V0002_lbl 2608453 `"Lagoa do Carro"', add
label define V0002_lbl 2105922 `"Lagoa do Mato"', add
label define V0002_lbl 2608602 `"Lagoa do Ouro"', add
label define V0002_lbl 2205581 `"Lagoa do Piauí"', add
label define V0002_lbl 2205599 `"Lagoa do Sítio"', add
label define V0002_lbl 1711951 `"Lagoa do Tocantins"', add
label define V0002_lbl 2608701 `"Lagoa dos Gatos"', add
label define V0002_lbl 3137304 `"Lagoa dos Patos"', add
label define V0002_lbl 4311270 `"Lagoa dos Três Cantos"', add
label define V0002_lbl 3137403 `"Lagoa Dourada"', add
label define V0002_lbl 3137502 `"Lagoa Formosa"', add
label define V0002_lbl 3137536 `"Lagoa Grande"', add
label define V0002_lbl 2608750 `"Lagoa Grande"', add
label define V0002_lbl 2105963 `"Lagoa Grande do Maranhão"', add
label define V0002_lbl 2406502 `"Lagoa Nova"', add
label define V0002_lbl 2918753 `"Lagoa Real"', add
label define V0002_lbl 2406601 `"Lagoa Salgada"', add
label define V0002_lbl 3137601 `"Lagoa Santa"', add
label define V0002_lbl 5212253 `"Lagoa Santa"', add
label define V0002_lbl 2508307 `"Lagoa Seca"', add
label define V0002_lbl 4311304 `"Lagoa Vermelha"', add
label define V0002_lbl 4311254 `"Lagoão"', add
label define V0002_lbl 3526308 `"Lagoinha"', add
label define V0002_lbl 2205540 `"Lagoinha do Piauí"', add
label define V0002_lbl 4209409 `"Laguna"', add
label define V0002_lbl 5005251 `"Laguna Carapã"', add
label define V0002_lbl 2918803 `"Laje"', add
label define V0002_lbl 3302304 `"Laje do Muriaé"', add
label define V0002_lbl 4311403 `"Lajeado"', add
label define V0002_lbl 1712009 `"Lajeado"', add
label define V0002_lbl 4311429 `"Lajeado do Bugre"', add
label define V0002_lbl 4209458 `"Lajeado Grande"', add
label define V0002_lbl 2105989 `"Lajeado Novo"', add
label define V0002_lbl 2918902 `"Lajedão"', add
label define V0002_lbl 2919009 `"Lajedinho"', add
label define V0002_lbl 2608800 `"Lajedo"', add
label define V0002_lbl 2919058 `"Lajedo do Tabocal"', add
label define V0002_lbl 2406700 `"Lajes"', add
label define V0002_lbl 2406809 `"Lajes Pintadas"', add
label define V0002_lbl 3137700 `"Lajinha"', add
label define V0002_lbl 2919108 `"Lamarão"', add
label define V0002_lbl 3137809 `"Lambari"', add
label define V0002_lbl 5105234 `"Lambari D'Oeste"', add
label define V0002_lbl 3137908 `"Lamim"', add
label define V0002_lbl 2205607 `"Landri Sales"', add
label define V0002_lbl 4113205 `"Lapa"', add
label define V0002_lbl 2919157 `"Lapão"', add
label define V0002_lbl 3203163 `"Laranja da Terra"', add
label define V0002_lbl 4113254 `"Laranjal"', add
label define V0002_lbl 3138005 `"Laranjal"', add
label define V0002_lbl 1600279 `"Laranjal do Jari"', add
label define V0002_lbl 3526407 `"Laranjal Paulista"', add
label define V0002_lbl 2803609 `"Laranjeiras"', add
label define V0002_lbl 4113304 `"Laranjeiras do Sul"', add
label define V0002_lbl 3138104 `"Lassance"', add
label define V0002_lbl 2508406 `"Lastro"', add
label define V0002_lbl 4209508 `"Laurentino"', add
label define V0002_lbl 2919207 `"Lauro de Freitas"', add
label define V0002_lbl 4209607 `"Lauro Müller"', add
label define V0002_lbl 1712157 `"Lavandeira"', add
label define V0002_lbl 3526506 `"Lavínia"', add
label define V0002_lbl 3138203 `"Lavras"', add
label define V0002_lbl 2307502 `"Lavras da Mangabeira"', add
label define V0002_lbl 4311502 `"Lavras do Sul"', add
label define V0002_lbl 3526605 `"Lavrinhas"', add
label define V0002_lbl 3138302 `"Leandro Ferreira"', add
label define V0002_lbl 4209706 `"Lebon Régis"', add
label define V0002_lbl 3526704 `"Leme"', add
label define V0002_lbl 3138351 `"Leme do Prado"', add
label define V0002_lbl 2919306 `"Lençóis"', add
label define V0002_lbl 3526803 `"Lençóis Paulista"', add
label define V0002_lbl 4209805 `"Leoberto Leal"', add
label define V0002_lbl 3138401 `"Leopoldina"', add
label define V0002_lbl 5212303 `"Leopoldo de Bulhões"', add
label define V0002_lbl 4113403 `"Leópolis"', add
label define V0002_lbl 4311601 `"Liberato Salzano"', add
label define V0002_lbl 3138500 `"Liberdade"', add
label define V0002_lbl 2919405 `"Licínio de Almeida"', add
label define V0002_lbl 4113429 `"Lidianópolis"', add
label define V0002_lbl 2106003 `"Lima Campos"', add
label define V0002_lbl 3138609 `"Lima Duarte"', add
label define V0002_lbl 3526902 `"Limeira"', add
label define V0002_lbl 3138625 `"Limeira do Oeste"', add
label define V0002_lbl 2608909 `"Limoeiro"', add
label define V0002_lbl 2704203 `"Limoeiro de Anadia"', add
label define V0002_lbl 1504000 `"Limoeiro do Ajuru"', add
label define V0002_lbl 2307601 `"Limoeiro do Norte"', add
label define V0002_lbl 4113452 `"Lindoeste"', add
label define V0002_lbl 3527009 `"Lindóia"', add
label define V0002_lbl 4209854 `"Lindóia do Sul"', add
label define V0002_lbl 4311627 `"Lindolfo Collor"', add
label define V0002_lbl 4311643 `"Linha Nova"', add
label define V0002_lbl 3203205 `"Linhares"', add
label define V0002_lbl 3527108 `"Lins"', add
label define V0002_lbl 2508505 `"Livramento"', add
label define V0002_lbl 2919504 `"Livramento de Nossa Senhora"', add
label define V0002_lbl 1712405 `"Lizarda"', add
label define V0002_lbl 4113502 `"Loanda"', add
label define V0002_lbl 4113601 `"Lobato"', add
label define V0002_lbl 2508554 `"Logradouro"', add
label define V0002_lbl 4113700 `"Londrina"', add
label define V0002_lbl 3138658 `"Lontra"', add
label define V0002_lbl 4209904 `"Lontras"', add
label define V0002_lbl 3527207 `"Lorena"', add
label define V0002_lbl 2106102 `"Loreto"', add
label define V0002_lbl 3527256 `"Lourdes"', add
label define V0002_lbl 3527306 `"Louveira"', add
label define V0002_lbl 5105259 `"Lucas do Rio Verde"', add
label define V0002_lbl 3527405 `"Lucélia"', add
label define V0002_lbl 2508604 `"Lucena"', add
label define V0002_lbl 3527504 `"Lucianópolis"', add
label define V0002_lbl 5105309 `"Luciara"', add
label define V0002_lbl 2406908 `"Lucrécia"', add
label define V0002_lbl 3527603 `"Luís Antônio"', add
label define V0002_lbl 2205706 `"Luís Correia"', add
label define V0002_lbl 2106201 `"Luís Domingues"', add
label define V0002_lbl 2919553 `"Luís Eduardo Magalhães"', add
label define V0002_lbl 2407005 `"Luís Gomes"', add
label define V0002_lbl 3138674 `"Luisburgo"', add
label define V0002_lbl 3138682 `"Luislândia"', add
label define V0002_lbl 4210001 `"Luiz Alves"', add
label define V0002_lbl 4113734 `"Luiziana"', add
label define V0002_lbl 3527702 `"Luiziânia"', add
label define V0002_lbl 3138708 `"Luminárias"', add
label define V0002_lbl 4113759 `"Lunardelli"', add
label define V0002_lbl 3527801 `"Lupércio"', add
label define V0002_lbl 4113809 `"Lupionópolis"', add
label define V0002_lbl 3527900 `"Lutécia"', add
label define V0002_lbl 3138807 `"Luz"', add
label define V0002_lbl 4210035 `"Luzerna"', add
label define V0002_lbl 5212501 `"Luziânia"', add
label define V0002_lbl 2205805 `"Luzilândia"', add
label define V0002_lbl 1712454 `"Luzinópolis"', add
label define V0002_lbl 3302403 `"Macaé"', add
label define V0002_lbl 2407104 `"Macaíba"', add
label define V0002_lbl 2919603 `"Macajuba"', add
label define V0002_lbl 4311718 `"Maçambará"', add
label define V0002_lbl 2803708 `"Macambira"', add
label define V0002_lbl 1600303 `"Macapá"', add
label define V0002_lbl 2609006 `"Macaparana"', add
label define V0002_lbl 2919702 `"Macarani"', add
label define V0002_lbl 3528007 `"Macatuba"', add
label define V0002_lbl 2407203 `"Macau"', add
label define V0002_lbl 3528106 `"Macaubal"', add
label define V0002_lbl 2919801 `"Macaúbas"', add
label define V0002_lbl 3528205 `"Macedônia"', add
label define V0002_lbl 2704302 `"Maceió"', add
label define V0002_lbl 3138906 `"Machacalis"', add
label define V0002_lbl 4311700 `"Machadinho"', add
label define V0002_lbl 1100130 `"Machadinho D'Oeste"', add
label define V0002_lbl 3139003 `"Machado"', add
label define V0002_lbl 2609105 `"Machados"', add
label define V0002_lbl 4210050 `"Macieira"', add
label define V0002_lbl 3302452 `"Macuco"', add
label define V0002_lbl 2919900 `"Macururé"', add
label define V0002_lbl 2307635 `"Madalena"', add
label define V0002_lbl 2205854 `"Madeiro"', add
label define V0002_lbl 2919926 `"Madre de Deus"', add
label define V0002_lbl 3139102 `"Madre de Deus de Minas"', add
label define V0002_lbl 2508703 `"Mãe d'Água"', add
label define V0002_lbl 1504059 `"Mãe do Rio"', add
label define V0002_lbl 2919959 `"Maetinga"', add
label define V0002_lbl 4210100 `"Mafra"', add
label define V0002_lbl 1504109 `"Magalhães Barata"', add
label define V0002_lbl 2106300 `"Magalhães de Almeida"', add
label define V0002_lbl 3528304 `"Magda"', add
label define V0002_lbl 3302502 `"Magé"', add
label define V0002_lbl 2920007 `"Maiquinique"', add
label define V0002_lbl 2920106 `"Mairi"', add
label define V0002_lbl 3528403 `"Mairinque"', add
label define V0002_lbl 3528502 `"Mairiporã"', add
label define V0002_lbl 5212600 `"Mairipotaba"', add
label define V0002_lbl 4210209 `"Major Gercino"', add
label define V0002_lbl 2704401 `"Major Isidoro"', add
label define V0002_lbl 2407252 `"Major Sales"', add
label define V0002_lbl 4210308 `"Major Vieira"', add
label define V0002_lbl 3139201 `"Malacacheta"', add
label define V0002_lbl 2920205 `"Malhada"', add
label define V0002_lbl 2920304 `"Malhada de Pedras"', add
label define V0002_lbl 2803807 `"Malhada dos Bois"', add
label define V0002_lbl 2803906 `"Malhador"', add
label define V0002_lbl 4113908 `"Mallet"', add
label define V0002_lbl 2508802 `"Malta"', add
label define V0002_lbl 2508901 `"Mamanguape"', add
label define V0002_lbl 5212709 `"Mambaí"', add
label define V0002_lbl 4114005 `"Mamborê"', add
label define V0002_lbl 3139250 `"Mamonas"', add
label define V0002_lbl 4311734 `"Mampituba"', add
label define V0002_lbl 1302504 `"Manacapuru"', add
label define V0002_lbl 2509008 `"Manaíra"', add
label define V0002_lbl 1302553 `"Manaquiri"', add
label define V0002_lbl 2609154 `"Manari"', add
label define V0002_lbl 1302603 `"Manaus"', add
label define V0002_lbl 1200336 `"Mâncio Lima"', add
label define V0002_lbl 4114104 `"Mandaguaçu"', add
label define V0002_lbl 4114203 `"Mandaguari"', add
label define V0002_lbl 4114302 `"Mandirituba"', add
label define V0002_lbl 3528601 `"Manduri"', add
label define V0002_lbl 4114351 `"Manfrinópolis"', add
label define V0002_lbl 3139300 `"Manga"', add
label define V0002_lbl 3302601 `"Mangaratiba"', add
label define V0002_lbl 4114401 `"Mangueirinha"', add
label define V0002_lbl 3139409 `"Manhuaçu"', add
label define V0002_lbl 3139508 `"Manhumirim"', add
label define V0002_lbl 1302702 `"Manicoré"', add
label define V0002_lbl 2205904 `"Manoel Emídio"', add
label define V0002_lbl 4114500 `"Manoel Ribas"', add
label define V0002_lbl 1200344 `"Manoel Urbano"', add
label define V0002_lbl 4311759 `"Manoel Viana"', add
label define V0002_lbl 2920403 `"Manoel Vitorino"', add
label define V0002_lbl 2920452 `"Mansidão"', add
label define V0002_lbl 3139607 `"Mantena"', add
label define V0002_lbl 3203304 `"Mantenópolis"', add
label define V0002_lbl 4311775 `"Maquiné"', add
label define V0002_lbl 3139805 `"Mar de Espanha"', add
label define V0002_lbl 2704906 `"Mar Vermelho"', add
label define V0002_lbl 5212808 `"Mara Rosa"', add
label define V0002_lbl 1302801 `"Maraã"', add
label define V0002_lbl 1504208 `"Marabá"', add
label define V0002_lbl 3528700 `"Marabá Paulista"', add
label define V0002_lbl 2106326 `"Maracaçumé"', add
label define V0002_lbl 3528809 `"Maracaí"', add
label define V0002_lbl 4210407 `"Maracajá"', add
label define V0002_lbl 5005400 `"Maracaju"', add
label define V0002_lbl 1504307 `"Maracanã"', add
label define V0002_lbl 2307650 `"Maracanaú"', add
label define V0002_lbl 2920502 `"Maracás"', add
label define V0002_lbl 2704500 `"Maragogi"', add
label define V0002_lbl 2920601 `"Maragogipe"', add
label define V0002_lbl 2609204 `"Maraial"', add
label define V0002_lbl 2106359 `"Marajá do Sena"', add
label define V0002_lbl 2307700 `"Maranguape"', add
label define V0002_lbl 2106375 `"Maranhãozinho"', add
label define V0002_lbl 1504406 `"Marapanim"', add
label define V0002_lbl 3528858 `"Marapoama"', add
label define V0002_lbl 4311791 `"Maratá"', add
label define V0002_lbl 3203320 `"Marataízes"', add
label define V0002_lbl 4311809 `"Marau"', add
label define V0002_lbl 2920700 `"Maraú"', add
label define V0002_lbl 2704609 `"Maravilha"', add
label define V0002_lbl 4210506 `"Maravilha"', add
label define V0002_lbl 3139706 `"Maravilhas"', add
label define V0002_lbl 2509057 `"Marcação"', add
label define V0002_lbl 5105580 `"Marcelândia"', add
label define V0002_lbl 4311908 `"Marcelino Ramos"', add
label define V0002_lbl 2407302 `"Marcelino Vieira"', add
label define V0002_lbl 2920809 `"Marcionílio Souza"', add
label define V0002_lbl 2307809 `"Marco"', add
label define V0002_lbl 2205953 `"Marcolândia"', add
label define V0002_lbl 2206001 `"Marcos Parente"', add
label define V0002_lbl 4114609 `"Marechal Cândido Rondon"', add
label define V0002_lbl 2704708 `"Marechal Deodoro"', add
label define V0002_lbl 3203346 `"Marechal Floriano"', add
label define V0002_lbl 1200351 `"Marechal Thaumaturgo"', add
label define V0002_lbl 4210555 `"Marema"', add
label define V0002_lbl 2509107 `"Mari"', add
label define V0002_lbl 3139904 `"Maria da Fé"', add
label define V0002_lbl 4114708 `"Maria Helena"', add
label define V0002_lbl 4114807 `"Marialva"', add
label define V0002_lbl 3140001 `"Mariana"', add
label define V0002_lbl 4311981 `"Mariana Pimentel"', add
label define V0002_lbl 4312005 `"Mariano Moro"', add
label define V0002_lbl 1712504 `"Marianópolis do Tocantins"', add
label define V0002_lbl 3528908 `"Mariápolis"', add
label define V0002_lbl 2704807 `"Maribondo"', add
label define V0002_lbl 3302700 `"Maricá"', add
label define V0002_lbl 3140100 `"Marilac"', add
label define V0002_lbl 3203353 `"Marilândia"', add
label define V0002_lbl 4114906 `"Marilândia do Sul"', add
label define V0002_lbl 4115002 `"Marilena"', add
label define V0002_lbl 3529005 `"Marília"', add
label define V0002_lbl 4115101 `"Mariluz"', add
label define V0002_lbl 4115200 `"Maringá"', add
label define V0002_lbl 3529104 `"Marinópolis"', add
label define V0002_lbl 3140159 `"Mário Campos"', add
label define V0002_lbl 4115309 `"Mariópolis"', add
label define V0002_lbl 4115358 `"Maripá"', add
label define V0002_lbl 3140209 `"Maripá de Minas"', add
label define V0002_lbl 1504422 `"Marituba"', add
label define V0002_lbl 2509156 `"Marizópolis"', add
label define V0002_lbl 3140308 `"Marliéria"', add
label define V0002_lbl 4115408 `"Marmeleiro"', add
label define V0002_lbl 3140407 `"Marmelópolis"', add
label define V0002_lbl 4312054 `"Marques de Souza"', add
label define V0002_lbl 4115457 `"Marquinho"', add
label define V0002_lbl 3140506 `"Martinho Campos"', add
label define V0002_lbl 2307908 `"Martinópole"', add
label define V0002_lbl 3529203 `"Martinópolis"', add
label define V0002_lbl 2407401 `"Martins"', add
label define V0002_lbl 3140530 `"Martins Soares"', add
label define V0002_lbl 2804003 `"Maruim"', add
label define V0002_lbl 4115507 `"Marumbi"', add
label define V0002_lbl 5212907 `"Marzagão"', add
label define V0002_lbl 2920908 `"Mascote"', add
label define V0002_lbl 2308005 `"Massapê"', add
label define V0002_lbl 2206050 `"Massapê do Piauí"', add
label define V0002_lbl 2509206 `"Massaranduba"', add
label define V0002_lbl 4210605 `"Massaranduba"', add
label define V0002_lbl 4312104 `"Mata"', add
label define V0002_lbl 2921005 `"Mata de São João"', add
label define V0002_lbl 2705002 `"Mata Grande"', add
label define V0002_lbl 2106409 `"Mata Roma"', add
label define V0002_lbl 3140555 `"Mata Verde"', add
label define V0002_lbl 3529302 `"Matão"', add
label define V0002_lbl 2509305 `"Mataraca"', add
label define V0002_lbl 1712702 `"Mateiros"', add
label define V0002_lbl 4115606 `"Matelândia"', add
label define V0002_lbl 3140605 `"Materlândia"', add
label define V0002_lbl 3140704 `"Mateus Leme"', add
label define V0002_lbl 3171501 `"Mathias Lobato"', add
label define V0002_lbl 3140803 `"Matias Barbosa"', add
label define V0002_lbl 3140852 `"Matias Cardoso"', add
label define V0002_lbl 2206100 `"Matias Olímpio"', add
label define V0002_lbl 2921054 `"Matina"', add
label define V0002_lbl 2106508 `"Matinha"', add
label define V0002_lbl 2509339 `"Matinhas"', add
label define V0002_lbl 4115705 `"Matinhos"', add
label define V0002_lbl 3140902 `"Matipó"', add
label define V0002_lbl 4312138 `"Mato Castelhano"', add
label define V0002_lbl 2509370 `"Mato Grosso"', add
label define V0002_lbl 4312153 `"Mato Leitão"', add
label define V0002_lbl 4312179 `"Mato Queimado"', add
label define V0002_lbl 4115739 `"Mato Rico"', add
label define V0002_lbl 3141009 `"Mato Verde"', add
label define V0002_lbl 2106607 `"Matões"', add
label define V0002_lbl 2106631 `"Matões do Norte"', add
label define V0002_lbl 4210704 `"Matos Costa"', add
label define V0002_lbl 3141108 `"Matozinhos"', add
label define V0002_lbl 5212956 `"Matrinchã"', add
label define V0002_lbl 2705101 `"Matriz de Camaragibe"', add
label define V0002_lbl 5105606 `"Matupá"', add
label define V0002_lbl 2509396 `"Maturéia"', add
label define V0002_lbl 3141207 `"Matutina"', add
label define V0002_lbl 3529401 `"Mauá"', add
label define V0002_lbl 4115754 `"Mauá da Serra"', add
label define V0002_lbl 1302900 `"Maués"', add
label define V0002_lbl 5213004 `"Maurilândia"', add
label define V0002_lbl 1712801 `"Maurilândia do Tocantins"', add
label define V0002_lbl 2308104 `"Mauriti"', add
label define V0002_lbl 2407500 `"Maxaranguape"', add
label define V0002_lbl 4312203 `"Maximiliano de Almeida"', add
label define V0002_lbl 1600402 `"Mazagão"', add
label define V0002_lbl 3141306 `"Medeiros"', add
label define V0002_lbl 2921104 `"Medeiros Neto"', add
label define V0002_lbl 4115804 `"Medianeira"', add
label define V0002_lbl 1504455 `"Medicilândia"', add
label define V0002_lbl 3141405 `"Medina"', add
label define V0002_lbl 4210803 `"Meleiro"', add
label define V0002_lbl 1504505 `"Melgaço"', add
label define V0002_lbl 3302809 `"Mendes"', add
label define V0002_lbl 3141504 `"Mendes Pimentel"', add
label define V0002_lbl 3529500 `"Mendonça"', add
label define V0002_lbl 4115853 `"Mercedes"', add
label define V0002_lbl 3141603 `"Mercês"', add
label define V0002_lbl 3529609 `"Meridiano"', add
label define V0002_lbl 2308203 `"Meruoca"', add
label define V0002_lbl 3529658 `"Mesópolis"', add
label define V0002_lbl 3302858 `"Mesquita"', add
label define V0002_lbl 3141702 `"Mesquita"', add
label define V0002_lbl 2705200 `"Messias"', add
label define V0002_lbl 2407609 `"Messias Targino"', add
label define V0002_lbl 2206209 `"Miguel Alves"', add
label define V0002_lbl 2921203 `"Miguel Calmon"', add
label define V0002_lbl 2206308 `"Miguel Leão"', add
label define V0002_lbl 3302908 `"Miguel Pereira"', add
label define V0002_lbl 3529708 `"Miguelópolis"', add
label define V0002_lbl 2308302 `"Milagres"', add
label define V0002_lbl 2921302 `"Milagres"', add
label define V0002_lbl 2106672 `"Milagres do Maranhão"', add
label define V0002_lbl 2308351 `"Milhã"', add
label define V0002_lbl 2206357 `"Milton Brandão"', add
label define V0002_lbl 5213053 `"Mimoso de Goiás"', add
label define V0002_lbl 3203403 `"Mimoso do Sul"', add
label define V0002_lbl 5213087 `"Minaçu"', add
label define V0002_lbl 2705309 `"Minador do Negrão"', add
label define V0002_lbl 4312252 `"Minas do Leão"', add
label define V0002_lbl 3141801 `"Minas Novas"', add
label define V0002_lbl 3141900 `"Minduri"', add
label define V0002_lbl 5213103 `"Mineiros"', add
label define V0002_lbl 3529807 `"Mineiros do Tietê"', add
label define V0002_lbl 1101203 `"Ministro Andreazza"', add
label define V0002_lbl 3530003 `"Mira Estrela"', add
label define V0002_lbl 3142007 `"Mirabela"', add
label define V0002_lbl 3529906 `"Miracatu"', add
label define V0002_lbl 3303005 `"Miracema"', add
label define V0002_lbl 1713205 `"Miracema do Tocantins"', add
label define V0002_lbl 2106706 `"Mirador"', add
label define V0002_lbl 4115903 `"Mirador"', add
label define V0002_lbl 3142106 `"Miradouro"', add
label define V0002_lbl 4312302 `"Miraguaí"', add
label define V0002_lbl 3142205 `"Miraí"', add
label define V0002_lbl 2308377 `"Miraíma"', add
label define V0002_lbl 5005608 `"Miranda"', add
label define V0002_lbl 2106755 `"Miranda do Norte"', add
label define V0002_lbl 2609303 `"Mirandiba"', add
label define V0002_lbl 3530102 `"Mirandópolis"', add
label define V0002_lbl 2921401 `"Mirangaba"', add
label define V0002_lbl 1713304 `"Miranorte"', add
label define V0002_lbl 2921450 `"Mirante"', add
label define V0002_lbl 1101302 `"Mirante da Serra"', add
label define V0002_lbl 3530201 `"Mirante do Paranapanema"', add
label define V0002_lbl 4116000 `"Miraselva"', add
label define V0002_lbl 3530300 `"Mirassol"', add
label define V0002_lbl 5105622 `"Mirassol d'Oeste"', add
label define V0002_lbl 3530409 `"Mirassolândia"', add
label define V0002_lbl 3142254 `"Miravânia"', add
label define V0002_lbl 4210852 `"Mirim Doce"', add
label define V0002_lbl 2106805 `"Mirinzal"', add
label define V0002_lbl 4116059 `"Missal"', add
label define V0002_lbl 2308401 `"Missão Velha"', add
label define V0002_lbl 1504604 `"Mocajuba"', add
label define V0002_lbl 3530508 `"Mococa"', add
label define V0002_lbl 4210902 `"Modelo"', add
label define V0002_lbl 3142304 `"Moeda"', add
label define V0002_lbl 3142403 `"Moema"', add
label define V0002_lbl 2509404 `"Mogeiro"', add
label define V0002_lbl 3530607 `"Mogi das Cruzes"', add
label define V0002_lbl 3530706 `"Mogi Guaçu"', add
label define V0002_lbl 3530805 `"Mogi Mirim"', add
label define V0002_lbl 5213400 `"Moiporá"', add
label define V0002_lbl 2804102 `"Moita Bonita"', add
label define V0002_lbl 1504703 `"Moju"', add
label define V0002_lbl 1504752 `"Mojuí dos Campos"', add
label define V0002_lbl 2308500 `"Mombaça"', add
label define V0002_lbl 3530904 `"Mombuca"', add
label define V0002_lbl 2106904 `"Monção"', add
label define V0002_lbl 3531001 `"Monções"', add
label define V0002_lbl 4211009 `"Mondaí"', add
label define V0002_lbl 3531100 `"Mongaguá"', add
label define V0002_lbl 3142502 `"Monjolos"', add
label define V0002_lbl 2206407 `"Monsenhor Gil"', add
label define V0002_lbl 2206506 `"Monsenhor Hipólito"', add
label define V0002_lbl 3142601 `"Monsenhor Paulo"', add
label define V0002_lbl 2308609 `"Monsenhor Tabosa"', add
label define V0002_lbl 2509503 `"Montadas"', add
label define V0002_lbl 3142700 `"Montalvânia"', add
label define V0002_lbl 3203502 `"Montanha"', add
label define V0002_lbl 2407708 `"Montanhas"', add
label define V0002_lbl 4312351 `"Montauri"', add
label define V0002_lbl 2407807 `"Monte Alegre"', add
label define V0002_lbl 1504802 `"Monte Alegre"', add
label define V0002_lbl 5213509 `"Monte Alegre de Goiás"', add
label define V0002_lbl 3142809 `"Monte Alegre de Minas"', add
label define V0002_lbl 2804201 `"Monte Alegre de Sergipe"', add
label define V0002_lbl 2206605 `"Monte Alegre do Piauí"', add
label define V0002_lbl 3531209 `"Monte Alegre do Sul"', add
label define V0002_lbl 4312377 `"Monte Alegre dos Campos"', add
label define V0002_lbl 3531308 `"Monte Alto"', add
label define V0002_lbl 3531407 `"Monte Aprazível"', add
label define V0002_lbl 3142908 `"Monte Azul"', add
label define V0002_lbl 3531506 `"Monte Azul Paulista"', add
label define V0002_lbl 3143005 `"Monte Belo"', add
label define V0002_lbl 4312385 `"Monte Belo do Sul"', add
label define V0002_lbl 4211058 `"Monte Carlo"', add
label define V0002_lbl 3143104 `"Monte Carmelo"', add
label define V0002_lbl 4211108 `"Monte Castelo"', add
label define V0002_lbl 3531605 `"Monte Castelo"', add
label define V0002_lbl 2407906 `"Monte das Gameleiras"', add
label define V0002_lbl 1713601 `"Monte do Carmo"', add
label define V0002_lbl 3143153 `"Monte Formoso"', add
label define V0002_lbl 2509602 `"Monte Horebe"', add
label define V0002_lbl 3531803 `"Monte Mor"', add
label define V0002_lbl 1101401 `"Monte Negro"', add
label define V0002_lbl 2921500 `"Monte Santo"', add
label define V0002_lbl 3143203 `"Monte Santo de Minas"', add
label define V0002_lbl 1713700 `"Monte Santo do Tocantins"', add
label define V0002_lbl 3143401 `"Monte Sião"', add
label define V0002_lbl 2509701 `"Monteiro"', add
label define V0002_lbl 3531704 `"Monteiro Lobato"', add
label define V0002_lbl 2705408 `"Monteirópolis"', add
label define V0002_lbl 4312401 `"Montenegro"', add
label define V0002_lbl 2107001 `"Montes Altos"', add
label define V0002_lbl 3143302 `"Montes Claros"', add
label define V0002_lbl 5213707 `"Montes Claros de Goiás"', add
label define V0002_lbl 3143450 `"Montezuma"', add
label define V0002_lbl 5213756 `"Montividiu"', add
label define V0002_lbl 5213772 `"Montividiu do Norte"', add
label define V0002_lbl 2308708 `"Morada Nova"', add
label define V0002_lbl 3143500 `"Morada Nova de Minas"', add
label define V0002_lbl 2308807 `"Moraújo"', add
label define V0002_lbl 2614303 `"Moreilândia"', add
label define V0002_lbl 4116109 `"Moreira Sales"', add
label define V0002_lbl 2609402 `"Moreno"', add
label define V0002_lbl 4312427 `"Mormaço"', add
label define V0002_lbl 2921609 `"Morpará"', add
label define V0002_lbl 4116208 `"Morretes"', add
label define V0002_lbl 5213806 `"Morrinhos"', add
label define V0002_lbl 2308906 `"Morrinhos"', add
label define V0002_lbl 4312443 `"Morrinhos do Sul"', add
label define V0002_lbl 3531902 `"Morro Agudo"', add
label define V0002_lbl 5213855 `"Morro Agudo de Goiás"', add
label define V0002_lbl 2206654 `"Morro Cabeça no Tempo"', add
label define V0002_lbl 4211207 `"Morro da Fumaça"', add
label define V0002_lbl 3143609 `"Morro da Garça"', add
label define V0002_lbl 2921708 `"Morro do Chapéu"', add
label define V0002_lbl 2206670 `"Morro do Chapéu do Piauí"', add
label define V0002_lbl 3143708 `"Morro do Pilar"', add
label define V0002_lbl 4211256 `"Morro Grande"', add
label define V0002_lbl 4312450 `"Morro Redondo"', add
label define V0002_lbl 4312476 `"Morro Reuter"', add
label define V0002_lbl 2107100 `"Morros"', add
label define V0002_lbl 2921807 `"Mortugaba"', add
label define V0002_lbl 3532009 `"Morungaba"', add
label define V0002_lbl 5213905 `"Mossâmedes"', add
label define V0002_lbl 2408003 `"Mossoró"', add
label define V0002_lbl 4312500 `"Mostardas"', add
label define V0002_lbl 3532058 `"Motuca"', add
label define V0002_lbl 5214002 `"Mozarlândia"', add
label define V0002_lbl 1504901 `"Muaná"', add
label define V0002_lbl 1400308 `"Mucajaí"', add
label define V0002_lbl 2309003 `"Mucambo"', add
label define V0002_lbl 2921906 `"Mucugê"', add
label define V0002_lbl 4312609 `"Muçum"', add
label define V0002_lbl 2922003 `"Mucuri"', add
label define V0002_lbl 3203601 `"Mucurici"', add
label define V0002_lbl 4312617 `"Muitos Capões"', add
label define V0002_lbl 4312625 `"Muliterno"', add
label define V0002_lbl 2309102 `"Mulungu"', add
label define V0002_lbl 2509800 `"Mulungu"', add
label define V0002_lbl 2922052 `"Mulungu do Morro"', add
label define V0002_lbl 2922102 `"Mundo Novo"', add
label define V0002_lbl 5005681 `"Mundo Novo"', add
label define V0002_lbl 5214051 `"Mundo Novo"', add
label define V0002_lbl 3143807 `"Munhoz"', add
label define V0002_lbl 4116307 `"Munhoz de Melo"', add
label define V0002_lbl 2922201 `"Muniz Ferreira"', add
label define V0002_lbl 3203700 `"Muniz Freire"', add
label define V0002_lbl 2922250 `"Muquém do São Francisco"', add
label define V0002_lbl 3203809 `"Muqui"', add
label define V0002_lbl 3143906 `"Muriaé"', add
label define V0002_lbl 2804300 `"Muribeca"', add
label define V0002_lbl 2705507 `"Murici"', add
label define V0002_lbl 2206696 `"Murici dos Portelas"', add
label define V0002_lbl 1713957 `"Muricilândia"', add
label define V0002_lbl 2922300 `"Muritiba"', add
label define V0002_lbl 3532108 `"Murutinga do Sul"', add
label define V0002_lbl 2922409 `"Mutuípe"', add
label define V0002_lbl 3144003 `"Mutum"', add
label define V0002_lbl 5214101 `"Mutunópolis"', add
label define V0002_lbl 3144102 `"Muzambinho"', add
label define V0002_lbl 3144201 `"Nacip Raydan"', add
label define V0002_lbl 3532157 `"Nantes"', add
label define V0002_lbl 3144300 `"Nanuque"', add
label define V0002_lbl 4312658 `"Não-Me-Toque"', add
label define V0002_lbl 3144359 `"Naque"', add
label define V0002_lbl 3532207 `"Narandiba"', add
label define V0002_lbl 2408102 `"Natal"', add
label define V0002_lbl 3144375 `"Natalândia"', add
label define V0002_lbl 3144409 `"Natércia"', add
label define V0002_lbl 1714203 `"Natividade"', add
label define V0002_lbl 3303104 `"Natividade"', add
label define V0002_lbl 3532306 `"Natividade da Serra"', add
label define V0002_lbl 2509909 `"Natuba"', add
label define V0002_lbl 4211306 `"Navegantes"', add
label define V0002_lbl 5005707 `"Naviraí"', add
label define V0002_lbl 1714302 `"Nazaré"', add
label define V0002_lbl 2922508 `"Nazaré"', add
label define V0002_lbl 2609501 `"Nazaré da Mata"', add
label define V0002_lbl 2206704 `"Nazaré do Piauí"', add
label define V0002_lbl 3532405 `"Nazaré Paulista"', add
label define V0002_lbl 3144508 `"Nazareno"', add
label define V0002_lbl 2510006 `"Nazarezinho"', add
label define V0002_lbl 2206720 `"Nazária"', add
label define V0002_lbl 5214408 `"Nazário"', add
label define V0002_lbl 2804409 `"Neópolis"', add
label define V0002_lbl 3144607 `"Nepomuceno"', add
label define V0002_lbl 5214507 `"Nerópolis"', add
label define V0002_lbl 3532504 `"Neves Paulista"', add
label define V0002_lbl 1303007 `"Nhamundá"', add
label define V0002_lbl 3532603 `"Nhandeara"', add
label define V0002_lbl 4312674 `"Nicolau Vergueiro"', add
label define V0002_lbl 2922607 `"Nilo Peçanha"', add
label define V0002_lbl 3303203 `"Nilópolis"', add
label define V0002_lbl 2107209 `"Nina Rodrigues"', add
label define V0002_lbl 3144656 `"Ninheira"', add
label define V0002_lbl 5005806 `"Nioaque"', add
label define V0002_lbl 3532702 `"Nipoã"', add
label define V0002_lbl 5214606 `"Niquelândia"', add
label define V0002_lbl 2408201 `"Nísia Floresta"', add
label define V0002_lbl 3303302 `"Niterói"', add
label define V0002_lbl 5105903 `"Nobres"', add
label define V0002_lbl 4312708 `"Nonoai"', add
label define V0002_lbl 2922656 `"Nordestina"', add
label define V0002_lbl 1400407 `"Normandia"', add
label define V0002_lbl 5106000 `"Nortelândia"', add
label define V0002_lbl 2804458 `"Nossa Senhora Aparecida"', add
label define V0002_lbl 2804508 `"Nossa Senhora da Glória"', add
label define V0002_lbl 2804607 `"Nossa Senhora das Dores"', add
label define V0002_lbl 4116406 `"Nossa Senhora das Graças"', add
label define V0002_lbl 2804706 `"Nossa Senhora de Lourdes"', add
label define V0002_lbl 2206753 `"Nossa Senhora de Nazaré"', add
label define V0002_lbl 5106109 `"Nossa Senhora do Livramento"', add
label define V0002_lbl 2804805 `"Nossa Senhora do Socorro"', add
label define V0002_lbl 2206803 `"Nossa Senhora dos Remédios"', add
label define V0002_lbl 3532801 `"Nova Aliança"', add
label define V0002_lbl 4116505 `"Nova Aliança do Ivaí"', add
label define V0002_lbl 4312757 `"Nova Alvorada"', add
label define V0002_lbl 5006002 `"Nova Alvorada do Sul"', add
label define V0002_lbl 5214705 `"Nova América"', add
label define V0002_lbl 4116604 `"Nova América da Colina"', add
label define V0002_lbl 5006200 `"Nova Andradina"', add
label define V0002_lbl 4312807 `"Nova Araçá"', add
label define V0002_lbl 5214804 `"Nova Aurora"', add
label define V0002_lbl 4116703 `"Nova Aurora"', add
label define V0002_lbl 5106158 `"Nova Bandeirantes"', add
label define V0002_lbl 4312906 `"Nova Bassano"', add
label define V0002_lbl 3144672 `"Nova Belém"', add
label define V0002_lbl 4312955 `"Nova Boa Vista"', add
label define V0002_lbl 5106208 `"Nova Brasilândia"', add
label define V0002_lbl 1100148 `"Nova Brasilândia D'Oeste"', add
label define V0002_lbl 4313003 `"Nova Bréscia"', add
label define V0002_lbl 3532827 `"Nova Campina"', add
label define V0002_lbl 2922706 `"Nova Canaã"', add
label define V0002_lbl 5106216 `"Nova Canaã do Norte"', add
label define V0002_lbl 3532843 `"Nova Canaã Paulista"', add
label define V0002_lbl 4313011 `"Nova Candelária"', add
label define V0002_lbl 4116802 `"Nova Cantu"', add
label define V0002_lbl 3532868 `"Nova Castilho"', add
label define V0002_lbl 2107258 `"Nova Colinas"', add
label define V0002_lbl 5214838 `"Nova Crixás"', add
label define V0002_lbl 2408300 `"Nova Cruz"', add
label define V0002_lbl 3144706 `"Nova Era"', add
label define V0002_lbl 4211405 `"Nova Erechim"', add
label define V0002_lbl 4116901 `"Nova Esperança"', add
label define V0002_lbl 1504950 `"Nova Esperança do Piriá"', add
label define V0002_lbl 4116950 `"Nova Esperança do Sudoeste"', add
label define V0002_lbl 4313037 `"Nova Esperança do Sul"', add
label define V0002_lbl 3532900 `"Nova Europa"', add
label define V0002_lbl 4117008 `"Nova Fátima"', add
label define V0002_lbl 2922730 `"Nova Fátima"', add
label define V0002_lbl 2510105 `"Nova Floresta"', add
label define V0002_lbl 3303401 `"Nova Friburgo"', add
label define V0002_lbl 5214861 `"Nova Glória"', add
label define V0002_lbl 3533007 `"Nova Granada"', add
label define V0002_lbl 5108808 `"Nova Guarita"', add
label define V0002_lbl 3533106 `"Nova Guataporanga"', add
label define V0002_lbl 4313060 `"Nova Hartz"', add
label define V0002_lbl 2922755 `"Nova Ibiá"', add
label define V0002_lbl 3303500 `"Nova Iguaçu"', add
label define V0002_lbl 5214879 `"Nova Iguaçu de Goiás"', add
label define V0002_lbl 3533205 `"Nova Independência"', add
label define V0002_lbl 2107308 `"Nova Iorque"', add
label define V0002_lbl 1504976 `"Nova Ipixuna"', add
label define V0002_lbl 4211454 `"Nova Itaberaba"', add
label define V0002_lbl 2922805 `"Nova Itarana"', add
label define V0002_lbl 5106182 `"Nova Lacerda"', add
label define V0002_lbl 4117057 `"Nova Laranjeiras"', add
label define V0002_lbl 3144805 `"Nova Lima"', add
label define V0002_lbl 4117107 `"Nova Londrina"', add
label define V0002_lbl 3533304 `"Nova Luzitânia"', add
label define V0002_lbl 1100338 `"Nova Mamoré"', add
label define V0002_lbl 5108857 `"Nova Marilândia"', add
label define V0002_lbl 5108907 `"Nova Maringá"', add
label define V0002_lbl 3144904 `"Nova Módica"', add
label define V0002_lbl 5108956 `"Nova Monte Verde"', add
label define V0002_lbl 5106224 `"Nova Mutum"', add
label define V0002_lbl 5106174 `"Nova Nazaré"', add
label define V0002_lbl 3533403 `"Nova Odessa"', add
label define V0002_lbl 4117206 `"Nova Olímpia"', add
label define V0002_lbl 5106232 `"Nova Olímpia"', add
label define V0002_lbl 1714880 `"Nova Olinda"', add
label define V0002_lbl 2309201 `"Nova Olinda"', add
label define V0002_lbl 2510204 `"Nova Olinda"', add
label define V0002_lbl 2107357 `"Nova Olinda do Maranhão"', add
label define V0002_lbl 1303106 `"Nova Olinda do Norte"', add
label define V0002_lbl 4313086 `"Nova Pádua"', add
label define V0002_lbl 4313102 `"Nova Palma"', add
label define V0002_lbl 2510303 `"Nova Palmeira"', add
label define V0002_lbl 4313201 `"Nova Petrópolis"', add
label define V0002_lbl 3145000 `"Nova Ponte"', add
label define V0002_lbl 3145059 `"Nova Porteirinha"', add
label define V0002_lbl 4313300 `"Nova Prata"', add
label define V0002_lbl 4117255 `"Nova Prata do Iguaçu"', add
label define V0002_lbl 4313334 `"Nova Ramada"', add
label define V0002_lbl 2922854 `"Nova Redenção"', add
label define V0002_lbl 3145109 `"Nova Resende"', add
label define V0002_lbl 5214903 `"Nova Roma"', add
label define V0002_lbl 4313359 `"Nova Roma do Sul"', add
label define V0002_lbl 1715002 `"Nova Rosalândia"', add
label define V0002_lbl 2309300 `"Nova Russas"', add
label define V0002_lbl 4117214 `"Nova Santa Bárbara"', add
label define V0002_lbl 5106190 `"Nova Santa Helena"', add
label define V0002_lbl 4313375 `"Nova Santa Rita"', add
label define V0002_lbl 2207959 `"Nova Santa Rita"', add
label define V0002_lbl 4117222 `"Nova Santa Rosa"', add
label define V0002_lbl 3145208 `"Nova Serrana"', add
label define V0002_lbl 2922904 `"Nova Soure"', add
label define V0002_lbl 4117271 `"Nova Tebas"', add
label define V0002_lbl 1505007 `"Nova Timboteua"', add
label define V0002_lbl 4211504 `"Nova Trento"', add
label define V0002_lbl 5106240 `"Nova Ubiratã"', add
label define V0002_lbl 1101435 `"Nova União"', add
label define V0002_lbl 3136603 `"Nova União"', add
label define V0002_lbl 3203908 `"Nova Venécia"', add
label define V0002_lbl 5215009 `"Nova Veneza"', add
label define V0002_lbl 4211603 `"Nova Veneza"', add
label define V0002_lbl 2923001 `"Nova Viçosa"', add
label define V0002_lbl 5106257 `"Nova Xavantina"', add
label define V0002_lbl 3533254 `"Novais"', add
label define V0002_lbl 1715101 `"Novo Acordo"', add
label define V0002_lbl 1303205 `"Novo Airão"', add
label define V0002_lbl 1715150 `"Novo Alegre"', add
label define V0002_lbl 1303304 `"Novo Aripuanã"', add
label define V0002_lbl 4313490 `"Novo Barreiro"', add
label define V0002_lbl 5215207 `"Novo Brasil"', add
label define V0002_lbl 4313391 `"Novo Cabrais"', add
label define V0002_lbl 3145307 `"Novo Cruzeiro"', add
label define V0002_lbl 5215231 `"Novo Gama"', add
label define V0002_lbl 4313409 `"Novo Hamburgo"', add
label define V0002_lbl 4211652 `"Novo Horizonte"', add
label define V0002_lbl 3533502 `"Novo Horizonte"', add
label define V0002_lbl 2923035 `"Novo Horizonte"', add
label define V0002_lbl 5106273 `"Novo Horizonte do Norte"', add
label define V0002_lbl 1100502 `"Novo Horizonte do Oeste"', add
label define V0002_lbl 5006259 `"Novo Horizonte do Sul"', add
label define V0002_lbl 4117297 `"Novo Itacolomi"', add
label define V0002_lbl 1715259 `"Novo Jardim"', add
label define V0002_lbl 2705606 `"Novo Lino"', add
label define V0002_lbl 4313425 `"Novo Machado"', add
label define V0002_lbl 5106265 `"Novo Mundo"', add
label define V0002_lbl 2309409 `"Novo Oriente"', add
label define V0002_lbl 3145356 `"Novo Oriente de Minas"', add
label define V0002_lbl 2206902 `"Novo Oriente do Piauí"', add
label define V0002_lbl 5215256 `"Novo Planalto"', add
label define V0002_lbl 1505031 `"Novo Progresso"', add
label define V0002_lbl 1505064 `"Novo Repartimento"', add
label define V0002_lbl 2206951 `"Novo Santo Antônio"', add
label define V0002_lbl 5106315 `"Novo Santo Antônio"', add
label define V0002_lbl 5106281 `"Novo São Joaquim"', add
label define V0002_lbl 4313441 `"Novo Tiradentes"', add
label define V0002_lbl 2923050 `"Novo Triunfo"', add
label define V0002_lbl 4313466 `"Novo Xingu"', add
label define V0002_lbl 3145372 `"Novorizonte"', add
label define V0002_lbl 3533601 `"Nuporanga"', add
label define V0002_lbl 1505106 `"Óbidos"', add
label define V0002_lbl 2309458 `"Ocara"', add
label define V0002_lbl 3533700 `"Ocauçu"', add
label define V0002_lbl 2207009 `"Oeiras"', add
label define V0002_lbl 1505205 `"Oeiras do Pará"', add
label define V0002_lbl 1600501 `"Oiapoque"', add
label define V0002_lbl 3145406 `"Olaria"', add
label define V0002_lbl 3533809 `"Óleo"', add
label define V0002_lbl 2510402 `"Olho d'Água"', add
label define V0002_lbl 2107407 `"Olho d'Água das Cunhãs"', add
label define V0002_lbl 2705705 `"Olho d'Água das Flores"', add
label define V0002_lbl 2408409 `"Olho d'Água do Borges"', add
label define V0002_lbl 2705804 `"Olho d'Água do Casado"', add
label define V0002_lbl 2207108 `"Olho D'Água do Piauí"', add
label define V0002_lbl 2705903 `"Olho d'Água Grande"', add
label define V0002_lbl 3145455 `"Olhos-d'Água"', add
label define V0002_lbl 3533908 `"Olímpia"', add
label define V0002_lbl 3145505 `"Olímpio Noronha"', add
label define V0002_lbl 2609600 `"Olinda"', add
label define V0002_lbl 2107456 `"Olinda Nova do Maranhão"', add
label define V0002_lbl 2923100 `"Olindina"', add
label define V0002_lbl 2510501 `"Olivedos"', add
label define V0002_lbl 3145604 `"Oliveira"', add
label define V0002_lbl 1715507 `"Oliveira de Fátima"', add
label define V0002_lbl 2923209 `"Oliveira dos Brejinhos"', add
label define V0002_lbl 3145703 `"Oliveira Fortes"', add
label define V0002_lbl 2706000 `"Olivença"', add
label define V0002_lbl 3145802 `"Onça de Pitangui"', add
label define V0002_lbl 3534005 `"Onda Verde"', add
label define V0002_lbl 3145851 `"Oratórios"', add
label define V0002_lbl 3534104 `"Oriente"', add
label define V0002_lbl 3534203 `"Orindiúva"', add
label define V0002_lbl 1505304 `"Oriximiná"', add
label define V0002_lbl 3145877 `"Orizânia"', add
label define V0002_lbl 5215306 `"Orizona"', add
label define V0002_lbl 3534302 `"Orlândia"', add
label define V0002_lbl 4211702 `"Orleans"', add
label define V0002_lbl 2609709 `"Orobó"', add
label define V0002_lbl 2609808 `"Orocó"', add
label define V0002_lbl 2309508 `"Orós"', add
label define V0002_lbl 4117305 `"Ortigueira"', add
label define V0002_lbl 3534401 `"Osasco"', add
label define V0002_lbl 3534500 `"Oscar Bressane"', add
label define V0002_lbl 4313508 `"Osório"', add
label define V0002_lbl 3534609 `"Osvaldo Cruz"', add
label define V0002_lbl 4211751 `"Otacílio Costa"', add
label define V0002_lbl 1505403 `"Ourém"', add
label define V0002_lbl 2923308 `"Ouriçangas"', add
label define V0002_lbl 2609907 `"Ouricuri"', add
label define V0002_lbl 1505437 `"Ourilândia do Norte"', add
label define V0002_lbl 3534708 `"Ourinhos"', add
label define V0002_lbl 4117404 `"Ourizona"', add
label define V0002_lbl 4211801 `"Ouro"', add
label define V0002_lbl 2408508 `"Ouro Branco"', add
label define V0002_lbl 2706109 `"Ouro Branco"', add
label define V0002_lbl 3145901 `"Ouro Branco"', add
label define V0002_lbl 3146008 `"Ouro Fino"', add
label define V0002_lbl 3146107 `"Ouro Preto"', add
label define V0002_lbl 1100155 `"Ouro Preto do Oeste"', add
label define V0002_lbl 2510600 `"Ouro Velho"', add
label define V0002_lbl 4211850 `"Ouro Verde"', add
label define V0002_lbl 3534807 `"Ouro Verde"', add
label define V0002_lbl 5215405 `"Ouro Verde de Goiás"', add
label define V0002_lbl 3146206 `"Ouro Verde de Minas"', add
label define V0002_lbl 4117453 `"Ouro Verde do Oeste"', add
label define V0002_lbl 3534757 `"Ouroeste"', add
label define V0002_lbl 2923357 `"Ourolândia"', add
label define V0002_lbl 5215504 `"Ouvidor"', add
label define V0002_lbl 3534906 `"Pacaembu"', add
label define V0002_lbl 1505486 `"Pacajá"', add
label define V0002_lbl 2309607 `"Pacajus"', add
label define V0002_lbl 1400456 `"Pacaraima"', add
label define V0002_lbl 2309706 `"Pacatuba"', add
label define V0002_lbl 2804904 `"Pacatuba"', add
label define V0002_lbl 2107506 `"Paço do Lumiar"', add
label define V0002_lbl 2309805 `"Pacoti"', add
label define V0002_lbl 2309904 `"Pacujá"', add
label define V0002_lbl 5215603 `"Padre Bernardo"', add
label define V0002_lbl 3146255 `"Padre Carvalho"', add
label define V0002_lbl 2207207 `"Padre Marcos"', add
label define V0002_lbl 3146305 `"Padre Paraíso"', add
label define V0002_lbl 2207306 `"Paes Landim"', add
label define V0002_lbl 3146552 `"Pai Pedro"', add
label define V0002_lbl 4211876 `"Paial"', add
label define V0002_lbl 4117503 `"Paiçandu"', add
label define V0002_lbl 4313607 `"Paim Filho"', add
label define V0002_lbl 3146404 `"Paineiras"', add
label define V0002_lbl 4211892 `"Painel"', add
label define V0002_lbl 3146503 `"Pains"', add
label define V0002_lbl 3146602 `"Paiva"', add
label define V0002_lbl 2207355 `"Pajeú do Piauí"', add
label define V0002_lbl 2706208 `"Palestina"', add
label define V0002_lbl 3535002 `"Palestina"', add
label define V0002_lbl 5215652 `"Palestina de Goiás"', add
label define V0002_lbl 1505494 `"Palestina do Pará"', add
label define V0002_lbl 2310001 `"Palhano"', add
label define V0002_lbl 4211900 `"Palhoça"', add
label define V0002_lbl 3146701 `"Palma"', add
label define V0002_lbl 4212007 `"Palma Sola"', add
label define V0002_lbl 2310100 `"Palmácia"', add
label define V0002_lbl 2610004 `"Palmares"', add
label define V0002_lbl 4313656 `"Palmares do Sul"', add
label define V0002_lbl 3535101 `"Palmares Paulista"', add
label define V0002_lbl 4117602 `"Palmas"', add
label define V0002_lbl 1721000 `"Palmas"', add
label define V0002_lbl 2923407 `"Palmas de Monte Alto"', add
label define V0002_lbl 4117701 `"Palmeira"', add
label define V0002_lbl 4212056 `"Palmeira"', add
label define V0002_lbl 4313706 `"Palmeira das Missões"', add
label define V0002_lbl 2207405 `"Palmeira do Piauí"', add
label define V0002_lbl 3535200 `"Palmeira d'Oeste"', add
label define V0002_lbl 2706307 `"Palmeira dos Índios"', add
label define V0002_lbl 2207504 `"Palmeirais"', add
label define V0002_lbl 2107605 `"Palmeirândia"', add
label define V0002_lbl 1715705 `"Palmeirante"', add
label define V0002_lbl 2923506 `"Palmeiras"', add
label define V0002_lbl 5215702 `"Palmeiras de Goiás"', add
label define V0002_lbl 1713809 `"Palmeiras do Tocantins"', add
label define V0002_lbl 2610103 `"Palmeirina"', add
label define V0002_lbl 1715754 `"Palmeirópolis"', add
label define V0002_lbl 5215801 `"Palmelo"', add
label define V0002_lbl 5215900 `"Palminópolis"', add
label define V0002_lbl 3535309 `"Palmital"', add
label define V0002_lbl 4117800 `"Palmital"', add
label define V0002_lbl 4313805 `"Palmitinho"', add
label define V0002_lbl 4212106 `"Palmitos"', add
label define V0002_lbl 3146750 `"Palmópolis"', add
label define V0002_lbl 4117909 `"Palotina"', add
label define V0002_lbl 5216007 `"Panamá"', add
label define V0002_lbl 4313904 `"Panambi"', add
label define V0002_lbl 3204005 `"Pancas"', add
label define V0002_lbl 2610202 `"Panelas"', add
label define V0002_lbl 3535408 `"Panorama"', add
label define V0002_lbl 4313953 `"Pantano Grande"', add
label define V0002_lbl 2706406 `"Pão de Açúcar"', add
label define V0002_lbl 3146909 `"Papagaios"', add
label define V0002_lbl 4212205 `"Papanduva"', add
label define V0002_lbl 2207553 `"Paquetá"', add
label define V0002_lbl 3147105 `"Pará de Minas"', add
label define V0002_lbl 3303609 `"Paracambi"', add
label define V0002_lbl 3147006 `"Paracatu"', add
label define V0002_lbl 2310209 `"Paracuru"', add
label define V0002_lbl 1505502 `"Paragominas"', add
label define V0002_lbl 3147204 `"Paraguaçu"', add
label define V0002_lbl 3535507 `"Paraguaçu Paulista"', add
label define V0002_lbl 4314001 `"Paraí"', add
label define V0002_lbl 3303708 `"Paraíba do Sul"', add
label define V0002_lbl 2107704 `"Paraibano"', add
label define V0002_lbl 3535606 `"Paraibuna"', add
label define V0002_lbl 2310258 `"Paraipaba"', add
label define V0002_lbl 3535705 `"Paraíso"', add
label define V0002_lbl 4212239 `"Paraíso"', add
label define V0002_lbl 5006275 `"Paraíso das Águas"', add
label define V0002_lbl 4118006 `"Paraíso do Norte"', add
label define V0002_lbl 4314027 `"Paraíso do Sul"', add
label define V0002_lbl 1716109 `"Paraíso do Tocantins"', add
label define V0002_lbl 3147303 `"Paraisópolis"', add
label define V0002_lbl 2310308 `"Parambu"', add
label define V0002_lbl 2923605 `"Paramirim"', add
label define V0002_lbl 2310407 `"Paramoti"', add
label define V0002_lbl 2408607 `"Paraná"', add
label define V0002_lbl 1716208 `"Paranã"', add
label define V0002_lbl 4118105 `"Paranacity"', add
label define V0002_lbl 4118204 `"Paranaguá"', add
label define V0002_lbl 5006309 `"Paranaíba"', add
label define V0002_lbl 5216304 `"Paranaiguara"', add
label define V0002_lbl 5106299 `"Paranaíta"', add
label define V0002_lbl 3535804 `"Paranapanema"', add
label define V0002_lbl 4118303 `"Paranapoema"', add
label define V0002_lbl 3535903 `"Paranapuã"', add
label define V0002_lbl 2610301 `"Paranatama"', add
label define V0002_lbl 5106307 `"Paranatinga"', add
label define V0002_lbl 4118402 `"Paranavaí"', add
label define V0002_lbl 5006358 `"Paranhos"', add
label define V0002_lbl 3147402 `"Paraopeba"', add
label define V0002_lbl 3536000 `"Parapuã"', add
label define V0002_lbl 2510659 `"Parari"', add
label define V0002_lbl 2923704 `"Paratinga"', add
label define V0002_lbl 3303807 `"Paraty"', add
label define V0002_lbl 2408706 `"Paraú"', add
label define V0002_lbl 1505536 `"Parauapebas"', add
label define V0002_lbl 5216403 `"Paraúna"', add
label define V0002_lbl 2408805 `"Parazinho"', add
label define V0002_lbl 3536109 `"Pardinho"', add
label define V0002_lbl 4314035 `"Pareci Novo"', add
label define V0002_lbl 1101450 `"Parecis"', add
label define V0002_lbl 2408904 `"Parelhas"', add
label define V0002_lbl 2706422 `"Pariconha"', add
label define V0002_lbl 1303403 `"Parintins"', add
label define V0002_lbl 2923803 `"Paripiranga"', add
label define V0002_lbl 2706448 `"Paripueira"', add
label define V0002_lbl 3536208 `"Pariquera-Açu"', add
label define V0002_lbl 3536257 `"Parisi"', add
label define V0002_lbl 2207603 `"Parnaguá"', add
label define V0002_lbl 2207702 `"Parnaíba"', add
label define V0002_lbl 2403251 `"Parnamirim"', add
label define V0002_lbl 2610400 `"Parnamirim"', add
label define V0002_lbl 2107803 `"Parnarama"', add
label define V0002_lbl 4314050 `"Parobé"', add
label define V0002_lbl 2409100 `"Passa e Fica"', add
label define V0002_lbl 3147600 `"Passa Quatro"', add
label define V0002_lbl 4314068 `"Passa Sete"', add
label define V0002_lbl 3147709 `"Passa Tempo"', add
label define V0002_lbl 3147808 `"Passa Vinte"', add
label define V0002_lbl 3147501 `"Passabém"', add
label define V0002_lbl 2409209 `"Passagem"', add
label define V0002_lbl 2510709 `"Passagem"', add
label define V0002_lbl 2107902 `"Passagem Franca"', add
label define V0002_lbl 2207751 `"Passagem Franca do Piauí"', add
label define V0002_lbl 2610509 `"Passira"', add
label define V0002_lbl 2706505 `"Passo de Camaragibe"', add
label define V0002_lbl 4212254 `"Passo de Torres"', add
label define V0002_lbl 4314076 `"Passo do Sobrado"', add
label define V0002_lbl 4314100 `"Passo Fundo"', add
label define V0002_lbl 3147907 `"Passos"', add
label define V0002_lbl 4212270 `"Passos Maia"', add
label define V0002_lbl 2108009 `"Pastos Bons"', add
label define V0002_lbl 3147956 `"Patis"', add
label define V0002_lbl 4118451 `"Pato Bragado"', add
label define V0002_lbl 4118501 `"Pato Branco"', add
label define V0002_lbl 2510808 `"Patos"', add
label define V0002_lbl 3148004 `"Patos de Minas"', add
label define V0002_lbl 2207777 `"Patos do Piauí"', add
label define V0002_lbl 3148103 `"Patrocínio"', add
label define V0002_lbl 3148202 `"Patrocínio do Muriaé"', add
label define V0002_lbl 3536307 `"Patrocínio Paulista"', add
label define V0002_lbl 2409308 `"Patu"', add
label define V0002_lbl 3303856 `"Paty do Alferes"', add
label define V0002_lbl 2923902 `"Pau Brasil"', add
label define V0002_lbl 1505551 `"Pau D'Arco"', add
label define V0002_lbl 1716307 `"Pau D'Arco"', add
label define V0002_lbl 2207793 `"Pau D'Arco do Piauí"', add
label define V0002_lbl 2409407 `"Pau dos Ferros"', add
label define V0002_lbl 2610608 `"Paudalho"', add
label define V0002_lbl 1303502 `"Pauini"', add
label define V0002_lbl 3148301 `"Paula Cândido"', add
label define V0002_lbl 4118600 `"Paula Freitas"', add
label define V0002_lbl 3536406 `"Paulicéia"', add
label define V0002_lbl 3536505 `"Paulínia"', add
label define V0002_lbl 2108058 `"Paulino Neves"', add
label define V0002_lbl 2610707 `"Paulista"', add
label define V0002_lbl 2510907 `"Paulista"', add
label define V0002_lbl 2207801 `"Paulistana"', add
label define V0002_lbl 3536570 `"Paulistânia"', add
label define V0002_lbl 3148400 `"Paulistas"', add
label define V0002_lbl 2924009 `"Paulo Afonso"', add
label define V0002_lbl 4314134 `"Paulo Bento"', add
label define V0002_lbl 3536604 `"Paulo de Faria"', add
label define V0002_lbl 4118709 `"Paulo Frontin"', add
label define V0002_lbl 2706604 `"Paulo Jacinto"', add
label define V0002_lbl 4212304 `"Paulo Lopes"', add
label define V0002_lbl 2108108 `"Paulo Ramos"', add
label define V0002_lbl 3148509 `"Pavão"', add
label define V0002_lbl 4314159 `"Paverama"', add
label define V0002_lbl 2207850 `"Pavussu"', add
label define V0002_lbl 2924058 `"Pé de Serra"', add
label define V0002_lbl 4118808 `"Peabiru"', add
label define V0002_lbl 3148608 `"Peçanha"', add
label define V0002_lbl 3536703 `"Pederneiras"', add
label define V0002_lbl 2610806 `"Pedra"', add
label define V0002_lbl 3148707 `"Pedra Azul"', add
label define V0002_lbl 3536802 `"Pedra Bela"', add
label define V0002_lbl 3148756 `"Pedra Bonita"', add
label define V0002_lbl 2511004 `"Pedra Branca"', add
label define V0002_lbl 2310506 `"Pedra Branca"', add
label define V0002_lbl 1600154 `"Pedra Branca do Amapari"', add
label define V0002_lbl 3148806 `"Pedra do Anta"', add
label define V0002_lbl 3148905 `"Pedra do Indaiá"', add
label define V0002_lbl 3149002 `"Pedra Dourada"', add
label define V0002_lbl 2409506 `"Pedra Grande"', add
label define V0002_lbl 2511103 `"Pedra Lavrada"', add
label define V0002_lbl 2805000 `"Pedra Mole"', add
label define V0002_lbl 2409605 `"Pedra Preta"', add
label define V0002_lbl 5106372 `"Pedra Preta"', add
label define V0002_lbl 3149101 `"Pedralva"', add
label define V0002_lbl 3536901 `"Pedranópolis"', add
label define V0002_lbl 2924108 `"Pedrão"', add
label define V0002_lbl 4314175 `"Pedras Altas"', add
label define V0002_lbl 2511202 `"Pedras de Fogo"', add
label define V0002_lbl 3149150 `"Pedras de Maria da Cruz"', add
label define V0002_lbl 4212403 `"Pedras Grandes"', add
label define V0002_lbl 3537008 `"Pedregulho"', add
label define V0002_lbl 3537107 `"Pedreira"', add
label define V0002_lbl 2108207 `"Pedreiras"', add
label define V0002_lbl 2805109 `"Pedrinhas"', add
label define V0002_lbl 3537156 `"Pedrinhas Paulista"', add
label define V0002_lbl 3149200 `"Pedrinópolis"', add
label define V0002_lbl 1716505 `"Pedro Afonso"', add
label define V0002_lbl 2924207 `"Pedro Alexandre"', add
label define V0002_lbl 2409704 `"Pedro Avelino"', add
label define V0002_lbl 3204054 `"Pedro Canário"', add
label define V0002_lbl 3537206 `"Pedro de Toledo"', add
label define V0002_lbl 2108256 `"Pedro do Rosário"', add
label define V0002_lbl 5006408 `"Pedro Gomes"', add
label define V0002_lbl 2207900 `"Pedro II"', add
label define V0002_lbl 2207934 `"Pedro Laurentino"', add
label define V0002_lbl 3149309 `"Pedro Leopoldo"', add
label define V0002_lbl 4314209 `"Pedro Osório"', add
label define V0002_lbl 2512721 `"Pedro Régis"', add
label define V0002_lbl 3149408 `"Pedro Teixeira"', add
label define V0002_lbl 2409803 `"Pedro Velho"', add
label define V0002_lbl 1716604 `"Peixe"', add
label define V0002_lbl 1505601 `"Peixe-Boi"', add
label define V0002_lbl 5106422 `"Peixoto de Azevedo"', add
label define V0002_lbl 4314308 `"Pejuçara"', add
label define V0002_lbl 4314407 `"Pelotas"', add
label define V0002_lbl 2310605 `"Penaforte"', add
label define V0002_lbl 2108306 `"Penalva"', add
label define V0002_lbl 3537305 `"Penápolis"', add
label define V0002_lbl 2409902 `"Pendências"', add
label define V0002_lbl 2706703 `"Penedo"', add
label define V0002_lbl 4212502 `"Penha"', add
label define V0002_lbl 2310704 `"Pentecoste"', add
label define V0002_lbl 3149507 `"Pequeri"', add
label define V0002_lbl 3149606 `"Pequi"', add
label define V0002_lbl 1716653 `"Pequizeiro"', add
label define V0002_lbl 3149705 `"Perdigão"', add
label define V0002_lbl 3149804 `"Perdizes"', add
label define V0002_lbl 3149903 `"Perdões"', add
label define V0002_lbl 3537404 `"Pereira Barreto"', add
label define V0002_lbl 3537503 `"Pereiras"', add
label define V0002_lbl 2310803 `"Pereiro"', add
label define V0002_lbl 2108405 `"Peri Mirim"', add
label define V0002_lbl 3149952 `"Periquito"', add
label define V0002_lbl 4212601 `"Peritiba"', add
label define V0002_lbl 2108454 `"Peritoró"', add
label define V0002_lbl 4118857 `"Perobal"', add
label define V0002_lbl 4118907 `"Pérola"', add
label define V0002_lbl 4119004 `"Pérola d'Oeste"', add
label define V0002_lbl 5216452 `"Perolândia"', add
label define V0002_lbl 3537602 `"Peruíbe"', add
label define V0002_lbl 3150000 `"Pescador"', add
label define V0002_lbl 4212650 `"Pescaria Brava"', add
label define V0002_lbl 2610905 `"Pesqueira"', add
label define V0002_lbl 2611002 `"Petrolândia"', add
label define V0002_lbl 4212700 `"Petrolândia"', add
label define V0002_lbl 2611101 `"Petrolina"', add
label define V0002_lbl 5216809 `"Petrolina de Goiás"', add
label define V0002_lbl 3303906 `"Petrópolis"', add
label define V0002_lbl 2706802 `"Piaçabuçu"', add
label define V0002_lbl 3537701 `"Piacatu"', add
label define V0002_lbl 2511301 `"Piancó"', add
label define V0002_lbl 2924306 `"Piatã"', add
label define V0002_lbl 3150109 `"Piau"', add
label define V0002_lbl 4314423 `"Picada Café"', add
label define V0002_lbl 1505635 `"Piçarra"', add
label define V0002_lbl 2208007 `"Picos"', add
label define V0002_lbl 2511400 `"Picuí"', add
label define V0002_lbl 3537800 `"Piedade"', add
label define V0002_lbl 3150158 `"Piedade de Caratinga"', add
label define V0002_lbl 3150208 `"Piedade de Ponte Nova"', add
label define V0002_lbl 3150307 `"Piedade do Rio Grande"', add
label define V0002_lbl 3150406 `"Piedade dos Gerais"', add
label define V0002_lbl 4119103 `"Piên"', add
label define V0002_lbl 2924405 `"Pilão Arcado"', add
label define V0002_lbl 2706901 `"Pilar"', add
label define V0002_lbl 2511509 `"Pilar"', add
label define V0002_lbl 5216908 `"Pilar de Goiás"', add
label define V0002_lbl 3537909 `"Pilar do Sul"', add
label define V0002_lbl 2511608 `"Pilões"', add
label define V0002_lbl 2410009 `"Pilões"', add
label define V0002_lbl 2511707 `"Pilõezinhos"', add
label define V0002_lbl 3150505 `"Pimenta"', add
label define V0002_lbl 1100189 `"Pimenta Bueno"', add
label define V0002_lbl 2208106 `"Pimenteiras"', add
label define V0002_lbl 1101468 `"Pimenteiras do Oeste"', add
label define V0002_lbl 2924504 `"Pindaí"', add
label define V0002_lbl 3538006 `"Pindamonhangaba"', add
label define V0002_lbl 2108504 `"Pindaré-Mirim"', add
label define V0002_lbl 2707008 `"Pindoba"', add
label define V0002_lbl 2924603 `"Pindobaçu"', add
label define V0002_lbl 3538105 `"Pindorama"', add
label define V0002_lbl 1717008 `"Pindorama do Tocantins"', add
label define V0002_lbl 2310852 `"Pindoretama"', add
label define V0002_lbl 3150539 `"Pingo-d'Água"', add
label define V0002_lbl 4119152 `"Pinhais"', add
label define V0002_lbl 4314456 `"Pinhal"', add
label define V0002_lbl 4314464 `"Pinhal da Serra"', add
label define V0002_lbl 4119251 `"Pinhal de São Bento"', add
label define V0002_lbl 4314472 `"Pinhal Grande"', add
label define V0002_lbl 4119202 `"Pinhalão"', add
label define V0002_lbl 3538204 `"Pinhalzinho"', add
label define V0002_lbl 4212908 `"Pinhalzinho"', add
label define V0002_lbl 4119301 `"Pinhão"', add
label define V0002_lbl 2805208 `"Pinhão"', add
label define V0002_lbl 3303955 `"Pinheiral"', add
label define V0002_lbl 4314498 `"Pinheirinho do Vale"', add
label define V0002_lbl 2108603 `"Pinheiro"', add
label define V0002_lbl 4314506 `"Pinheiro Machado"', add
label define V0002_lbl 4213005 `"Pinheiro Preto"', add
label define V0002_lbl 3204104 `"Pinheiros"', add
label define V0002_lbl 2924652 `"Pintadas"', add
label define V0002_lbl 4314548 `"Pinto Bandeira"', add
label define V0002_lbl 3150570 `"Pintópolis"', add
label define V0002_lbl 2208205 `"Pio IX"', add
label define V0002_lbl 2108702 `"Pio XII"', add
label define V0002_lbl 3538303 `"Piquerobi"', add
label define V0002_lbl 2310902 `"Piquet Carneiro"', add
label define V0002_lbl 3538501 `"Piquete"', add
label define V0002_lbl 3538600 `"Piracaia"', add
label define V0002_lbl 5217104 `"Piracanjuba"', add
label define V0002_lbl 3150604 `"Piracema"', add
label define V0002_lbl 3538709 `"Piracicaba"', add
label define V0002_lbl 2208304 `"Piracuruca"', add
label define V0002_lbl 3304003 `"Piraí"', add
label define V0002_lbl 2924678 `"Piraí do Norte"', add
label define V0002_lbl 4119400 `"Piraí do Sul"', add
label define V0002_lbl 3538808 `"Piraju"', add
label define V0002_lbl 3150703 `"Pirajuba"', add
label define V0002_lbl 3538907 `"Pirajuí"', add
label define V0002_lbl 2805307 `"Pirambu"', add
label define V0002_lbl 3150802 `"Piranga"', add
label define V0002_lbl 3539004 `"Pirangi"', add
label define V0002_lbl 3150901 `"Piranguçu"', add
label define V0002_lbl 3151008 `"Piranguinho"', add
label define V0002_lbl 2707107 `"Piranhas"', add
label define V0002_lbl 5217203 `"Piranhas"', add
label define V0002_lbl 2108801 `"Pirapemas"', add
label define V0002_lbl 3151107 `"Pirapetinga"', add
label define V0002_lbl 4314555 `"Pirapó"', add
label define V0002_lbl 3151206 `"Pirapora"', add
label define V0002_lbl 3539103 `"Pirapora do Bom Jesus"', add
label define V0002_lbl 3539202 `"Pirapozinho"', add
label define V0002_lbl 4119509 `"Piraquara"', add
label define V0002_lbl 1717206 `"Piraquê"', add
label define V0002_lbl 3539301 `"Pirassununga"', add
label define V0002_lbl 4314605 `"Piratini"', add
label define V0002_lbl 3539400 `"Piratininga"', add
label define V0002_lbl 4213104 `"Piratuba"', add
label define V0002_lbl 3151305 `"Piraúba"', add
label define V0002_lbl 5217302 `"Pirenópolis"', add
label define V0002_lbl 5217401 `"Pires do Rio"', add
label define V0002_lbl 2310951 `"Pires Ferreira"', add
label define V0002_lbl 2924702 `"Piripá"', add
label define V0002_lbl 2208403 `"Piripiri"', add
label define V0002_lbl 2924801 `"Piritiba"', add
label define V0002_lbl 2511806 `"Pirpirituba"', add
label define V0002_lbl 4119608 `"Pitanga"', add
label define V0002_lbl 4119657 `"Pitangueiras"', add
label define V0002_lbl 3539509 `"Pitangueiras"', add
label define V0002_lbl 3151404 `"Pitangui"', add
label define V0002_lbl 2511905 `"Pitimbu"', add
label define V0002_lbl 1717503 `"Pium"', add
label define V0002_lbl 3204203 `"Piúma"', add
label define V0002_lbl 3151503 `"Piumhi"', add
label define V0002_lbl 1505650 `"Placas"', add
label define V0002_lbl 1200385 `"Plácido de Castro"', add
label define V0002_lbl 5217609 `"Planaltina"', add
label define V0002_lbl 4119707 `"Planaltina do Paraná"', add
label define V0002_lbl 2924900 `"Planaltino"', add
label define V0002_lbl 2925006 `"Planalto"', add
label define V0002_lbl 4119806 `"Planalto"', add
label define V0002_lbl 3539608 `"Planalto"', add
label define V0002_lbl 4314704 `"Planalto"', add
label define V0002_lbl 4213153 `"Planalto Alegre"', add
label define V0002_lbl 5106455 `"Planalto da Serra"', add
label define V0002_lbl 3151602 `"Planura"', add
label define V0002_lbl 3539707 `"Platina"', add
label define V0002_lbl 3539806 `"Poá"', add
label define V0002_lbl 2611200 `"Poção"', add
label define V0002_lbl 2108900 `"Poção de Pedras"', add
label define V0002_lbl 2512002 `"Pocinhos"', add
label define V0002_lbl 2410108 `"Poço Branco"', add
label define V0002_lbl 2512036 `"Poço Dantas"', add
label define V0002_lbl 4314753 `"Poço das Antas"', add
label define V0002_lbl 2707206 `"Poço das Trincheiras"', add
label define V0002_lbl 2512077 `"Poço de José de Moura"', add
label define V0002_lbl 3151701 `"Poço Fundo"', add
label define V0002_lbl 2805406 `"Poço Redondo"', add
label define V0002_lbl 2805505 `"Poço Verde"', add
label define V0002_lbl 2925105 `"Poções"', add
label define V0002_lbl 5106505 `"Poconé"', add
label define V0002_lbl 3151800 `"Poços de Caldas"', add
label define V0002_lbl 3151909 `"Pocrane"', add
label define V0002_lbl 2925204 `"Pojuca"', add
label define V0002_lbl 3539905 `"Poloni"', add
label define V0002_lbl 2512101 `"Pombal"', add
label define V0002_lbl 2611309 `"Pombos"', add
label define V0002_lbl 4213203 `"Pomerode"', add
label define V0002_lbl 3540002 `"Pompéia"', add
label define V0002_lbl 3152006 `"Pompéu"', add
label define V0002_lbl 3540101 `"Pongaí"', add
label define V0002_lbl 1505700 `"Ponta de Pedras"', add
label define V0002_lbl 4119905 `"Ponta Grossa"', add
label define V0002_lbl 5006606 `"Ponta Porã"', add
label define V0002_lbl 3540200 `"Pontal"', add
label define V0002_lbl 5106653 `"Pontal do Araguaia"', add
label define V0002_lbl 4119954 `"Pontal do Paraná"', add
label define V0002_lbl 5217708 `"Pontalina"', add
label define V0002_lbl 3540259 `"Pontalinda"', add
label define V0002_lbl 4314779 `"Pontão"', add
label define V0002_lbl 4213302 `"Ponte Alta"', add
label define V0002_lbl 1717800 `"Ponte Alta do Bom Jesus"', add
label define V0002_lbl 4213351 `"Ponte Alta do Norte"', add
label define V0002_lbl 1717909 `"Ponte Alta do Tocantins"', add
label define V0002_lbl 5106703 `"Ponte Branca"', add
label define V0002_lbl 3152105 `"Ponte Nova"', add
label define V0002_lbl 4314787 `"Ponte Preta"', add
label define V0002_lbl 4213401 `"Ponte Serrada"', add
label define V0002_lbl 5106752 `"Pontes e Lacerda"', add
label define V0002_lbl 3540309 `"Pontes Gestal"', add
label define V0002_lbl 3204252 `"Ponto Belo"', add
label define V0002_lbl 3152131 `"Ponto Chique"', add
label define V0002_lbl 3152170 `"Ponto dos Volantes"', add
label define V0002_lbl 2925253 `"Ponto Novo"', add
label define V0002_lbl 3540408 `"Populina"', add
label define V0002_lbl 2311009 `"Poranga"', add
label define V0002_lbl 3540507 `"Porangaba"', add
label define V0002_lbl 5218003 `"Porangatu"', add
label define V0002_lbl 3304102 `"Porciúncula"', add
label define V0002_lbl 4120002 `"Porecatu"', add
label define V0002_lbl 2410207 `"Portalegre"', add
label define V0002_lbl 4314803 `"Portão"', add
label define V0002_lbl 5218052 `"Porteirão"', add
label define V0002_lbl 2311108 `"Porteiras"', add
label define V0002_lbl 3152204 `"Porteirinha"', add
label define V0002_lbl 1505809 `"Portel"', add
label define V0002_lbl 5218102 `"Portelândia"', add
label define V0002_lbl 2208502 `"Porto"', add
label define V0002_lbl 1200807 `"Porto Acre"', add
label define V0002_lbl 4314902 `"Porto Alegre"', add
label define V0002_lbl 5106778 `"Porto Alegre do Norte"', add
label define V0002_lbl 2208551 `"Porto Alegre do Piauí"', add
label define V0002_lbl 1718006 `"Porto Alegre do Tocantins"', add
label define V0002_lbl 4120101 `"Porto Amazonas"', add
label define V0002_lbl 4120150 `"Porto Barreiro"', add
label define V0002_lbl 4213500 `"Porto Belo"', add
label define V0002_lbl 2707305 `"Porto Calvo"', add
label define V0002_lbl 2805604 `"Porto da Folha"', add
label define V0002_lbl 1505908 `"Porto de Moz"', add
label define V0002_lbl 2707404 `"Porto de Pedras"', add
label define V0002_lbl 2410256 `"Porto do Mangue"', add
label define V0002_lbl 5106802 `"Porto dos Gaúchos"', add
label define V0002_lbl 5106828 `"Porto Esperidião"', add
label define V0002_lbl 5106851 `"Porto Estrela"', add
label define V0002_lbl 3540606 `"Porto Feliz"', add
label define V0002_lbl 3540705 `"Porto Ferreira"', add
label define V0002_lbl 3152303 `"Porto Firme"', add
label define V0002_lbl 2109007 `"Porto Franco"', add
label define V0002_lbl 1600535 `"Porto Grande"', add
label define V0002_lbl 4315008 `"Porto Lucena"', add
label define V0002_lbl 4315057 `"Porto Mauá"', add
label define V0002_lbl 5006903 `"Porto Murtinho"', add
label define V0002_lbl 1718204 `"Porto Nacional"', add
label define V0002_lbl 3304110 `"Porto Real"', add
label define V0002_lbl 2707503 `"Porto Real do Colégio"', add
label define V0002_lbl 4120200 `"Porto Rico"', add
label define V0002_lbl 2109056 `"Porto Rico do Maranhão"', add
label define V0002_lbl 2925303 `"Porto Seguro"', add
label define V0002_lbl 4213609 `"Porto União"', add
label define V0002_lbl 1100205 `"Porto Velho"', add
label define V0002_lbl 4315073 `"Porto Vera Cruz"', add
label define V0002_lbl 4120309 `"Porto Vitória"', add
label define V0002_lbl 1200393 `"Porto Walter"', add
label define V0002_lbl 4315107 `"Porto Xavier"', add
label define V0002_lbl 5218300 `"Posse"', add
label define V0002_lbl 3152402 `"Poté"', add
label define V0002_lbl 2311207 `"Potengi"', add
label define V0002_lbl 3540754 `"Potim"', add
label define V0002_lbl 2925402 `"Potiraguá"', add
label define V0002_lbl 3540804 `"Potirendaba"', add
label define V0002_lbl 2311231 `"Potiretama"', add
label define V0002_lbl 3152501 `"Pouso Alegre"', add
label define V0002_lbl 3152600 `"Pouso Alto"', add
label define V0002_lbl 4315131 `"Pouso Novo"', add
label define V0002_lbl 4213708 `"Pouso Redondo"', add
label define V0002_lbl 5107008 `"Poxoréu"', add
label define V0002_lbl 3540853 `"Pracinha"', add
label define V0002_lbl 1600550 `"Pracuúba"', add
label define V0002_lbl 2925501 `"Prado"', add
label define V0002_lbl 4120333 `"Prado Ferreira"', add
label define V0002_lbl 3540903 `"Pradópolis"', add
label define V0002_lbl 3152709 `"Prados"', add
label define V0002_lbl 3541000 `"Praia Grande"', add
label define V0002_lbl 4213807 `"Praia Grande"', add
label define V0002_lbl 1718303 `"Praia Norte"', add
label define V0002_lbl 1506005 `"Prainha"', add
label define V0002_lbl 4120358 `"Pranchita"', add
label define V0002_lbl 2512200 `"Prata"', add
label define V0002_lbl 3152808 `"Prata"', add
label define V0002_lbl 2208601 `"Prata do Piauí"', add
label define V0002_lbl 3541059 `"Pratânia"', add
label define V0002_lbl 3152907 `"Pratápolis"', add
label define V0002_lbl 3153004 `"Pratinha"', add
label define V0002_lbl 3541109 `"Presidente Alves"', add
label define V0002_lbl 3541208 `"Presidente Bernardes"', add
label define V0002_lbl 3153103 `"Presidente Bernardes"', add
label define V0002_lbl 4213906 `"Presidente Castello Branco"', add
label define V0002_lbl 4120408 `"Presidente Castelo Branco"', add
label define V0002_lbl 2925600 `"Presidente Dutra"', add
label define V0002_lbl 2109106 `"Presidente Dutra"', add
label define V0002_lbl 3541307 `"Presidente Epitácio"', add
label define V0002_lbl 1303536 `"Presidente Figueiredo"', add
label define V0002_lbl 4214003 `"Presidente Getúlio"', add
label define V0002_lbl 2925709 `"Presidente Jânio Quadros"', add
label define V0002_lbl 3153202 `"Presidente Juscelino"', add
label define V0002_lbl 2109205 `"Presidente Juscelino"', add
label define V0002_lbl 1718402 `"Presidente Kennedy"', add
label define V0002_lbl 3204302 `"Presidente Kennedy"', add
label define V0002_lbl 3153301 `"Presidente Kubitschek"', add
label define V0002_lbl 4315149 `"Presidente Lucena"', add
label define V0002_lbl 1100254 `"Presidente Médici"', add
label define V0002_lbl 2109239 `"Presidente Médici"', add
label define V0002_lbl 4214102 `"Presidente Nereu"', add
label define V0002_lbl 3153400 `"Presidente Olegário"', add
label define V0002_lbl 3541406 `"Presidente Prudente"', add
label define V0002_lbl 2109270 `"Presidente Sarney"', add
label define V0002_lbl 2925758 `"Presidente Tancredo Neves"', add
label define V0002_lbl 2109304 `"Presidente Vargas"', add
label define V0002_lbl 3541505 `"Presidente Venceslau"', add
label define V0002_lbl 2611408 `"Primavera"', add
label define V0002_lbl 1506104 `"Primavera"', add
label define V0002_lbl 1101476 `"Primavera de Rondônia"', add
label define V0002_lbl 5107040 `"Primavera do Leste"', add
label define V0002_lbl 2109403 `"Primeira Cruz"', add
label define V0002_lbl 4120507 `"Primeiro de Maio"', add
label define V0002_lbl 4214151 `"Princesa"', add
label define V0002_lbl 2512309 `"Princesa Isabel"', add
label define V0002_lbl 5218391 `"Professor Jamil"', add
label define V0002_lbl 4315156 `"Progresso"', add
label define V0002_lbl 3541604 `"Promissão"', add
label define V0002_lbl 2805703 `"Propriá"', add
label define V0002_lbl 4315172 `"Protásio Alves"', add
label define V0002_lbl 3153608 `"Prudente de Morais"', add
label define V0002_lbl 4120606 `"Prudentópolis"', add
label define V0002_lbl 1718451 `"Pugmil"', add
label define V0002_lbl 2410405 `"Pureza"', add
label define V0002_lbl 4315206 `"Putinga"', add
label define V0002_lbl 2512408 `"Puxinanã"', add
label define V0002_lbl 3541653 `"Quadra"', add
label define V0002_lbl 4315305 `"Quaraí"', add
label define V0002_lbl 3153707 `"Quartel Geral"', add
label define V0002_lbl 4120655 `"Quarto Centenário"', add
label define V0002_lbl 3541703 `"Quatá"', add
label define V0002_lbl 4120705 `"Quatiguá"', add
label define V0002_lbl 1506112 `"Quatipuru"', add
label define V0002_lbl 3304128 `"Quatis"', add
label define V0002_lbl 4120804 `"Quatro Barras"', add
label define V0002_lbl 4315313 `"Quatro Irmãos"', add
label define V0002_lbl 4120853 `"Quatro Pontes"', add
label define V0002_lbl 2707602 `"Quebrangulo"', add
label define V0002_lbl 4120903 `"Quedas do Iguaçu"', add
label define V0002_lbl 2208650 `"Queimada Nova"', add
label define V0002_lbl 2512507 `"Queimadas"', add
label define V0002_lbl 2925808 `"Queimadas"', add
label define V0002_lbl 3304144 `"Queimados"', add
label define V0002_lbl 3541802 `"Queiroz"', add
label define V0002_lbl 3541901 `"Queluz"', add
label define V0002_lbl 3153806 `"Queluzito"', add
label define V0002_lbl 5107065 `"Querência"', add
label define V0002_lbl 4121000 `"Querência do Norte"', add
label define V0002_lbl 4315321 `"Quevedos"', add
label define V0002_lbl 2925907 `"Quijingue"', add
label define V0002_lbl 4214201 `"Quilombo"', add
label define V0002_lbl 4121109 `"Quinta do Sol"', add
label define V0002_lbl 3542008 `"Quintana"', add
label define V0002_lbl 4315354 `"Quinze de Novembro"', add
label define V0002_lbl 2611507 `"Quipapá"', add
label define V0002_lbl 5218508 `"Quirinópolis"', add
label define V0002_lbl 3304151 `"Quissamã"', add
label define V0002_lbl 4121208 `"Quitandinha"', add
label define V0002_lbl 2311264 `"Quiterianópolis"', add
label define V0002_lbl 2611533 `"Quixaba"', add
label define V0002_lbl 2512606 `"Quixaba"', add
label define V0002_lbl 2925931 `"Quixabeira"', add
label define V0002_lbl 2311306 `"Quixadá"', add
label define V0002_lbl 2311355 `"Quixelô"', add
label define V0002_lbl 2311405 `"Quixeramobim"', add
label define V0002_lbl 2311504 `"Quixeré"', add
label define V0002_lbl 2410504 `"Rafael Fernandes"', add
label define V0002_lbl 2410603 `"Rafael Godeiro"', add
label define V0002_lbl 2925956 `"Rafael Jambeiro"', add
label define V0002_lbl 3542107 `"Rafard"', add
label define V0002_lbl 4121257 `"Ramilândia"', add
label define V0002_lbl 3542206 `"Rancharia"', add
label define V0002_lbl 4121307 `"Rancho Alegre"', add
label define V0002_lbl 4121356 `"Rancho Alegre D'Oeste"', add
label define V0002_lbl 4214300 `"Rancho Queimado"', add
label define V0002_lbl 2109452 `"Raposa"', add
label define V0002_lbl 3153905 `"Raposos"', add
label define V0002_lbl 3154002 `"Raul Soares"', add
label define V0002_lbl 4121406 `"Realeza"', add
label define V0002_lbl 4121505 `"Rebouças"', add
label define V0002_lbl 2611606 `"Recife"', add
label define V0002_lbl 3154101 `"Recreio"', add
label define V0002_lbl 1718501 `"Recursolândia"', add
label define V0002_lbl 1506138 `"Redenção"', add
label define V0002_lbl 2311603 `"Redenção"', add
label define V0002_lbl 3542305 `"Redenção da Serra"', add
label define V0002_lbl 2208700 `"Redenção do Gurguéia"', add
label define V0002_lbl 4315404 `"Redentora"', add
label define V0002_lbl 3154150 `"Reduto"', add
label define V0002_lbl 2208809 `"Regeneração"', add
label define V0002_lbl 3542404 `"Regente Feijó"', add
label define V0002_lbl 3542503 `"Reginópolis"', add
label define V0002_lbl 3542602 `"Registro"', add
label define V0002_lbl 4315453 `"Relvado"', add
label define V0002_lbl 2926004 `"Remanso"', add
label define V0002_lbl 2512705 `"Remígio"', add
label define V0002_lbl 4121604 `"Renascença"', add
label define V0002_lbl 2311702 `"Reriutaba"', add
label define V0002_lbl 3304201 `"Resende"', add
label define V0002_lbl 3154200 `"Resende Costa"', add
label define V0002_lbl 4121703 `"Reserva"', add
label define V0002_lbl 5107156 `"Reserva do Cabaçal"', add
label define V0002_lbl 4121752 `"Reserva do Iguaçu"', add
label define V0002_lbl 3154309 `"Resplendor"', add
label define V0002_lbl 3154408 `"Ressaquinha"', add
label define V0002_lbl 3542701 `"Restinga"', add
label define V0002_lbl 4315503 `"Restinga Sêca"', add
label define V0002_lbl 2926103 `"Retirolândia"', add
label define V0002_lbl 2512747 `"Riachão"', add
label define V0002_lbl 2109502 `"Riachão"', add
label define V0002_lbl 2926202 `"Riachão das Neves"', add
label define V0002_lbl 2512754 `"Riachão do Bacamarte"', add
label define V0002_lbl 2805802 `"Riachão do Dantas"', add
label define V0002_lbl 2926301 `"Riachão do Jacuípe"', add
label define V0002_lbl 2512762 `"Riachão do Poço"', add
label define V0002_lbl 3154457 `"Riachinho"', add
label define V0002_lbl 1718550 `"Riachinho"', add
label define V0002_lbl 2410702 `"Riacho da Cruz"', add
label define V0002_lbl 2611705 `"Riacho das Almas"', add
label define V0002_lbl 2410801 `"Riacho de Santana"', add
label define V0002_lbl 2926400 `"Riacho de Santana"', add
label define V0002_lbl 2512788 `"Riacho de Santo Antônio"', add
label define V0002_lbl 2512804 `"Riacho dos Cavalos"', add
label define V0002_lbl 3154507 `"Riacho dos Machados"', add
label define V0002_lbl 2208858 `"Riacho Frio"', add
label define V0002_lbl 2410900 `"Riachuelo"', add
label define V0002_lbl 2805901 `"Riachuelo"', add
label define V0002_lbl 5218607 `"Rialma"', add
label define V0002_lbl 5218706 `"Rianápolis"', add
label define V0002_lbl 2109551 `"Ribamar Fiquene"', add
label define V0002_lbl 5007109 `"Ribas do Rio Pardo"', add
label define V0002_lbl 3542800 `"Ribeira"', add
label define V0002_lbl 2926509 `"Ribeira do Amparo"', add
label define V0002_lbl 2208874 `"Ribeira do Piauí"', add
label define V0002_lbl 2926608 `"Ribeira do Pombal"', add
label define V0002_lbl 2611804 `"Ribeirão"', add
label define V0002_lbl 3542909 `"Ribeirão Bonito"', add
label define V0002_lbl 3543006 `"Ribeirão Branco"', add
label define V0002_lbl 5107180 `"Ribeirão Cascalheira"', add
label define V0002_lbl 4121802 `"Ribeirão Claro"', add
label define V0002_lbl 3543105 `"Ribeirão Corrente"', add
label define V0002_lbl 3154606 `"Ribeirão das Neves"', add
label define V0002_lbl 2926657 `"Ribeirão do Largo"', add
label define V0002_lbl 4121901 `"Ribeirão do Pinhal"', add
label define V0002_lbl 3543204 `"Ribeirão do Sul"', add
label define V0002_lbl 3543238 `"Ribeirão dos Índios"', add
label define V0002_lbl 3543253 `"Ribeirão Grande"', add
label define V0002_lbl 3543303 `"Ribeirão Pires"', add
label define V0002_lbl 3543402 `"Ribeirão Preto"', add
label define V0002_lbl 3154705 `"Ribeirão Vermelho"', add
label define V0002_lbl 5107198 `"Ribeirãozinho"', add
label define V0002_lbl 2208908 `"Ribeiro Gonçalves"', add
label define V0002_lbl 2806008 `"Ribeirópolis"', add
label define V0002_lbl 3543600 `"Rifaina"', add
label define V0002_lbl 3543709 `"Rincão"', add
label define V0002_lbl 3543808 `"Rinópolis"', add
label define V0002_lbl 3154804 `"Rio Acima"', add
label define V0002_lbl 4122008 `"Rio Azul"', add
label define V0002_lbl 3204351 `"Rio Bananal"', add
label define V0002_lbl 4122107 `"Rio Bom"', add
label define V0002_lbl 3304300 `"Rio Bonito"', add
label define V0002_lbl 4122156 `"Rio Bonito do Iguaçu"', add
label define V0002_lbl 5107206 `"Rio Branco"', add
label define V0002_lbl 1200401 `"Rio Branco"', add
label define V0002_lbl 4122172 `"Rio Branco do Ivaí"', add
label define V0002_lbl 4122206 `"Rio Branco do Sul"', add
label define V0002_lbl 5007208 `"Rio Brilhante"', add
label define V0002_lbl 3154903 `"Rio Casca"', add
label define V0002_lbl 3543907 `"Rio Claro"', add
label define V0002_lbl 3304409 `"Rio Claro"', add
label define V0002_lbl 1100262 `"Rio Crespo"', add
label define V0002_lbl 1718659 `"Rio da Conceição"', add
label define V0002_lbl 4214409 `"Rio das Antas"', add
label define V0002_lbl 3304508 `"Rio das Flores"', add
label define V0002_lbl 3304524 `"Rio das Ostras"', add
label define V0002_lbl 3544004 `"Rio das Pedras"', add
label define V0002_lbl 2926707 `"Rio de Contas"', add
label define V0002_lbl 3304557 `"Rio de Janeiro"', add
label define V0002_lbl 2926806 `"Rio do Antônio"', add
label define V0002_lbl 4214508 `"Rio do Campo"', add
label define V0002_lbl 2408953 `"Rio do Fogo"', add
label define V0002_lbl 4214607 `"Rio do Oeste"', add
label define V0002_lbl 2926905 `"Rio do Pires"', add
label define V0002_lbl 3155108 `"Rio do Prado"', add
label define V0002_lbl 4214805 `"Rio do Sul"', add
label define V0002_lbl 3155009 `"Rio Doce"', add
label define V0002_lbl 1718709 `"Rio dos Bois"', add
label define V0002_lbl 4214706 `"Rio dos Cedros"', add
label define V0002_lbl 4315552 `"Rio dos Índios"', add
label define V0002_lbl 3155207 `"Rio Espera"', add
label define V0002_lbl 2611903 `"Rio Formoso"', add
label define V0002_lbl 4214904 `"Rio Fortuna"', add
label define V0002_lbl 4315602 `"Rio Grande"', add
label define V0002_lbl 3544103 `"Rio Grande da Serra"', add
label define V0002_lbl 2209005 `"Rio Grande do Piauí"', add
label define V0002_lbl 2707701 `"Rio Largo"', add
label define V0002_lbl 3155306 `"Rio Manso"', add
label define V0002_lbl 1506161 `"Rio Maria"', add
label define V0002_lbl 4215000 `"Rio Negrinho"', add
label define V0002_lbl 5007307 `"Rio Negro"', add
label define V0002_lbl 4122305 `"Rio Negro"', add
label define V0002_lbl 3155405 `"Rio Novo"', add
label define V0002_lbl 3204401 `"Rio Novo do Sul"', add
label define V0002_lbl 3155504 `"Rio Paranaíba"', add
label define V0002_lbl 4315701 `"Rio Pardo"', add
label define V0002_lbl 3155603 `"Rio Pardo de Minas"', add
label define V0002_lbl 3155702 `"Rio Piracicaba"', add
label define V0002_lbl 3155801 `"Rio Pomba"', add
label define V0002_lbl 3155900 `"Rio Preto"', add
label define V0002_lbl 1303569 `"Rio Preto da Eva"', add
label define V0002_lbl 5218789 `"Rio Quente"', add
label define V0002_lbl 2927002 `"Rio Real"', add
label define V0002_lbl 4215059 `"Rio Rufino"', add
label define V0002_lbl 1718758 `"Rio Sono"', add
label define V0002_lbl 2512903 `"Rio Tinto"', add
label define V0002_lbl 5218805 `"Rio Verde"', add
label define V0002_lbl 5007406 `"Rio Verde de Mato Grosso"', add
label define V0002_lbl 3156007 `"Rio Vermelho"', add
label define V0002_lbl 3544202 `"Riolândia"', add
label define V0002_lbl 4315750 `"Riozinho"', add
label define V0002_lbl 4215075 `"Riqueza"', add
label define V0002_lbl 3156106 `"Ritápolis"', add
label define V0002_lbl 3543501 `"Riversul"', add
label define V0002_lbl 4315800 `"Roca Sales"', add
label define V0002_lbl 5007505 `"Rochedo"', add
label define V0002_lbl 3156205 `"Rochedo de Minas"', add
label define V0002_lbl 4215109 `"Rodeio"', add
label define V0002_lbl 4315909 `"Rodeio Bonito"', add
label define V0002_lbl 3156304 `"Rodeiro"', add
label define V0002_lbl 2927101 `"Rodelas"', add
label define V0002_lbl 2411007 `"Rodolfo Fernandes"', add
label define V0002_lbl 1200427 `"Rodrigues Alves"', add
label define V0002_lbl 4315958 `"Rolador"', add
label define V0002_lbl 4122404 `"Rolândia"', add
label define V0002_lbl 4316006 `"Rolante"', add
label define V0002_lbl 1100288 `"Rolim de Moura"', add
label define V0002_lbl 3156403 `"Romaria"', add
label define V0002_lbl 4215208 `"Romelândia"', add
label define V0002_lbl 4122503 `"Roncador"', add
label define V0002_lbl 4316105 `"Ronda Alta"', add
label define V0002_lbl 4316204 `"Rondinha"', add
label define V0002_lbl 5107578 `"Rondolândia"', add
label define V0002_lbl 4122602 `"Rondon"', add
label define V0002_lbl 1506187 `"Rondon do Pará"', add
label define V0002_lbl 5107602 `"Rondonópolis"', add
label define V0002_lbl 4316303 `"Roque Gonzales"', add
label define V0002_lbl 1400472 `"Rorainópolis"', add
label define V0002_lbl 3544251 `"Rosana"', add
label define V0002_lbl 2109601 `"Rosário"', add
label define V0002_lbl 3156452 `"Rosário da Limeira"', add
label define V0002_lbl 2806107 `"Rosário do Catete"', add
label define V0002_lbl 4122651 `"Rosário do Ivaí"', add
label define V0002_lbl 4316402 `"Rosário do Sul"', add
label define V0002_lbl 5107701 `"Rosário Oeste"', add
label define V0002_lbl 3544301 `"Roseira"', add
label define V0002_lbl 2707800 `"Roteiro"', add
label define V0002_lbl 3156502 `"Rubelita"', add
label define V0002_lbl 3544400 `"Rubiácea"', add
label define V0002_lbl 5218904 `"Rubiataba"', add
label define V0002_lbl 3156601 `"Rubim"', add
label define V0002_lbl 3544509 `"Rubinéia"', add
label define V0002_lbl 1506195 `"Rurópolis"', add
label define V0002_lbl 2311801 `"Russas"', add
label define V0002_lbl 2411106 `"Ruy Barbosa"', add
label define V0002_lbl 2927200 `"Ruy Barbosa"', add
label define V0002_lbl 3156700 `"Sabará"', add
label define V0002_lbl 4122701 `"Sabáudia"', add
label define V0002_lbl 3544608 `"Sabino"', add
label define V0002_lbl 3156809 `"Sabinópolis"', add
label define V0002_lbl 2311900 `"Saboeiro"', add
label define V0002_lbl 3156908 `"Sacramento"', add
label define V0002_lbl 4316428 `"Sagrada Família"', add
label define V0002_lbl 3544707 `"Sagres"', add
label define V0002_lbl 2612000 `"Sairé"', add
label define V0002_lbl 4316436 `"Saldanha Marinho"', add
label define V0002_lbl 3544806 `"Sales"', add
label define V0002_lbl 3544905 `"Sales Oliveira"', add
label define V0002_lbl 3545001 `"Salesópolis"', add
label define V0002_lbl 4215307 `"Salete"', add
label define V0002_lbl 2612109 `"Salgadinho"', add
label define V0002_lbl 2513000 `"Salgadinho"', add
label define V0002_lbl 2806206 `"Salgado"', add
label define V0002_lbl 2513109 `"Salgado de São Félix"', add
label define V0002_lbl 4122800 `"Salgado Filho"', add
label define V0002_lbl 2612208 `"Salgueiro"', add
label define V0002_lbl 3157005 `"Salinas"', add
label define V0002_lbl 2927309 `"Salinas da Margarida"', add
label define V0002_lbl 1506203 `"Salinópolis"', add
label define V0002_lbl 2311959 `"Salitre"', add
label define V0002_lbl 3545100 `"Salmourão"', add
label define V0002_lbl 2612307 `"Saloá"', add
label define V0002_lbl 3545159 `"Saltinho"', add
label define V0002_lbl 4215356 `"Saltinho"', add
label define V0002_lbl 3545209 `"Salto"', add
label define V0002_lbl 3157104 `"Salto da Divisa"', add
label define V0002_lbl 3545308 `"Salto de Pirapora"', add
label define V0002_lbl 5107750 `"Salto do Céu"', add
label define V0002_lbl 4122909 `"Salto do Itararé"', add
label define V0002_lbl 4316451 `"Salto do Jacuí"', add
label define V0002_lbl 4123006 `"Salto do Lontra"', add
label define V0002_lbl 3545407 `"Salto Grande"', add
label define V0002_lbl 4215406 `"Salto Veloso"', add
label define V0002_lbl 2927408 `"Salvador"', add
label define V0002_lbl 4316477 `"Salvador das Missões"', add
label define V0002_lbl 4316501 `"Salvador do Sul"', add
label define V0002_lbl 1506302 `"Salvaterra"', add
label define V0002_lbl 2109700 `"Sambaíba"', add
label define V0002_lbl 1718808 `"Sampaio"', add
label define V0002_lbl 4316600 `"Sananduva"', add
label define V0002_lbl 5219001 `"Sanclerlândia"', add
label define V0002_lbl 1718840 `"Sandolândia"', add
label define V0002_lbl 3545506 `"Sandovalina"', add
label define V0002_lbl 4215455 `"Sangão"', add
label define V0002_lbl 2612406 `"Sanharó"', add
label define V0002_lbl 3545605 `"Santa Adélia"', add
label define V0002_lbl 3545704 `"Santa Albertina"', add
label define V0002_lbl 4123105 `"Santa Amélia"', add
label define V0002_lbl 3157203 `"Santa Bárbara"', add
label define V0002_lbl 2927507 `"Santa Bárbara"', add
label define V0002_lbl 5219100 `"Santa Bárbara de Goiás"', add
label define V0002_lbl 3157252 `"Santa Bárbara do Leste"', add
label define V0002_lbl 3157278 `"Santa Bárbara do Monte Verde"', add
label define V0002_lbl 1506351 `"Santa Bárbara do Pará"', add
label define V0002_lbl 4316709 `"Santa Bárbara do Sul"', add
label define V0002_lbl 3157302 `"Santa Bárbara do Tugúrio"', add
label define V0002_lbl 3545803 `"Santa Bárbara d'Oeste"', add
label define V0002_lbl 3546009 `"Santa Branca"', add
label define V0002_lbl 2927606 `"Santa Brígida"', add
label define V0002_lbl 5107248 `"Santa Carmem"', add
label define V0002_lbl 4215505 `"Santa Cecília"', add
label define V0002_lbl 2513158 `"Santa Cecília"', add
label define V0002_lbl 4123204 `"Santa Cecília do Pavão"', add
label define V0002_lbl 4316733 `"Santa Cecília do Sul"', add
label define V0002_lbl 4316758 `"Santa Clara do Sul"', add
label define V0002_lbl 3546108 `"Santa Clara d'Oeste"', add
label define V0002_lbl 2513208 `"Santa Cruz"', add
label define V0002_lbl 2612455 `"Santa Cruz"', add
label define V0002_lbl 2411205 `"Santa Cruz"', add
label define V0002_lbl 2927705 `"Santa Cruz Cabrália"', add
label define V0002_lbl 2612471 `"Santa Cruz da Baixa Verde"', add
label define V0002_lbl 3546207 `"Santa Cruz da Conceição"', add
label define V0002_lbl 3546256 `"Santa Cruz da Esperança"', add
label define V0002_lbl 2927804 `"Santa Cruz da Vitória"', add
label define V0002_lbl 3546306 `"Santa Cruz das Palmeiras"', add
label define V0002_lbl 5219209 `"Santa Cruz de Goiás"', add
label define V0002_lbl 3157336 `"Santa Cruz de Minas"', add
label define V0002_lbl 4123303 `"Santa Cruz de Monte Castelo"', add
label define V0002_lbl 3157377 `"Santa Cruz de Salinas"', add
label define V0002_lbl 1506401 `"Santa Cruz do Arari"', add
label define V0002_lbl 2612505 `"Santa Cruz do Capibaribe"', add
label define V0002_lbl 3157401 `"Santa Cruz do Escalvado"', add
label define V0002_lbl 2209104 `"Santa Cruz do Piauí"', add
label define V0002_lbl 3546405 `"Santa Cruz do Rio Pardo"', add
label define V0002_lbl 4316808 `"Santa Cruz do Sul"', add
label define V0002_lbl 5107743 `"Santa Cruz do Xingu"', add
label define V0002_lbl 2209153 `"Santa Cruz dos Milagres"', add
label define V0002_lbl 3157500 `"Santa Efigênia de Minas"', add
label define V0002_lbl 3546504 `"Santa Ernestina"', add
label define V0002_lbl 4123402 `"Santa Fé"', add
label define V0002_lbl 5219258 `"Santa Fé de Goiás"', add
label define V0002_lbl 3157609 `"Santa Fé de Minas"', add
label define V0002_lbl 1718865 `"Santa Fé do Araguaia"', add
label define V0002_lbl 3546603 `"Santa Fé do Sul"', add
label define V0002_lbl 2209203 `"Santa Filomena"', add
label define V0002_lbl 2612554 `"Santa Filomena"', add
label define V0002_lbl 2109759 `"Santa Filomena do Maranhão"', add
label define V0002_lbl 3546702 `"Santa Gertrudes"', add
label define V0002_lbl 4123501 `"Santa Helena"', add
label define V0002_lbl 4215554 `"Santa Helena"', add
label define V0002_lbl 2109809 `"Santa Helena"', add
label define V0002_lbl 2513307 `"Santa Helena"', add
label define V0002_lbl 5219308 `"Santa Helena de Goiás"', add
label define V0002_lbl 3157658 `"Santa Helena de Minas"', add
label define V0002_lbl 4123600 `"Santa Inês"', add
label define V0002_lbl 2513356 `"Santa Inês"', add
label define V0002_lbl 2927903 `"Santa Inês"', add
label define V0002_lbl 2109908 `"Santa Inês"', add
label define V0002_lbl 3546801 `"Santa Isabel"', add
label define V0002_lbl 5219357 `"Santa Isabel"', add
label define V0002_lbl 4123709 `"Santa Isabel do Ivaí"', add
label define V0002_lbl 1303601 `"Santa Isabel do Rio Negro"', add
label define V0002_lbl 4123808 `"Santa Izabel do Oeste"', add
label define V0002_lbl 1506500 `"Santa Izabel do Pará"', add
label define V0002_lbl 3157708 `"Santa Juliana"', add
label define V0002_lbl 3204500 `"Santa Leopoldina"', add
label define V0002_lbl 4123824 `"Santa Lúcia"', add
label define V0002_lbl 3546900 `"Santa Lúcia"', add
label define V0002_lbl 2209302 `"Santa Luz"', add
label define V0002_lbl 2110005 `"Santa Luzia"', add
label define V0002_lbl 2513406 `"Santa Luzia"', add
label define V0002_lbl 2928059 `"Santa Luzia"', add
label define V0002_lbl 3157807 `"Santa Luzia"', add
label define V0002_lbl 2806305 `"Santa Luzia do Itanhy"', add
label define V0002_lbl 2707909 `"Santa Luzia do Norte"', add
label define V0002_lbl 1506559 `"Santa Luzia do Pará"', add
label define V0002_lbl 2110039 `"Santa Luzia do Paruá"', add
label define V0002_lbl 1100296 `"Santa Luzia D'Oeste"', add
label define V0002_lbl 3157906 `"Santa Margarida"', add
label define V0002_lbl 4316972 `"Santa Margarida do Sul"', add
label define V0002_lbl 4316907 `"Santa Maria"', add
label define V0002_lbl 2409332 `"Santa Maria"', add
label define V0002_lbl 2612604 `"Santa Maria da Boa Vista"', add
label define V0002_lbl 3547007 `"Santa Maria da Serra"', add
label define V0002_lbl 2928109 `"Santa Maria da Vitória"', add
label define V0002_lbl 1506583 `"Santa Maria das Barreiras"', add
label define V0002_lbl 3158003 `"Santa Maria de Itabira"', add
label define V0002_lbl 3204559 `"Santa Maria de Jetibá"', add
label define V0002_lbl 2612703 `"Santa Maria do Cambucá"', add
label define V0002_lbl 4316956 `"Santa Maria do Herval"', add
label define V0002_lbl 4123857 `"Santa Maria do Oeste"', add
label define V0002_lbl 1506609 `"Santa Maria do Pará"', add
label define V0002_lbl 3158102 `"Santa Maria do Salto"', add
label define V0002_lbl 3158201 `"Santa Maria do Suaçuí"', add
label define V0002_lbl 1718881 `"Santa Maria do Tocantins"', add
label define V0002_lbl 3304607 `"Santa Maria Madalena"', add
label define V0002_lbl 4123907 `"Santa Mariana"', add
label define V0002_lbl 3547106 `"Santa Mercedes"', add
label define V0002_lbl 4123956 `"Santa Mônica"', add
label define V0002_lbl 2312205 `"Santa Quitéria"', add
label define V0002_lbl 2110104 `"Santa Quitéria do Maranhão"', add
label define V0002_lbl 2110203 `"Santa Rita"', add
label define V0002_lbl 2513703 `"Santa Rita"', add
label define V0002_lbl 3159209 `"Santa Rita de Caldas"', add
label define V0002_lbl 2928406 `"Santa Rita de Cássia"', add
label define V0002_lbl 3159407 `"Santa Rita de Ibitipoca"', add
label define V0002_lbl 3159308 `"Santa Rita de Jacutinga"', add
label define V0002_lbl 3159357 `"Santa Rita de Minas"', add
label define V0002_lbl 5219407 `"Santa Rita do Araguaia"', add
label define V0002_lbl 3159506 `"Santa Rita do Itueto"', add
label define V0002_lbl 5219456 `"Santa Rita do Novo Destino"', add
label define V0002_lbl 5007554 `"Santa Rita do Pardo"', add
label define V0002_lbl 3547502 `"Santa Rita do Passa Quatro"', add
label define V0002_lbl 3159605 `"Santa Rita do Sapucaí"', add
label define V0002_lbl 1718899 `"Santa Rita do Tocantins"', add
label define V0002_lbl 5107768 `"Santa Rita do Trivelato"', add
label define V0002_lbl 3547403 `"Santa Rita d'Oeste"', add
label define V0002_lbl 4317202 `"Santa Rosa"', add
label define V0002_lbl 3159704 `"Santa Rosa da Serra"', add
label define V0002_lbl 5219506 `"Santa Rosa de Goiás"', add
label define V0002_lbl 4215604 `"Santa Rosa de Lima"', add
label define V0002_lbl 2806503 `"Santa Rosa de Lima"', add
label define V0002_lbl 3547601 `"Santa Rosa de Viterbo"', add
label define V0002_lbl 2209377 `"Santa Rosa do Piauí"', add
label define V0002_lbl 1200435 `"Santa Rosa do Purus"', add
label define V0002_lbl 4215653 `"Santa Rosa do Sul"', add
label define V0002_lbl 1718907 `"Santa Rosa do Tocantins"', add
label define V0002_lbl 3547650 `"Santa Salete"', add
label define V0002_lbl 3204609 `"Santa Teresa"', add
label define V0002_lbl 2513802 `"Santa Teresinha"', add
label define V0002_lbl 4317251 `"Santa Tereza"', add
label define V0002_lbl 5219605 `"Santa Tereza de Goiás"', add
label define V0002_lbl 4124020 `"Santa Tereza do Oeste"', add
label define V0002_lbl 1719004 `"Santa Tereza do Tocantins"', add
label define V0002_lbl 2612802 `"Santa Terezinha"', add
label define V0002_lbl 2928505 `"Santa Terezinha"', add
label define V0002_lbl 5107776 `"Santa Terezinha"', add
label define V0002_lbl 4215679 `"Santa Terezinha"', add
label define V0002_lbl 5219704 `"Santa Terezinha de Goiás"', add
label define V0002_lbl 4124053 `"Santa Terezinha de Itaipu"', add
label define V0002_lbl 4215687 `"Santa Terezinha do Progresso"', add
label define V0002_lbl 1720002 `"Santa Terezinha do Tocantins"', add
label define V0002_lbl 3159803 `"Santa Vitória"', add
label define V0002_lbl 4317301 `"Santa Vitória do Palmar"', add
label define V0002_lbl 2928000 `"Santaluz"', add
label define V0002_lbl 2928208 `"Santana"', add
label define V0002_lbl 1600600 `"Santana"', add
label define V0002_lbl 4317004 `"Santana da Boa Vista"', add
label define V0002_lbl 3547205 `"Santana da Ponte Pensa"', add
label define V0002_lbl 3158300 `"Santana da Vargem"', add
label define V0002_lbl 3158409 `"Santana de Cataguases"', add
label define V0002_lbl 2513505 `"Santana de Mangueira"', add
label define V0002_lbl 3547304 `"Santana de Parnaíba"', add
label define V0002_lbl 3158508 `"Santana de Pirapama"', add
label define V0002_lbl 2312007 `"Santana do Acaraú"', add
label define V0002_lbl 1506708 `"Santana do Araguaia"', add
label define V0002_lbl 2312106 `"Santana do Cariri"', add
label define V0002_lbl 3158607 `"Santana do Deserto"', add
label define V0002_lbl 3158706 `"Santana do Garambéu"', add
label define V0002_lbl 2708006 `"Santana do Ipanema"', add
label define V0002_lbl 4124004 `"Santana do Itararé"', add
label define V0002_lbl 3158805 `"Santana do Jacaré"', add
label define V0002_lbl 4317103 `"Sant'Ana do Livramento"', add
label define V0002_lbl 3158904 `"Santana do Manhuaçu"', add
label define V0002_lbl 2110237 `"Santana do Maranhão"', add
label define V0002_lbl 2411403 `"Santana do Matos"', add
label define V0002_lbl 2708105 `"Santana do Mundaú"', add
label define V0002_lbl 3158953 `"Santana do Paraíso"', add
label define V0002_lbl 2209351 `"Santana do Piauí"', add
label define V0002_lbl 3159001 `"Santana do Riacho"', add
label define V0002_lbl 2806404 `"Santana do São Francisco"', add
label define V0002_lbl 2411429 `"Santana do Seridó"', add
label define V0002_lbl 2513604 `"Santana dos Garrotes"', add
label define V0002_lbl 3159100 `"Santana dos Montes"', add
label define V0002_lbl 2928307 `"Santanópolis"', add
label define V0002_lbl 1506807 `"Santarém"', add
label define V0002_lbl 1506906 `"Santarém Novo"', add
label define V0002_lbl 4317400 `"Santiago"', add
label define V0002_lbl 4215695 `"Santiago do Sul"', add
label define V0002_lbl 5107263 `"Santo Afonso"', add
label define V0002_lbl 2928604 `"Santo Amaro"', add
label define V0002_lbl 4215703 `"Santo Amaro da Imperatriz"', add
label define V0002_lbl 2806602 `"Santo Amaro das Brotas"', add
label define V0002_lbl 2110278 `"Santo Amaro do Maranhão"', add
label define V0002_lbl 3547700 `"Santo Anastácio"', add
label define V0002_lbl 3547809 `"Santo André"', add
label define V0002_lbl 2513851 `"Santo André"', add
label define V0002_lbl 4317509 `"Santo Ângelo"', add
label define V0002_lbl 2411502 `"Santo Antônio"', add
label define V0002_lbl 3547908 `"Santo Antônio da Alegria"', add
label define V0002_lbl 5219712 `"Santo Antônio da Barra"', add
label define V0002_lbl 4317608 `"Santo Antônio da Patrulha"', add
label define V0002_lbl 4124103 `"Santo Antônio da Platina"', add
label define V0002_lbl 4317707 `"Santo Antônio das Missões"', add
label define V0002_lbl 5219738 `"Santo Antônio de Goiás"', add
label define V0002_lbl 2928703 `"Santo Antônio de Jesus"', add
label define V0002_lbl 5107800 `"Santo Antônio de Leverger"', add
label define V0002_lbl 2209401 `"Santo Antônio de Lisboa"', add
label define V0002_lbl 3304706 `"Santo Antônio de Pádua"', add
label define V0002_lbl 3548005 `"Santo Antônio de Posse"', add
label define V0002_lbl 3159902 `"Santo Antônio do Amparo"', add
label define V0002_lbl 3548054 `"Santo Antônio do Aracanguá"', add
label define V0002_lbl 3160009 `"Santo Antônio do Aventureiro"', add
label define V0002_lbl 4124202 `"Santo Antônio do Caiuá"', add
label define V0002_lbl 5219753 `"Santo Antônio do Descoberto"', add
label define V0002_lbl 3160108 `"Santo Antônio do Grama"', add
label define V0002_lbl 1303700 `"Santo Antônio do Içá"', add
label define V0002_lbl 3160207 `"Santo Antônio do Itambé"', add
label define V0002_lbl 3160306 `"Santo Antônio do Jacinto"', add
label define V0002_lbl 3548104 `"Santo Antônio do Jardim"', add
label define V0002_lbl 5107792 `"Santo Antônio do Leste"', add
label define V0002_lbl 3160405 `"Santo Antônio do Monte"', add
label define V0002_lbl 4317558 `"Santo Antônio do Palma"', add
label define V0002_lbl 4124301 `"Santo Antônio do Paraíso"', add
label define V0002_lbl 3548203 `"Santo Antônio do Pinhal"', add
label define V0002_lbl 4317756 `"Santo Antônio do Planalto"', add
label define V0002_lbl 3160454 `"Santo Antônio do Retiro"', add
label define V0002_lbl 3160504 `"Santo Antônio do Rio Abaixo"', add
label define V0002_lbl 4124400 `"Santo Antônio do Sudoeste"', add
label define V0002_lbl 1507003 `"Santo Antônio do Tauá"', add
label define V0002_lbl 2110302 `"Santo Antônio dos Lopes"', add
label define V0002_lbl 2209450 `"Santo Antônio dos Milagres"', add
label define V0002_lbl 4317806 `"Santo Augusto"', add
label define V0002_lbl 4317905 `"Santo Cristo"', add
label define V0002_lbl 2928802 `"Santo Estêvão"', add
label define V0002_lbl 3548302 `"Santo Expedito"', add
label define V0002_lbl 4317954 `"Santo Expedito do Sul"', add
label define V0002_lbl 3160603 `"Santo Hipólito"', add
label define V0002_lbl 4124509 `"Santo Inácio"', add
label define V0002_lbl 2209500 `"Santo Inácio do Piauí"', add
label define V0002_lbl 3548401 `"Santópolis do Aguapeí"', add
label define V0002_lbl 3548500 `"Santos"', add
label define V0002_lbl 3160702 `"Santos Dumont"', add
label define V0002_lbl 2312304 `"São Benedito"', add
label define V0002_lbl 2110401 `"São Benedito do Rio Preto"', add
label define V0002_lbl 2612901 `"São Benedito do Sul"', add
label define V0002_lbl 2513927 `"São Bentinho"', add
label define V0002_lbl 2110500 `"São Bento"', add
label define V0002_lbl 2513901 `"São Bento"', add
label define V0002_lbl 3160801 `"São Bento Abade"', add
label define V0002_lbl 2411601 `"São Bento do Norte"', add
label define V0002_lbl 3548609 `"São Bento do Sapucaí"', add
label define V0002_lbl 4215802 `"São Bento do Sul"', add
label define V0002_lbl 1720101 `"São Bento do Tocantins"', add
label define V0002_lbl 2411700 `"São Bento do Trairí"', add
label define V0002_lbl 2613008 `"São Bento do Una"', add
label define V0002_lbl 4215752 `"São Bernardino"', add
label define V0002_lbl 2110609 `"São Bernardo"', add
label define V0002_lbl 3548708 `"São Bernardo do Campo"', add
label define V0002_lbl 4215901 `"São Bonifácio"', add
label define V0002_lbl 4318002 `"São Borja"', add
label define V0002_lbl 2708204 `"São Brás"', add
label define V0002_lbl 3160900 `"São Brás do Suaçuí"', add
label define V0002_lbl 2209559 `"São Braz do Piauí"', add
label define V0002_lbl 1507102 `"São Caetano de Odivelas"', add
label define V0002_lbl 3548807 `"São Caetano do Sul"', add
label define V0002_lbl 2613107 `"São Caitano"', add
label define V0002_lbl 3548906 `"São Carlos"', add
label define V0002_lbl 4216008 `"São Carlos"', add
label define V0002_lbl 4124608 `"São Carlos do Ivaí"', add
label define V0002_lbl 2806701 `"São Cristóvão"', add
label define V0002_lbl 4216057 `"São Cristóvão do Sul"', add
label define V0002_lbl 2928901 `"São Desidério"', add
label define V0002_lbl 2928950 `"São Domingos"', add
label define V0002_lbl 4216107 `"São Domingos"', add
label define V0002_lbl 5219803 `"São Domingos"', add
label define V0002_lbl 2806800 `"São Domingos"', add
label define V0002_lbl 2513968 `"São Domingos"', add
label define V0002_lbl 3160959 `"São Domingos das Dores"', add
label define V0002_lbl 1507151 `"São Domingos do Araguaia"', add
label define V0002_lbl 2110658 `"São Domingos do Azeitão"', add
label define V0002_lbl 1507201 `"São Domingos do Capim"', add
label define V0002_lbl 2513943 `"São Domingos do Cariri"', add
label define V0002_lbl 2110708 `"São Domingos do Maranhão"', add
label define V0002_lbl 3204658 `"São Domingos do Norte"', add
label define V0002_lbl 3161007 `"São Domingos do Prata"', add
label define V0002_lbl 4318051 `"São Domingos do Sul"', add
label define V0002_lbl 2929107 `"São Felipe"', add
label define V0002_lbl 1101484 `"São Felipe D'Oeste"', add
label define V0002_lbl 2929008 `"São Félix"', add
label define V0002_lbl 2110807 `"São Félix de Balsas"', add
label define V0002_lbl 3161056 `"São Félix de Minas"', add
label define V0002_lbl 5107859 `"São Félix do Araguaia"', add
label define V0002_lbl 2929057 `"São Félix do Coribe"', add
label define V0002_lbl 2209609 `"São Félix do Piauí"', add
label define V0002_lbl 1720150 `"São Félix do Tocantins"', add
label define V0002_lbl 1507300 `"São Félix do Xingu"', add
label define V0002_lbl 2411809 `"São Fernando"', add
label define V0002_lbl 3304805 `"São Fidélis"', add
label define V0002_lbl 3549003 `"São Francisco"', add
label define V0002_lbl 3161106 `"São Francisco"', add
label define V0002_lbl 2513984 `"São Francisco"', add
label define V0002_lbl 2806909 `"São Francisco"', add
label define V0002_lbl 4318101 `"São Francisco de Assis"', add
label define V0002_lbl 2209658 `"São Francisco de Assis do Piauí"', add
label define V0002_lbl 5219902 `"São Francisco de Goiás"', add
label define V0002_lbl 3304755 `"São Francisco de Itabapoana"', add
label define V0002_lbl 4318200 `"São Francisco de Paula"', add
label define V0002_lbl 3161205 `"São Francisco de Paula"', add
label define V0002_lbl 3161304 `"São Francisco de Sales"', add
label define V0002_lbl 2110856 `"São Francisco do Brejão"', add
label define V0002_lbl 2929206 `"São Francisco do Conde"', add
label define V0002_lbl 3161403 `"São Francisco do Glória"', add
label define V0002_lbl 1101492 `"São Francisco do Guaporé"', add
label define V0002_lbl 2110906 `"São Francisco do Maranhão"', add
label define V0002_lbl 2411908 `"São Francisco do Oeste"', add
label define V0002_lbl 1507409 `"São Francisco do Pará"', add
label define V0002_lbl 2209708 `"São Francisco do Piauí"', add
label define V0002_lbl 4216206 `"São Francisco do Sul"', add
label define V0002_lbl 4318309 `"São Gabriel"', add
label define V0002_lbl 2929255 `"São Gabriel"', add
label define V0002_lbl 1303809 `"São Gabriel da Cachoeira"', add
label define V0002_lbl 3204708 `"São Gabriel da Palha"', add
label define V0002_lbl 5007695 `"São Gabriel do Oeste"', add
label define V0002_lbl 3161502 `"São Geraldo"', add
label define V0002_lbl 3161601 `"São Geraldo da Piedade"', add
label define V0002_lbl 1507458 `"São Geraldo do Araguaia"', add
label define V0002_lbl 3161650 `"São Geraldo do Baixio"', add
label define V0002_lbl 3304904 `"São Gonçalo"', add
label define V0002_lbl 3161700 `"São Gonçalo do Abaeté"', add
label define V0002_lbl 2312403 `"São Gonçalo do Amarante"', add
label define V0002_lbl 2412005 `"São Gonçalo do Amarante"', add
label define V0002_lbl 2209757 `"São Gonçalo do Gurguéia"', add
label define V0002_lbl 3161809 `"São Gonçalo do Pará"', add
label define V0002_lbl 2209807 `"São Gonçalo do Piauí"', add
label define V0002_lbl 3161908 `"São Gonçalo do Rio Abaixo"', add
label define V0002_lbl 3125507 `"São Gonçalo do Rio Preto"', add
label define V0002_lbl 3162005 `"São Gonçalo do Sapucaí"', add
label define V0002_lbl 2929305 `"São Gonçalo dos Campos"', add
label define V0002_lbl 3162104 `"São Gotardo"', add
label define V0002_lbl 4318408 `"São Jerônimo"', add
label define V0002_lbl 4124707 `"São Jerônimo da Serra"', add
label define V0002_lbl 4124806 `"São João"', add
label define V0002_lbl 2613206 `"São João"', add
label define V0002_lbl 2111003 `"São João Batista"', add
label define V0002_lbl 4216305 `"São João Batista"', add
label define V0002_lbl 3162203 `"São João Batista do Glória"', add
label define V0002_lbl 1400506 `"São João da Baliza"', add
label define V0002_lbl 3305000 `"São João da Barra"', add
label define V0002_lbl 3549102 `"São João da Boa Vista"', add
label define V0002_lbl 2209856 `"São João da Canabrava"', add
label define V0002_lbl 2209872 `"São João da Fronteira"', add
label define V0002_lbl 3162252 `"São João da Lagoa"', add
label define V0002_lbl 3162302 `"São João da Mata"', add
label define V0002_lbl 5220058 `"São João da Paraúna"', add
label define V0002_lbl 1507466 `"São João da Ponta"', add
label define V0002_lbl 3162401 `"São João da Ponte"', add
label define V0002_lbl 2209906 `"São João da Serra"', add
label define V0002_lbl 4318424 `"São João da Urtiga"', add
label define V0002_lbl 2209955 `"São João da Varjota"', add
label define V0002_lbl 5220009 `"São João d'Aliança"', add
label define V0002_lbl 3549201 `"São João das Duas Pontes"', add
label define V0002_lbl 3162450 `"São João das Missões"', add
label define V0002_lbl 3549250 `"São João de Iracema"', add
label define V0002_lbl 3305109 `"São João de Meriti"', add
label define V0002_lbl 1507474 `"São João de Pirabas"', add
label define V0002_lbl 3162500 `"São João del Rei"', add
label define V0002_lbl 1507508 `"São João do Araguaia"', add
label define V0002_lbl 2209971 `"São João do Arraial"', add
label define V0002_lbl 4124905 `"São João do Caiuá"', add
label define V0002_lbl 2514008 `"São João do Cariri"', add
label define V0002_lbl 2111029 `"São João do Carú"', add
label define V0002_lbl 4216354 `"São João do Itaperiú"', add
label define V0002_lbl 4125001 `"São João do Ivaí"', add
label define V0002_lbl 2312502 `"São João do Jaguaribe"', add
label define V0002_lbl 3162559 `"São João do Manhuaçu"', add
label define V0002_lbl 3162575 `"São João do Manteninha"', add
label define V0002_lbl 4216255 `"São João do Oeste"', add
label define V0002_lbl 3162609 `"São João do Oriente"', add
label define V0002_lbl 3162658 `"São João do Pacuí"', add
label define V0002_lbl 3162708 `"São João do Paraíso"', add
label define V0002_lbl 2111052 `"São João do Paraíso"', add
label define V0002_lbl 3549300 `"São João do Pau d'Alho"', add
label define V0002_lbl 2210003 `"São João do Piauí"', add
label define V0002_lbl 4318432 `"São João do Polêsine"', add
label define V0002_lbl 2500700 `"São João do Rio do Peixe"', add
label define V0002_lbl 2412104 `"São João do Sabugi"', add
label define V0002_lbl 2111078 `"São João do Soter"', add
label define V0002_lbl 4216404 `"São João do Sul"', add
label define V0002_lbl 2514107 `"São João do Tigre"', add
label define V0002_lbl 4125100 `"São João do Triunfo"', add
label define V0002_lbl 2111102 `"São João dos Patos"', add
label define V0002_lbl 3162807 `"São João Evangelista"', add
label define V0002_lbl 3162906 `"São João Nepomuceno"', add
label define V0002_lbl 4216503 `"São Joaquim"', add
label define V0002_lbl 3549409 `"São Joaquim da Barra"', add
label define V0002_lbl 3162922 `"São Joaquim de Bicas"', add
label define V0002_lbl 2613305 `"São Joaquim do Monte"', add
label define V0002_lbl 4318440 `"São Jorge"', add
label define V0002_lbl 4125308 `"São Jorge do Ivaí"', add
label define V0002_lbl 4125357 `"São Jorge do Patrocínio"', add
label define V0002_lbl 4125209 `"São Jorge d'Oeste"', add
label define V0002_lbl 4216602 `"São José"', add
label define V0002_lbl 3162948 `"São José da Barra"', add
label define V0002_lbl 3549508 `"São José da Bela Vista"', add
label define V0002_lbl 4125407 `"São José da Boa Vista"', add
label define V0002_lbl 2613404 `"São José da Coroa Grande"', add
label define V0002_lbl 2514206 `"São José da Lagoa Tapada"', add
label define V0002_lbl 2708303 `"São José da Laje"', add
label define V0002_lbl 3162955 `"São José da Lapa"', add
label define V0002_lbl 3163003 `"São José da Safira"', add
label define V0002_lbl 2708402 `"São José da Tapera"', add
label define V0002_lbl 3163102 `"São José da Varginha"', add
label define V0002_lbl 2929354 `"São José da Vitória"', add
label define V0002_lbl 4318457 `"São José das Missões"', add
label define V0002_lbl 4125456 `"São José das Palmeiras"', add
label define V0002_lbl 2514305 `"São José de Caiana"', add
label define V0002_lbl 2514404 `"São José de Espinharas"', add
label define V0002_lbl 2412203 `"São José de Mipibu"', add
label define V0002_lbl 2514503 `"São José de Piranhas"', add
label define V0002_lbl 2514552 `"São José de Princesa"', add
label define V0002_lbl 2111201 `"São José de Ribamar"', add
label define V0002_lbl 3305133 `"São José de Ubá"', add
label define V0002_lbl 3163201 `"São José do Alegre"', add
label define V0002_lbl 3549607 `"São José do Barreiro"', add
label define V0002_lbl 2613503 `"São José do Belmonte"', add
label define V0002_lbl 2514602 `"São José do Bonfim"', add
label define V0002_lbl 2514651 `"São José do Brejo do Cruz"', add
label define V0002_lbl 3204807 `"São José do Calçado"', add
label define V0002_lbl 2412302 `"São José do Campestre"', add
label define V0002_lbl 4216701 `"São José do Cedro"', add
label define V0002_lbl 4216800 `"São José do Cerrito"', add
label define V0002_lbl 2210052 `"São José do Divino"', add
label define V0002_lbl 3163300 `"São José do Divino"', add
label define V0002_lbl 2613602 `"São José do Egito"', add
label define V0002_lbl 3163409 `"São José do Goiabal"', add
label define V0002_lbl 4318465 `"São José do Herval"', add
label define V0002_lbl 4318481 `"São José do Hortêncio"', add
label define V0002_lbl 4318499 `"São José do Inhacorá"', add
label define V0002_lbl 2929370 `"São José do Jacuípe"', add
label define V0002_lbl 3163508 `"São José do Jacuri"', add
label define V0002_lbl 3163607 `"São José do Mantimento"', add
label define V0002_lbl 4318507 `"São José do Norte"', add
label define V0002_lbl 4318606 `"São José do Ouro"', add
label define V0002_lbl 2210102 `"São José do Peixe"', add
label define V0002_lbl 2210201 `"São José do Piauí"', add
label define V0002_lbl 5107297 `"São José do Povo"', add
label define V0002_lbl 5107305 `"São José do Rio Claro"', add
label define V0002_lbl 3549706 `"São José do Rio Pardo"', add
label define V0002_lbl 3549805 `"São José do Rio Preto"', add
label define V0002_lbl 2514701 `"São José do Sabugi"', add
label define V0002_lbl 2412401 `"São José do Seridó"', add
label define V0002_lbl 4318614 `"São José do Sul"', add
label define V0002_lbl 3305158 `"São José do Vale do Rio Preto"', add
label define V0002_lbl 5107354 `"São José do Xingu"', add
label define V0002_lbl 4318622 `"São José dos Ausentes"', add
label define V0002_lbl 2111250 `"São José dos Basílios"', add
label define V0002_lbl 3549904 `"São José dos Campos"', add
label define V0002_lbl 2514800 `"São José dos Cordeiros"', add
label define V0002_lbl 4125506 `"São José dos Pinhais"', add
label define V0002_lbl 5107107 `"São José dos Quatro Marcos"', add
label define V0002_lbl 2514453 `"São José dos Ramos"', add
label define V0002_lbl 2210300 `"São Julião"', add
label define V0002_lbl 4318705 `"São Leopoldo"', add
label define V0002_lbl 3163706 `"São Lourenço"', add
label define V0002_lbl 2613701 `"São Lourenço da Mata"', add
label define V0002_lbl 3549953 `"São Lourenço da Serra"', add
label define V0002_lbl 4216909 `"São Lourenço do Oeste"', add
label define V0002_lbl 2210359 `"São Lourenço do Piauí"', add
label define V0002_lbl 4318804 `"São Lourenço do Sul"', add
label define V0002_lbl 4217006 `"São Ludgero"', add
label define V0002_lbl 2111300 `"São Luís"', add
label define V0002_lbl 5220108 `"São Luís de Montes Belos"', add
label define V0002_lbl 2312601 `"São Luís do Curu"', add
label define V0002_lbl 2210375 `"São Luis do Piauí"', add
label define V0002_lbl 2708501 `"São Luís do Quitunde"', add
label define V0002_lbl 2111409 `"São Luís Gonzaga do Maranhão"', add
label define V0002_lbl 1400605 `"São Luiz"', add
label define V0002_lbl 5220157 `"São Luiz do Norte"', add
label define V0002_lbl 3550001 `"São Luiz do Paraitinga"', add
label define V0002_lbl 4318903 `"São Luiz Gonzaga"', add
label define V0002_lbl 2514909 `"São Mamede"', add
label define V0002_lbl 4125555 `"São Manoel do Paraná"', add
label define V0002_lbl 3550100 `"São Manuel"', add
label define V0002_lbl 4319000 `"São Marcos"', add
label define V0002_lbl 4319109 `"São Martinho"', add
label define V0002_lbl 4217105 `"São Martinho"', add
label define V0002_lbl 4319125 `"São Martinho da Serra"', add
label define V0002_lbl 3204906 `"São Mateus"', add
label define V0002_lbl 2111508 `"São Mateus do Maranhão"', add
label define V0002_lbl 4125605 `"São Mateus do Sul"', add
label define V0002_lbl 2412500 `"São Miguel"', add
label define V0002_lbl 3550209 `"São Miguel Arcanjo"', add
label define V0002_lbl 2210383 `"São Miguel da Baixa Grande"', add
label define V0002_lbl 4217154 `"São Miguel da Boa Vista"', add
label define V0002_lbl 2929404 `"São Miguel das Matas"', add
label define V0002_lbl 4319158 `"São Miguel das Missões"', add
label define V0002_lbl 2515005 `"São Miguel de Taipu"', add
label define V0002_lbl 2807006 `"São Miguel do Aleixo"', add
label define V0002_lbl 3163805 `"São Miguel do Anta"', add
label define V0002_lbl 5220207 `"São Miguel do Araguaia"', add
label define V0002_lbl 2210391 `"São Miguel do Fidalgo"', add
label define V0002_lbl 2412559 `"São Miguel do Gostoso"', add
label define V0002_lbl 1507607 `"São Miguel do Guamá"', add
label define V0002_lbl 1100320 `"São Miguel do Guaporé"', add
label define V0002_lbl 4125704 `"São Miguel do Iguaçu"', add
label define V0002_lbl 4217204 `"São Miguel do Oeste"', add
label define V0002_lbl 5220264 `"São Miguel do Passa Quatro"', add
label define V0002_lbl 2210409 `"São Miguel do Tapuio"', add
label define V0002_lbl 1720200 `"São Miguel do Tocantins"', add
label define V0002_lbl 2708600 `"São Miguel dos Campos"', add
label define V0002_lbl 2708709 `"São Miguel dos Milagres"', add
label define V0002_lbl 4319208 `"São Nicolau"', add
label define V0002_lbl 5220280 `"São Patrício"', add
label define V0002_lbl 3550308 `"São Paulo"', add
label define V0002_lbl 4319307 `"São Paulo das Missões"', add
label define V0002_lbl 1303908 `"São Paulo de Olivença"', add
label define V0002_lbl 2412609 `"São Paulo do Potengi"', add
label define V0002_lbl 2412708 `"São Pedro"', add
label define V0002_lbl 3550407 `"São Pedro"', add
label define V0002_lbl 2111532 `"São Pedro da Água Branca"', add
label define V0002_lbl 3305208 `"São Pedro da Aldeia"', add
label define V0002_lbl 5107404 `"São Pedro da Cipa"', add
label define V0002_lbl 4319356 `"São Pedro da Serra"', add
label define V0002_lbl 3163904 `"São Pedro da União"', add
label define V0002_lbl 4319364 `"São Pedro das Missões"', add
label define V0002_lbl 4217253 `"São Pedro de Alcântara"', add
label define V0002_lbl 4319372 `"São Pedro do Butiá"', add
label define V0002_lbl 4125753 `"São Pedro do Iguaçu"', add
label define V0002_lbl 4125803 `"São Pedro do Ivaí"', add
label define V0002_lbl 4125902 `"São Pedro do Paraná"', add
label define V0002_lbl 2210508 `"São Pedro do Piauí"', add
label define V0002_lbl 3164100 `"São Pedro do Suaçuí"', add
label define V0002_lbl 4319406 `"São Pedro do Sul"', add
label define V0002_lbl 3550506 `"São Pedro do Turvo"', add
label define V0002_lbl 2111573 `"São Pedro dos Crentes"', add
label define V0002_lbl 3164001 `"São Pedro dos Ferros"', add
label define V0002_lbl 2412807 `"São Rafael"', add
label define V0002_lbl 2111607 `"São Raimundo das Mangabeiras"', add
label define V0002_lbl 2111631 `"São Raimundo do Doca Bezerra"', add
label define V0002_lbl 2210607 `"São Raimundo Nonato"', add
label define V0002_lbl 2111672 `"São Roberto"', add
label define V0002_lbl 3164209 `"São Romão"', add
label define V0002_lbl 3550605 `"São Roque"', add
label define V0002_lbl 3164308 `"São Roque de Minas"', add
label define V0002_lbl 3204955 `"São Roque do Canaã"', add
label define V0002_lbl 1720259 `"São Salvador do Tocantins"', add
label define V0002_lbl 2708808 `"São Sebastião"', add
label define V0002_lbl 3550704 `"São Sebastião"', add
label define V0002_lbl 4126009 `"São Sebastião da Amoreira"', add
label define V0002_lbl 3164407 `"São Sebastião da Bela Vista"', add
label define V0002_lbl 1507706 `"São Sebastião da Boa Vista"', add
label define V0002_lbl 3550803 `"São Sebastião da Grama"', add
label define V0002_lbl 3164431 `"São Sebastião da Vargem Alegre"', add
label define V0002_lbl 2515104 `"São Sebastião de Lagoa de Roça"', add
label define V0002_lbl 3305307 `"São Sebastião do Alto"', add
label define V0002_lbl 3164472 `"São Sebastião do Anta"', add
label define V0002_lbl 4319505 `"São Sebastião do Caí"', add
label define V0002_lbl 3164506 `"São Sebastião do Maranhão"', add
label define V0002_lbl 3164605 `"São Sebastião do Oeste"', add
label define V0002_lbl 3164704 `"São Sebastião do Paraíso"', add
label define V0002_lbl 2929503 `"São Sebastião do Passé"', add
label define V0002_lbl 3164803 `"São Sebastião do Rio Preto"', add
label define V0002_lbl 3164902 `"São Sebastião do Rio Verde"', add
label define V0002_lbl 1720309 `"São Sebastião do Tocantins"', add
label define V0002_lbl 1303957 `"São Sebastião do Uatumã"', add
label define V0002_lbl 2515203 `"São Sebastião do Umbuzeiro"', add
label define V0002_lbl 4319604 `"São Sepé"', add
label define V0002_lbl 5220405 `"São Simão"', add
label define V0002_lbl 3550902 `"São Simão"', add
label define V0002_lbl 3165008 `"São Tiago"', add
label define V0002_lbl 3165107 `"São Tomás de Aquino"', add
label define V0002_lbl 4126108 `"São Tomé"', add
label define V0002_lbl 2412906 `"São Tomé"', add
label define V0002_lbl 3165206 `"São Tomé das Letras"', add
label define V0002_lbl 4319703 `"São Valentim"', add
label define V0002_lbl 4319711 `"São Valentim do Sul"', add
label define V0002_lbl 1720499 `"São Valério"', add
label define V0002_lbl 4319737 `"São Valério do Sul"', add
label define V0002_lbl 4319752 `"São Vendelino"', add
label define V0002_lbl 3551009 `"São Vicente"', add
label define V0002_lbl 2413003 `"São Vicente"', add
label define V0002_lbl 3165305 `"São Vicente de Minas"', add
label define V0002_lbl 2515401 `"São Vicente do Seridó"', add
label define V0002_lbl 4319802 `"São Vicente do Sul"', add
label define V0002_lbl 2111706 `"São Vicente Ferrer"', add
label define V0002_lbl 2613800 `"São Vicente Férrer"', add
label define V0002_lbl 2515302 `"Sapé"', add
label define V0002_lbl 2929602 `"Sapeaçu"', add
label define V0002_lbl 5107875 `"Sapezal"', add
label define V0002_lbl 4319901 `"Sapiranga"', add
label define V0002_lbl 4126207 `"Sapopema"', add
label define V0002_lbl 3305406 `"Sapucaia"', add
label define V0002_lbl 1507755 `"Sapucaia"', add
label define V0002_lbl 4320008 `"Sapucaia do Sul"', add
label define V0002_lbl 3165404 `"Sapucaí-Mirim"', add
label define V0002_lbl 3305505 `"Saquarema"', add
label define V0002_lbl 4126256 `"Sarandi"', add
label define V0002_lbl 4320107 `"Sarandi"', add
label define V0002_lbl 3551108 `"Sarapuí"', add
label define V0002_lbl 3165503 `"Sardoá"', add
label define V0002_lbl 3551207 `"Sarutaiá"', add
label define V0002_lbl 3165537 `"Sarzedo"', add
label define V0002_lbl 2929701 `"Sátiro Dias"', add
label define V0002_lbl 2708907 `"Satuba"', add
label define V0002_lbl 2111722 `"Satubinha"', add
label define V0002_lbl 2929750 `"Saubara"', add
label define V0002_lbl 4126272 `"Saudade do Iguaçu"', add
label define V0002_lbl 4217303 `"Saudades"', add
label define V0002_lbl 2929800 `"Saúde"', add
label define V0002_lbl 4217402 `"Schroeder"', add
label define V0002_lbl 2929909 `"Seabra"', add
label define V0002_lbl 4217501 `"Seara"', add
label define V0002_lbl 3551306 `"Sebastianópolis do Sul"', add
label define V0002_lbl 2210623 `"Sebastião Barros"', add
label define V0002_lbl 2930006 `"Sebastião Laranjeiras"', add
label define V0002_lbl 2210631 `"Sebastião Leal"', add
label define V0002_lbl 4320206 `"Seberi"', add
label define V0002_lbl 4320230 `"Sede Nova"', add
label define V0002_lbl 4320263 `"Segredo"', add
label define V0002_lbl 4320305 `"Selbach"', add
label define V0002_lbl 5007802 `"Selvíria"', add
label define V0002_lbl 3165560 `"Sem-Peixe"', add
label define V0002_lbl 1200500 `"Sena Madureira"', add
label define V0002_lbl 2111748 `"Senador Alexandre Costa"', add
label define V0002_lbl 3165578 `"Senador Amaral"', add
label define V0002_lbl 5220454 `"Senador Canedo"', add
label define V0002_lbl 3165602 `"Senador Cortes"', add
label define V0002_lbl 2413102 `"Senador Elói de Souza"', add
label define V0002_lbl 3165701 `"Senador Firmino"', add
label define V0002_lbl 2413201 `"Senador Georgino Avelino"', add
label define V0002_lbl 1200450 `"Senador Guiomard"', add
label define V0002_lbl 3165800 `"Senador José Bento"', add
label define V0002_lbl 1507805 `"Senador José Porfírio"', add
label define V0002_lbl 2111763 `"Senador La Rocque"', add
label define V0002_lbl 3165909 `"Senador Modestino Gonçalves"', add
label define V0002_lbl 2312700 `"Senador Pompeu"', add
label define V0002_lbl 2708956 `"Senador Rui Palmeira"', add
label define V0002_lbl 2312809 `"Senador Sá"', add
label define V0002_lbl 4320321 `"Senador Salgado Filho"', add
label define V0002_lbl 4126306 `"Sengés"', add
label define V0002_lbl 2930105 `"Senhor do Bonfim"', add
label define V0002_lbl 3166006 `"Senhora de Oliveira"', add
label define V0002_lbl 3166105 `"Senhora do Porto"', add
label define V0002_lbl 3166204 `"Senhora dos Remédios"', add
label define V0002_lbl 4320354 `"Sentinela do Sul"', add
label define V0002_lbl 2930204 `"Sento Sé"', add
label define V0002_lbl 4320404 `"Serafina Corrêa"', add
label define V0002_lbl 3166303 `"Sericita"', add
label define V0002_lbl 1101500 `"Seringueiras"', add
label define V0002_lbl 4320453 `"Sério"', add
label define V0002_lbl 3166402 `"Seritinga"', add
label define V0002_lbl 3305554 `"Seropédica"', add
label define V0002_lbl 3205002 `"Serra"', add
label define V0002_lbl 4217550 `"Serra Alta"', add
label define V0002_lbl 3551405 `"Serra Azul"', add
label define V0002_lbl 3166501 `"Serra Azul de Minas"', add
label define V0002_lbl 2515500 `"Serra Branca"', add
label define V0002_lbl 2410306 `"Serra Caiada"', add
label define V0002_lbl 2515609 `"Serra da Raiz"', add
label define V0002_lbl 3166600 `"Serra da Saudade"', add
label define V0002_lbl 2413300 `"Serra de São Bento"', add
label define V0002_lbl 2413359 `"Serra do Mel"', add
label define V0002_lbl 1600055 `"Serra do Navio"', add
label define V0002_lbl 2930154 `"Serra do Ramalho"', add
label define V0002_lbl 3166808 `"Serra do Salitre"', add
label define V0002_lbl 3166709 `"Serra dos Aimorés"', add
label define V0002_lbl 2930303 `"Serra Dourada"', add
label define V0002_lbl 2515708 `"Serra Grande"', add
label define V0002_lbl 3551603 `"Serra Negra"', add
label define V0002_lbl 2413409 `"Serra Negra do Norte"', add
label define V0002_lbl 5107883 `"Serra Nova Dourada"', add
label define V0002_lbl 2930402 `"Serra Preta"', add
label define V0002_lbl 2515807 `"Serra Redonda"', add
label define V0002_lbl 2613909 `"Serra Talhada"', add
label define V0002_lbl 3551504 `"Serrana"', add
label define V0002_lbl 3166907 `"Serrania"', add
label define V0002_lbl 2111789 `"Serrano do Maranhão"', add
label define V0002_lbl 5220504 `"Serranópolis"', add
label define V0002_lbl 3166956 `"Serranópolis de Minas"', add
label define V0002_lbl 4126355 `"Serranópolis do Iguaçu"', add
label define V0002_lbl 3167004 `"Serranos"', add
label define V0002_lbl 2515906 `"Serraria"', add
label define V0002_lbl 2930501 `"Serrinha"', add
label define V0002_lbl 2413508 `"Serrinha"', add
label define V0002_lbl 2413557 `"Serrinha dos Pintos"', add
label define V0002_lbl 2614006 `"Serrita"', add
label define V0002_lbl 3167103 `"Serro"', add
label define V0002_lbl 2930600 `"Serrolândia"', add
label define V0002_lbl 4126405 `"Sertaneja"', add
label define V0002_lbl 2614105 `"Sertânia"', add
label define V0002_lbl 4126504 `"Sertanópolis"', add
label define V0002_lbl 4320503 `"Sertão"', add
label define V0002_lbl 4320552 `"Sertão Santana"', add
label define V0002_lbl 3551702 `"Sertãozinho"', add
label define V0002_lbl 2515930 `"Sertãozinho"', add
label define V0002_lbl 3551801 `"Sete Barras"', add
label define V0002_lbl 4320578 `"Sete de Setembro"', add
label define V0002_lbl 3167202 `"Sete Lagoas"', add
label define V0002_lbl 5007703 `"Sete Quedas"', add
label define V0002_lbl 3165552 `"Setubinha"', add
label define V0002_lbl 4320602 `"Severiano de Almeida"', add
label define V0002_lbl 2413607 `"Severiano Melo"', add
label define V0002_lbl 3551900 `"Severínia"', add
label define V0002_lbl 4217600 `"Siderópolis"', add
label define V0002_lbl 5007901 `"Sidrolândia"', add
label define V0002_lbl 2210656 `"Sigefredo Pacheco"', add
label define V0002_lbl 3305604 `"Silva Jardim"', add
label define V0002_lbl 5220603 `"Silvânia"', add
label define V0002_lbl 1720655 `"Silvanópolis"', add
label define V0002_lbl 4320651 `"Silveira Martins"', add
label define V0002_lbl 3167301 `"Silveirânia"', add
label define V0002_lbl 3552007 `"Silveiras"', add
label define V0002_lbl 1304005 `"Silves"', add
label define V0002_lbl 3167400 `"Silvianópolis"', add
label define V0002_lbl 2807105 `"Simão Dias"', add
label define V0002_lbl 3167509 `"Simão Pereira"', add
label define V0002_lbl 2210706 `"Simões"', add
label define V0002_lbl 2930709 `"Simões Filho"', add
label define V0002_lbl 5220686 `"Simolândia"', add
label define V0002_lbl 3167608 `"Simonésia"', add
label define V0002_lbl 2210805 `"Simplício Mendes"', add
label define V0002_lbl 4320677 `"Sinimbu"', add
label define V0002_lbl 5107909 `"Sinop"', add
label define V0002_lbl 4126603 `"Siqueira Campos"', add
label define V0002_lbl 2614204 `"Sirinhaém"', add
label define V0002_lbl 2807204 `"Siriri"', add
label define V0002_lbl 5220702 `"Sítio d'Abadia"', add
label define V0002_lbl 2930758 `"Sítio do Mato"', add
label define V0002_lbl 2930766 `"Sítio do Quinto"', add
label define V0002_lbl 2413706 `"Sítio Novo"', add
label define V0002_lbl 2111805 `"Sítio Novo"', add
label define V0002_lbl 1720804 `"Sítio Novo do Tocantins"', add
label define V0002_lbl 2930774 `"Sobradinho"', add
label define V0002_lbl 4320701 `"Sobradinho"', add
label define V0002_lbl 2515971 `"Sobrado"', add
label define V0002_lbl 2312908 `"Sobral"', add
label define V0002_lbl 3167707 `"Sobrália"', add
label define V0002_lbl 3552106 `"Socorro"', add
label define V0002_lbl 2210904 `"Socorro do Piauí"', add
label define V0002_lbl 2516003 `"Solânea"', add
label define V0002_lbl 2516102 `"Soledade"', add
label define V0002_lbl 4320800 `"Soledade"', add
label define V0002_lbl 3167806 `"Soledade de Minas"', add
label define V0002_lbl 2614402 `"Solidão"', add
label define V0002_lbl 2313005 `"Solonópole"', add
label define V0002_lbl 4217709 `"Sombrio"', add
label define V0002_lbl 5007935 `"Sonora"', add
label define V0002_lbl 3205010 `"Sooretama"', add
label define V0002_lbl 3552205 `"Sorocaba"', add
label define V0002_lbl 5107925 `"Sorriso"', add
label define V0002_lbl 2516151 `"Sossêgo"', add
label define V0002_lbl 1507904 `"Soure"', add
label define V0002_lbl 2516201 `"Sousa"', add
label define V0002_lbl 2930808 `"Souto Soares"', add
label define V0002_lbl 1720853 `"Sucupira"', add
label define V0002_lbl 2111904 `"Sucupira do Norte"', add
label define V0002_lbl 2111953 `"Sucupira do Riachão"', add
label define V0002_lbl 3552304 `"Sud Mennucci"', add
label define V0002_lbl 4217758 `"Sul Brasil"', add
label define V0002_lbl 4126652 `"Sulina"', add
label define V0002_lbl 3552403 `"Sumaré"', add
label define V0002_lbl 2516300 `"Sumé"', add
label define V0002_lbl 3305703 `"Sumidouro"', add
label define V0002_lbl 2614501 `"Surubim"', add
label define V0002_lbl 2210938 `"Sussuapara"', add
label define V0002_lbl 3552551 `"Suzanápolis"', add
label define V0002_lbl 3552502 `"Suzano"', add
label define V0002_lbl 4320859 `"Tabaí"', add
label define V0002_lbl 5107941 `"Tabaporã"', add
label define V0002_lbl 3552601 `"Tabapuã"', add
label define V0002_lbl 3552700 `"Tabatinga"', add
label define V0002_lbl 1304062 `"Tabatinga"', add
label define V0002_lbl 2614600 `"Tabira"', add
label define V0002_lbl 3552809 `"Taboão da Serra"', add
label define V0002_lbl 1708254 `"Tabocão"', add
label define V0002_lbl 2930907 `"Tabocas do Brejo Velho"', add
label define V0002_lbl 2413805 `"Taboleiro Grande"', add
label define V0002_lbl 3167905 `"Tabuleiro"', add
label define V0002_lbl 2313104 `"Tabuleiro do Norte"', add
label define V0002_lbl 2614709 `"Tacaimbó"', add
label define V0002_lbl 2614808 `"Tacaratu"', add
label define V0002_lbl 3552908 `"Taciba"', add
label define V0002_lbl 2516409 `"Tacima"', add
label define V0002_lbl 5007950 `"Tacuru"', add
label define V0002_lbl 3553005 `"Taguaí"', add
label define V0002_lbl 1720903 `"Taguatinga"', add
label define V0002_lbl 3553104 `"Taiaçu"', add
label define V0002_lbl 1507953 `"Tailândia"', add
label define V0002_lbl 4217808 `"Taió"', add
label define V0002_lbl 3168002 `"Taiobeiras"', add
label define V0002_lbl 1720937 `"Taipas do Tocantins"', add
label define V0002_lbl 2413904 `"Taipu"', add
label define V0002_lbl 3553203 `"Taiúva"', add
label define V0002_lbl 1720978 `"Talismã"', add
label define V0002_lbl 2614857 `"Tamandaré"', add
label define V0002_lbl 4126678 `"Tamarana"', add
label define V0002_lbl 3553302 `"Tambaú"', add
label define V0002_lbl 4126702 `"Tamboara"', add
label define V0002_lbl 2313203 `"Tamboril"', add
label define V0002_lbl 2210953 `"Tamboril do Piauí"', add
label define V0002_lbl 3553401 `"Tanabi"', add
label define V0002_lbl 4217907 `"Tangará"', add
label define V0002_lbl 2414001 `"Tangará"', add
label define V0002_lbl 5107958 `"Tangará da Serra"', add
label define V0002_lbl 3305752 `"Tanguá"', add
label define V0002_lbl 2931004 `"Tanhaçu"', add
label define V0002_lbl 2709004 `"Tanque d'Arca"', add
label define V0002_lbl 2210979 `"Tanque do Piauí"', add
label define V0002_lbl 2931053 `"Tanque Novo"', add
label define V0002_lbl 2931103 `"Tanquinho"', add
label define V0002_lbl 3168051 `"Taparuba"', add
label define V0002_lbl 1304104 `"Tapauá"', add
label define V0002_lbl 4126801 `"Tapejara"', add
label define V0002_lbl 4320909 `"Tapejara"', add
label define V0002_lbl 4321006 `"Tapera"', add
label define V0002_lbl 2931202 `"Taperoá"', add
label define V0002_lbl 2516508 `"Taperoá"', add
label define V0002_lbl 4321105 `"Tapes"', add
label define V0002_lbl 4126900 `"Tapira"', add
label define V0002_lbl 3168101 `"Tapira"', add
label define V0002_lbl 3168200 `"Tapiraí"', add
label define V0002_lbl 3553500 `"Tapiraí"', add
label define V0002_lbl 2931301 `"Tapiramutá"', add
label define V0002_lbl 3553609 `"Tapiratiba"', add
label define V0002_lbl 5108006 `"Tapurah"', add
label define V0002_lbl 4321204 `"Taquara"', add
label define V0002_lbl 3168309 `"Taquaraçu de Minas"', add
label define V0002_lbl 3553658 `"Taquaral"', add
label define V0002_lbl 5221007 `"Taquaral de Goiás"', add
label define V0002_lbl 2709103 `"Taquarana"', add
label define V0002_lbl 4321303 `"Taquari"', add
label define V0002_lbl 3553708 `"Taquaritinga"', add
label define V0002_lbl 2615003 `"Taquaritinga do Norte"', add
label define V0002_lbl 3553807 `"Taquarituba"', add
label define V0002_lbl 3553856 `"Taquarivaí"', add
label define V0002_lbl 4321329 `"Taquaruçu do Sul"', add
label define V0002_lbl 5007976 `"Taquarussu"', add
label define V0002_lbl 3553906 `"Tarabai"', add
label define V0002_lbl 1200609 `"Tarauacá"', add
label define V0002_lbl 2313252 `"Tarrafas"', add
label define V0002_lbl 1600709 `"Tartarugalzinho"', add
label define V0002_lbl 3553955 `"Tarumã"', add
label define V0002_lbl 3168408 `"Tarumirim"', add
label define V0002_lbl 2112001 `"Tasso Fragoso"', add
label define V0002_lbl 3554003 `"Tatuí"', add
label define V0002_lbl 2313302 `"Tauá"', add
label define V0002_lbl 3554102 `"Taubaté"', add
label define V0002_lbl 4321352 `"Tavares"', add
label define V0002_lbl 2516607 `"Tavares"', add
label define V0002_lbl 1304203 `"Tefé"', add
label define V0002_lbl 2516706 `"Teixeira"', add
label define V0002_lbl 2931350 `"Teixeira de Freitas"', add
label define V0002_lbl 4127007 `"Teixeira Soares"', add
label define V0002_lbl 3168507 `"Teixeiras"', add
label define V0002_lbl 1101559 `"Teixeirópolis"', add
label define V0002_lbl 2313351 `"Tejuçuoca"', add
label define V0002_lbl 3554201 `"Tejupá"', add
label define V0002_lbl 4127106 `"Telêmaco Borba"', add
label define V0002_lbl 2807303 `"Telha"', add
label define V0002_lbl 2414100 `"Tenente Ananias"', add
label define V0002_lbl 2414159 `"Tenente Laurentino Cruz"', add
label define V0002_lbl 4321402 `"Tenente Portela"', add
label define V0002_lbl 2516755 `"Tenório"', add
label define V0002_lbl 2931400 `"Teodoro Sampaio"', add
label define V0002_lbl 3554300 `"Teodoro Sampaio"', add
label define V0002_lbl 2931509 `"Teofilândia"', add
label define V0002_lbl 3168606 `"Teófilo Otoni"', add
label define V0002_lbl 2931608 `"Teolândia"', add
label define V0002_lbl 2709152 `"Teotônio Vilela"', add
label define V0002_lbl 5008008 `"Terenos"', add
label define V0002_lbl 2211001 `"Teresina"', add
label define V0002_lbl 5221080 `"Teresina de Goiás"', add
label define V0002_lbl 3305802 `"Teresópolis"', add
label define V0002_lbl 2615102 `"Terezinha"', add
label define V0002_lbl 5221197 `"Terezópolis de Goiás"', add
label define V0002_lbl 1507961 `"Terra Alta"', add
label define V0002_lbl 4127205 `"Terra Boa"', add
label define V0002_lbl 4321436 `"Terra de Areia"', add
label define V0002_lbl 2615201 `"Terra Nova"', add
label define V0002_lbl 2931707 `"Terra Nova"', add
label define V0002_lbl 5108055 `"Terra Nova do Norte"', add
label define V0002_lbl 4127304 `"Terra Rica"', add
label define V0002_lbl 4127403 `"Terra Roxa"', add
label define V0002_lbl 3554409 `"Terra Roxa"', add
label define V0002_lbl 1507979 `"Terra Santa"', add
label define V0002_lbl 5108105 `"Tesouro"', add
label define V0002_lbl 4321451 `"Teutônia"', add
label define V0002_lbl 1101609 `"Theobroma"', add
label define V0002_lbl 2313401 `"Tianguá"', add
label define V0002_lbl 4127502 `"Tibagi"', add
label define V0002_lbl 2411056 `"Tibau"', add
label define V0002_lbl 2414209 `"Tibau do Sul"', add
label define V0002_lbl 3554508 `"Tietê"', add
label define V0002_lbl 4217956 `"Tigrinhos"', add
label define V0002_lbl 4218004 `"Tijucas"', add
label define V0002_lbl 4127601 `"Tijucas do Sul"', add
label define V0002_lbl 2615300 `"Timbaúba"', add
label define V0002_lbl 2414308 `"Timbaúba dos Batistas"', add
label define V0002_lbl 4218103 `"Timbé do Sul"', add
label define V0002_lbl 2112100 `"Timbiras"', add
label define V0002_lbl 4218202 `"Timbó"', add
label define V0002_lbl 4218251 `"Timbó Grande"', add
label define V0002_lbl 3554607 `"Timburi"', add
label define V0002_lbl 2112209 `"Timon"', add
label define V0002_lbl 3168705 `"Timóteo"', add
label define V0002_lbl 4321469 `"Tio Hugo"', add
label define V0002_lbl 3168804 `"Tiradentes"', add
label define V0002_lbl 4321477 `"Tiradentes do Sul"', add
label define V0002_lbl 3168903 `"Tiros"', add
label define V0002_lbl 2807402 `"Tobias Barreto"', add
label define V0002_lbl 1721109 `"Tocantínia"', add
label define V0002_lbl 1721208 `"Tocantinópolis"', add
label define V0002_lbl 3169000 `"Tocantins"', add
label define V0002_lbl 3169059 `"Tocos do Moji"', add
label define V0002_lbl 3169109 `"Toledo"', add
label define V0002_lbl 4127700 `"Toledo"', add
label define V0002_lbl 2807501 `"Tomar do Geru"', add
label define V0002_lbl 4127809 `"Tomazina"', add
label define V0002_lbl 3169208 `"Tombos"', add
label define V0002_lbl 1508001 `"Tomé-Açu"', add
label define V0002_lbl 1304237 `"Tonantins"', add
label define V0002_lbl 2615409 `"Toritama"', add
label define V0002_lbl 5108204 `"Torixoréu"', add
label define V0002_lbl 4321493 `"Toropi"', add
label define V0002_lbl 3554656 `"Torre de Pedra"', add
label define V0002_lbl 4321501 `"Torres"', add
label define V0002_lbl 3554706 `"Torrinha"', add
label define V0002_lbl 2414407 `"Touros"', add
label define V0002_lbl 3554755 `"Trabiju"', add
label define V0002_lbl 1508035 `"Tracuateua"', add
label define V0002_lbl 2615508 `"Tracunhaém"', add
label define V0002_lbl 2709202 `"Traipu"', add
label define V0002_lbl 1508050 `"Trairão"', add
label define V0002_lbl 2313500 `"Trairi"', add
label define V0002_lbl 3305901 `"Trajano de Moraes"', add
label define V0002_lbl 4321600 `"Tramandaí"', add
label define V0002_lbl 4321626 `"Travesseiro"', add
label define V0002_lbl 2931806 `"Tremedal"', add
label define V0002_lbl 3554805 `"Tremembé"', add
label define V0002_lbl 4321634 `"Três Arroios"', add
label define V0002_lbl 4218301 `"Três Barras"', add
label define V0002_lbl 4127858 `"Três Barras do Paraná"', add
label define V0002_lbl 4321667 `"Três Cachoeiras"', add
label define V0002_lbl 3169307 `"Três Corações"', add
label define V0002_lbl 4321709 `"Três Coroas"', add
label define V0002_lbl 4321808 `"Três de Maio"', add
label define V0002_lbl 4321832 `"Três Forquilhas"', add
label define V0002_lbl 3554904 `"Três Fronteiras"', add
label define V0002_lbl 5008305 `"Três Lagoas"', add
label define V0002_lbl 3169356 `"Três Marias"', add
label define V0002_lbl 4321857 `"Três Palmeiras"', add
label define V0002_lbl 4321907 `"Três Passos"', add
label define V0002_lbl 3169406 `"Três Pontas"', add
label define V0002_lbl 5221304 `"Três Ranchos"', add
label define V0002_lbl 3306008 `"Três Rios"', add
label define V0002_lbl 4218350 `"Treviso"', add
label define V0002_lbl 4218400 `"Treze de Maio"', add
label define V0002_lbl 4218509 `"Treze Tílias"', add
label define V0002_lbl 5221403 `"Trindade"', add
label define V0002_lbl 2615607 `"Trindade"', add
label define V0002_lbl 4321956 `"Trindade do Sul"', add
label define V0002_lbl 4322004 `"Triunfo"', add
label define V0002_lbl 2615706 `"Triunfo"', add
label define V0002_lbl 2516805 `"Triunfo"', add
label define V0002_lbl 2414456 `"Triunfo Potiguar"', add
label define V0002_lbl 2112233 `"Trizidela do Vale"', add
label define V0002_lbl 5221452 `"Trombas"', add
label define V0002_lbl 4218608 `"Trombudo Central"', add
label define V0002_lbl 4218707 `"Tubarão"', add
label define V0002_lbl 2931905 `"Tucano"', add
label define V0002_lbl 1508084 `"Tucumã"', add
label define V0002_lbl 4322103 `"Tucunduva"', add
label define V0002_lbl 1508100 `"Tucuruí"', add
label define V0002_lbl 2112274 `"Tufilândia"', add
label define V0002_lbl 3554953 `"Tuiuti"', add
label define V0002_lbl 3169505 `"Tumiritinga"', add
label define V0002_lbl 4218756 `"Tunápolis"', add
label define V0002_lbl 4322152 `"Tunas"', add
label define V0002_lbl 4127882 `"Tunas do Paraná"', add
label define V0002_lbl 4127908 `"Tuneiras do Oeste"', add
label define V0002_lbl 2112308 `"Tuntum"', add
label define V0002_lbl 3555000 `"Tupã"', add
label define V0002_lbl 3169604 `"Tupaciguara"', add
label define V0002_lbl 2615805 `"Tupanatinga"', add
label define V0002_lbl 4322186 `"Tupanci do Sul"', add
label define V0002_lbl 4322202 `"Tupanciretã"', add
label define V0002_lbl 4322251 `"Tupandi"', add
label define V0002_lbl 4322301 `"Tuparendi"', add
label define V0002_lbl 2615904 `"Tuparetama"', add
label define V0002_lbl 4127957 `"Tupãssi"', add
label define V0002_lbl 3555109 `"Tupi Paulista"', add
label define V0002_lbl 1721257 `"Tupirama"', add
label define V0002_lbl 1721307 `"Tupiratins"', add
label define V0002_lbl 2112407 `"Turiaçu"', add
label define V0002_lbl 2112456 `"Turilândia"', add
label define V0002_lbl 3555208 `"Turiúba"', add
label define V0002_lbl 3555307 `"Turmalina"', add
label define V0002_lbl 3169703 `"Turmalina"', add
label define V0002_lbl 4322327 `"Turuçu"', add
label define V0002_lbl 2313559 `"Tururu"', add
label define V0002_lbl 5221502 `"Turvânia"', add
label define V0002_lbl 5221551 `"Turvelândia"', add
label define V0002_lbl 4218806 `"Turvo"', add
label define V0002_lbl 4127965 `"Turvo"', add
label define V0002_lbl 3169802 `"Turvolândia"', add
label define V0002_lbl 2112506 `"Tutóia"', add
label define V0002_lbl 1304260 `"Uarini"', add
label define V0002_lbl 2932002 `"Uauá"', add
label define V0002_lbl 3169901 `"Ubá"', add
label define V0002_lbl 3170008 `"Ubaí"', add
label define V0002_lbl 2932101 `"Ubaíra"', add
label define V0002_lbl 2932200 `"Ubaitaba"', add
label define V0002_lbl 2313609 `"Ubajara"', add
label define V0002_lbl 3170057 `"Ubaporanga"', add
label define V0002_lbl 3555356 `"Ubarana"', add
label define V0002_lbl 2932309 `"Ubatã"', add
label define V0002_lbl 3555406 `"Ubatuba"', add
label define V0002_lbl 3170107 `"Uberaba"', add
label define V0002_lbl 3170206 `"Uberlândia"', add
label define V0002_lbl 3555505 `"Ubirajara"', add
label define V0002_lbl 4128005 `"Ubiratã"', add
label define V0002_lbl 4322343 `"Ubiretama"', add
label define V0002_lbl 3555604 `"Uchoa"', add
label define V0002_lbl 2932408 `"Uibaí"', add
label define V0002_lbl 1400704 `"Uiramutã"', add
label define V0002_lbl 5221577 `"Uirapuru"', add
label define V0002_lbl 2516904 `"Uiraúna"', add
label define V0002_lbl 1508126 `"Ulianópolis"', add
label define V0002_lbl 2313708 `"Umari"', add
label define V0002_lbl 2414506 `"Umarizal"', add
label define V0002_lbl 2807600 `"Umbaúba"', add
label define V0002_lbl 2932457 `"Umburanas"', add
label define V0002_lbl 3170305 `"Umburatiba"', add
label define V0002_lbl 2517001 `"Umbuzeiro"', add
label define V0002_lbl 2313757 `"Umirim"', add
label define V0002_lbl 4128104 `"Umuarama"', add
label define V0002_lbl 2932507 `"Una"', add
label define V0002_lbl 3170404 `"Unaí"', add
label define V0002_lbl 2211100 `"União"', add
label define V0002_lbl 4322350 `"União da Serra"', add
label define V0002_lbl 4128203 `"União da Vitória"', add
label define V0002_lbl 3170438 `"União de Minas"', add
label define V0002_lbl 4218855 `"União do Oeste"', add
label define V0002_lbl 5108303 `"União do Sul"', add
label define V0002_lbl 2709301 `"União dos Palmares"', add
label define V0002_lbl 3555703 `"União Paulista"', add
label define V0002_lbl 4128302 `"Uniflor"', add
label define V0002_lbl 4322376 `"Unistalda"', add
label define V0002_lbl 2414605 `"Upanema"', add
label define V0002_lbl 4128401 `"Uraí"', add
label define V0002_lbl 2932606 `"Urandi"', add
label define V0002_lbl 3555802 `"Urânia"', add
label define V0002_lbl 2112605 `"Urbano Santos"', add
label define V0002_lbl 3555901 `"Uru"', add
label define V0002_lbl 5221601 `"Uruaçu"', add
label define V0002_lbl 5221700 `"Uruana"', add
label define V0002_lbl 3170479 `"Uruana de Minas"', add
label define V0002_lbl 1508159 `"Uruará"', add
label define V0002_lbl 4218905 `"Urubici"', add
label define V0002_lbl 2313807 `"Uruburetama"', add
label define V0002_lbl 3170503 `"Urucânia"', add
label define V0002_lbl 1304302 `"Urucará"', add
label define V0002_lbl 2932705 `"Uruçuca"', add
label define V0002_lbl 2211209 `"Uruçuí"', add
label define V0002_lbl 3170529 `"Urucuia"', add
label define V0002_lbl 1304401 `"Urucurituba"', add
label define V0002_lbl 4322400 `"Uruguaiana"', add
label define V0002_lbl 2313906 `"Uruoca"', add
label define V0002_lbl 1101708 `"Urupá"', add
label define V0002_lbl 4218954 `"Urupema"', add
label define V0002_lbl 3556008 `"Urupês"', add
label define V0002_lbl 4219002 `"Urussanga"', add
label define V0002_lbl 5221809 `"Urutaí"', add
label define V0002_lbl 2932804 `"Utinga"', add
label define V0002_lbl 4322509 `"Vacaria"', add
label define V0002_lbl 5108352 `"Vale de São Domingos"', add
label define V0002_lbl 1101757 `"Vale do Anari"', add
label define V0002_lbl 1101807 `"Vale do Paraíso"', add
label define V0002_lbl 4322533 `"Vale do Sol"', add
label define V0002_lbl 4322541 `"Vale Real"', add
label define V0002_lbl 4322525 `"Vale Verde"', add
label define V0002_lbl 3306107 `"Valença"', add
label define V0002_lbl 2932903 `"Valença"', add
label define V0002_lbl 2211308 `"Valença do Piauí"', add
label define V0002_lbl 2933000 `"Valente"', add
label define V0002_lbl 3556107 `"Valentim Gentil"', add
label define V0002_lbl 3556206 `"Valinhos"', add
label define V0002_lbl 3556305 `"Valparaíso"', add
label define V0002_lbl 5221858 `"Valparaíso de Goiás"', add
label define V0002_lbl 4322558 `"Vanini"', add
label define V0002_lbl 4219101 `"Vargeão"', add
label define V0002_lbl 4219150 `"Vargem"', add
label define V0002_lbl 3556354 `"Vargem"', add
label define V0002_lbl 3170578 `"Vargem Alegre"', add
label define V0002_lbl 3205036 `"Vargem Alta"', add
label define V0002_lbl 3170602 `"Vargem Bonita"', add
label define V0002_lbl 4219176 `"Vargem Bonita"', add
label define V0002_lbl 2112704 `"Vargem Grande"', add
label define V0002_lbl 3170651 `"Vargem Grande do Rio Pardo"', add
label define V0002_lbl 3556404 `"Vargem Grande do Sul"', add
label define V0002_lbl 3556453 `"Vargem Grande Paulista"', add
label define V0002_lbl 3170701 `"Varginha"', add
label define V0002_lbl 5221908 `"Varjão"', add
label define V0002_lbl 3170750 `"Varjão de Minas"', add
label define V0002_lbl 2313955 `"Varjota"', add
label define V0002_lbl 3306156 `"Varre-Sai"', add
label define V0002_lbl 2414704 `"Várzea"', add
label define V0002_lbl 2517100 `"Várzea"', add
label define V0002_lbl 2314003 `"Várzea Alegre"', add
label define V0002_lbl 2211357 `"Várzea Branca"', add
label define V0002_lbl 3170800 `"Várzea da Palma"', add
label define V0002_lbl 2933059 `"Várzea da Roça"', add
label define V0002_lbl 2933109 `"Várzea do Poço"', add
label define V0002_lbl 2211407 `"Várzea Grande"', add
label define V0002_lbl 5108402 `"Várzea Grande"', add
label define V0002_lbl 2933158 `"Várzea Nova"', add
label define V0002_lbl 3556503 `"Várzea Paulista"', add
label define V0002_lbl 2933174 `"Varzedo"', add
label define V0002_lbl 3170909 `"Varzelândia"', add
label define V0002_lbl 3306206 `"Vassouras"', add
label define V0002_lbl 3171006 `"Vazante"', add
label define V0002_lbl 4322608 `"Venâncio Aires"', add
label define V0002_lbl 3205069 `"Venda Nova do Imigrante"', add
label define V0002_lbl 2414753 `"Venha-Ver"', add
label define V0002_lbl 4128534 `"Ventania"', add
label define V0002_lbl 2616001 `"Venturosa"', add
label define V0002_lbl 5108501 `"Vera"', add
label define V0002_lbl 4322707 `"Vera Cruz"', add
label define V0002_lbl 3556602 `"Vera Cruz"', add
label define V0002_lbl 2933208 `"Vera Cruz"', add
label define V0002_lbl 2414803 `"Vera Cruz"', add
label define V0002_lbl 4128559 `"Vera Cruz do Oeste"', add
label define V0002_lbl 2211506 `"Vera Mendes"', add
label define V0002_lbl 4322806 `"Veranópolis"', add
label define V0002_lbl 2616100 `"Verdejante"', add
label define V0002_lbl 3171030 `"Verdelândia"', add
label define V0002_lbl 4128609 `"Verê"', add
label define V0002_lbl 2933257 `"Vereda"', add
label define V0002_lbl 3171071 `"Veredinha"', add
label define V0002_lbl 3171105 `"Veríssimo"', add
label define V0002_lbl 3171154 `"Vermelho Novo"', add
label define V0002_lbl 2616183 `"Vertente do Lério"', add
label define V0002_lbl 2616209 `"Vertentes"', add
label define V0002_lbl 3171204 `"Vespasiano"', add
label define V0002_lbl 4322855 `"Vespasiano Corrêa"', add
label define V0002_lbl 4322905 `"Viadutos"', add
label define V0002_lbl 4323002 `"Viamão"', add
label define V0002_lbl 3205101 `"Viana"', add
label define V0002_lbl 2112803 `"Viana"', add
label define V0002_lbl 5222005 `"Vianópolis"', add
label define V0002_lbl 2616308 `"Vicência"', add
label define V0002_lbl 4323101 `"Vicente Dutra"', add
label define V0002_lbl 5008404 `"Vicentina"', add
label define V0002_lbl 5222054 `"Vicentinópolis"', add
label define V0002_lbl 3171303 `"Viçosa"', add
label define V0002_lbl 2709400 `"Viçosa"', add
label define V0002_lbl 2414902 `"Viçosa"', add
label define V0002_lbl 2314102 `"Viçosa do Ceará"', add
label define V0002_lbl 4323200 `"Victor Graeff"', add
label define V0002_lbl 4219200 `"Vidal Ramos"', add
label define V0002_lbl 4219309 `"Videira"', add
label define V0002_lbl 3171402 `"Vieiras"', add
label define V0002_lbl 2517209 `"Vieirópolis"', add
label define V0002_lbl 1508209 `"Vigia"', add
label define V0002_lbl 5105507 `"Vila Bela da Santíssima Trindade"', add
label define V0002_lbl 5222203 `"Vila Boa"', add
label define V0002_lbl 2415008 `"Vila Flor"', add
label define V0002_lbl 4323309 `"Vila Flores"', add
label define V0002_lbl 4323358 `"Vila Lângaro"', add
label define V0002_lbl 4323408 `"Vila Maria"', add
label define V0002_lbl 2211605 `"Vila Nova do Piauí"', add
label define V0002_lbl 4323457 `"Vila Nova do Sul"', add
label define V0002_lbl 2112852 `"Vila Nova dos Martírios"', add
label define V0002_lbl 3205150 `"Vila Pavão"', add
label define V0002_lbl 5222302 `"Vila Propício"', add
label define V0002_lbl 5108600 `"Vila Rica"', add
label define V0002_lbl 3205176 `"Vila Valério"', add
label define V0002_lbl 3205200 `"Vila Velha"', add
label define V0002_lbl 1100304 `"Vilhena"', add
label define V0002_lbl 3556701 `"Vinhedo"', add
label define V0002_lbl 3556800 `"Viradouro"', add
label define V0002_lbl 3171600 `"Virgem da Lapa"', add
label define V0002_lbl 3171709 `"Virgínia"', add
label define V0002_lbl 3171808 `"Virginópolis"', add
label define V0002_lbl 3171907 `"Virgolândia"', add
label define V0002_lbl 4128658 `"Virmond"', add
label define V0002_lbl 3172004 `"Visconde do Rio Branco"', add
label define V0002_lbl 1508308 `"Viseu"', add
label define V0002_lbl 4323507 `"Vista Alegre"', add
label define V0002_lbl 3556909 `"Vista Alegre do Alto"', add
label define V0002_lbl 4323606 `"Vista Alegre do Prata"', add
label define V0002_lbl 4323705 `"Vista Gaúcha"', add
label define V0002_lbl 2505501 `"Vista Serrana"', add
label define V0002_lbl 4219358 `"Vitor Meireles"', add
label define V0002_lbl 3205309 `"Vitória"', add
label define V0002_lbl 3556958 `"Vitória Brasil"', add
label define V0002_lbl 2933307 `"Vitória da Conquista"', add
label define V0002_lbl 4323754 `"Vitória das Missões"', add
label define V0002_lbl 2616407 `"Vitória de Santo Antão"', add
label define V0002_lbl 1600808 `"Vitória do Jari"', add
label define V0002_lbl 2112902 `"Vitória do Mearim"', add
label define V0002_lbl 1508357 `"Vitória do Xingu"', add
label define V0002_lbl 4128708 `"Vitorino"', add
label define V0002_lbl 2113009 `"Vitorino Freire"', add
label define V0002_lbl 3172103 `"Volta Grande"', add
label define V0002_lbl 3306305 `"Volta Redonda"', add
label define V0002_lbl 3557006 `"Votorantim"', add
label define V0002_lbl 3557105 `"Votuporanga"', add
label define V0002_lbl 2933406 `"Wagner"', add
label define V0002_lbl 2211704 `"Wall Ferraz"', add
label define V0002_lbl 1722081 `"Wanderlândia"', add
label define V0002_lbl 2933455 `"Wanderley"', add
label define V0002_lbl 4128500 `"Wenceslau Braz"', add
label define V0002_lbl 3172202 `"Wenceslau Braz"', add
label define V0002_lbl 2933505 `"Wenceslau Guimarães"', add
label define V0002_lbl 4323770 `"Westfália"', add
label define V0002_lbl 4219408 `"Witmarsum"', add
label define V0002_lbl 1722107 `"Xambioá"', add
label define V0002_lbl 4128807 `"Xambrê"', add
label define V0002_lbl 4323804 `"Xangri-lá"', add
label define V0002_lbl 4219507 `"Xanxerê"', add
label define V0002_lbl 1200708 `"Xapuri"', add
label define V0002_lbl 4219606 `"Xavantina"', add
label define V0002_lbl 4219705 `"Xaxim"', add
label define V0002_lbl 2616506 `"Xexéu"', add
label define V0002_lbl 1508407 `"Xinguara"', add
label define V0002_lbl 2933604 `"Xique-Xique"', add
label define V0002_lbl 2517407 `"Zabelê"', add
label define V0002_lbl 3557154 `"Zacarias"', add
label define V0002_lbl 2114007 `"Zé Doca"', add
label define V0002_lbl 4219853 `"Zortéa"', add
label define V1002_lbl 5203 `"Centro Goiano"', add
label define V1002_lbl 3105 `"Triângulo Mineiro/Alto Paranaíba"', add
label define V1002_lbl 5204 `"Leste Goiano"', add
label define V1002_lbl 3106 `"Central Mineira"', add
label define V1002_lbl 1504 `"Nordeste Paraense"', add
label define V1002_lbl 2307 `"Sul Cearense"', add
label define V1002_lbl 2906 `"Centro Sul Baiano"', add
label define V1002_lbl 2902 `"Vale São-Franciscano da Bahia"', add
label define V1002_lbl 4104 `"Norte Pioneiro Paranaense"', add
label define V1002_lbl 4203 `"Serrana"', add
label define V1002_lbl 1506 `"Sudeste Paraense"', add
label define V1002_lbl 4201 `"Oeste Catarinense"', add
label define V1002_lbl 3112 `"Zona da Mata"', add
label define V1002_lbl 2605 `"Metropolitana de Recife"', add
label define V1002_lbl 1701 `"Ocidental do Tocantins"', add
label define V1002_lbl 2102 `"Oeste Maranhense"', add
label define V1002_lbl 2904 `"Nordeste Baiano"', add
label define V1002_lbl 2302 `"Norte Cearense"', add
label define V1002_lbl 2301 `"Noroeste Cearense"', add
label define V1002_lbl 2402 `"Central Potiguar"', add
label define V1002_lbl 2204 `"Sudeste Piauiense"', add
label define V1002_lbl 4306 `"Sudoeste Rio-grandense"', add
label define V1002_lbl 2304 `"Sertões Cearenses"', add
label define V1002_lbl 5104 `"Centro-Sul Mato-grossense"', add
label define V1002_lbl 1202 `"Vale do Acre"', add
label define V1002_lbl 5205 `"Sul Goiano"', add
label define V1002_lbl 2401 `"Oeste Potiguar"', add
label define V1002_lbl 3108 `"Vale do Rio Doce"', add
label define V1002_lbl 3508 `"Presidente Prudente"', add
label define V1002_lbl 3501 `"São José do Rio Preto"', add
label define V1002_lbl 4110 `"Metropolitana de Curitiba"', add
label define V1002_lbl 2601 `"Sertão Pernambucano"', add
label define V1002_lbl 3203 `"Central Espírito-santense"', add
label define V1002_lbl 2104 `"Leste Maranhense"', add
label define V1002_lbl 2602 `"São Francisco Pernambucano"', add
label define V1002_lbl 1502 `"Marajó"', add
label define V1002_lbl 2603 `"Agreste Pernambucano"', add
label define V1002_lbl 2202 `"Centro-Norte Piauiense"', add
label define V1002_lbl 4204 `"Vale do Itajaí"', add
label define V1002_lbl 5102 `"Nordeste Mato-grossense"', add
label define V1002_lbl 2701 `"Sertão Alagoano"', add
label define V1002_lbl 2501 `"Sertão Paraibano"', add
label define V1002_lbl 5003 `"Leste de Mato Grosso do Sul"', add
label define V1002_lbl 3201 `"Noroeste Espírito-santense"', add
label define V1002_lbl 2903 `"Centro Norte Baiano"', add
label define V1002_lbl 2604 `"Mata Pernambucana"', add
label define V1002_lbl 4301 `"Noroeste Rio-grandense"', add
label define V1002_lbl 3507 `"Campinas"', add
label define V1002_lbl 3109 `"Oeste de Minas"', add
label define V1002_lbl 3504 `"Bauru"', add
label define V1002_lbl 3506 `"Piracicaba"', add
label define V1002_lbl 3104 `"Vale do Mucuri"', add
label define V1002_lbl 4205 `"Grande Florianópolis"', add
label define V1002_lbl 3102 `"Norte de Minas"', add
label define V1002_lbl 4303 `"Centro Ocidental Rio-grandense"', add
label define V1002_lbl 3110 `"Sul/Sudoeste de Minas"', add
label define V1002_lbl 2503 `"Agreste Paraibano"', add
label define V1002_lbl 3511 `"Itapetininga"', add
label define V1002_lbl 2101 `"Norte Maranhense"', add
label define V1002_lbl 2502 `"Borborema"', add
label define V1002_lbl 5002 `"Centro Norte de Mato Grosso do Sul"', add
label define V1002_lbl 2907 `"Sul Baiano"', add
label define V1002_lbl 3204 `"Sul Espírito-santense"', add
label define V1002_lbl 1501 `"Baixo Amazonas"', add
label define V1002_lbl 3111 `"Campo das Vertentes"', add
label define V1002_lbl 2504 `"Mata Paraibana"', add
label define V1002_lbl 1702 `"Oriental do Tocantins"', add
label define V1002_lbl 3103 `"Jequitinhonha"', add
label define V1002_lbl 5101 `"Norte Mato-grossense"', add
label define V1002_lbl 1102 `"Leste Rondoniense"', add
label define V1002_lbl 1505 `"Sudoeste Paraense"', add
label define V1002_lbl 4102 `"Centro Ocidental Paranaense"', add
label define V1002_lbl 3502 `"Ribeirão Preto"', add
label define V1002_lbl 3503 `"Araçatuba"', add
label define V1002_lbl 1401 `"Norte de Roraima"', add
label define V1002_lbl 5105 `"Sudeste Mato-grossense"', add
label define V1002_lbl 4305 `"Metropolitana de Porto Alegre"', add
label define V1002_lbl 5202 `"Norte Goiano"', add
label define V1002_lbl 4101 `"Noroeste Paranaense"', add
label define V1002_lbl 2105 `"Sul Maranhense"', add
label define V1002_lbl 2305 `"Jaguaribe"', add
label define V1002_lbl 3512 `"Macro Metropolitana Paulista"', add
label define V1002_lbl 1303 `"Centro Amazonense"', add
label define V1002_lbl 3509 `"Marília"', add
label define V1002_lbl 3107 `"Metropolitana de Belo Horizonte"', add
label define V1002_lbl 2203 `"Sudoeste Piauiense"', add
label define V1002_lbl 4103 `"Norte Central Paranaense"', add
label define V1002_lbl 5004 `"Sudoeste de Mato Grosso do Sul"', add
label define V1002_lbl 1601 `"Norte do Amapá"', add
label define V1002_lbl 4307 `"Sudeste Rio-grandense"', add
label define V1002_lbl 1302 `"Sudoeste Amazonense"', add
label define V1002_lbl 2905 `"Metropolitana de Salvador"', add
label define V1002_lbl 3505 `"Araraquara"', add
label define V1002_lbl 2803 `"Leste Sergipano"', add
label define V1002_lbl 4107 `"Sudoeste Paranaense"', add
label define V1002_lbl 2703 `"Leste Alagoano"', add
label define V1002_lbl 4106 `"Oeste Paranaense"', add
label define V1002_lbl 1503 `"Metropolitana de Belém"', add
label define V1002_lbl 5001 `"Pantanais Sul Mato-grossense"', add
label define V1002_lbl 4302 `"Nordeste Rio-grandense"', add
label define V1002_lbl 2901 `"Extremo Oeste Baiano"', add
label define V1002_lbl 3305 `"Sul Fluminense"', add
label define V1002_lbl 2306 `"Centro-Sul Cearense"', add
label define V1002_lbl 4109 `"Sudeste Paranaense"', add
label define V1002_lbl 3513 `"Vale do Paraíba Paulista"', add
label define V1002_lbl 3301 `"Noroeste Fluminense"', add
label define V1002_lbl 1304 `"Sul Amazonense"', add
label define V1002_lbl 2802 `"Agreste Sergipano"', add
label define V1002_lbl 2303 `"Metropolitana de Fortaleza"', add
label define V1002_lbl 3202 `"Litoral Norte Espírito-santense"', add
label define V1002_lbl 5201 `"Noroeste Goiano"', add
label define V1002_lbl 2103 `"Centro Maranhense"', add
label define V1002_lbl 2702 `"Agreste Alagoano"', add
label define V1002_lbl 4105 `"Centro Oriental Paranaense"', add
label define V1002_lbl 5103 `"Sudoeste Mato-grossense"', add
label define V1002_lbl 4202 `"Norte Catarinense"', add
label define V1002_lbl 4206 `"Sul Catarinense"', add
label define V1002_lbl 3304 `"Baixadas"', add
label define V1002_lbl 3303 `"Centro Fluminense"', add
label define V1002_lbl 2404 `"Leste Potiguar"', add
label define V1002_lbl 3101 `"Noroeste de Minas"', add
label define V1002_lbl 4304 `"Centro Oriental Rio-grandense"', add
label define V1002_lbl 3515 `"Metropolitana de São Paulo"', add
label define V1002_lbl 3510 `"Assis"', add
label define V1002_lbl 2403 `"Agreste Potiguar"', add
label define V1002_lbl 1301 `"Norte Amazonense"', add
label define V1002_lbl 3514 `"Litoral Sul Paulista"', add
label define V1002_lbl 2201 `"Norte Piauiense"', add
label define V1002_lbl 3306 `"Metropolitana do Rio de Janeiro"', add
label define V1002_lbl 4108 `"Centro-Sul Paranaense"', add
label define V1002_lbl 5301 `"Distrito Federal"', add
label define V1002_lbl 1101 `"Madeira-Guaporé"', add
label define V1002_lbl 3302 `"Norte Fluminense"', add
label define V1002_lbl 2801 `"Sertão Sergipano"', add
label define V1002_lbl 1402 `"Sul de Roraima"', add
label define V1002_lbl 1201 `"Vale do Juruá"', add
label define V1002_lbl 1602 `"Sul do Amapá"', add
label define V1003_lbl 52010 `"Goiânia"', add
label define V1003_lbl 31019 `"Patrocínio"', add
label define V1003_lbl 52012 `"Entorno de Brasília"', add
label define V1003_lbl 31024 `"Três Marias"', add
label define V1003_lbl 15011 `"Cametá"', add
label define V1003_lbl 23033 `"Brejo Santo"', add
label define V1003_lbl 29023 `"Seabra"', add
label define V1003_lbl 29005 `"Paulo Afonso"', add
label define V1003_lbl 41015 `"Cornélio Procópio"', add
label define V1003_lbl 42009 `"Curitibanos"', add
label define V1003_lbl 15017 `"Paragominas"', add
label define V1003_lbl 42003 `"Xanxerê"', add
label define V1003_lbl 31061 `"Manhuaçu"', add
label define V1003_lbl 26017 `"Recife"', add
label define V1003_lbl 17003 `"Miracema do Tocantins"', add
label define V1003_lbl 31060 `"Ponte Nova"', add
label define V1003_lbl 21009 `"Imperatriz"', add
label define V1003_lbl 29017 `"Alagoinhas"', add
label define V1003_lbl 15012 `"Tomé-Açu"', add
label define V1003_lbl 23013 `"Baturité"', add
label define V1003_lbl 23001 `"Litoral de Camocim e Acaraú"', add
label define V1003_lbl 24012 `"Seridó Oriental"', add
label define V1003_lbl 22015 `"Alto Médio Canindé"', add
label define V1003_lbl 43031 `"Campanha Meridional"', add
label define V1003_lbl 23021 `"Sertão de Senador Pompeu"', add
label define V1003_lbl 51016 `"Rosário Oeste"', add
label define V1003_lbl 12004 `"Rio Branco"', add
label define V1003_lbl 52014 `"Vale do Rio dos Bois"', add
label define V1003_lbl 24004 `"Vale do Açu"', add
label define V1003_lbl 31039 `"Ipatinga"', add
label define V1003_lbl 35035 `"Adamantina"', add
label define V1003_lbl 52009 `"Anicuns"', add
label define V1003_lbl 35004 `"São José do Rio Preto"', add
label define V1003_lbl 41035 `"Cerro Azul"', add
label define V1003_lbl 29015 `"Ribeira do Pombal"', add
label define V1003_lbl 26003 `"Pajeú"', add
label define V1003_lbl 24009 `"Angicos"', add
label define V1003_lbl 32007 `"Afonso Cláudio"', add
label define V1003_lbl 21016 `"Coelho Neto"', add
label define V1003_lbl 26005 `"Petrolina"', add
label define V1003_lbl 15005 `"Furos de Breves"', add
label define V1003_lbl 26012 `"Brejo Pernambucano"', add
label define V1003_lbl 22005 `"Médio Parnaíba Piauiense"', add
label define V1003_lbl 42014 `"Ituporanga"', add
label define V1003_lbl 42011 `"Rio do Sul"', add
label define V1003_lbl 15019 `"Parauapebas"', add
label define V1003_lbl 31036 `"Peçanha"', add
label define V1003_lbl 51010 `"Canarana"', add
label define V1003_lbl 27001 `"Serrana do Sertão Alagoano"', add
label define V1003_lbl 25007 `"Serra do Teixeira"', add
label define V1003_lbl 50007 `"Três Lagoas"', add
label define V1003_lbl 31022 `"Uberaba"', add
label define V1003_lbl 42004 `"Joaçaba"', add
label define V1003_lbl 21013 `"Baixo Parnaíba Maranhense"', add
label define V1003_lbl 32001 `"Barra de São Francisco"', add
label define V1003_lbl 29012 `"Feira de Santana"', add
label define V1003_lbl 52015 `"Meia Ponte"', add
label define V1003_lbl 24005 `"Serra de São Miguel"', add
label define V1003_lbl 26015 `"Mata Meridional Pernambucana"', add
label define V1003_lbl 43010 `"Passo Fundo"', add
label define V1003_lbl 35029 `"Pirassununga"', add
label define V1003_lbl 31045 `"Campo Belo"', add
label define V1003_lbl 26007 `"Vale do Ipanema"', add
label define V1003_lbl 35030 `"São João da Boa Vista"', add
label define V1003_lbl 42002 `"Chapecó"', add
label define V1003_lbl 35033 `"Amparo"', add
label define V1003_lbl 35022 `"Avaré"', add
label define V1003_lbl 35028 `"Piracicaba"', add
label define V1003_lbl 31016 `"Nanuque"', add
label define V1003_lbl 42017 `"Tabuleiro"', add
label define V1003_lbl 31005 `"Salinas"', add
label define V1003_lbl 43019 `"Restinga Seca"', add
label define V1003_lbl 35020 `"Bauru"', add
label define V1003_lbl 41039 `"Rio Negro"', add
label define V1003_lbl 32002 `"Nova Venécia"', add
label define V1003_lbl 25005 `"Piancó"', add
label define V1003_lbl 17001 `"Bico do Papagaio"', add
label define V1003_lbl 31041 `"Aimorés"', add
label define V1003_lbl 29024 `"Jequié"', add
label define V1003_lbl 23020 `"Sertão de Inhamuns"', add
label define V1003_lbl 31055 `"Andrelândia"', add
label define V1003_lbl 43008 `"Ijuí"', add
label define V1003_lbl 31054 `"São Lourenço"', add
label define V1003_lbl 25015 `"Brejo Paraibano"', add
label define V1003_lbl 25016 `"Guarabira"', add
label define V1003_lbl 26008 `"Vale do Ipojuca"', add
label define V1003_lbl 22014 `"Pio IX"', add
label define V1003_lbl 35042 `"Itapetininga"', add
label define V1003_lbl 31051 `"Poços de Caldas"', add
label define V1003_lbl 21001 `"Litoral Ocidental Maranhense"', add
label define V1003_lbl 23004 `"Meruoca"', add
label define V1003_lbl 25011 `"Cariri Oriental"', add
label define V1003_lbl 50003 `"Alto Taquari"', add
label define V1003_lbl 29032 `"Porto Seguro"', add
label define V1003_lbl 43001 `"Santa Rosa"', add
label define V1003_lbl 32011 `"Alegre"', add
label define V1003_lbl 43029 `"Campanha Ocidental"', add
label define V1003_lbl 31066 `"Cataguases"', add
label define V1003_lbl 15002 `"Santarém"', add
label define V1003_lbl 24006 `"Pau dos Ferros"', add
label define V1003_lbl 31049 `"Alfenas"', add
label define V1003_lbl 32010 `"Guarapari"', add
label define V1003_lbl 35036 `"Presidente Prudente"', add
label define V1003_lbl 31059 `"Barbacena"', add
label define V1003_lbl 25012 `"Curimataú Ocidental"', add
label define V1003_lbl 25023 `"Litoral Sul"', add
label define V1003_lbl 26013 `"Mata Setentrional Pernambucana"', add
label define V1003_lbl 17005 `"Gurupi"', add
label define V1003_lbl 29031 `"Ilhéus-Itabuna"', add
label define V1003_lbl 17008 `"Dianópolis"', add
label define V1003_lbl 15003 `"Almeirim"', add
label define V1003_lbl 31014 `"Almenara"', add
label define V1003_lbl 24007 `"Umarizal"', add
label define V1003_lbl 41037 `"Curitiba"', add
label define V1003_lbl 43009 `"Carazinho"', add
label define V1003_lbl 31037 `"Governador Valadares"', add
label define V1003_lbl 43003 `"Frederico Westphalen"', add
label define V1003_lbl 31047 `"Passos"', add
label define V1003_lbl 51002 `"Alta Floresta"', add
label define V1003_lbl 11006 `"Cacoal"', add
label define V1003_lbl 15015 `"Altamira"', add
label define V1003_lbl 21008 `"Pindaré"', add
label define V1003_lbl 41004 `"Goioerê"', add
label define V1003_lbl 23030 `"Caririaçu"', add
label define V1003_lbl 35015 `"Batatais"', add
label define V1003_lbl 35018 `"Birigui"', add
label define V1003_lbl 43011 `"Cruz Alta"', add
label define V1003_lbl 14001 `"Boa Vista"', add
label define V1003_lbl 21015 `"Codó"', add
label define V1003_lbl 51022 `"Alto Araguaia"', add
label define V1003_lbl 42005 `"Concórdia"', add
label define V1003_lbl 51009 `"Norte Araguaia"', add
label define V1003_lbl 43023 `"Montenegro"', add
label define V1003_lbl 52004 `"Porangatu"', add
label define V1003_lbl 22004 `"Campo Maior"', add
label define V1003_lbl 51015 `"Alto Paraguai"', add
label define V1003_lbl 41002 `"Umuarama"', add
label define V1003_lbl 11003 `"Ariquemes"', add
label define V1003_lbl 52005 `"Chapada dos Veadeiros"', add
label define V1003_lbl 41001 `"Paranavaí"', add
label define V1003_lbl 21020 `"Gerais de Balsas"', add
label define V1003_lbl 31062 `"Viçosa"', add
label define V1003_lbl 32003 `"Colatina"', add
label define V1003_lbl 23023 `"Baixo Jaguaribe"', add
label define V1003_lbl 22003 `"Teresina"', add
label define V1003_lbl 35046 `"Sorocaba"', add
label define V1003_lbl 13005 `"Tefé"', add
label define V1003_lbl 35003 `"Votuporanga"', add
label define V1003_lbl 35038 `"Marília"', add
label define V1003_lbl 31031 `"Itabira"', add
label define V1003_lbl 43026 `"Porto Alegre"', add
label define V1003_lbl 31028 `"Conceição do Mato Dentro"', add
label define V1003_lbl 22010 `"Alto Médio Gurguéia"', add
label define V1003_lbl 52011 `"Vão do Paranã"', add
label define V1003_lbl 41007 `"Porecatu"', add
label define V1003_lbl 11005 `"Alvorada D'Oeste"', add
label define V1003_lbl 50010 `"Dourados"', add
label define V1003_lbl 16002 `"Amapá"', add
label define V1003_lbl 21007 `"Gurupi"', add
label define V1003_lbl 43032 `"Serras de Sudeste"', add
label define V1003_lbl 13003 `"Alto Solimões"', add
label define V1003_lbl 29019 `"Catu"', add
label define V1003_lbl 29009 `"Irecê"', add
label define V1003_lbl 35032 `"Campinas"', add
label define V1003_lbl 35024 `"Araraquara"', add
label define V1003_lbl 23008 `"Itapipoca"', add
label define V1003_lbl 52008 `"Iporá"', add
label define V1003_lbl 25010 `"Cariri Ocidental"', add
label define V1003_lbl 28007 `"Propriá"', add
label define V1003_lbl 41025 `"Capanema"', add
label define V1003_lbl 27012 `"São Miguel dos Campos"', add
label define V1003_lbl 29028 `"Vitória da Conquista"', add
label define V1003_lbl 41023 `"Cascavel"', add
label define V1003_lbl 21005 `"Baixada Maranhense"', add
label define V1003_lbl 35025 `"São Carlos"', add
label define V1003_lbl 13006 `"Coari"', add
label define V1003_lbl 15007 `"Belém"', add
label define V1003_lbl 52007 `"Anápolis"', add
label define V1003_lbl 21014 `"Chapadinha"', add
label define V1003_lbl 50002 `"Aquidauana"', add
label define V1003_lbl 50008 `"Nova Andradina"', add
label define V1003_lbl 42001 `"São Miguel do Oeste"', add
label define V1003_lbl 29008 `"Senhor do Bonfim"', add
label define V1003_lbl 35016 `"Andradina"', add
label define V1003_lbl 43014 `"Guaporé"', add
label define V1003_lbl 31011 `"Capelinha"', add
label define V1003_lbl 50011 `"Iguatemi"', add
label define V1003_lbl 26011 `"Garanhuns"', add
label define V1003_lbl 42015 `"Tijucas"', add
label define V1003_lbl 29002 `"Cotegipe"', add
label define V1003_lbl 33013 `"Baía da Ilha Grande"', add
label define V1003_lbl 41006 `"Astorga"', add
label define V1003_lbl 52017 `"Catalão"', add
label define V1003_lbl 35023 `"Botucatu"', add
label define V1003_lbl 22011 `"São Raimundo Nonato"', add
label define V1003_lbl 42010 `"Campos de Lages"', add
label define V1003_lbl 41038 `"Paranaguá"', add
label define V1003_lbl 23027 `"Várzea Alegre"', add
label define V1003_lbl 22008 `"Bertolínia"', add
label define V1003_lbl 42016 `"Florianópolis"', add
label define V1003_lbl 41034 `"São Mateus do Sul"', add
label define V1003_lbl 43016 `"Caxias do Sul"', add
label define V1003_lbl 31063 `"Muriaé"', add
label define V1003_lbl 25003 `"Sousa"', add
label define V1003_lbl 35051 `"Guaratinguetá"', add
label define V1003_lbl 52013 `"Sudoeste de Goiás"', add
label define V1003_lbl 17006 `"Porto Nacional"', add
label define V1003_lbl 50006 `"Paranaíba"', add
label define V1003_lbl 35001 `"Jales"', add
label define V1003_lbl 33002 `"Santo Antônio de Pádua"', add
label define V1003_lbl 32012 `"Cachoeiro de Itapemirim"', add
label define V1003_lbl 35044 `"Capão Bonito"', add
label define V1003_lbl 42012 `"Blumenau"', add
label define V1003_lbl 24002 `"Chapada do Apodi"', add
label define V1003_lbl 41010 `"Apucarana"', add
label define V1003_lbl 13013 `"Madeira"', add
label define V1003_lbl 23011 `"Médio Curu"', add
label define V1003_lbl 28003 `"Nossa Senhora das Dores"', add
label define V1003_lbl 23016 `"Fortaleza"', add
label define V1003_lbl 31027 `"Sete Lagoas"', add
label define V1003_lbl 28011 `"Aracaju"', add
label define V1003_lbl 23022 `"Litoral de Aracati"', add
label define V1003_lbl 29027 `"Brumado"', add
label define V1003_lbl 35017 `"Araçatuba"', add
label define V1003_lbl 29016 `"Serrinha"', add
label define V1003_lbl 31065 `"Juiz de Fora"', add
label define V1003_lbl 26016 `"Itamaracá"', add
label define V1003_lbl 32006 `"Linhares"', add
label define V1003_lbl 31012 `"Araçuaí"', add
label define V1003_lbl 52003 `"Aragarças"', add
label define V1003_lbl 17002 `"Araguaína"', add
label define V1003_lbl 17004 `"Rio Formoso"', add
label define V1003_lbl 51011 `"Médio Araguaia"', add
label define V1003_lbl 51020 `"Tesouro"', add
label define V1003_lbl 52002 `"Rio Vermelho"', add
label define V1003_lbl 31018 `"Uberlândia"', add
label define V1003_lbl 43028 `"Camaquã"', add
label define V1003_lbl 21011 `"Alto Mearim e Grajaú"', add
label define V1003_lbl 35011 `"Ituverava"', add
label define V1003_lbl 35052 `"Bananal"', add
label define V1003_lbl 27006 `"Arapiraca"', add
label define V1003_lbl 41020 `"Jaguariaíva"', add
label define V1003_lbl 31020 `"Patos de Minas"', add
label define V1003_lbl 41013 `"Ivaiporã"', add
label define V1003_lbl 51014 `"Jauru"', add
label define V1003_lbl 42008 `"Joinville"', add
label define V1003_lbl 42020 `"Araranguá"', add
label define V1003_lbl 35027 `"Limeira"', add
label define V1003_lbl 23018 `"Sertão de Cratéus"', add
label define V1003_lbl 23029 `"Chapada do Araripe"', add
label define V1003_lbl 26001 `"Araripina"', add
label define V1003_lbl 33010 `"Lagos"', add
label define V1003_lbl 41005 `"Campo Mourão"', add
label define V1003_lbl 25013 `"Curimataú Oriental"', add
label define V1003_lbl 43004 `"Erechim"', add
label define V1003_lbl 29020 `"Santo Antônio de Jesus"', add
label define V1003_lbl 28012 `"Boquim"', add
label define V1003_lbl 31026 `"Bom Despacho"', add
label define V1003_lbl 31023 `"Araxá"', add
label define V1003_lbl 31048 `"São Sebastião do Paraíso"', add
label define V1003_lbl 35037 `"Tupã"', add
label define V1003_lbl 31044 `"Formiga"', add
label define V1003_lbl 26004 `"Sertão do Moxotó"', add
label define V1003_lbl 33005 `"Três Rios"', add
label define V1003_lbl 24001 `"Mossoró"', add
label define V1003_lbl 28004 `"Agreste de Itabaiana"', add
label define V1003_lbl 25004 `"Patos"', add
label define V1003_lbl 25014 `"Esperança"', add
label define V1003_lbl 24019 `"Litoral Sul"', add
label define V1003_lbl 31001 `"Unaí"', add
label define V1003_lbl 51001 `"Aripuanã"', add
label define V1003_lbl 35005 `"Catanduva"', add
label define V1003_lbl 42018 `"Tubarão"', add
label define V1003_lbl 22006 `"Valença do Piauí"', add
label define V1003_lbl 25019 `"Umbuzeiro"', add
label define V1003_lbl 22013 `"Picos"', add
label define V1003_lbl 43021 `"Lajeado-Estrela"', add
label define V1003_lbl 43033 `"Pelotas"', add
label define V1003_lbl 43027 `"Osório"', add
label define V1003_lbl 43020 `"Santa Cruz do Sul"', add
label define V1003_lbl 43025 `"São Jerônimo"', add
label define V1003_lbl 43034 `"Jaguarão"', add
label define V1003_lbl 35031 `"Mogi Mirim"', add
label define V1003_lbl 35059 `"Guarulhos"', add
label define V1003_lbl 41014 `"Assaí"', add
label define V1003_lbl 35039 `"Assis"', add
label define V1003_lbl 12005 `"Brasiléia"', add
label define V1003_lbl 41022 `"Toledo"', add
label define V1003_lbl 31064 `"Ubá"', add
label define V1003_lbl 27009 `"Mata Alagoana"', add
label define V1003_lbl 31015 `"Teófilo Otoni"', add
label define V1003_lbl 35048 `"Bragança Paulista"', add
label define V1003_lbl 15010 `"Bragantina"', add
label define V1003_lbl 31025 `"Curvelo"', add
label define V1003_lbl 35006 `"Auriflama"', add
label define V1003_lbl 23031 `"Barro"', add
label define V1003_lbl 15013 `"Guamá"', add
label define V1003_lbl 13007 `"Manaus"', add
label define V1003_lbl 15014 `"Itaituba"', add
label define V1003_lbl 22012 `"Chapadas do Extremo Sul Piauiense"', add
label define V1003_lbl 21003 `"Rosário"', add
label define V1003_lbl 21010 `"Médio Mearim"', add
label define V1003_lbl 15004 `"Portel"', add
label define V1003_lbl 25020 `"Litoral Norte"', add
label define V1003_lbl 29001 `"Barreiras"', add
label define V1003_lbl 29011 `"Itaberaba"', add
label define V1003_lbl 22007 `"Alto Parnaíba Piauiense"', add
label define V1003_lbl 23028 `"Lavras da Mangabeira"', add
label define V1003_lbl 42013 `"Itajaí"', add
label define V1003_lbl 42019 `"Criciúma"', add
label define V1003_lbl 31042 `"Piuí"', add
label define V1003_lbl 23019 `"Sertão de Quixeramobim"', add
label define V1003_lbl 50004 `"Campo Grande"', add
label define V1003_lbl 15018 `"São Félix do Xingu"', add
label define V1003_lbl 35041 `"Itapeva"', add
label define V1003_lbl 21018 `"Chapadas do Alto Itapecuru"', add
label define V1003_lbl 51018 `"Alto Pantanal"', add
label define V1003_lbl 25009 `"Seridó Oriental Paraibano"', add
label define V1003_lbl 23032 `"Cariri"', add
label define V1003_lbl 24014 `"Borborema Potiguar"', add
label define V1003_lbl 13001 `"Rio Negro"', add
label define V1003_lbl 35021 `"Jaú"', add
label define V1003_lbl 29006 `"Barra"', add
label define V1003_lbl 27011 `"Maceió"', add
label define V1003_lbl 51013 `"Tangará da Serra"', add
label define V1003_lbl 43002 `"Três Passos"', add
label define V1003_lbl 41016 `"Jacarezinho"', add
label define V1003_lbl 17007 `"Jalapão"', add
label define V1003_lbl 33012 `"Barra do Piraí"', add
label define V1003_lbl 35055 `"Registro"', add
label define V1003_lbl 33011 `"Vale do Paraíba Fluminense"', add
label define V1003_lbl 41026 `"Francisco Beltrão"', add
label define V1003_lbl 43005 `"Sananduva"', add
label define V1003_lbl 22001 `"Baixo Parnaíba Piauiense"', add
label define V1003_lbl 23014 `"Chorozinho"', add
label define V1003_lbl 13010 `"Parintins"', add
label define V1003_lbl 21004 `"Lençóis Maranhenses"', add
label define V1003_lbl 35009 `"Barretos"', add
label define V1003_lbl 35014 `"Ribeirão Preto"', add
label define V1003_lbl 52006 `"Ceres"', add
label define V1003_lbl 43013 `"Soledade"', add
label define V1003_lbl 35057 `"Osasco"', add
label define V1003_lbl 27004 `"Batalha"', add
label define V1003_lbl 25022 `"João Pessoa"', add
label define V1003_lbl 35013 `"Jaboticabal"', add
label define V1003_lbl 23015 `"Cascavel"', add
label define V1003_lbl 50009 `"Bodoquena"', add
label define V1003_lbl 42006 `"Canoinhas"', add
label define V1003_lbl 27005 `"Palmeira dos Índios"', add
label define V1003_lbl 25001 `"Catolé do Rocha"', add
label define V1003_lbl 26006 `"Itaparica"', add
label define V1003_lbl 33018 `"Rio de Janeiro"', add
label define V1003_lbl 31030 `"Belo Horizonte"', add
label define V1003_lbl 31032 `"Itaguara"', add
label define V1003_lbl 21021 `"Chapadas das Mangabeiras"', add
label define V1003_lbl 24013 `"Baixa Verde"', add
label define V1003_lbl 25002 `"Cajazeiras"', add
label define V1003_lbl 35040 `"Ourinhos"', add
label define V1003_lbl 35063 `"Santos"', add
label define V1003_lbl 35062 `"Mogi das Cruzes"', add
label define V1003_lbl 41033 `"União da Vitória"', add
label define V1003_lbl 31050 `"Varginha"', add
label define V1003_lbl 25006 `"Itaporanga"', add
label define V1003_lbl 41028 `"Pitanga"', add
label define V1003_lbl 25017 `"Campina Grande"', add
label define V1003_lbl 13011 `"Boca do Acre"', add
label define V1003_lbl 31009 `"Bocaiúva"', add
label define V1003_lbl 24010 `"Serra de Santana"', add
label define V1003_lbl 35043 `"Tatuí"', add
label define V1003_lbl 26010 `"Médio Capibaribe"', add
label define V1003_lbl 33007 `"Nova Friburgo"', add
label define V1003_lbl 24015 `"Agreste Potiguar"', add
label define V1003_lbl 43015 `"Vacaria"', add
label define V1003_lbl 29007 `"Bom Jesus da Lapa"', add
label define V1003_lbl 31040 `"Caratinga"', add
label define V1003_lbl 33001 `"Itaperuna"', add
label define V1003_lbl 22002 `"Litoral Piauiense"', add
label define V1003_lbl 31052 `"Pouso Alegre"', add
label define V1003_lbl 41012 `"Faxinal"', add
label define V1003_lbl 31046 `"Oliveira"', add
label define V1003_lbl 41027 `"Pato Branco"', add
label define V1003_lbl 14002 `"Nordeste de Roraima"', add
label define V1003_lbl 31003 `"Januária"', add
label define V1003_lbl 29022 `"Boquira"', add
label define V1003_lbl 43007 `"Santo Ângelo"', add
label define V1003_lbl 31008 `"Grão Mogol"', add
label define V1003_lbl 31002 `"Paracatu"', add
label define V1003_lbl 53001 `"Brasília"', add
label define V1003_lbl 31007 `"Montes Claros"', add
label define V1003_lbl 31035 `"Guanhães"', add
label define V1003_lbl 31056 `"Itajubá"', add
label define V1003_lbl 15020 `"Marabá"', add
label define V1003_lbl 15016 `"Tucuruí"', add
label define V1003_lbl 35026 `"Rio Claro"', add
label define V1003_lbl 15008 `"Castanhal"', add
label define V1003_lbl 21017 `"Caxias"', add
label define V1003_lbl 11001 `"Porto Velho"', add
label define V1003_lbl 31006 `"Pirapora"', add
label define V1003_lbl 11008 `"Colorado do Oeste"', add
label define V1003_lbl 26018 `"Suape"', add
label define V1003_lbl 35050 `"São José dos Campos"', add
label define V1003_lbl 43018 `"Santa Maria"', add
label define V1003_lbl 52018 `"Quirinópolis"', add
label define V1003_lbl 31053 `"Santa Rita do Sapucaí"', add
label define V1003_lbl 31013 `"Pedra Azul"', add
label define V1003_lbl 15006 `"Arari"', add
label define V1003_lbl 43022 `"Cachoeira do Sul"', add
label define V1003_lbl 31017 `"Ituiutaba"', add
label define V1003_lbl 33016 `"Macacu-Caceribu"', add
label define V1003_lbl 29026 `"Guanambi"', add
label define V1003_lbl 29010 `"Jacobina"', add
label define V1003_lbl 35019 `"Lins"', add
label define V1003_lbl 43006 `"Cerro Largo"', add
label define V1003_lbl 24008 `"Macau"', add
label define V1003_lbl 24011 `"Seridó Ocidental"', add
label define V1003_lbl 35058 `"Franco da Rocha"', add
label define V1003_lbl 29030 `"Valença"', add
label define V1003_lbl 16001 `"Oiapoque"', add
label define V1003_lbl 25018 `"Itabaiana"', add
label define V1003_lbl 29021 `"Salvador"', add
label define V1003_lbl 41011 `"Londrina"', add
label define V1003_lbl 21019 `"Porto Franco"', add
label define V1003_lbl 41029 `"Guarapuava"', add
label define V1003_lbl 31021 `"Frutal"', add
label define V1003_lbl 42007 `"São Bento do Sul"', add
label define V1003_lbl 29004 `"Juazeiro"', add
label define V1003_lbl 24003 `"Médio Oeste"', add
label define V1003_lbl 35047 `"Jundiaí"', add
label define V1003_lbl 51004 `"Parecis"', add
label define V1003_lbl 51019 `"Primavera do Leste"', add
label define V1003_lbl 35049 `"Campos do Jordão"', add
label define V1003_lbl 33003 `"Campos dos Goytacazes"', add
label define V1003_lbl 29003 `"Santa Maria da Vitória"', add
label define V1003_lbl 22009 `"Floriano"', add
label define V1003_lbl 43024 `"Gramado-Canela"', add
label define V1003_lbl 23012 `"Canindé"', add
label define V1003_lbl 28001 `"Sergipana do Sertão do São Francisco"', add
label define V1003_lbl 29014 `"Euclides da Cunha"', add
label define V1003_lbl 33006 `"Cantagalo-Cordeiro"', add
label define V1003_lbl 21006 `"Itapecuru Mirim"', add
label define V1003_lbl 13012 `"Purus"', add
label define V1003_lbl 43017 `"Santiago"', add
label define V1003_lbl 28008 `"Cotinguiba"', add
label define V1003_lbl 14003 `"Caracaraí"', add
label define V1003_lbl 35054 `"Caraguatatuba"', add
label define V1003_lbl 41021 `"Ponta Grossa"', add
label define V1003_lbl 33004 `"Macaé"', add
label define V1003_lbl 13004 `"Juruá"', add
label define V1003_lbl 29018 `"Entre Rios"', add
label define V1003_lbl 32009 `"Vitória"', add
label define V1003_lbl 28002 `"Carira"', add
label define V1003_lbl 23005 `"Sobral"', add
label define V1003_lbl 41018 `"Wenceslau Braz"', add
label define V1003_lbl 31043 `"Divinópolis"', add
label define V1003_lbl 28010 `"Baixo Cotinguiba"', add
label define V1003_lbl 23002 `"Ibiapaba"', add
label define V1003_lbl 27003 `"Santana do Ipanema"', add
label define V1003_lbl 14004 `"Sudeste de Roraima"', add
label define V1003_lbl 31057 `"Lavras"', add
label define V1003_lbl 31034 `"Conselheiro Lafaiete"', add
label define V1003_lbl 33009 `"Bacia de São João"', add
label define V1003_lbl 26009 `"Alto Capibaribe"', add
label define V1003_lbl 50005 `"Cassilândia"', add
label define V1003_lbl 23007 `"Santa Quitéria"', add
label define V1003_lbl 31004 `"Janaúba"', add
label define V1003_lbl 24017 `"Macaíba"', add
label define V1003_lbl 26002 `"Salgueiro"', add
label define V1003_lbl 23026 `"Iguatu"', add
label define V1003_lbl 31038 `"Mantena"', add
label define V1003_lbl 41024 `"Foz do Iguaçu"', add
label define V1003_lbl 26014 `"Vitória de Santo Antão"', add
label define V1003_lbl 27008 `"Serrana dos Quilombos"', add
label define V1003_lbl 51017 `"Cuiabá"', add
label define V1003_lbl 43035 `"Litoral Lagunar"', add
label define V1003_lbl 11007 `"Vilhena"', add
label define V1003_lbl 41003 `"Cianorte"', add
label define V1003_lbl 51007 `"Sinop"', add
label define V1003_lbl 41030 `"Palmas"', add
label define V1003_lbl 15009 `"Salgado"', add
label define V1003_lbl 51003 `"Colíder"', add
label define V1003_lbl 43012 `"Não-Me-Toque"', add
label define V1003_lbl 32005 `"São Mateus"', add
label define V1003_lbl 31058 `"São João Del Rei"', add
label define V1003_lbl 15022 `"Conceição do Araguaia"', add
label define V1003_lbl 51012 `"Alto Guaporé"', add
label define V1003_lbl 41017 `"Ibaiti"', add
label define V1003_lbl 23003 `"Coreaú"', add
label define V1003_lbl 29013 `"Jeremoabo"', add
label define V1003_lbl 50001 `"Baixo Pantanal"', add
label define V1003_lbl 11002 `"Guajará-Mirim"', add
label define V1003_lbl 35060 `"Itapecerica da Serra"', add
label define V1003_lbl 31010 `"Diamantina"', add
label define V1003_lbl 35012 `"Franca"', add
label define V1003_lbl 52016 `"Pires do Rio"', add
label define V1003_lbl 52001 `"São Miguel do Araguaia"', add
label define V1003_lbl 25021 `"Sapé"', add
label define V1003_lbl 12001 `"Cruzeiro do Sul"', add
label define V1003_lbl 35053 `"Paraibuna/Paraitinga"', add
label define V1003_lbl 16003 `"Macapá"', add
label define V1003_lbl 27002 `"Alagoana do Sertão do São Francisco"', add
label define V1003_lbl 35061 `"São Paulo"', add
label define V1003_lbl 31033 `"Ouro Preto"', add
label define V1003_lbl 51021 `"Rondonópolis"', add
label define V1003_lbl 29025 `"Livramento do Brumado"', add
label define V1003_lbl 21012 `"Presidente Dutra"', add
label define V1003_lbl 41008 `"Floraí"', add
label define V1003_lbl 35034 `"Dracena"', add
label define V1003_lbl 29029 `"Itapetinga"', add
label define V1003_lbl 33014 `"Vassouras"', add
label define V1003_lbl 23025 `"Serra do Pereiro"', add
label define V1003_lbl 28013 `"Estância"', add
label define V1003_lbl 35002 `"Fernandópolis"', add
label define V1003_lbl 24018 `"Natal"', add
label define V1003_lbl 15001 `"Óbidos"', add
label define V1003_lbl 12002 `"Tarauacá"', add
label define V1003_lbl 27013 `"Penedo"', add
label define V1003_lbl 41031 `"Prudentópolis"', add
label define V1003_lbl 26019 `"Fernando de Noronha"', add
label define V1003_lbl 31029 `"Pará de Minas"', add
label define V1003_lbl 51008 `"Paranatinga"', add
label define V1003_lbl 11004 `"Ji-Paraná"', add
label define V1003_lbl 35010 `"São Joaquim da Barra"', add
label define V1003_lbl 23017 `"Pacajus"', add
label define V1003_lbl 35045 `"Piedade"', add
label define V1003_lbl 41019 `"Telêmaco Borba"', add
label define V1003_lbl 51006 `"Alto Teles Pires"', add
label define V1003_lbl 23006 `"Ipu"', add
label define V1003_lbl 35008 `"Novo Horizonte"', add
label define V1003_lbl 41032 `"Irati"', add
label define V1003_lbl 13009 `"Itacoatiara"', add
label define V1003_lbl 32008 `"Santa Teresa"', add
label define V1003_lbl 33017 `"Itaguaí"', add
label define V1003_lbl 35056 `"Itanhaém"', add
label define V1003_lbl 23010 `"Uruburetama"', add
label define V1003_lbl 32013 `"Itapemirim"', add
label define V1003_lbl 23024 `"Médio Jaguaribe"', add
label define V1003_lbl 27010 `"Litoral Norte Alagoano"', add
label define V1003_lbl 28009 `"Japaratuba"', add
label define V1003_lbl 13002 `"Japurá"', add
label define V1003_lbl 51005 `"Arinos"', add
label define V1003_lbl 25008 `"Seridó Ocidental Paraibano"', add
label define V1003_lbl 28006 `"Agreste de Lagarto"', add
label define V1003_lbl 41036 `"Lapa"', add
label define V1003_lbl 16004 `"Mazagão"', add
label define V1003_lbl 35007 `"Nhandeara"', add
label define V1003_lbl 41009 `"Maringá"', add
label define V1003_lbl 12003 `"Sena Madureira"', add
label define V1003_lbl 24016 `"Litoral Nordeste"', add
label define V1003_lbl 32004 `"Montanha"', add
label define V1003_lbl 27007 `"Traipu"', add
label define V1003_lbl 21002 `"Aglomeração Urbana de São Luís"', add
label define V1003_lbl 23009 `"Baixo Curu"', add
label define V1003_lbl 15021 `"Redenção"', add
label define V1003_lbl 33015 `"Serrana"', add
label define V1003_lbl 28005 `"Tobias Barreto"', add
label define V1003_lbl 13008 `"Rio Preto da Eva"', add
label define V1003_lbl 43030 `"Campanha Central"', add
label define V1003_lbl 33008 `"Santa Maria Madalena"', add
gen V0001_str = string(V0001)

format V0002 %05.0f

gen V0002_str = string(V0002, "%05.0f")
gen V0002_new = V0001_str + V0002_str
destring V0002_new, replace
            
format V1002 %02.0f

gen V1002_str = string(V1002, "%02.0f")
gen V1002_new = V0001_str + V1002_str
destring V1002_new, replace
            
format V1003 %03.0f

gen V1003_str = string(V1003, "%03.0f")
gen V1003_new = V0001_str + V1003_str
destring V1003_new, replace
            
drop V0001_str

replace V0002 = V0002_new
drop V0002_new V0002_str

replace V1002 = V1002_new
drop V1002_new V1002_str

replace V1003 = V1003_new
drop V1003_new V1003_str


label values V0002 V0002_lbl
label values V1002 V1002_lbl
label values V1003 V1003_lbl
