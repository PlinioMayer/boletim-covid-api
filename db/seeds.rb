# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

State.create!([
  {
    name: 'Acre',
    population: 773559,
    region: 'Norte'
  },
  {
    name: 'Alagoas',
    population: 3351543,
    region: 'Nordeste'
  },
  {
    name: 'Amapá',
    population: 669526,
    region: 'Norte'
  },
  {
    name: 'Amazonas',
    population: 4207714,
    region: 'Norte'
  },
  {
    name: 'Bahia',
    population: 14016906,
    region: 'Nordeste'
  },
  {
    name: 'Ceará',
    population: 8452381,
    region: 'Nordeste'
  },
  {
    name: 'Espírito Santo',
    population: 3514952,
    region: 'Sudeste'
  },
  {
    name: 'Goiás',
    population: 6003788,
    region: 'Centro Oeste'
  },
  {
    name: 'Maranhão',
    population: 6574789,
    region: 'Nordeste'
  },
  {
    name: 'Mato Grosso',
    population: 3035122,
    region: 'Centro Oeste'
  },
  {
    name: 'Mato Grosso do Sul',
    population: 2449024,
    region: 'Centro Oeste'
  },
  {
    name: 'Minas Gerais',
    population: 19597330,
    region: 'Sudeste'
  },
  {
    name: 'Pernambuco',
    population: 8796448,
    region: 'Nordeste'
  },
  {
    name: 'Paraná',
    population: 10444526,
    region: 'SUL'
  },
  {
    name: 'Paraíba',
    population: 3766528,
    region: 'Nordeste'
  },
  {
    name: 'Pará',
    population: 7581051,
    region: 'Norte'
  },
  {
    name: 'Piauí',
    population: 3118360,
    region: 'Nordeste'
  },
  {
    name: 'Rio de Janeiro',
    population: 15989929,
    region: 'dSudeste'
  },
  {
    name: 'Rio Grande do Norte',
    population: 3168027,
    region: 'Nordeste'
  },
  {
    name: 'Rio Grande do Sul',
    population: 11422973,
    region: 'SUL'
  },
  {
    name: 'Rondônia',
    population: 1562409,
    region: 'Norte'
  },
  {
    name: 'Roraima',
    population: 450479,
    region: 'Norte'
  },
  {
    name: 'Santa Catarina',
    population: 6248436,
    region: 'SUL'
  },
  {
    name: 'São Paulo',
    population: 41262199,
    region: 'SUL'
  },
  {
    name: 'Sergipe',
    population: 2068017,
    region: 'Nordeste'
  },
  {
    name: 'Tocantins',
    population: 1590248,
    region: 'Norte'
  },
  {
    name: 'Distrito Federal',
    population: 2570160,
    region: 'Centro Oeste'
  }
])

City.create!([
  {
    name: 'Rio Branco',
    population: 413418,
    state_id: 1
  },
  {
    name: 'Maceió',
    population: 1025360,
    state_id: 2
  },
  {
    name: 'Macapá',
    population: 512902,
    state_id: 3
  },
  {
    name: 'Manaus',
    population: 2219580,
    state_id: 4
  },
  {
    name: 'Salvador',
    population: 2886698,
    state_id: 5
  },
  {
    name: 'Fortaleza',
    population: 2686612,
    state_id: 6
  },
  {
    name: 'Vitória',
    population: 365855,
    state_id: 7
  },
  {
    name: 'Goiânia',
    population: 1536097,
    state_id: 8
  },
  {
    name: 'São Luís',
    population: 1108975,
    state_id: 9
  },
  {
    name: 'Cuiabá',
    population: 618124,
    state_id: 10
  },
  {
    name: 'Campo Grande',
    population: 906092,
    state_id: 11
  },
  {
    name: 'Belo Horizonte',
    population: 2521564,
    state_id: 12
  },
  {
    name: 'Recife',
    population: 1653461,
    state_id: 13
  },
  {
    name: 'Curitiba',
    population: 1948626,
    state_id: 14
  },
  {
    name: 'João Pessoa',
    population: 817511,
    state_id: 15
  },
  {
    name: 'Belém',
    population: 1499641,
    state_id: 16
  },
  {
    name: 'Terezina',
    population: 868075,
    state_id: 17
  },
  {
    name: 'Rio de Janeiro',
    population: 6747815,
    state_id: 18
  },
  {
    name: 'Natal',
    population: 890480,
    state_id: 19
  },
  {
    name: 'Porto Alegre',
    population: 1488252,
    state_id: 20
  },
  {
    name: 'Porto Velho',
    population: 539354,
    state_id: 21
  },
  {
    name: 'Boa Vista',
    population: 419652,
    state_id: 22
  },
  {
    name: 'Florianópolis',
    population: 508826,
    state_id: 23
  },
  {
    name: 'São Paulo',
    population: 12325232,
    state_id: 24
  },
  {
    name: 'Aracajú',
    population: 664908,
    state_id: 25
  },
  {
    name: 'Palmas',
    population: 306296,
    state_id: 26
  },
  {
    name: 'Brasília',
    population: 3055149,
    state_id: 27
  }
])

RiskGroup.create!([
  {
    name: 'Idoso',
  },
  {
    name: 'Cardíaco'
  },
  {
    name: 'Doente Pulmonar'
  },
  {
    name: 'Tabagista'
  },
  {
    name: 'Diabético'
  },
  {
    name: 'Imunodepressivo'
  },
  {
    name: 'Doente Renal'
  },
  {
    name: 'Doente Hepático'
  },
  {
    name: 'Doente Neurodegenerativo'
  },
  {
    name: 'Trabalhador da Saúde'
  }
])

Case.create!([
  {
    name: 'Recuperado'
  },
  {
    name: 'Óbito'
  },
  {
    name: 'Ativo'
  }
])

