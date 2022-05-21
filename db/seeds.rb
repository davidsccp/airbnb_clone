# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Offer.all.destroy_all

puts "Seeding Offers................"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "Quarto com 1 cama de solteiro em condomínio com portaria 24h.
  Próximo a Av Paulista e ao lado do shopping Frei Caneca.
  Moro só com meu pequeno cão, que é bem tranquilo.
  A cozinha possui geladeira, congelador e somente panelas elétricas, onde o hóspede pode preparar suas refeições.
  Alugo um outro quarto neste mesmo apartamento.
  Uma parte da sala foi adaptada com biombo e tatame onde o anfitrião repousa.",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Quarto inteiro em condomínio",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://cf.bstatic.com/images/hotel/max1280x900/159/159765996.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "O apartamento mobiliado está localizado à cerca de 600 metros do Metrô Sé e ao lado de diversos comércios, meios de transporte, parques, pontos turísticos e edifícios empresariais. Caminhe a pé até o Bairro da Liberdade, Poupa Tempo e Rua 25 de Março! Aproveite uma suíte agradável com cama aconchegante, sacada, ar-condicionado, Smart TV, além de muitas outras comodidades.",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Estúdio no Centro, a passos da Rua 25 de Março",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://cf.bstatic.com/images/hotel/max1280x900/175/175477013.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "O apartamento mobiliado está localizado à cerca de 600 metros do Metrô Sé e ao lado de diversos comércios, meios de transporte, parques, pontos turísticos e edifícios empresariais. Caminhe a pé até o Bairro da Liberdade, Poupa Tempo e Rua 25 de Março! Aproveite uma suíte agradável com cama aconchegante, sacada, ar-condicionado, Smart TV, além de muitas outras comodidades.",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Conforto e bem localizado",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://cf.bstatic.com/images/hotel/max1280x900/159/159921701.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "Estamos fazendo higienização de todas as superficies com alcool 70 como recomendação da organização mundial da saude (oms).
  Predio recem construido,vitacon,studio com todas as comodidades,a dois quarterões da marginal tiete.
  Transporte:A cerca de 10 minutos de carro de 4 grandes estações de metro,possui linhas de onibus passando na porta do edificio.
  Shopping center norte,shopping D,10 minutos de carro da avenida paulista.
  Proibido fumar",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Studio moderno no centro de tudo",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://cf.bstatic.com/images/hotel/max1280x900/159/159921614.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "O apartamento fica de frente para à praça Buenos Aires. Tem tudo próximo: Shopping, restaurantes (Praça Vilaboim) e arredores. Farmácia em frente, lojas de pets e supermercados. Próximo ao Estadio do Pacaembu (museu do futebol), Univesidades Mackenzie e FAAP e Hospitais. Tranquilo para passeios a pé. Possui Televisão com net e frigobar. São fornecidas roupas de cama e toalhas. Livros à disposição. Espaço ventilado e muito aconchegante. ",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Aconchegante suite em ótima localização",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://cf.bstatic.com/images/hotel/max1280x900/159/159921591.jpg"

)

puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "Fácil acesso, via ônibus e metrô, próximo à Rua 25 de março, Mercado Municipal de São paulo, Av. Ipiranga, estou bem pertinho aos principais pontos da região central de São Paulo. - Aceitamos animais de pequeno porte.

  A administração dessa hospedagem é feito pela TrevizZo isso significa que vai ser uma experiencia diferenciada com muuuita emoção...",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Viva no Centro onde tudo acontece",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://media-cdn.tripadvisor.com/media/vr-splice-j/0a/32/fd/2a.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "Um cantinho acolhedor para chamar de seu, a duas quadras da Av. Paulista, próximo ao metrô, a bancos, supermercados,hospital das clínicas, farmácias, lojas, restaurantes, shoppings e todo o tipo de entretenimento e cultura que a cidade oferece. Quarto e banheiro privativos, dentro de um apartamento com portaria 24 horas, com wi-fi, cozinha,lavanderia e sala de TV compartilhada. Sou uma anfitriã bem humorada, divertida que adora receber bem e sempre pronta a ajudar !",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Quarto c/ banheiro,Jardins,2 quadras Paulista e HC",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://media-cdn.tripadvisor.com/media/vr-splice-j/0a/32/fc/29.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "Estamos fazendo higienização de todas as superficies com alcool 70 como recomendação da organização mundial da saude (oms).
  Predio recem construido,vitacon,studio com todas as comodidades,a dois quarterões da marginal tiete.
  Transporte:A cerca de 10 minutos de carro de 4 grandes estações de metro,possui linhas de onibus passando na porta do edificio.
  Shopping center norte,shopping D,10 minutos de carro da avenida paulista.
  Proibido fumar",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Aconchegante! 3 min. metrô,10min.Shop.Higienópolis",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://media-cdn.tripadvisor.com/media/vr-splice-j/0a/32/fc/8d.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "O apto está 300m do metrô Marechal Deodoro, 10min a pé para o Shop. Higienópolis, em frente ao prédio tem o
  Teatro São Pedro, tem supermercados, farmácias e restaurantes. O quarto tem uma vista linda, ventilação ótima.
  O banheiro é compartilhado comigo.
  A porta do quarto tem chaves, o prédio possui sistema de câmeras por todo parte, super seguro.

  Estamos próximos ao Espaço das Américas, Aliance Parque, Pacaembu, Teatro, bares, restaurantes. Super fácil acesso
  Proibido fumar",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Studio moderno no centro de tudo",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://media-cdn.tripadvisor.com/media/vr-splice-j/03/5a/ef/a1.jpg"

)
puts "offer #{offer.id} is created"

offer = Offer.create(
  address: Faker::Address.street_address,
  price: Faker::Number.decimal(l_digits: 2),
  description: "Meu espaço é pequeno mas possui tudo que você precisará para sentir-se em casa. O apartamento é arejado, limpo e totalmente reformado. Possui ventiladores, cozinha completa, internet (50 megas) de alta velocidade.
  O Condominio-Edificio Alvorada tem porteiro 24 horas por dia e está impecavel... Lindo!
  A proximidade com ruas boêmias do cena noturna de São Paulo, permitira você ir a pé para os lugares mais badalados da Bela Vista, como a rua Augusta, Frei Caneca e Paulista.",
  capacity: Faker::Number.between(from: 1, to: 10),
  title: "Há 10 minutos (a pe) da avenida Paulista",
  state: "SP",
  city: "São Paulo",
  user_id: 1
  photo: "https://s3.amazonaws.com/static.nidoimovel.com.br/05049e90fa4f5039a8cadc6acbb4b2cc/imovel/SF/SF12908/SF12908006.jpg?1560351263"

)
puts "offer #{offer.id} is created"


puts "done"
