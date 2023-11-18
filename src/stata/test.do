* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
        
quietly infix                ///
  int		V0001		1-2		///
  int		V0002		3-7		///
  int		V0011		8-20		///
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
  using `"../data/microdados/amostra_domicilios_2010_SC.txt"', clear

label var V0219		`"MICROCOMPUTADOR, EXISTÊNCIA"'
label var M0216		`"MARCA DE IMPUTAÇÃO NA V0216  "'
label var V0211		`"ENERGIA ELÉTRICA, EXISTÊNCIA"'
label var V0213		`"RÁDIO, EXISTÊNCIA"'
label var V0300		`"CONTROLE"'
label var V1002		`"CÓDIGO DA MESORREGIÃO"'
label var V0207		`"ESGOTAMENTO SANITÁRIO, TIPO"'
label var V0010		`"PESO AMOSTRAL"'
label var V6531		`"RENDIMENTO DOMICILIAR PER CAPITA EM JULHO DE 2010 "'
label var M0212		`"MARCA DE IMPUTAÇÃO NA V0212 "'
label var M0208		`"MARCA DE IMPUTAÇÃO NA V0208 "'
label var V4002		`"TIPO DE ESPÉCIE"'
label var M0203		`"MARCA DE IMPUTAÇÃO NA V0203 "'
label var V0701		`"DE AGOSTO DE 2009 A JULHO DE 2010, FALECEU ALGUMA PESSOA QUE MORAVA COM VOCÊ(S) (INCLUSIVE CRIANÇAS RECÉM-NASCIDAS E IDOSOS)"'
label var M0205		`"MARCA DE IMPUTAÇÃO NA V0205 "'
label var V0002		`"CÓDIGO DO MUNICÍPIO"'
label var M0211		`"MARCA DE IMPUTAÇÃO NA V0211 "'
label var M0701		`"MARCA DE IMPUTAÇÃO NA V0701  "'
label var M0301		`"MARCA DE IMPUTAÇÃO NA V0301  "'
label var M0214		`"MARCA DE IMPUTAÇÃO NA V0214  "'
label var V0221		`"MOTOCICLETA PARA USO PARTICULAR, EXISTÊNCIA"'
label var V0205		`"BANHEIROS DE USO EXCLUSIVO, NÚMERO "'
label var M2011		`"MARCA DE IMPUTAÇÃO NA V2011"'
label var V0204		`"CÔMODOS COMO DORMITÓRIO, NÚMERO"'
label var M0215		`"MARCA DE IMPUTAÇÃO NA V0215 "'
label var V0001		`"UNIDADE DA FEDERAÇÃO"'
label var V0203		`"CÔMODOS, NÚMERO"'
label var M0218		`"MARCA DE IMPUTAÇÃO NA V0218 "'
label var V0202		`"MATERIAL PREDOMINANTE, PAREDES EXTERNAS"'
label var M0213		`"MARCA DE IMPUTAÇÃO NA V0213 "'
label var M0201		`"MARCA DE IMPUTAÇÃO NA V0201  "'
label var V0208		`"ABASTECIMENTO DE ÁGUA, FORMA"'
label var V0222		`"AUTOMÓVEL PARA USO PARTICULAR, EXISTÊNCIA"'
label var V0301		`"ALGUMA PESSOA QUE MORAVA COM VOCÊ(S) ESTAVA MORANDO EM OUTRO PAÍS EM 31 DE JULHO DE 2010"'
label var M0210		`"MARCA DE IMPUTAÇÃO NA V0210 "'
label var V0209		`"ABASTECIMENTO DE ÁGUA, CANALIZAÇÃO"'
label var M0204		`"MARCA DE IMPUTAÇÃO NA V0204 "'
label var V0214		`"TELEVISÃO, EXISTÊNCIA"'
label var V1004		`"CÓDIGO DA REGIÃO METROPOLITANA"'
label var V6529		`"RENDIMENTO MENSAL DOMICILIAR EM JULHO DE 2010 "'
label var V0220		`"MICROCOMPUTADOR COM ACESSO À INTERNET, EXISTÊNCIA"'
label var M0219		`"MARCA DE IMPUTAÇÃO NA V0219  "'
label var V0217		`"TELEFONE CELULAR, EXISTÊNCIA"'
label var V2011		`"VALOR DO ALUGUEL (EM REAIS)             "'
label var V6530		`"RENDIMENTO DOMICILIAR, SALÁRIOS MÍNIMOS, EM JULHO DE 2010 "'
label var V0210		`"LIXO, DESTINO"'
label var V1001		`"REGIÃO GEOGRÁFICA"'
label var M0206		`"MARCA DE IMPUTAÇÃO NA V0206 "'
label var M0221		`"MARCA DE IMPUTAÇÃO NA V0221  "'
label var V6204		`"DENSIDADE DE MORADOR / DORMITÓRIO  "'
label var M0209		`"MARCA DE IMPUTAÇÃO NA V0209 "'
label var V0401		`"QUANTAS PESSOAS MORAVAM NESTE DOMICÍLIO EM 31 DE JULHO DE 2010"'
label var V6203		`"DENSIDADE DE MORADOR/CÔMODO "'
label var V0215		`"MÁQUINA DE LAVAR ROUPA, EXISTÊNCIA"'
label var M0207		`"MARCA DE IMPUTAÇÃO NA V0207 "'
label var M0202		`"MARCA DE IMPUTAÇÃO NA V0202 "'
label var V0011		`"ÁREA DE PONDERAÇÃO"'
label var M0220		`"MARCA DE IMPUTAÇÃO NA V0220  "'
label var V6600		`"Espécie da Unidade Doméstica"'
label var V0402		`"A RESPONSABILIDADE PELO DOMICÍLIO É DE"'
label var M0222		`"MARCA DE IMPUTAÇÃO NA V0222  "'
label var V0201		`"DOMICÍLIO, CONDIÇÃO DE OCUPAÇÃO"'
label var V0206		`"SANITÁRIO OU BURACO PARA DEJEÇÕES, EXISTÊNCIA"'
label var V0216		`"GELADEIRA, EXISTÊNCIA"'
label var V1006		`"SITUAÇÃO DO DOMICÍLIO"'
label var M0217		`"MARCA DE IMPUTAÇÃO NA V0217  "'
label var V2012		`"ALUGUEL EM Nº DE SALÁRIOS MÍNIMOS "'
label var V1005		`"Situação do setor "'
label var M0402		`"MARCA DE IMPUTAÇÃO NA V0402  "'
label var V0212		`"EXISTÊNCIA DE MEDIDOR OU RELÓGIO, ENERGIA ELÉTRICA, COMPANHIA DISTRIBUIDORA"'
label var V6210		`"ADEQUAÇÃO DA MORADIA"'
label var V4001		`"ESPÉCIE DE UNIDADE VISITADA"'
label var V6532		`"RENDIMENTO DOMICILIAR PER CAPITA, EM Nº DE SALÁRIOS MÍNIMOS, EM JULHO DE 2010 "'
label var M0401		`"MARCA DE IMPUTAÇÃO NA V0401  "'
label var V1003		`"CÓDIGO DA MICRORREGIÃO"'
label var V0218		`"TELEFONE FIXO, EXISTÊNCIA"'

label define V0001 11 `" Rondônia"', add
label define V0001 12 `" Acre"', add
label define V0001 13 `" Amazonas"', add
label define V0001 14 `" Roraima"', add
label define V0001 15 `" Pará"', add
label define V0001 16 `" Amapá"', add
label define V0001 17 `" Tocantins"', add
label define V0001 21 `" Maranhão"', add
label define V0001 22 `" Piauí"', add
label define V0001 23 `" Ceará"', add
label define V0001 24 `" Rio Grande do Norte"', add
label define V0001 25 `" Paraíba"', add
label define V0001 26 `" Pernambuco"', add
label define V0001 27 `" Alagoas"', add
label define V0001 28 `" Sergipe"', add
label define V0001 29 `" Bahia"', add
label define V0001 31 `" Minas Gerais"', add
label define V0001 32 `" Espírito Santo"', add
label define V0001 33 `" Rio de Janeiro"', add
label define V0001 35 `" São Paulo"', add
label define V0001 41 `" Paraná"', add
label define V0001 42 `" Santa Catarina"', add
label define V0001 43 `" Rio Grande do Sul"', add
label define V0001 50 `" Mato Grosso do Sul"', add
label define V0001 51 `" Mato Grosso"', add
label define V0001 52 `" Goiás"', add
label define V0001 53 `" Distrito Federal"', add
* label define V0002 nan `"nan"', add
* label define V0011 nan `"nan"', add
* label define V0300 nan `"nan"', add
* label define V0010 nan `"nan"', add
label define V1001 1 `" Região norte (uf=11 a 17)"', add
label define V1001 2 `" Região nordeste (uf=21 a 29)  "', add
label define V1001 3 `" Região sudeste (uf=31 a 33 e 35)"', add
label define V1001 4 `" Região sul (uf=41 a 43)"', add
label define V1001 5 `" Região centro"', add
* label define V1002 A relação de códigos encontra `"se no arquivo:"', add
* label define V1003 A relação de códigos encontra `"se no arquivo:"', add
* label define V1004 A relação de códigos encontra `"se no arquivo:"', add
label define V1006 1 `" Urbana"', add
label define V1006 2 `" Rural"', add
label define V4001 01 `" Domicílio particular permanente ocupado "', add
label define V4001 02 `" Domicílio particular permanente ocupado sem entrevista realizada "', add
label define V4001 05 `" Domicílio particular improvisado ocupado "', add
label define V4001 06 `" Domicílio coletivo com morador"', add
label define V4002 11 `" Casa"', add
label define V4002 12 `" Casa de vila ou em condomínio"', add
label define V4002 13 `" Apartamento"', add
label define V4002 14 `" Habitação em: casa de cômodos, cortiço ou cabeça de porco"', add
label define V4002 15 `" Oca ou maloca "', add
label define V4002 51 `" Tenda ou barraca"', add
label define V4002 52 `" Dentro de estabelecimento"', add
label define V4002 53 `" Outro (vagão, trailer, gruta, etc)"', add
label define V4002 61 `" Asilo, orfanato e similares  com morador"', add
label define V4002 62 `" Hotel, pensão e similares com morador"', add
label define V4002 63 `" Alojamento de trabalhadores com morador"', add
label define V4002 64 `" Penitenciária, presídio ou casa de detenção com morador"', add
label define V4002 65 `" Outro com morador"', add
label define V0201 1 `" Próprio de algum morador "', add
label define V0201 2 `" Próprio de algum morador "', add
label define V0201 3 `" Alugado"', add
label define V0201 4 `" Cedido por empregador"', add
label define V0201 5 `" Cedido de outra forma"', add
label define V0201 6 `" Outra condição"', add
label define V0201 .a `"Branco"', add
* label define V2011 nan `"nan"', add
* label define V2012 nan `"nan"', add
label define V0202 1 `" Alvenaria com revestimento"', add
label define V0202 2 `" Alvenaria sem revestimento"', add
label define V0202 3 `" Madeira apropriada para construção (aparelhada)"', add
label define V0202 4 `" Taipa revestida"', add
label define V0202 5 `" Taipa não revestida"', add
label define V0202 6 `" Madeira aproveitada"', add
label define V0202 7 `" Palha"', add
label define V0202 8 `" Outro material"', add
label define V0202 9 `" Sem parede"', add
label define V0202 .a `"Branco"', add
label define V0203 .a `" 1 a 30"', add
* label define V6203 nan `"nan"', add
label define V0204 .a  `" 1 a 15"', add
* label define V6204 nan `"nan"', add
label define V0205 0 `" Zero banheiros"', add
label define V0205 1 `" Um banheiro"', add
label define V0205 2 `" Dois banheiros"', add
label define V0205 3 `" Três banheiros"', add
label define V0205 4 `" Quatro banheiros"', add
label define V0205 5 `" Cinco banheiros"', add
label define V0205 6 `" Seis banheiros"', add
label define V0205 7 `" Sete banheiros"', add
label define V0205 8 `" Oito banheiros"', add
label define V0205 9 `" Nove ou mais banheiros"', add
label define V0205 .a `"Branco"', add
label define V0206 1 `" Sim"', add
label define V0206 2 `" Não"', add
label define V0206 .a `"Branco"', add
label define V0207 1 `" Rede geral de esgoto ou pluvial"', add
label define V0207 2 `" Fossa séptica"', add
label define V0207 3 `" Fossa rudimentar"', add
label define V0207 4 `" Vala"', add
label define V0207 5 `" Rio, lago ou mar"', add
label define V0207 6 `" Outro "', add
label define V0207 .a `"Branco"', add
label define V0208 01 `" Rede geral de distribuição"', add
label define V0208 02 `" Poço ou nascente na propriedade"', add
label define V0208 03 `" Poço ou nascente fora da propriedade"', add
label define V0208 04 `" Carro"', add
label define V0208 05 `" Água da chuva armazenada em cisterna"', add
label define V0208 06 `" Água da chuva armazenada de outra forma"', add
label define V0208 07 `" Rios, açudes, lagos e igarapés"', add
label define V0208 08 `" Outra "', add
label define V0208 09 `" Poço ou nascente na aldeia"', add
label define V0208 10 `" Poço ou nascente fora da aldeia"', add
label define V0208 .a `"Branco"', add
label define V0209 1 `" Sim, em pelo menos um cômodo"', add
label define V0209 2 `" Sim, só na propriedade ou terreno"', add
label define V0209 3 `" Não"', add
label define V0209 .a `"Branco"', add
label define V0210 1 `" Coletado diretamente por serviço de limpeza"', add
label define V0210 2 `" Colocado em caçamba de serviço de limpeza"', add
label define V0210 3 `" Queimado (na propriedade)"', add
label define V0210 4 `" Enterrado (na propriedade)"', add
label define V0210 5 `" Jogado em terreno baldio ou logradouro"', add
label define V0210 6 `" Jogado em rio, lago ou mar"', add
label define V0210 7 `" Tem outro destino"', add
label define V0210 .a `"Branco"', add
label define V0211 1 `" Sim, de companhia distribuidora"', add
label define V0211 2 `" Sim, de outras fontes"', add
label define V0211 3 `" Não existe energia elétrica"', add
label define V0211 .a `"Branco"', add
label define V0212 1 `" Sim, de uso exclusivo"', add
label define V0212 2 `" Sim, de uso comum "', add
label define V0212 3 `" Não tem medidor ou relógio"', add
label define V0212 .a `"Branco"', add
label define V0213 1 `" Sim"', add
label define V0213 2 `" Não"', add
label define V0213 .a `"Branco"', add
label define V0214 1 `" Sim"', add
label define V0214 2 `" Não"', add
label define V0214 .a `"Branco"', add
label define V0215 1 `" Sim"', add
label define V0215 2 `" Não"', add
label define V0215 .a `"Branco"', add
label define V0216 1 `" Sim"', add
label define V0216 2 `" Não"', add
label define V0216 .a `"Branco"', add
label define V0217 1 `" Sim"', add
label define V0217 2 `" Não"', add
label define V0217 .a `"Branco"', add
label define V0218 1 `" Sim"', add
label define V0218 2 `" Não"', add
label define V0218 .a `"Branco"', add
label define V0219 1 `" Sim"', add
label define V0219 2 `" Não"', add
label define V0219 .a `"Branco"', add
label define V0220 1 `" Sim"', add
label define V0220 2 `" Não"', add
label define V0220 .a `"Branco"', add
label define V0221 1 `" Sim"', add
label define V0221 2 `" Não"', add
label define V0221 .a `"Branco"', add
label define V0222 1 `" Sim"', add
label define V0222 2 `" Não"', add
label define V0222 .a `"Branco"', add
label define V0301 1 `" Sim"', add
label define V0301 2 `" Não"', add
label define V0301 .a `"Branco"', add
* label define V0401 nan `"nan"', add
label define V0402 1 `" Apenas um morador"', add
label define V0402 2 `" Mais de um morador"', add
label define V0402 9 `" Ignorado"', add
label define V0402 .a `"Branco"', add
label define V0701 1 `" Sim"', add
label define V0701 2 `" Não"', add
label define V0701 .a `"Branco"', add
* label define V6529 nan `"nan"', add
* label define V6530 nan `"nan"', add
* label define V6531 nan `"nan"', add
* label define V6532 nan `"nan"', add
label define V6600 1 `" Unipessoal"', add
label define V6600 2 `" Nuclear"', add
label define V6600 3 `" Estendida"', add
label define V6600 4 `" Composta"', add
label define V6600 .a `"Branco (Domicílio Coletivo)"', add
label define V6210 1 `"  Adequada"', add
label define V6210 2 `"  Semi"', add
label define V6210 3 `"  Inadequada"', add
label define V6210 .a `"Branco"', add
label define M0201 1 `" Sim"', add
label define M0201 2 `" Não"', add
label define M2011 1 `" Sim"', add
label define M2011 2 `" Não"', add
label define M0202 1 `" Sim"', add
label define M0202 2 `" Não"', add
label define M0203 1 `" Sim"', add
label define M0203 2 `" Não"', add
label define M0204 1 `" Sim"', add
label define M0204 2 `" Não"', add
label define M0205 1 `" Sim"', add
label define M0205 2 `" Não"', add
label define M0206 1 `" Sim"', add
label define M0206 2 `" Não"', add
label define M0207 1 `" Sim"', add
label define M0207 2 `" Não"', add
label define M0208 1 `" Sim"', add
label define M0208 2 `" Não"', add
label define M0209 1 `" Sim"', add
label define M0209 2 `" Não"', add
label define M0210 1 `" Sim"', add
label define M0210 2 `" Não"', add
label define M0211 1 `" Sim"', add
label define M0211  2 `" Não  "', add
label define M0212 1 `" Sim"', add
label define M0212 2 `" Não"', add
label define M0213 1 `" Sim"', add
label define M0213 2 `" Não"', add
label define M0214 1 `" Sim"', add
label define M0214 2 `" Não"', add
label define M0215 1 `" Sim"', add
label define M0215 2 `" Não"', add
label define M0216 1 `" Sim"', add
label define M0216 2 `" Não"', add
label define M0217 1 `" Sim"', add
label define M0217 2 `" Não"', add
label define M0218 1 `" Sim"', add
label define M0218 2 `" Não"', add
label define M0219 1 `" Sim"', add
label define M0219 2 `" Não"', add
label define M0220 1 `" Sim"', add
label define M0220  2 `" Não  "', add
label define M0221 1 `" Sim"', add
label define M0221 2 `" Não"', add
label define M0222 1 `" Sim"', add
label define M0222 2 `" Não"', add
label define M0301 1 `" Sim"', add
label define M0301 2 `" Não"', add
label define M0401 1 `" Sim"', add
label define M0401 2 `" Não"', add
label define M0402 1 `" Sim"', add
label define M0402 2 `" Não"', add
label define M0701 1 `" Sim"', add
label define M0701 2 `" Não"', add
label define V1005 1  `" Área urbanizada"', add
label define V1005 2  `" Área não urbanizada"', add
label define V1005 3  `" Área urbanizada isolada"', add
label define V1005 4  `" Área rural de extensão urbana"', add
label define V1005 5  `" Aglomerado rural (povoado)"', add
label define V1005 6  `" Aglomerado rural (núcleo)"', add
label define V1005 7  `" Aglomerado rural (outros)"', add
label define V1005 8  `" Área rural exclusive aglomerado rural"', add
label define V1005 .a `"Branco"', add