HealthCenter.create!([
  {
    name: 'Posto 1',
    total: 150,
    occupied: 30,
    address: 'SHCN, Asa Norte',
    city_id: 27
  },
  {
    name: 'Posto 3',
    total: 250,
    occupied: 70,
    address: 'Riacho Fundo, QN 01, Conj 32',
    city_id: 27
  },
  {
    name: 'Posto 7',
    total: 220,
    occupied: 40,
    address: 'SHCL, Conj E, Lote 5, Asa Sul',
    city_id: 27
  },
  {
    name: 'Posto 4',
    total: 170,
    occupied: 80,
    address: 'Vila Planalto Acamp Pacheco Fernandes',
    city_id: 27
  },
  {
    name: 'Posto 5',
    total: 210,
    occupied: 80,
    address: 'SGAS II',
    city_id: 27
  },
])

Person.create!([
  {
    cpf: "6185391017",
    name: "Jose Costa",
    gender: "Masculino",
    race: "Parda",
    birthdate: "1998-04-06",
    city_id: 27,
    case_id: 1
  },
  {
    cpf: "12345678901",
    name: "Plínio Mayer",
    gender: "Masculino",
    race: "Branca",
    birthdate: "1998-04-06",
    city_id: 27,
    case_id: 1
  },
  {
    cpf: "098765432123",
    name: "Andre Braga",
    gender: "Masculino",
    race: "Negra",
    birthdate: "1997-12-23",
    city_id: 27,
    case_id: 3
  },
  {
    cpf: "321654987210",
    name: "Maria Silva",
    gender: "Feminino",
    race: "Branca",
    birthdate: "2000-10-18",
    city_id: 27,
    case_id: 2
  },
  {
    cpf: "321654987210",
    name: "Joênia Wapichana",
    gender: "Feminino",
    race: "Indigena",
    birthdate: "1982-07-13",
    city_id: 27,
    case_id: 3
  },
  {
    cpf: "98485838401",
    name: "Luisa Machado",
    gender: "Feminino",
    race: "Parda",
    birthdate: "1988-01-28",
    city_id: 27,
    case_id: 3
  },
  {
    cpf: "34586402623",
    name: "Pedro dos Santos",
    gender: "Masculino",
    race: "Negro",
    birthdate: "1952-07-13",
    city_id: 27,
    case_id: 3
  },
  {
    cpf: "23459674301",
    name: "Célia Xakriabá",
    gender: "Feminino",
    race: "Indigena",
    birthdate: "1994-02-22",
    city_id: 27,
    case_id: 3
  },
  {
    cpf: "04099523110",
    name: "Marco Nemetala",
    gender: "Masculino",
    race: "Branco",
    birthdate: "1999-12-18",
    city_id: 27,
    case_id: 3
  }
])

PeopleRiskGroup.create!([
  {
    person_id: 3,
    risk_group_id: 3
  },
  {
    person_id: 3,
    risk_group_id: 4
  },
  {
    person_id: 4,
    risk_group_id: 10
  },
  {
    person_id: 4,
    risk_group_id: 5
  },
  {
    person_id: 2,
    risk_group_id: 4
  },
  {
    person_id: 7,
    risk_group_id: 1
  },
])

Bed.create!([
  {
    person_id: 3,
    health_center_id: 1
  },
  {
    person_id: 5,
    health_center_id: 1
  },
  {
    person_id: 6,
    health_center_id: 2
  },
  {
    person_id: 7,
    health_center_id: 2
  },
  {
    person_id: 8,
    health_center_id: 2
  }
])

Doctor.create!([
  {
    registration: "1234",
    name: "Antonio Garcia",
    birthdadte: "1970-12-03",
    registration_date: "2019-03-04",
    health_center_id: 1
  },
  {
    registration: "4321",
    name: "Bruno Barbosa",
    birthdadte: "1972-03-21",
    registration_date: "2018-02-10",
    health_center_id: 1
  },
  {
    registration: "2413",
    name: "Linda Alves",
    birthdadte: "1958-10-23",
    registration_date: "2020-01-04",
    health_center_id: 2
  },
  {
    registration: "1423",
    name: "Liandre Andrade",
    birthdadte: "1992-02-12",
    registration_date: "2016-07-24",
    health_center_id: 2
  },
  {
    registration: "3214",
    name: "Pedro Leão",
    birthdadte: "1983-01-02",
    registration_date: "2016-12-24",
    health_center_id: 2
  },
])

EmergencialSupport.create!([
  {
    value: 600,
    date: "2020-05-10",
    person_id: 1
  },
  {
    value: 600,
    date: "2020-06-10",
    person_id: 1
  },
  {
    value: 600,
    date: "2020-07-10",
    person_id: 1
  },
  {
    value: 600,
    date: "2020-05-10",
    person_id: 2
  },
  {
    value: 600,
    date: "2020-06-10",
    person_id: 2
  },
])

Phone.create!([
  {
    number: "98982303109",
    person_id: 1
  },
  {
    number: "61983758763",
    person_id: 2
  },
  {
    number: "61981177718",
    person_id: 9
  },
  {
    number: "6140031515",
    person_id: 9
  },
  {
    number: "6161981512375",
    person_id: 2
  },
])

Test.create!([
  {
    result: 0,
    testtype:"RT-PCR",
    person_id: 1
  },
  {
    result: 0,
    testtype:"Sorologia",
    person_id: 2
  },
  {
    result: 1,
    testtype:"RT-PCR",
    person_id: 3
  },
  {
    result: 1,
    testtype:"Teste rápido",
    person_id: 1
  },
  {
    result: 1,
    testtype:"Sorologia",
    person_id: 2
  },
])