# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
me = Customer.create(
  {
    first_name: 'Michal',
    last_name: 'Bryxí',
    note: 'Já a jenom já',
    birth: '1986-03-18'
  }
)
john = Customer.create(
  {
    first_name: 'John',
    last_name: 'Doe',
    note: 'Somebody',
    birth: '2001-05-18'
  }
)
jane = Customer.create(
  {
    first_name: 'Jane',
    last_name: 'Doe',
    note: 'Somebody',
    birth: '2001-09-18'
  }
)

mirek = Employee.create(
  {
    first_name: 'Mirek',
    last_name: 'Kubelka',
    photo_url: 'http://placekitten.com/g/64/64'
  }
)

my_visit = Visit.create(
  {
    note: 'Příjemná návštěva',
    customer: me,
    employee: mirek
  }
)
johns_visit = Visit.create(
  {
    note: 'John Doe je zde',
    customer: john,
    employee: mirek
  }
)
sampon = Item.create(
  {
    name: 'Šampón',
    description: 'Vytváří šampónky',
    selling_price: 789.0,
    unlimited: false,
    barcode: '20055318',
  }
)
strihani = Item.create(
  {
    name: 'Stříhání standard',
    description: 'Prostě nůžkama',
    selling_price: 100.0,
    unlimited: true,
    barcode: '203757723572',
  }
)
barva = Item.create(
  {
    name: 'Barva na vlasy',
    description: 'Intensive mega color creme',
    selling_price: 999.0,
    unlimited: false,
  }
)
kondicioner = Item.create(
  {
    name: 'Kondicioner',
    description: 'Intensive mega color creme',
    selling_price: 100,
    unlimited: false,
  }
)
Sell.create(
  [
    {item: sampon, visit: my_visit, count: 1, price: 234},
    {item: strihani, visit: my_visit, count: 2, price: 567}
  ]
)
### END OF TESTING DATA ###
Customer.create(
[
  {
    first_name: "2nove zakaznice",
    phone: "777588633",
    mail: "",
  },
  {
    first_name:"Alblová Petra",
    phone:"728735501",
    mail:"a.pesulka@seznam.cz",
  },
  {
    first_name:"Aleš Volmut",
    phone:"723264446",
    mail:"",
  },
  {
    first_name:"Anatoli Resakž",
    phone:"774080516",
    mail:"",
  },
  {
    first_name:"Aneta Benediktová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Anna Přibylova",
    phone:"",
    mail:"",
  },
  {
    first_name:"Balcar",
    phone:"uložen v mobilu",
    mail:"",
  },
  {
    first_name:"Balcar",
    phone:"720313006",
    mail:"",
  },
  {
    first_name:"Balcar",
    phone:"",
    mail:"jan.balcar.info@gmail.com",
  },
  {
    first_name:"Bandyová",
    phone:"732144200",
    mail:"",
  },
  {
    first_name:"Baroňová Veronika",
    phone:"604642849",
    mail:"",
  },
  {
    first_name:"Baroňová Veronika",
    phone:"",
    mail:"baronova@seznam.cz",
  },
  {
    first_name:"Barták",
    phone:"724675966",
    mail:"",
  },
  {
    first_name:"Bartošová Monika",
    phone:"731754884",
    mail:"",
  },
  {
    first_name:"barva Janě",
    phone:"",
    mail:"",
  },
  {
    first_name:"barva Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"Baumruk",
    phone:"728308605",
    mail:"",
  },
  {
    first_name:"Baxová",
    phone:"607707643",
    mail:"",
  },
  {
    first_name:"běhounek aleš",
    phone:"732982789",
    mail:"",
  },
  {
    first_name:"Bělohlav",
    phone:"775087100",
    mail:"",
  },
  {
    first_name:"Beneš",
    phone:"721750659",
    mail:"",
  },
  {
    first_name:"Benešová Andrea, NK",
    phone:"773974740",
    mail:"",
  },
  {
    first_name:"Benýšková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Benýšková Lucie",
    phone:"607822975",
    mail:"luciasci@seznam.cz",
  },
  {
    first_name:"Beránková",
    phone:"606794053",
    mail:"",
  },
  {
    first_name:"Beránková",
    phone:"777953231",
    mail:"",
  },
  {
    first_name:"Beránková",
    phone:"",
    mail:"berydesigner@seznam.cz",
  },
  {
    first_name:"Berešová - k TOMOVI",
    phone:"724822985",
    mail:"",
  },
  {
    first_name:"Berešová Markéta",
    phone:"724822985",
    mail:"",
  },
  {
    first_name:"Berešová Markéta",
    phone:"732721139",
    mail:"marketa.beresova@centrum.cz",
  },
  {
    first_name:"Bergerová",
    phone:"602870106",
    mail:"",
  },
  {
    first_name:"Bernardínová",
    phone:"604177402",
    mail:"",
  },
  {
    first_name:"Bernardínová",
    phone:"606630030",
    mail:"",
  },
  {
    first_name:"Beštová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Bihariová",
    phone:"739650512",
    mail:"redakini108@gmail.com",
  },
  {
    first_name:"Bihariová",
    phone:"606630030",
    mail:"biharidominika@seznam.cz",
  },
  {
    first_name:"Bílý",
    phone:"722546399",
    mail:"radimbily@seznam.cz",
  },
  {
    first_name:"Bílý (tomovo kamarád)",
    phone:"",
    mail:"",
  },
  {
    first_name:"Bínová Olga",
    phone:"728176151",
    mail:"",
  },
  {
    first_name:"Bisera Haydaroglu",
    phone:"608114294",
    mail:"biserahaydaroglu@centrum.cz",
  },
  {
    first_name:"Bláha",
    phone:"777247163",
    mail:"",
  },
  {
    first_name:"Bláhová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Bláhová + přítel",
    phone:"776665799",
    mail:"",
  },
  {
    first_name:"Blankenburgová Adéla",
    phone:"721847834",
    mail:"",
  },
  {
    first_name:"Blažková",
    phone:"603378810",
    mail:"verusblazkova@seznam.cz",
  },
  {
    first_name:"Bludovská Monika",
    phone:"728645597",
    mail:"",
  },
  {
    first_name:"Bludovská Monika",
    phone:"728645597",
    mail:"bludovskam@email.cz",
  },
  {
    first_name:"Bočková",
    phone:"602390831",
    mail:"",
  },
  {
    first_name:"Bodrová Václav",
    phone:"775337626",
    mail:"vaclav.bodrov@g2studio.cz",
  },
  {
    first_name:"Bodrovova",
    phone:"775937621",
    mail:"",
  },
  {
    first_name:"Bodrovovová Jitka",
    phone:"775937621",
    mail:"jitka.bodrov@email.cz",
  },
  {
    first_name:"Bohdanecký Petr",
    phone:"608131982",
    mail:"",
  },
  {
    first_name:"Brabcová Mar.",
    phone:"775220044",
    mail:"",
  },
  {
    first_name:"Brandlová",
    phone:"736675476",
    mail:"",
  },
  {
    first_name:"Brandlová",
    phone:"",
    mail:"michaela.brandlova@seznam.cz",
  },
  {
    first_name:"Brejchová",
    phone:"603586976",
    mail:"",
  },
  {
    first_name:"Brejchová Martina k MM",
    phone:"603586976",
    mail:"",
  },
  {
    first_name:"Brejchová Martina k MM",
    phone:"",
    mail:"sagahell@seznam.cz",
  },
  {
    first_name:"Brusmanová",
    phone:"608208814",
    mail:"",
  },
  {
    first_name:"Brusmanová",
    phone:"",
    mail:"brussi@centrum.cz",
  },
  {
    first_name:"Bryndačová",
    phone:"604323683",
    mail:"",
  },
  {
    first_name:"Burian Lukáš",
    phone:"602672318",
    mail:"",
  },
  {
    first_name:"Buriánek",
    phone:"607270686",
    mail:"vitb@email.cz",
  },
  {
    first_name:"Caicová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Caisová",
    phone:"607114081",
    mail:"",
  },
  {
    first_name:"Caisová",
    phone:"",
    mail:"mcaisova@seznam.cz",
  },
  {
    first_name:"Cibulková Jana",
    phone:"777068621",
    mail:"",
  },
  {
    first_name:"Ciegler",
    phone:"",
    mail:"",
  },
  {
    first_name:"Cieslarová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Cígler Tomáš",
    phone:"737776430",
    mail:"cigler.tomas@gmail.com",
  },
  {
    first_name:"Cíglerová Anna",
    phone:"737776430",
    mail:"",
  },
  {
    first_name:"Cíglerová Anna",
    phone:"723023609",
    mail:"anncig@seznam.cz",
  },
  {
    first_name:"Cimrmanová",
    phone:"727940292",
    mail:"",
  },
  {
    first_name:"Cipřišová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Color Zoom Show",
    phone:"",
    mail:"",
  },
  {
    first_name:"Cvrček",
    phone:"736539719",
    mail:"",
  },
  {
    first_name:"Cvrček Antonín",
    phone:"603 77 55 90",
    mail:"",
  },
  {
    first_name:"Cvrček Josef",
    phone:"736539719",
    mail:"illk@centrum.cz",
  },
  {
    first_name:"Čabaková, NK",
    phone:"777626451",
    mail:"",
  },
  {
    first_name:"Čechová Olga",
    phone:"728212403",
    mail:"cecholga@seznam.cz",
  },
  {
    first_name:"Čejková",
    phone:"777766041",
    mail:"",
  },
  {
    first_name:"Čejková",
    phone:"",
    mail:"icejka@email.com",
  },
  {
    first_name:"čekalová",
    phone:"775898145",
    mail:"",
  },
  {
    first_name:"čekání na manžela",
    phone:"",
    mail:"",
  },
  {
    first_name:"Čepeláková",
    phone:"736676107",
    mail:"",
  },
  {
    first_name:"Čepeláková",
    phone:"",
    mail:"ivete.no@seznam.cz",
  },
  {
    first_name:"Černá",
    phone:"723123439",
    mail:"",
  },
  {
    first_name:"Černá D.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Černá Dagmar",
    phone:"604130805",
    mail:"",
  },
  {
    first_name:"Černá Ilona",
    phone:"723123439",
    mail:"",
  },
  {
    first_name:"Černá Ilona",
    phone:"723127439",
    mail:"",
  },
  {
    first_name:"Černá Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Černá Lenka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Černá Lenka chtěla ke Kristý",
    phone:"605885281",
    mail:"",
  },
  {
    first_name:"Černá Míša",
    phone:"720474284",
    mail:"misisulik@gmail.com",
  },
  {
    first_name:"Černá Veronika",
    phone:"777632838",
    mail:"",
  },
  {
    first_name:"Dadáková Hana",
    phone:"775982472",
    mail:"hanadadakova@gmail.com",
  },
  {
    first_name:"Dagmar Kratochvílová",
    phone:"775002299",
    mail:"",
  },
  {
    first_name:"Dalibor - kamarád z Pivoňky",
    phone:"728855516",
    mail:"",
  },
  {
    first_name:"Dalibor Hnětila",
    phone:"",
    mail:"",
  },
  {
    first_name:"David Lábr",
    phone:"723499837",
    mail:"",
  },
  {
    first_name:"Deglova Oxana",
    phone:"",
    mail:"",
  },
  {
    first_name:"dělat recepční + trénink na panně",
    phone:"",
    mail:"",
  },
  {
    first_name:"Denisa Gamcová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Derová",
    phone:"775250272",
    mail:"",
  },
  {
    first_name:"Dezortová Veronika",
    phone:"603266911",
    mail:"",
  },
  {
    first_name:"Dezortová Veronika",
    phone:"724444036",
    mail:"",
  },
  {
    first_name:"dívat se na Janu a pomoct jí",
    phone:"",
    mail:"",
  },
  {
    first_name:"Divič",
    phone:"606131413",
    mail:"",
  },
  {
    first_name:"Diviš",
    phone:"",
    mail:"",
  },
  {
    first_name:"Diviš Václav",
    phone:"606131413",
    mail:"",
  },
  {
    first_name:"Diviš Václav",
    phone:"",
    mail:"divisvaclav@seznam.cz",
  },
  {
    first_name:"Dlubalová",
    phone:"777996570",
    mail:"pavla.dlubalova@gmail.com",
  },
  {
    first_name:"Doerová",
    phone:"775250272",
    mail:"",
  },
  {
    first_name:"Dolejší Marcela",
    phone:"",
    mail:"",
  },
  {
    first_name:"Domingues",
    phone:"",
    mail:"",
  },
  {
    first_name:"Dongerová",
    phone:"606754738",
    mail:"",
  },
  {
    first_name:"dopoledne přijde paní Maříková - reklamace BW",
    phone:"",
    mail:"",
  },
  {
    first_name:"Doráková",
    phone:"724570157",
    mail:"",
  },
  {
    first_name:"Doubková Lucie",
    phone:"731114536",
    mail:"",
  },
  {
    first_name:"Dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"Drahoňovská",
    phone:"777886066",
    mail:"",
  },
  {
    first_name:"Drbalová",
    phone:"602280040",
    mail:"",
  },
  {
    first_name:"drdol - panna",
    phone:"",
    mail:"",
  },
  {
    first_name:"Drožď",
    phone:"724998281",
    mail:"",
  },
  {
    first_name:"Dubská",
    phone:"606562098",
    mail:"",
  },
  {
    first_name:"Duda",
    phone:"721244879",
    mail:"",
  },
  {
    first_name:"Duda s manželkou",
    phone:"776828222",
    mail:"",
  },
  {
    first_name:"Duchková",
    phone:"608115684",
    mail:"",
  },
  {
    first_name:"Duchková, NK",
    phone:"723451001",
    mail:"",
  },
  {
    first_name:"Duspiva",
    phone:"724685272",
    mail:"",
  },
  {
    first_name:"Duspivová",
    phone:"725279719",
    mail:"",
  },
  {
    first_name:"Dušáková M.",
    phone:"602233462",
    mail:"",
  },
  {
    first_name:"Dušáková M.",
    phone:"střih kr. vl",
    mail:"",
  },
  {
    first_name:"Dzubová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ebenstreitová",
    phone:"724444944",
    mail:"",
  },
  {
    first_name:"Ebernová Tereza",
    phone:"7373153509",
    mail:"",
  },
  {
    first_name:"Edelová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Edelová - přijde ukázat, co umí",
    phone:"",
    mail:"",
  },
  {
    first_name:"Edelová Nela",
    phone:"",
    mail:"",
  },
  {
    first_name:"Edita - BioIonic",
    phone:"",
    mail:"",
  },
  {
    first_name:"Evička černá",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fabiánová NK",
    phone:"603260515",
    mail:"",
  },
  {
    first_name:"Faitová",
    phone:"607121148",
    mail:"",
  },
  {
    first_name:"Faitová",
    phone:"739421022",
    mail:"",
  },
  {
    first_name:"Fajtová",
    phone:"739421022",
    mail:"",
  },
  {
    first_name:"Fedelešová",
    phone:"723881868",
    mail:"",
  },
  {
    first_name:"Fejtová",
    phone:"737129863",
    mail:"",
  },
  {
    first_name:"Fenclová",
    phone:"739200557",
    mail:"",
  },
  {
    first_name:"Fenclová Petra",
    phone:"739200557",
    mail:"",
  },
  {
    first_name:"fiala",
    phone:"720377331",
    mail:"",
  },
  {
    first_name:"fialová",
    phone:"603119660",
    mail:"",
  },
  {
    first_name:"Fiedrman",
    phone:"603332284",
    mail:"",
  },
  {
    first_name:"Fichtnerová",
    phone:"607553249",
    mail:"",
  },
  {
    first_name:"Filerová",
    phone:"604943990",
    mail:"",
  },
  {
    first_name:"Filipová",
    phone:"",
    mail:"",
  },
  {
    first_name:"finální příprava na Color Zoom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fischerová",
    phone:"721611841",
    mail:"",
  },
  {
    first_name:"Fišerová",
    phone:"721611841",
    mail:"",
  },
  {
    first_name:"Flaková",
    phone:"723513755",
    mail:"",
  },
  {
    first_name:"Fláma",
    phone:"608981640",
    mail:"",
  },
  {
    first_name:"Florian",
    phone:"",
    mail:"",
  },
  {
    first_name:"focení - Aichi",
    phone:"",
    mail:"",
  },
  {
    first_name:"focení - Color Zoom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fořtova Linda",
    phone:"726461253",
    mail:"",
  },
  {
    first_name:"foukaná Evče",
    phone:"",
    mail:"",
  },
  {
    first_name:"foukaná Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"František Funda",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fremr",
    phone:"",
    mail:"",
  },
  {
    first_name:"Friedman",
    phone:"603332284",
    mail:"",
  },
  {
    first_name:"Frischauf",
    phone:"724432213",
    mail:"",
  },
  {
    first_name:"Frouz",
    phone:"608272186",
    mail:"",
  },
  {
    first_name:"Furbacherová Klára",
    phone:"604309538",
    mail:"",
  },
  {
    first_name:"Furbacherová Klára",
    phone:"60430953",
    mail:"klara.matousu@seznam.cz",
  },
  {
    first_name:"Gablišová",
    phone:"606177407",
    mail:"",
  },
  {
    first_name:"Gajdošík",
    phone:"728855516",
    mail:"",
  },
  {
    first_name:"Ghatasová ELen",
    phone:"736278289",
    mail:"",
  },
  {
    first_name:"Ghatasová Marie",
    phone:"775028472",
    mail:"",
  },
  {
    first_name:"Ghatasová Sylva",
    phone:"774497316",
    mail:"",
  },
  {
    first_name:"Golčáková Tereza",
    phone:"377455861",
    mail:"",
  },
  {
    first_name:"grimová",
    phone:"774260236",
    mail:"",
  },
  {
    first_name:"Gruberová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Grunwald",
    phone:"733268591",
    mail:"",
  },
  {
    first_name:"Gusejnová",
    phone:"777880527",
    mail:"",
  },
  {
    first_name:"Gusejnová gula",
    phone:"776128603",
    mail:"",
  },
  {
    first_name:"Gust ml.",
    phone:"725879276",
    mail:"",
  },
  {
    first_name:"Gustová",
    phone:"775055235",
    mail:"",
  },
  {
    first_name:"Gvardová Kateřina",
    phone:"607963295",
    mail:"",
  },
  {
    first_name:"Hacker",
    phone:"605468918",
    mail:"",
  },
  {
    first_name:"Hadinec",
    phone:"728035759",
    mail:"",
  },
  {
    first_name:"Hájek J.",
    phone:"",
    mail:"jaromir.hajek@seznam.cz",
  },
  {
    first_name:"Hájková Ivana",
    phone:"731605076",
    mail:"",
  },
  {
    first_name:"Hájková Ivana",
    phone:"731605076",
    mail:"iv.hajkova@email.cz",
  },
  {
    first_name:"Hajšmanová Gabriela",
    phone:"606160636",
    mail:"gabina.haismanova@seznam.cz",
  },
  {
    first_name:"Hajšmanová Iveta st.",
    phone:"737749606",
    mail:"",
  },
  {
    first_name:"Hana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hána Pan",
    phone:"607643604",
    mail:"",
  },
  {
    first_name:"Hanka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hanzlíková",
    phone:"604951833",
    mail:"",
  },
  {
    first_name:"Hanzlíková Evženie",
    phone:"604951833",
    mail:"evzeniehanzlikova@seznam.cz",
  },
  {
    first_name:"Havelková",
    phone:"733114939",
    mail:"",
  },
  {
    first_name:"Havelková",
    phone:"",
    mail:"anna.havelkova@seznam.cz",
  },
  {
    first_name:"Havlíčková",
    phone:"739458942",
    mail:"",
  },
  {
    first_name:"Havlíčková",
    phone:"739458942",
    mail:"seznam.mih@gmail.com",
  },
  {
    first_name:"Havlíková",
    phone:"732152233",
    mail:"",
  },
  {
    first_name:"Havlová Michaela",
    phone:"605294587",
    mail:"",
  },
  {
    first_name:"Héčková",
    phone:"723401421",
    mail:"",
  },
  {
    first_name:"Heinzlová Iveta",
    phone:"731188157",
    mail:"",
  },
  {
    first_name:"Henischová (Tomovo kamarádka)",
    phone:"721057095",
    mail:"henischovaan@hotmail.com",
  },
  {
    first_name:"Herzigová Lucie",
    phone:"728366621",
    mail:"",
  },
  {
    first_name:"Hessová",
    phone:"730101159",
    mail:"",
  },
  {
    first_name:"Hirschová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hirschová - pohovor - zkouška",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hnetival",
    phone:"728855516",
    mail:"",
  },
  {
    first_name:"Hoblová",
    phone:"774742044",
    mail:"l.hoblova@seznam.cz",
  },
  {
    first_name:"Hodačová",
    phone:"721145701",
    mail:"",
  },
  {
    first_name:"hodnocení kadeřníků",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hofmajstrová",
    phone:"723245311",
    mail:"",
  },
  {
    first_name:"Hofmanová",
    phone:"606428791",
    mail:"",
  },
  {
    first_name:"Hofmeisterová",
    phone:"723245311",
    mail:"hofmeisterova.k@seznam.cz",
  },
  {
    first_name:"Holá",
    phone:"739254541",
    mail:"",
  },
  {
    first_name:"Holá Andrea",
    phone:"739254541",
    mail:"",
  },
  {
    first_name:"Holar Milan",
    phone:"724267110",
    mail:"",
  },
  {
    first_name:"Holomková Kateřina",
    phone:"728829585",
    mail:"",
  },
  {
    first_name:"Hordinská - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Horská",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hrabáková, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hrbá, NK, chtěla kvůli ceně juniora",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hrdinová",
    phone:"603119660",
    mail:"",
  },
  {
    first_name:"Hromádková Alena",
    phone:"722628399",
    mail:"",
  },
  {
    first_name:"Hromátková",
    phone:"722628399",
    mail:"",
  },
  {
    first_name:"Hronková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hronková Hermína",
    phone:"723588228",
    mail:"",
  },
  {
    first_name:"hronková posun wonder",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hudecová",
    phone:"732850566",
    mail:"",
  },
  {
    first_name:"Hulková Kateřina",
    phone:"721313016",
    mail:"",
  },
  {
    first_name:"Huppertová",
    phone:"731514742",
    mail:"martina@huppertova.com",
  },
  {
    first_name:"Hůrková (za svobodna Srbecká) Kateřina",
    phone:"721313016",
    mail:"katerinasrbecka@gmail.com",
  },
  {
    first_name:"Chaloupková",
    phone:"728648404",
    mail:"",
  },
  {
    first_name:"chce mit volno",
    phone:"",
    mail:"",
  },
  {
    first_name:"Chladová",
    phone:"603113367",
    mail:"janachladova@janachladova.com",
  },
  {
    first_name:"Chlevans",
    phone:"737081998",
    mail:"",
  },
  {
    first_name:"Chocová Alena",
    phone:"774224437",
    mail:"alicho@seznam.cz",
  },
  {
    first_name:"Chocová H.",
    phone:"774224437",
    mail:"",
  },
  {
    first_name:"Choleva Ondrej",
    phone:"737081998",
    mail:"",
  },
  {
    first_name:"Ihová Karolína",
    phone:"607213643",
    mail:"",
  },
  {
    first_name:"Ilič Petra",
    phone:"731107964",
    mail:"",
  },
  {
    first_name:"Ilona - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona a Jana J. - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona Jana J. - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona Kozáková - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona Marešová",
    phone:"721728323",
    mail:"",
  },
  {
    first_name:"Inventura",
    phone:"",
    mail:"",
  },
  {
    first_name:"Inventura + hodnocení kadeřníků",
    phone:"",
    mail:"",
  },
  {
    first_name:"Inventura v 10h Katka Bláhová Glamour vlny, v 16h asi fotograf na interier přijde",
    phone:"",
    mail:"",
  },
  {
    first_name:"Inventura v 10h Katka Bláhová Glamour vlny, v 16h možná fotograf na interier přijde",
    phone:"",
    mail:"",
  },
  {
    first_name:"Irena Sekmilerová, NK",
    phone:"607849195",
    mail:"",
  },
  {
    first_name:"IT LOOK",
    phone:"",
    mail:"",
  },
  {
    first_name:"IT LOOK s M.M.",
    phone:"",
    mail:"",
  },
  {
    first_name:"IT LOOKS s MM TRENDY",
    phone:"",
    mail:"",
  },
  {
    first_name:"J.V.",
    phone:"",
    mail:"",
  },
  {
    first_name:"J.V. DOVOLENÁ",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jáchimová",
    phone:"775045305",
    mail:"romanaa@seznam.cz",
  },
  {
    first_name:"Jáchymová Alena",
    phone:"602339975",
    mail:"",
  },
  {
    first_name:"Jan Smitka",
    phone:"721161280",
    mail:"",
  },
  {
    first_name:"Jana - dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana Fišerová",
    phone:"721625946",
    mail:"",
  },
  {
    first_name:"Jana J - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana s M.M. barva střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana WUchterová",
    phone:"604215488",
    mail:"",
  },
  {
    first_name:"Jandová Klára",
    phone:"",
    mail:"",
  },
  {
    first_name:"Janička Vlčková",
    phone:"702493754",
    mail:"",
  },
  {
    first_name:"Janouškovcová - Vdala se a jmenuje se jinak!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Janoutová",
    phone:"723039855",
    mail:"",
  },
  {
    first_name:"Jarka - odrosty",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka - prac.doba - Terky 1.den",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka - volno",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka a Terka - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarmila Hauková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarunka",
    phone:"607216943",
    mail:"",
  },
  {
    first_name:"Jaruška Hair",
    phone:"",
    mail:"",
  },
  {
    first_name:"jde domů",
    phone:"",
    mail:"",
  },
  {
    first_name:"jde domů - padla",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jedličková",
    phone:"728527067",
    mail:"",
  },
  {
    first_name:"Jelča",
    phone:"731955955",
    mail:"",
  },
  {
    first_name:"Jelča st.",
    phone:"731955955",
    mail:"",
  },
  {
    first_name:"Jelínek",
    phone:"725161571",
    mail:"",
  },
  {
    first_name:"Jelínek, NK",
    phone:"777339605",
    mail:"",
  },
  {
    first_name:"Jelínková",
    phone:"776261602",
    mail:"",
  },
  {
    first_name:"Jeništová",
    phone:"602260920",
    mail:"ludmilajenista@seznam.cz",
  },
  {
    first_name:"Jerinová Martina",
    phone:"726916715",
    mail:"",
  },
  {
    first_name:"Jesica Bandyová",
    phone:"732144200",
    mail:"",
  },
  {
    first_name:"Jesica Bandyová",
    phone:"",
    mail:"gagarin.2@seznam.cz",
  },
  {
    first_name:"Ježková Hana",
    phone:"603152489",
    mail:"",
  },
  {
    first_name:"Ježková Ivana",
    phone:"724575958",
    mail:"",
  },
  {
    first_name:"Jílková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jílková Klára",
    phone:"608715976",
    mail:"",
  },
  {
    first_name:"Jirka",
    phone:"731225398",
    mail:"",
  },
  {
    first_name:"Jirušová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jiří Boleček",
    phone:"731225398",
    mail:"",
  },
  {
    first_name:"Jiřina Karasová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jitka Dočkalová - managerka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jitka Fundová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jubová",
    phone:"602612926",
    mail:"",
  },
  {
    first_name:"Julie Fialová",
    phone:"721469523",
    mail:"zubovayv@gmail.com",
  },
  {
    first_name:"junioři s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"junioři s Jarkou - trénink prodeje",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jurášková Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jurášková Jana - zkouška na modelech",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kablíková Petra",
    phone:"731709876",
    mail:"",
  },
  {
    first_name:"Kadlecová",
    phone:"607533752",
    mail:"",
  },
  {
    first_name:"Kadlecová",
    phone:"607533752",
    mail:"marcela.kadlecova@centrum.cz",
  },
  {
    first_name:"Kalašová",
    phone:"723995155",
    mail:"",
  },
  {
    first_name:"Kalašová Ivana",
    phone:"775657770",
    mail:"",
  },
  {
    first_name:"Kalatová",
    phone:"723997155",
    mail:"",
  },
  {
    first_name:"Kalousová",
    phone:"721307405",
    mail:"",
  },
  {
    first_name:"Kaňáková Lucie",
    phone:"732982474",
    mail:"luca.kan@seznam.cz",
  },
  {
    first_name:"Kaprová Hana",
    phone:"606316320",
    mail:"",
  },
  {
    first_name:"Karásková",
    phone:"777952042",
    mail:"",
  },
  {
    first_name:"Karel Královec",
    phone:"",
    mail:"",
  },
  {
    first_name:"Karlíková",
    phone:"736601847",
    mail:"",
  },
  {
    first_name:"Karlíková",
    phone:"736601847",
    mail:"",
  },
  {
    first_name:"Karlíková",
    phone:"",
    mail:"Karlikova.I@email.cz",
  },
  {
    first_name:"Karlovcová",
    phone:"607264543",
    mail:"",
  },
  {
    first_name:"Karlovcová, NK",
    phone:"607264543",
    mail:"",
  },
  {
    first_name:"Kaslová",
    phone:"733155555",
    mail:"",
  },
  {
    first_name:"Kašparová",
    phone:"724200235",
    mail:"",
  },
  {
    first_name:"Kateřina Martínková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kateřina Raisová",
    phone:"737835368",
    mail:"raisovak@gmail.com",
  },
  {
    first_name:"Kateřina Tikvartová NK",
    phone:"777036294",
    mail:"",
  },
  {
    first_name:"katka němečková",
    phone:"603830768",
    mail:"",
  },
  {
    first_name:"Kejvalová",
    phone:"728610076",
    mail:"",
  },
  {
    first_name:"Kejvalová",
    phone:"728610076",
    mail:"kejvalovaaneta@seznam.cz",
  },
  {
    first_name:"Kejvalová.... a pramínek posunout",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kellnerová Martina",
    phone:"723723725",
    mail:"",
  },
  {
    first_name:"Kellnerová Martina - napsat sms 2 dny, jestli přijde",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kelnerová M.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kerastase",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kerastase - školení",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kérastase den",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kinkal",
    phone:"602502557",
    mail:"",
  },
  {
    first_name:"Kirikovová",
    phone:"739252366",
    mail:"",
  },
  {
    first_name:"Klárka Nováková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Klasová Jitka",
    phone:"728024476",
    mail:"",
  },
  {
    first_name:"Kleandrová Jana",
    phone:"608446266",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/1",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/1 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/2 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/2 s Terkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/3 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/3 s Terkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/4 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/4 s Terkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Klíč k barvě 2 PRAHA",
    phone:"",
    mail:"",
  },
  {
    first_name:"Klíč k barvě 2 PRAHA Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kohout",
    phone:"721979923",
    mail:"",
  },
  {
    first_name:"Kohoutová",
    phone:"603422046",
    mail:"",
  },
  {
    first_name:"Kokožková",
    phone:"731111067",
    mail:"",
  },
  {
    first_name:"Kolářová",
    phone:"724901316",
    mail:"",
  },
  {
    first_name:"Kolářová Tereza",
    phone:"721873236",
    mail:"t.eezka@centrum.cz",
  },
  {
    first_name:"koláže + dělat recepční",
    phone:"",
    mail:"",
  },
  {
    first_name:"Koldová Milena",
    phone:"602154435",
    mail:"",
  },
  {
    first_name:"Koldová Milena",
    phone:"602154435",
    mail:"koldova.milena@email.cz",
  },
  {
    first_name:"kolekce HAD",
    phone:"",
    mail:"",
  },
  {
    first_name:"kolekce HAD - zkouška",
    phone:"",
    mail:"",
  },
  {
    first_name:"kolekce HAD + výplata",
    phone:"",
    mail:"",
  },
  {
    first_name:"KONČÍ",
    phone:"",
    mail:"",
  },
  {
    first_name:"konec!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Konopíková",
    phone:"737729793",
    mail:"b.k12@email.cz",
  },
  {
    first_name:"kontrola barvy a střihu Toma",
    phone:"",
    mail:"",
  },
  {
    first_name:"kontrola nové kadeřnice a melíru",
    phone:"",
    mail:"",
  },
  {
    first_name:"kontrola nové kadeřnice a melíru, + zkouška nůžkami Hanka tchán",
    phone:"",
    mail:"",
  },
  {
    first_name:"Konzultace GL",
    phone:"602 184 888",
    mail:"",
  },
  {
    first_name:"konzultace Retex",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kopelentová",
    phone:"777225169",
    mail:"",
  },
  {
    first_name:"Kostecká",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kostecká Monika",
    phone:"773666642",
    mail:"",
  },
  {
    first_name:"Kostlivá Markéta",
    phone:"728532444",
    mail:"",
  },
  {
    first_name:"Kotorová",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink + trénink - panna - Jarka zadá, co jí udělat + úklid",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s Jarkou + vyhodnocení srpna",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s Jarkou, případně ještě školení Terezy",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s manažerkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"koukat na holky a pomáhat jim",
    phone:"",
    mail:"",
  },
  {
    first_name:"koukat na holky, pomáhat, případně školení s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"koukat na MM a školení s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kováčová",
    phone:"606795232",
    mail:"",
  },
  {
    first_name:"Kovařík",
    phone:"606785189",
    mail:"",
  },
  {
    first_name:"Kovařík",
    phone:"",
    mail:"pavel.kovarik@vbleasing.cz",
  },
  {
    first_name:"Kozlerová Michaela",
    phone:"608856079",
    mail:"kozlerova@centrum.cz",
  },
  {
    first_name:"Kozlerová-Fořtová",
    phone:"774273008",
    mail:"",
  },
  {
    first_name:"Kozlerová-Fořtová",
    phone:"střih, výživa",
    mail:"",
  },
  {
    first_name:"Kozlová Ivana",
    phone:"602704693",
    mail:"",
  },
  {
    first_name:"Krajícová",
    phone:"606639259",
    mail:"",
  },
  {
    first_name:"Král",
    phone:"775970033",
    mail:"",
  },
  {
    first_name:"Králová Kateřina",
    phone:"776706246",
    mail:"",
  },
  {
    first_name:"Králová Markéta",
    phone:"",
    mail:"",
  },
  {
    first_name:"Královcová Marie",
    phone:"377520273",
    mail:"",
  },
  {
    first_name:"Kratochvílová, NK",
    phone:"606541820",
    mail:"",
  },
  {
    first_name:"Krausová veronika",
    phone:"724039800",
    mail:"",
  },
  {
    first_name:"Krblichová",
    phone:"606290538",
    mail:"",
  },
  {
    first_name:"Krblichová",
    phone:"606638305",
    mail:"",
  },
  {
    first_name:"Krčmerová, NK",
    phone:"602630042",
    mail:"",
  },
  {
    first_name:"Krejčová",
    phone:"605221800",
    mail:"",
  },
  {
    first_name:"Krejčová Jana",
    phone:"605221800",
    mail:"",
  },
  {
    first_name:"Krejčová, nemůže jinak",
    phone:"",
    mail:"",
  },
  {
    first_name:"Krieglsteinová Eva",
    phone:"608142142",
    mail:"eva.krigi@gmail.com",
  },
  {
    first_name:"Krippnerová",
    phone:"606877004",
    mail:"",
  },
  {
    first_name:"Kristýna - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kristýna američanka s překladatelem(přítelem) Terka ji bude mít jako model",
    phone:"",
    mail:"",
  },
  {
    first_name:"Krošláková",
    phone:"775312862",
    mail:"",
  },
  {
    first_name:"Kršláková Tereza",
    phone:"776312862",
    mail:"",
  },
  {
    first_name:"Kršláková Tereza",
    phone:"776312862",
    mail:"kroslakova.tereza@gmail.com",
  },
  {
    first_name:"Kryblichová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kučerová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kudrnáčová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kudrnová",
    phone:"721167963",
    mail:"",
  },
  {
    first_name:"Kucharčíková",
    phone:"378771671",
    mail:"",
  },
  {
    first_name:"Kucharčíková",
    phone:"731602587",
    mail:"daniela.kucharcukova@eurovia.cz",
  },
  {
    first_name:"Kulda",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kulda Miloš",
    phone:"724175491",
    mail:"",
  },
  {
    first_name:"Kulová",
    phone:"604216316",
    mail:"",
  },
  {
    first_name:"Kulová Lenka",
    phone:"604216316",
    mail:"",
  },
  {
    first_name:"Kuncová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kunová",
    phone:"777281643",
    mail:"",
  },
  {
    first_name:"Kunstová",
    phone:"728440942",
    mail:"",
  },
  {
    first_name:"Kunstová",
    phone:"",
    mail:"alena.kunstova@centrum.cz",
  },
  {
    first_name:"Kuntscherová",
    phone:"739684098",
    mail:"",
  },
  {
    first_name:"Kupeček",
    phone:"602190474",
    mail:"",
  },
  {
    first_name:"Kůsová Magdalena",
    phone:"731466891",
    mail:"",
  },
  {
    first_name:"Kvasničková Lucie",
    phone:"",
    mail:"kvasnickova.lucie@gmail.com",
  },
  {
    first_name:"Labl",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lábr",
    phone:"723499837",
    mail:"",
  },
  {
    first_name:"Lábrt - reklamace střihu, zastřihnout",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lábrt - reklamace střihu, zastřihnout lépe a dát mu malý šampon",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lahoda",
    phone:"",
    mail:"",
  },
  {
    first_name:"Laibl",
    phone:"721838303",
    mail:"",
  },
  {
    first_name:"Lajbl",
    phone:"721838303",
    mail:"",
  },
  {
    first_name:"Lakatošová",
    phone:"",
    mail:"",
  },
  {
    first_name:"landrgottová",
    phone:"775287052",
    mail:"",
  },
  {
    first_name:"Lávr",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lebišová",
    phone:"603516080",
    mail:"",
  },
  {
    first_name:"LEE zuzana",
    phone:"608262043",
    mail:"",
  },
  {
    first_name:"Lehká",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lehká Lucie",
    phone:"777024186",
    mail:"",
  },
  {
    first_name:"Lehká Naďa",
    phone:"776051048",
    mail:"",
  },
  {
    first_name:"Lehký Michal",
    phone:"777024186",
    mail:"",
  },
  {
    first_name:"Leiderová Wendy",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lelková Veronika",
    phone:"731106254",
    mail:"",
  },
  {
    first_name:"Lepší",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lepší Andrea",
    phone:"773301494",
    mail:"",
  },
  {
    first_name:"Lepší Andrea",
    phone:"",
    mail:"andrea.lepsi@seznam.cz",
  },
  {
    first_name:"Levá Romana",
    phone:"602331236",
    mail:"",
  },
  {
    first_name:"Levá Vlasta",
    phone:"602331235",
    mail:"",
  },
  {
    first_name:"Lhotský",
    phone:"604658303",
    mail:"",
  },
  {
    first_name:"Linda Du Plessis",
    phone:"608312795",
    mail:"",
  },
  {
    first_name:"Lindová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lindová Pavlína",
    phone:"604269575",
    mail:"",
  },
  {
    first_name:"Lindová Pavlína k MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lipertová",
    phone:"606186997",
    mail:"",
  },
  {
    first_name:"Lisecová Alena",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lisecová Elena",
    phone:"728617966",
    mail:"",
  },
  {
    first_name:"Lisecová Elena",
    phone:"728617966",
    mail:"elen.lisecova@gmail.com",
  },
  {
    first_name:"Lisecová Kristyna",
    phone:"728610336",
    mail:"",
  },
  {
    first_name:"Livia Bunescu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lokvencová Veronika NK",
    phone:"777632838",
    mail:"",
  },
  {
    first_name:"Lomanová, NK, byla tu osobně",
    phone:"+491727188402",
    mail:"",
  },
  {
    first_name:"Loreal - nějaká slečna se staví",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lucáková",
    phone:"728121291",
    mail:"",
  },
  {
    first_name:"Lucie Greishein",
    phone:"777 276 772",
    mail:"",
  },
  {
    first_name:"Lucie Rašková NK",
    phone:"737217549",
    mail:"",
  },
  {
    first_name:"Lucka Kostecká",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lukešová",
    phone:"602363945",
    mail:"",
  },
  {
    first_name:"Lysečová",
    phone:"728610336",
    mail:"",
  },
  {
    first_name:"M.K. známá Kalíšková přítelkyně dostala neomezený limit dárkového poukazu(neplatí)",
    phone:"",
    mail:"",
  },
  {
    first_name:"M.M. a Jana si budou dělat navzájem vlasy",
    phone:"",
    mail:"",
  },
  {
    first_name:"Machartová",
    phone:"722613402",
    mail:"",
  },
  {
    first_name:"Majerová Marie",
    phone:"607916504",
    mail:"mariemar@centrum.cz",
  },
  {
    first_name:"Makovička",
    phone:"777870876",
    mail:"",
  },
  {
    first_name:"Malinová",
    phone:"733322267",
    mail:"",
  },
  {
    first_name:"Malinová",
    phone:"733322267",
    mail:"anniette@centrum.cz",
  },
  {
    first_name:"malování salonu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Marešová",
    phone:"604207948",
    mail:"",
  },
  {
    first_name:"Marešová Markéta",
    phone:"604207948",
    mail:"",
  },
  {
    first_name:"Marešová, mladší",
    phone:"",
    mail:"",
  },
  {
    first_name:"Marianová",
    phone:"722180283",
    mail:"",
  },
  {
    first_name:"Marionová byla u Kristý",
    phone:"722180283",
    mail:"",
  },
  {
    first_name:"Markes",
    phone:"605415151",
    mail:"",
  },
  {
    first_name:"Marková Kateřina",
    phone:"777794630",
    mail:"markooova@gmail.cz",
  },
  {
    first_name:"Marková Kateřině",
    phone:"777794630",
    mail:"",
  },
  {
    first_name:"Maroušková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Maroušková Míša",
    phone:"720440442",
    mail:"marouskova19@seznam.cz",
  },
  {
    first_name:"Martin - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Martin Kováč",
    phone:"",
    mail:"",
  },
  {
    first_name:"Martínková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mařík",
    phone:"775632000",
    mail:"",
  },
  {
    first_name:"Maříková",
    phone:"608922339",
    mail:"",
  },
  {
    first_name:"Mašata",
    phone:"606289125",
    mail:"",
  },
  {
    first_name:"Mašková",
    phone:"728597734",
    mail:"",
  },
  {
    first_name:"Mášková Eliška",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mášková, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"Maškovská Markéta",
    phone:"721657967",
    mail:"",
  },
  {
    first_name:"Matas",
    phone:"",
    mail:"",
  },
  {
    first_name:"Matasová",
    phone:"736684048",
    mail:"",
  },
  {
    first_name:"Matasová, NK",
    phone:"603583317",
    mail:"",
  },
  {
    first_name:"Matějková Jana",
    phone:"777257192",
    mail:"",
  },
  {
    first_name:"Matějů Zdena",
    phone:"607685971",
    mail:"",
  },
  {
    first_name:"Matlasová",
    phone:"739007396",
    mail:"",
  },
  {
    first_name:"Matoušová obchodák GHD, BioIonic, chodí jinak do Prahy",
    phone:"601326222",
    mail:"edita@salonpro.cz",
  },
  {
    first_name:"Matuška Petr",
    phone:"725474962",
    mail:"",
  },
  {
    first_name:"Mavrespons",
    phone:"739516217",
    mail:"",
  },
  {
    first_name:"Mechová",
    phone:"775496561",
    mail:"",
  },
  {
    first_name:"Michal Benedikt",
    phone:"",
    mail:"",
  },
  {
    first_name:"Míková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Milfilerová",
    phone:"736148592",
    mail:"",
  },
  {
    first_name:"Milsimerová",
    phone:"736148592",
    mail:"",
  },
  {
    first_name:"Miluše Rožmberská",
    phone:"603369265",
    mail:"",
  },
  {
    first_name:"Mirka Křesťanová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Míša BRADOVÁ",
    phone:"776608882",
    mail:"",
  },
  {
    first_name:"Míša BRADOVÁ",
    phone:"377178883",
    mail:"",
  },
  {
    first_name:"Míša BRADOVÁ",
    phone:"",
    mail:"mbradova@post.cz",
  },
  {
    first_name:"Mlíková",
    phone:"777645625",
    mail:"",
  },
  {
    first_name:"Mlíková",
    phone:"775858564",
    mail:"",
  },
  {
    first_name:"Mlíková Květoslava",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM - dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM a Jana - dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM musí končit",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM musí končit v 15:30",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM musím končit v 15:30",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM přijde už na 12 MODEL trénink retex TOMáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM Ti udělá vlasy",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM ukáže GL - trénovat pak na panně",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL",
    phone:"",
    mail:"",
  },
  {
    first_name:"model - s Kristý",
    phone:"",
    mail:"",
  },
  {
    first_name:"model - s MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"model s Janou",
    phone:"",
    mail:"",
  },
  {
    first_name:"model s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Model střih tchýně MK",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink retex TOMáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink TOMáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink TOMáš Tchýně MK",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - aichi",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - barevná změna",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - barva",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - foukaná",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - foukaná - Polášková Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - foukaná a vlny",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - melír",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - objemka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - pásky - Moniky sestra",
    phone:"775666129",
    mail:"",
  },
  {
    first_name:"modelka - retex",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka&nbsp",
    phone:"&nbsp",
    mail:"s effasorem",
  },
  {
    first_name:"modelka&nbsp",
    phone:"&nbsp",
    mail:"s kvalitním ombre",
  },
  {
    first_name:"modelka - soft ombre",
    phone:"728322884",
    mail:"",
  },
  {
    first_name:"modelka - střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 1",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 2",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 3",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 4",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 5",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 6",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 7",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Adéla Krausová objemka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka barvení barevné Elumen",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Hanka střih melír",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Hanka střih melír - slečna Dominika",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Hanka střih melír - slečna Jubová",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Holá",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Homolková - s&nbsp",
    phone:"&nbsp",
    mail:"Hankou",
  },
  {
    first_name:"modelka Jarunka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka klasické melíry po celé hlavě",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka kvalitní střih a barva",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na efasor - Janička",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka na foukanou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na foukanou - Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka na melír,barvu,střih - Vlasáková",
    phone:"737013912",
    mail:"",
  },
  {
    first_name:"modelka na retex",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na retex - Katka odbarvené vlasy",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na retex - Katka Spourová - odbarvené vlasy",
    phone:"731520645",
    mail:"",
  },
  {
    first_name:"modelka na střih - nová kadeřnice",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na střih - Nováková Klára",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka narovnání vlasů",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka Kateřina Kumová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka s Tomášem",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Pálková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Pálková s M.M. retex trénink",
    phone:"602453182",
    mail:"",
  },
  {
    first_name:"modelka precizní nadčasový střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Ilonou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Janou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Kristýnou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s M.M. retex trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s M.M. trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s M.M. trénink, Pálková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s MM trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s MM trénink - učení GL",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s objemkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s polodlouhými vlasy – střih a melír",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Terkou - ombré",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka sehnat !!! pro Hanku",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODELka tchýně Mk",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Tom trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Tom trénink - učení GL",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Tomáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Vlková, jen melír a přeliv",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelky",
    phone:"",
    mail:"",
  },
  {
    first_name:"moderátorka",
    phone:"",
    mail:"",
  },
  {
    first_name:"módní nadčasový precizní pánský střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modroch",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mochtabiz",
    phone:"774897995",
    mail:"",
  },
  {
    first_name:"Mojžíš",
    phone:"602206895",
    mail:"",
  },
  {
    first_name:"Mojžíšová",
    phone:"736540282",
    mail:"",
  },
  {
    first_name:"Monča M",
    phone:"731406527",
    mail:"",
  },
  {
    first_name:"Monička Mocová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Monika - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Monika Abarka",
    phone:"734685767",
    mail:"",
  },
  {
    first_name:"Moniky manžel",
    phone:"",
    mail:"",
  },
  {
    first_name:"Motyková Renča",
    phone:"603389367",
    mail:"",
  },
  {
    first_name:"Motyková Renča",
    phone:"603389367",
    mail:"r.motykova@gmail.com",
  },
  {
    first_name:"Mourek",
    phone:"602101644",
    mail:"",
  },
  {
    first_name:"Mrazová zákaznice Jana Junior",
    phone:"725762798",
    mail:"",
  },
  {
    first_name:"Mrožíková Michaela (přijde s paní Štěpánkovou)",
    phone:"",
    mail:"",
  },
  {
    first_name:"Muchková",
    phone:"608669999",
    mail:"irenamuchkova@seznam.cz",
  },
  {
    first_name:"Mukenšnablová",
    phone:"737220099",
    mail:"",
  },
  {
    first_name:"Musilová",
    phone:"607441989",
    mail:"",
  },
  {
    first_name:"Musilová, NK",
    phone:"377152181",
    mail:"",
  },
  {
    first_name:"musím končit",
    phone:"",
    mail:"",
  },
  {
    first_name:"musím končit Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"musím končit v 15:30",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mušovská",
    phone:"776544257",
    mail:"",
  },
  {
    first_name:"N.K. Černá",
    phone:"722224180",
    mail:"",
  },
  {
    first_name:"Nádraská",
    phone:"724874901",
    mail:"",
  },
  {
    first_name:"náhradní volno",
    phone:"",
    mail:"",
  },
  {
    first_name:"Náhradní volno - Pracák",
    phone:"",
    mail:"",
  },
  {
    first_name:"natáčení rychlostřihu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Navrátilová",
    phone:"724394174",
    mail:"",
  },
  {
    first_name:"Navrátilová, NK",
    phone:"604345879",
    mail:"",
  },
  {
    first_name:"nějaká OZ (byla tu ve čtvrtek osobně, ale neměla jsem na ni čas)",
    phone:"",
    mail:"",
  },
  {
    first_name:"nějaký obchodní zástupce - chce nám udělat nabídku",
    phone:"",
    mail:"",
  },
  {
    first_name:"nejde proud",
    phone:"",
    mail:"",
  },
  {
    first_name:"někdy se staví Míša Prášilová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová - k Tomovi",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová B.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová Blanka",
    phone:"739117395",
    mail:"",
  },
  {
    first_name:"Němcová, NK",
    phone:"604682090",
    mail:"",
  },
  {
    first_name:"Neumanová",
    phone:"724105953",
    mail:"",
  },
  {
    first_name:"Neumanová Zuzana",
    phone:"724585313",
    mail:"",
  },
  {
    first_name:"Nikodýmová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nikola Scholzová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Níkrmajerová",
    phone:"",
    mail:"",
  },
  {
    first_name:"NK - Fenclová",
    phone:"775937622",
    mail:"",
  },
  {
    first_name:"NK Kalíškovo přítelkyně, pracuje na ministerstvu je z Prahy, dostala poukázku od přítele",
    phone:"",
    mail:"",
  },
  {
    first_name:"NK Kateřina Zbrámková",
    phone:"73610405O",
    mail:"",
  },
  {
    first_name:"NK Ombre změna",
    phone:"605885281",
    mail:"",
  },
  {
    first_name:"Noumanová Martina",
    phone:"724105953",
    mail:"",
  },
  {
    first_name:"nová kadeřnice ukáže melír na křesle, musí být hotová do 14:30h, aby měli volné křeslo klienti",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nová Karolína",
    phone:"722929662",
    mail:"",
  },
  {
    first_name:"Nová Karolína",
    phone:"722929662",
    mail:"kajinka.kn@gmail.com",
  },
  {
    first_name:"Nová Renata",
    phone:"733128910",
    mail:"",
  },
  {
    first_name:"Nová Renata",
    phone:"",
    mail:"renat.nova1@seznam.cz",
  },
  {
    first_name:"Nova zakaznice Hercikova",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nováček musí odejít. neexistuje bát ve 4 kadeřníkách na saloně",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nováková",
    phone:"tel",
    mail:"",
  },
  {
    first_name:"Nováková",
    phone:"tel2",
    mail:"",
  },
  {
    first_name:"Nováková Jana",
    phone:"77777777",
    mail:"",
  },
  {
    first_name:"Nováková Klárka - modelka na foukanou",
    phone:"",
    mail:"",
  },
  {
    first_name:"NOváková lucie",
    phone:"725583249",
    mail:"",
  },
  {
    first_name:"obřad - zkouška na Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"Obřady a profesionální diagnóza",
    phone:"",
    mail:"",
  },
  {
    first_name:"odečet teplé vody - Plzeňské služby",
    phone:"",
    mail:"",
  },
  {
    first_name:"ofina",
    phone:"",
    mail:"",
  },
  {
    first_name:"Olinka Frausová",
    phone:"773909320",
    mail:"",
  },
  {
    first_name:"Ondra Platzer - Terky kamarád",
    phone:"",
    mail:"",
  },
  {
    first_name:"oprava - pan Koželuh",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ortinská Jana",
    phone:"605484886",
    mail:"",
  },
  {
    first_name:"Ortmanová Hana",
    phone:"604784903",
    mail:"",
  },
  {
    first_name:"osobní školení s MK, prozkoušení Toma na melír modelka sehnat, Privilege",
    phone:"",
    mail:"",
  },
  {
    first_name:"ostříhat Janu - hoří",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ouředník",
    phone:"602414299",
    mail:"",
  },
  {
    first_name:"Ouředníková Alena",
    phone:"731619701",
    mail:"",
  },
  {
    first_name:"Ouředníková Klára",
    phone:"723404114",
    mail:"",
  },
  {
    first_name:"Ouředníková Magdalena",
    phone:"777139764",
    mail:"",
  },
  {
    first_name:"p. Černá Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"p. Kuldová",
    phone:"606912399",
    mail:"",
  },
  {
    first_name:"p. Nováková A.",
    phone:"775011697",
    mail:"",
  },
  {
    first_name:"P. Ouředníková",
    phone:"",
    mail:"",
  },
  {
    first_name:"p. Půtová Monika",
    phone:"603889017",
    mail:"",
  },
  {
    first_name:"p. Vacková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Paciuchová",
    phone:"606692215",
    mail:"",
  },
  {
    first_name:"Pajmová",
    phone:"731474929",
    mail:"",
  },
  {
    first_name:"Palková",
    phone:"775143021",
    mail:"",
  },
  {
    first_name:"pan Hána",
    phone:"",
    mail:"",
  },
  {
    first_name:"pan klient",
    phone:"",
    mail:"",
  },
  {
    first_name:"pán na úsporu vody - nějaký OZ",
    phone:"602572573",
    mail:"",
  },
  {
    first_name:"pan Tomáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"Paní Bergerová",
    phone:"602870106",
    mail:"",
  },
  {
    first_name:"paní Hrubá, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"paní Křesťanová",
    phone:"",
    mail:"",
  },
  {
    first_name:"paní Lebišová",
    phone:"",
    mail:"",
  },
  {
    first_name:"paní Lucáková",
    phone:"728121291",
    mail:"",
  },
  {
    first_name:"pánský model",
    phone:"",
    mail:"",
  },
  {
    first_name:"Paruka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Parula Martin",
    phone:"728243690",
    mail:"martin.parula@gmail.com",
  },
  {
    first_name:"Parulová",
    phone:"607982397",
    mail:"",
  },
  {
    first_name:"Patricie Felcmanová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Patryk Borycki",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pavel Slegl",
    phone:"724708888",
    mail:"",
  },
  {
    first_name:"Pavlína ...",
    phone:"731121606",
    mail:"",
  },
  {
    first_name:"Pavlová Veronika",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pazderková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pecová",
    phone:"731188586",
    mail:"",
  },
  {
    first_name:"Pecháčová",
    phone:"702028817",
    mail:"",
  },
  {
    first_name:"Pechalová",
    phone:"602191563",
    mail:"",
  },
  {
    first_name:"Pechlátová",
    phone:"777270020",
    mail:"",
  },
  {
    first_name:"Pechlátová, skoro NK",
    phone:"777270020",
    mail:"",
  },
  {
    first_name:"pechová terezie",
    phone:"721426487",
    mail:"",
  },
  {
    first_name:"Peláková Kateřina",
    phone:"739478437",
    mail:"k.pelakova&amp",
  },
  {
    first_name:"Peláková Zuzana",
    phone:"778044577",
    mail:"zpelakova@seznam.cz",
  },
  {
    first_name:"Pernikl",
    phone:"776154412",
    mail:"",
  },
  {
    first_name:"Pernikl Michal",
    phone:"776154412",
    mail:"",
  },
  {
    first_name:"Pernikl Michal",
    phone:"776154421",
    mail:"",
  },
  {
    first_name:"Pethsová",
    phone:"731188586",
    mail:"",
  },
  {
    first_name:"Petra Šanderová",
    phone:"728720798",
    mail:"sanderovap@seznam.cz",
  },
  {
    first_name:"Petra Šanderová, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"Petrášová Tereza",
    phone:"774237537",
    mail:"",
  },
  {
    first_name:"Petrová",
    phone:"608551572",
    mail:"",
  },
  {
    first_name:"Petrová, NK",
    phone:"726303360",
    mail:"",
  },
  {
    first_name:"Pětvaldská",
    phone:"",
    mail:"",
  },
  {
    first_name:"pí. Rychlá",
    phone:"723652688",
    mail:"rychla.iveta@seznam.cz",
  },
  {
    first_name:"Pijálková",
    phone:"731082124",
    mail:"",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl",
    phone:"776056205",
    mail:"",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl&nbsp",
    phone:"&nbsp",
    mail:"NK",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl&nbsp",
    phone:"&nbsp",
    mail:"NK chce info",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl&nbsp",
    phone:"&nbsp",
    mail:"NK chce info/ NEPŘIŠLA",
  },
  {
    first_name:"Píšová Helena",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pitrová gabriela ml",
    phone:"777866878",
    mail:"gabrielapitr@gmail.com",
  },
  {
    first_name:"Pitrová starší",
    phone:"728519102",
    mail:"",
  },
  {
    first_name:"Pittnerová Hana",
    phone:"603178679",
    mail:"",
  },
  {
    first_name:"Pittnerová, NK",
    phone:"739357071",
    mail:"",
  },
  {
    first_name:"Pivoňková",
    phone:"603287719",
    mail:"",
  },
  {
    first_name:"Pivoňková",
    phone:"728956957",
    mail:"",
  },
  {
    first_name:"Plachá Kateřina",
    phone:"721652387",
    mail:"",
  },
  {
    first_name:"Plasová",
    phone:"602958764",
    mail:"",
  },
  {
    first_name:"plnění úkolů od Jarky",
    phone:"",
    mail:"",
  },
  {
    first_name:"plnit úkoly od Jarky",
    phone:"",
    mail:"",
  },
  {
    first_name:"Podberecká",
    phone:"775304981",
    mail:"",
  },
  {
    first_name:"Pohlová Petra",
    phone:"606658512",
    mail:"",
  },
  {
    first_name:"pohovor Pištěláková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pojerová",
    phone:"730674363",
    mail:"",
  },
  {
    first_name:"Pokorná Lenka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pokorná Lenka, NK, známá manažerky",
    phone:"",
    mail:"",
  },
  {
    first_name:"pokračovat na panně - Jarky zadání",
    phone:"",
    mail:"",
  },
  {
    first_name:"pokračovat ve školení Ilony",
    phone:"",
    mail:"",
  },
  {
    first_name:"Polák petr",
    phone:"605156051",
    mail:"",
  },
  {
    first_name:"Poláková cizinka",
    phone:"608325389",
    mail:"",
  },
  {
    first_name:"Poláková, NK",
    phone:"721155244",
    mail:"",
  },
  {
    first_name:"Poláková, NK",
    phone:"608325431",
    mail:"",
  },
  {
    first_name:"pomáhat Janě se sundáním a rozčesáním",
    phone:"",
    mail:"",
  },
  {
    first_name:"pomáhat Janě se Zuberovou",
    phone:"",
    mail:"",
  },
  {
    first_name:"pomoct Janě se sundaváním vlasů",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pons Sandra",
    phone:"739516217",
    mail:"",
  },
  {
    first_name:"Popelková",
    phone:"605934564",
    mail:"",
  },
  {
    first_name:"Popelková",
    phone:"střih pak na barvu k Hance",
    mail:"",
  },
  {
    first_name:"porada",
    phone:"",
    mail:"",
  },
  {
    first_name:"porada + řešení kolekce HAD",
    phone:"",
    mail:"",
  },
  {
    first_name:"porada + řešení kolekce HAD + připomenutí Discipline",
    phone:"",
    mail:"",
  },
  {
    first_name:"porada s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pospíšilová",
    phone:"739113100",
    mail:"andulka.pospisilova@seznam.cz",
  },
  {
    first_name:"povinný úklid",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid - výtěr",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid - VYTŘÍT!!!",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid + dopsat objednávku na LP",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid + výplata",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid zavolat paní Ilič",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný uklízení",
    phone:"",
    mail:"",
  },
  {
    first_name:"PRAHA školení výčesy Vavrušková a spol.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Prášilová - Goldwell",
    phone:"",
    mail:"",
  },
  {
    first_name:"Praum",
    phone:"775209020",
    mail:"",
  },
  {
    first_name:"pražák Martin",
    phone:"731581595",
    mail:"",
  },
  {
    first_name:"Pražáková Karolína",
    phone:"736200637",
    mail:"",
  },
  {
    first_name:"Prexlová Kateřina",
    phone:"",
    mail:"",
  },
  {
    first_name:"Prchal",
    phone:"604804290",
    mail:"",
  },
  {
    first_name:"probrat s Hankou proběhlé školení - nastavit, co se naučí",
    phone:"",
    mail:"",
  },
  {
    first_name:"probrat s Monikou proběhlé školení",
    phone:"",
    mail:"",
  },
  {
    first_name:"Prodloužení 50 GL",
    phone:"",
    mail:"",
  },
  {
    first_name:"Procházková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Procházková L.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Procházková Lucie",
    phone:"723264547",
    mail:"",
  },
  {
    first_name:"Procházková Markéta",
    phone:"",
    mail:"",
  },
  {
    first_name:"projít si fotky v ipadu a vytvořit Jarce seznam, jaké účesy nezvládneš - seženeme na ně modelky",
    phone:"",
    mail:"",
  },
  {
    first_name:"předání výplaty",
    phone:"",
    mail:"",
  },
  {
    first_name:"předělání koláží - ukázat Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"přehlídka",
    phone:"",
    mail:"",
  },
  {
    first_name:"přijde servis pán ohledně klimatizace, vysvětlit vám jak se čistí filtr.",
    phone:"",
    mail:"",
  },
  {
    first_name:"přijde slečna pro banner na maturák",
    phone:"",
    mail:"",
  },
  {
    first_name:"Přijdu až na 14:10",
    phone:"",
    mail:"",
  },
  {
    first_name:"příprava na malování",
    phone:"",
    mail:"",
  },
  {
    first_name:"příprava na školení drdolů 14.8.",
    phone:"",
    mail:"",
  },
  {
    first_name:"přítel Bláhové",
    phone:"",
    mail:"",
  },
  {
    first_name:"přivezou terminál",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pučelíková",
    phone:"776587669",
    mail:"",
  },
  {
    first_name:"Pultr Zdeněk",
    phone:"775197390",
    mail:"",
  },
  {
    first_name:"Pultr Zdeněk",
    phone:"775197390",
    mail:"zdendapr@centrum.cz",
  },
  {
    first_name:"Pumprová Lucie",
    phone:"777919332",
    mail:"",
  },
  {
    first_name:"Půtová",
    phone:"603889017",
    mail:"monika.putova@post.cz",
  },
  {
    first_name:"Půtová Martina",
    phone:"777118885",
    mail:"",
  },
  {
    first_name:"Pyšková Zuzana",
    phone:"608166622",
    mail:"",
  },
  {
    first_name:"rady pro lepší pánský střih - Tereza",
    phone:"",
    mail:"",
  },
  {
    first_name:"rady pro lepší pánský střih s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ratajčiková",
    phone:"605842434",
    mail:"",
  },
  {
    first_name:"recepční + se dívat, jak Jana posouvá",
    phone:"",
    mail:"",
  },
  {
    first_name:"recepční + splnit úkoly od Jarky",
    phone:"",
    mail:"",
  },
  {
    first_name:"Rejdová Lenka",
    phone:"605978096",
    mail:"",
  },
  {
    first_name:"Reservé M.K. známá Kalíšek",
    phone:"",
    mail:"",
  },
  {
    first_name:"Richard Šulko",
    phone:"734253364",
    mail:"",
  },
  {
    first_name:"Ripplová Květa",
    phone:"604752694",
    mail:"kveta.ripplova@seznam.cz",
  },
  {
    first_name:"Rolingerová",
    phone:"604313233",
    mail:"",
  },
  {
    first_name:"Rolingerová",
    phone:"",
    mail:"monika.roll@seznam.cz",
  },
  {
    first_name:"Rollingerová",
    phone:"604313233",
    mail:"",
  },
  {
    first_name:"Roman Šefl",
    phone:"728690019",
    mail:"",
  },
  {
    first_name:"Roman Šefl",
    phone:"",
    mail:"sefl.roman@seznam.cz",
  },
  {
    first_name:"Ronzová",
    phone:"602746592",
    mail:"",
  },
  {
    first_name:"Ronzová Martina",
    phone:"602745592",
    mail:"ronzova.martina@seznam.cz",
  },
  {
    first_name:"Roztočilová",
    phone:"775858564",
    mail:"",
  },
  {
    first_name:"Roztočilová - k Janě",
    phone:"",
    mail:"",
  },
  {
    first_name:"Roztočilová Alena starší",
    phone:"607630444",
    mail:"",
  },
  {
    first_name:"Roztočilová k terce",
    phone:"",
    mail:"",
  },
  {
    first_name:"Roztočilová ml.",
    phone:"775858564",
    mail:"",
  },
  {
    first_name:"Roztočilová ml. - k Tomovi",
    phone:"",
    mail:"",
  },
  {
    first_name:"Roztočilová ml. - k Tomovi!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"603221905",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"603221905",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"608520220",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"",
    mail:"v.rud.@seznam.cz",
  },
  {
    first_name:"Rusínová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Růžička",
    phone:"602437949",
    mail:"",
  },
  {
    first_name:"Růžička",
    phone:"602682419",
    mail:"",
  },
  {
    first_name:"Růžička",
    phone:"606642315",
    mail:"",
  },
  {
    first_name:"Růžička JAN",
    phone:"606793261",
    mail:"",
  },
  {
    first_name:"Růžička Ondřej",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ružička Oto",
    phone:"602437949",
    mail:"",
  },
  {
    first_name:"Růžičková Alena",
    phone:"602682419",
    mail:"",
  },
  {
    first_name:"Růžičková Iva",
    phone:"774675218",
    mail:"",
  },
  {
    first_name:"Rychlá",
    phone:"723652688",
    mail:"",
  },
  {
    first_name:"Rychlá",
    phone:"",
    mail:"rychla.iveta@seznam.cz",
  },
  {
    first_name:"řehořová karolína",
    phone:"724160780",
    mail:"",
  },
  {
    first_name:"Řežábková",
    phone:"724320082",
    mail:"",
  },
  {
    first_name:"Řežábková",
    phone:"",
    mail:"rezabkova@vsp-auto.cz",
  },
  {
    first_name:"Saláková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Salcmanová",
    phone:"603298839",
    mail:"",
  },
  {
    first_name:"Senjuková",
    phone:"734208482",
    mail:"",
  },
  {
    first_name:"Senjuková",
    phone:"",
    mail:"terezasenjukova@gmail.com",
  },
  {
    first_name:"sepsat Jarce v bodech, co bylo na IT LOOKu a poslat do mailu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Shandová",
    phone:"776680356",
    mail:"",
  },
  {
    first_name:"Scherbaumová Lenka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Schmidová Pavla",
    phone:"+420723359951",
    mail:"",
  },
  {
    first_name:"scholzová eva",
    phone:"608962785",
    mail:"",
  },
  {
    first_name:"Schön Jakub",
    phone:"731053057",
    mail:"",
  },
  {
    first_name:"Schorník",
    phone:"728608555",
    mail:"",
  },
  {
    first_name:"Schurník Václav",
    phone:"728608555",
    mail:"",
  },
  {
    first_name:"Sieglerová",
    phone:"377237544",
    mail:"",
  },
  {
    first_name:"Skala",
    phone:"602710958",
    mail:"",
  },
  {
    first_name:"Skaláková",
    phone:"776134632",
    mail:"",
  },
  {
    first_name:"Skaláková",
    phone:"",
    mail:"skalakovi@email.cz",
  },
  {
    first_name:"Skalová",
    phone:"737105609",
    mail:"",
  },
  {
    first_name:"Skalová",
    phone:"737105609",
    mail:"karla.skalova@gmail.com",
  },
  {
    first_name:"Skalová Jana",
    phone:"728608013",
    mail:"",
  },
  {
    first_name:"Skalová Jana",
    phone:"",
    mail:"zebra.ska@centrum.cz",
  },
  {
    first_name:"Skleničková",
    phone:"775133217",
    mail:"",
  },
  {
    first_name:"Skočdopolová",
    phone:"",
    mail:"",
  },
  {
    first_name:"skolení beach wawes",
    phone:"",
    mail:"",
  },
  {
    first_name:"skolení beach wawes PŘIJDOU VŠICHNI!!!!!!!!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Sl.Hronková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Sláma",
    phone:"608981640",
    mail:"ludek.sl@seznam.cz",
  },
  {
    first_name:"Slámová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Slámová Andrea",
    phone:"608346336",
    mail:"sportstudioa@seznam.cz",
  },
  {
    first_name:"Smejkalová",
    phone:"724184522",
    mail:"",
  },
  {
    first_name:"Smejkalová",
    phone:"371728026",
    mail:"",
  },
  {
    first_name:"Smitka",
    phone:"721161280",
    mail:"",
  },
  {
    first_name:"Smitka",
    phone:"721161280",
    mail:"jan@smitka.org",
  },
  {
    first_name:"Smrček",
    phone:"603418522",
    mail:"",
  },
  {
    first_name:"Snopková",
    phone:"773638033",
    mail:"",
  },
  {
    first_name:"Soběhartová",
    phone:"736 244 842",
    mail:"",
  },
  {
    first_name:"Sobjehartová",
    phone:"736244842",
    mail:"",
  },
  {
    first_name:"Soldánová",
    phone:"739617206",
    mail:"soldanovakatrina@seznam.cz",
  },
  {
    first_name:"Solech Adam",
    phone:"773602900",
    mail:"",
  },
  {
    first_name:"Soukup Tomáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"Soukupová, NK",
    phone:"378134701",
    mail:"",
  },
  {
    first_name:"Srbecká",
    phone:"721313015",
    mail:"",
  },
  {
    first_name:"Srbecká",
    phone:"721313015",
    mail:"srbecka@minus.cz",
  },
  {
    first_name:"Srbecká Kateřina, má za týden svatbu chce zvelebit",
    phone:"721313016",
    mail:"",
  },
  {
    first_name:"Stackhouse",
    phone:"",
    mail:"",
  },
  {
    first_name:"Staňková",
    phone:"602306142",
    mail:"",
  },
  {
    first_name:"Staňková",
    phone:"",
    mail:"stankova@profi-cz.cz",
  },
  {
    first_name:"stáž - Jana a Monika",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž - Monika a Kristý",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž - všichni kadeřníci",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Jana a Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Jana a Tom a Jarka",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Jarka a MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Stoljarová",
    phone:"777539248",
    mail:"",
  },
  {
    first_name:"Strnadová - vizážistka",
    phone:"",
    mail:"",
  },
  {
    first_name:"střídání kadeřníků na stanovišti",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih - Terka",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih - Terka + foukaná (zadá Jarka)",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih Moniky",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih u Moniky",
    phone:"",
    mail:"",
  },
  {
    first_name:"Sudová ( neumí se objednat včas a pak chce jít jinam)",
    phone:"724351120",
    mail:"",
  },
  {
    first_name:"Sudová k MM",
    phone:"724351120",
    mail:"",
  },
  {
    first_name:"Suchá",
    phone:"",
    mail:"",
  },
  {
    first_name:"Svitáková",
    phone:"739032687",
    mail:"",
  },
  {
    first_name:"Svobodová",
    phone:"606366123",
    mail:"",
  },
  {
    first_name:"Svobodová HANA",
    phone:"724254910",
    mail:"",
  },
  {
    first_name:"Svobodová HANA",
    phone:"",
    mail:"svob.h@seznam.cz",
  },
  {
    first_name:"Sýkorová Kornelie",
    phone:"602290200",
    mail:"nelus@centrum.cz",
  },
  {
    first_name:"Šamšula",
    phone:"602749198",
    mail:"",
  },
  {
    first_name:"Šárka Černá",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šašková Klára",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šašková Magdalena",
    phone:"607178154",
    mail:"",
  },
  {
    first_name:"Šebestová",
    phone:"732795019",
    mail:"",
  },
  {
    first_name:"Šedivá",
    phone:"775029036",
    mail:"",
  },
  {
    first_name:"Šedivá",
    phone:"",
    mail:"hanahauserova@seznam.cz",
  },
  {
    first_name:"Šedivá, NK",
    phone:"775029036",
    mail:"",
  },
  {
    first_name:"Šedivák",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šedivý",
    phone:"606402227",
    mail:"",
  },
  {
    first_name:"Šeflová",
    phone:"607691516",
    mail:"",
  },
  {
    first_name:"Šeflová",
    phone:"",
    mail:"marieseflova@seznam.cz",
  },
  {
    first_name:"Šejdová Kateřina",
    phone:"774736860",
    mail:"",
  },
  {
    first_name:"Šejdová Kateřina",
    phone:"",
    mail:"k.sejdova@seznam.cz",
  },
  {
    first_name:"Šejdová Kateřina, NK",
    phone:"774736860",
    mail:"",
  },
  {
    first_name:"Šenbauerová, NK",
    phone:"736226029",
    mail:"",
  },
  {
    first_name:"Šepelová",
    phone:"603922574",
    mail:"",
  },
  {
    first_name:"Šepelová Natálie",
    phone:"603922574",
    mail:"",
  },
  {
    first_name:"Šepelová Natálie",
    phone:"",
    mail:"milasek1406@azet.sk",
  },
  {
    first_name:"Ševčíková Tereza",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šimandlová",
    phone:"607550143",
    mail:"",
  },
  {
    first_name:"Šimandlová",
    phone:"",
    mail:"PVST@seznam.cz",
  },
  {
    first_name:"Šimánová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šimeček",
    phone:"728686119",
    mail:"",
  },
  {
    first_name:"Šimek",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šimková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šíšová Darina",
    phone:"774920245",
    mail:"darina.sisova@seznam.cz",
  },
  {
    first_name:"Škodová",
    phone:"731807167",
    mail:"",
  },
  {
    first_name:"škol. s Tom. retex kerasmoth",
    phone:"",
    mail:"",
  },
  {
    first_name:"škol. s Tom. tajemství úspěšného prodeje",
    phone:"",
    mail:"",
  },
  {
    first_name:"škol.konzultace na střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"škol.s Janou na konzultaci střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - co se MM naučila na stáži Drdoly",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - co se MM naučila na stážích",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - drdoly",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - drdoly - všichni",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - Jarka a junioři",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - MM a junioři",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - od Moniky, co se naučila v GHD",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - střihy a foukaná",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - střihy a foukaná + případně fotky",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - všichni",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - všichni - co se Tom naučil na Šulovi",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení (obřady, plus co ještě Jarka zadá) + výpomoc, kde bude třeba, a koukání na ostatní kadeřníky",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení foukaná - Monika + junioři",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení foukaná - Monika + junioři - sehnat 3 modelky",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka dám. střih Zuzka Mach, + fialová elumen celá hlava, neví jestli odbarvit odrost",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka pánská masáž + teorie barev",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka pánská masáž + teorie barev - vysvětlit výživy",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka pánský střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka střih pán",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka střih pán - Honza Novák",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka teorie",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka teorie Klíč k barvě 1",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Jana na senior",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení konzultace prodej",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení konzultace prodej + natáčení na dvojče",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení konzultace retex ,kerasmooth s Tomem",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení MM it look",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení modelka na střih dlouhé vlasy Hanka",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení modelka na střih dlouhé vlasy Hanka - slečna Krausová",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení na melír Toma, Jany",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení na melír Toma, Jany&nbsp",
    phone:"&nbsp",
    mail:"a nováčka",
  },
  {
    first_name:"školení narovnání vlasů BioIonic model",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení narovnání vlasů Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováček",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováček s Janou",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováček s MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováčka",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení s Ilonou",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení s J.retex a kerasmoth",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení s J.tajemství úspěšného prodeje",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"Strana 1 / 2",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"2nove zakaznice",
    phone:"777588633",
    mail:"",
  },
  {
    first_name:"Alblová Petra",
    phone:"728735501",
    mail:"a.pesulka@seznam.cz",
  },
  {
    first_name:"Aleš Volmut",
    phone:"723264446",
    mail:"",
  },
  {
    first_name:"Anatoli Resakž",
    phone:"774080516",
    mail:"",
  },
  {
    first_name:"Aneta Benediktová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Anna Přibylova",
    phone:"",
    mail:"",
  },
  {
    first_name:"Balcar",
    phone:"uložen v mobilu",
    mail:"",
  },
  {
    first_name:"Balcar",
    phone:"720313006",
    mail:"",
  },
  {
    first_name:"Balcar",
    phone:"",
    mail:"jan.balcar.info@gmail.com",
  },
  {
    first_name:"Bandyová",
    phone:"732144200",
    mail:"",
  },
  {
    first_name:"Baroňová Veronika",
    phone:"604642849",
    mail:"",
  },
  {
    first_name:"Baroňová Veronika",
    phone:"",
    mail:"baronova@seznam.cz",
  },
  {
    first_name:"Barták",
    phone:"724675966",
    mail:"",
  },
  {
    first_name:"Bartošová Monika",
    phone:"731754884",
    mail:"",
  },
  {
    first_name:"barva Janě",
    phone:"",
    mail:"",
  },
  {
    first_name:"barva Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"Baumruk",
    phone:"728308605",
    mail:"",
  },
  {
    first_name:"Baxová",
    phone:"607707643",
    mail:"",
  },
  {
    first_name:"běhounek aleš",
    phone:"732982789",
    mail:"",
  },
  {
    first_name:"Bělohlav",
    phone:"775087100",
    mail:"",
  },
  {
    first_name:"Beneš",
    phone:"721750659",
    mail:"",
  },
  {
    first_name:"Benešová Andrea, NK",
    phone:"773974740",
    mail:"",
  },
  {
    first_name:"Benýšková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Benýšková Lucie",
    phone:"607822975",
    mail:"luciasci@seznam.cz",
  },
  {
    first_name:"Beránková",
    phone:"606794053",
    mail:"",
  },
  {
    first_name:"Beránková",
    phone:"777953231",
    mail:"",
  },
  {
    first_name:"Beránková",
    phone:"",
    mail:"berydesigner@seznam.cz",
  },
  {
    first_name:"Berešová - k TOMOVI",
    phone:"724822985",
    mail:"",
  },
  {
    first_name:"Berešová Markéta",
    phone:"724822985",
    mail:"",
  },
  {
    first_name:"Berešová Markéta",
    phone:"732721139",
    mail:"marketa.beresova@centrum.cz",
  },
  {
    first_name:"Bergerová",
    phone:"602870106",
    mail:"",
  },
  {
    first_name:"Bernardínová",
    phone:"604177402",
    mail:"",
  },
  {
    first_name:"Bernardínová",
    phone:"606630030",
    mail:"",
  },
  {
    first_name:"Beštová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Bihariová",
    phone:"739650512",
    mail:"redakini108@gmail.com",
  },
  {
    first_name:"Bihariová",
    phone:"606630030",
    mail:"biharidominika@seznam.cz",
  },
  {
    first_name:"Bílý",
    phone:"722546399",
    mail:"radimbily@seznam.cz",
  },
  {
    first_name:"Bílý (tomovo kamarád)",
    phone:"",
    mail:"",
  },
  {
    first_name:"Bínová Olga",
    phone:"728176151",
    mail:"",
  },
  {
    first_name:"Bisera Haydaroglu",
    phone:"608114294",
    mail:"biserahaydaroglu@centrum.cz",
  },
  {
    first_name:"Bláha",
    phone:"777247163",
    mail:"",
  },
  {
    first_name:"Bláhová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Bláhová + přítel",
    phone:"776665799",
    mail:"",
  },
  {
    first_name:"Blankenburgová Adéla",
    phone:"721847834",
    mail:"",
  },
  {
    first_name:"Blažková",
    phone:"603378810",
    mail:"verusblazkova@seznam.cz",
  },
  {
    first_name:"Bludovská Monika",
    phone:"728645597",
    mail:"",
  },
  {
    first_name:"Bludovská Monika",
    phone:"728645597",
    mail:"bludovskam@email.cz",
  },
  {
    first_name:"Bočková",
    phone:"602390831",
    mail:"",
  },
  {
    first_name:"Bodrová Václav",
    phone:"775337626",
    mail:"vaclav.bodrov@g2studio.cz",
  },
  {
    first_name:"Bodrovova",
    phone:"775937621",
    mail:"",
  },
  {
    first_name:"Bodrovovová Jitka",
    phone:"775937621",
    mail:"jitka.bodrov@email.cz",
  },
  {
    first_name:"Bohdanecký Petr",
    phone:"608131982",
    mail:"",
  },
  {
    first_name:"Brabcová Mar.",
    phone:"775220044",
    mail:"",
  },
  {
    first_name:"Brandlová",
    phone:"736675476",
    mail:"",
  },
  {
    first_name:"Brandlová",
    phone:"",
    mail:"michaela.brandlova@seznam.cz",
  },
  {
    first_name:"Brejchová",
    phone:"603586976",
    mail:"",
  },
  {
    first_name:"Brejchová Martina k MM",
    phone:"603586976",
    mail:"",
  },
  {
    first_name:"Brejchová Martina k MM",
    phone:"",
    mail:"sagahell@seznam.cz",
  },
  {
    first_name:"Brusmanová",
    phone:"608208814",
    mail:"",
  },
  {
    first_name:"Brusmanová",
    phone:"",
    mail:"brussi@centrum.cz",
  },
  {
    first_name:"Bryndačová",
    phone:"604323683",
    mail:"",
  },
  {
    first_name:"Burian Lukáš",
    phone:"602672318",
    mail:"",
  },
  {
    first_name:"Buriánek",
    phone:"607270686",
    mail:"vitb@email.cz",
  },
  {
    first_name:"Caicová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Caisová",
    phone:"607114081",
    mail:"",
  },
  {
    first_name:"Caisová",
    phone:"",
    mail:"mcaisova@seznam.cz",
  },
  {
    first_name:"Cibulková Jana",
    phone:"777068621",
    mail:"",
  },
  {
    first_name:"Ciegler",
    phone:"",
    mail:"",
  },
  {
    first_name:"Cieslarová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Cígler Tomáš",
    phone:"737776430",
    mail:"cigler.tomas@gmail.com",
  },
  {
    first_name:"Cíglerová Anna",
    phone:"737776430",
    mail:"",
  },
  {
    first_name:"Cíglerová Anna",
    phone:"723023609",
    mail:"anncig@seznam.cz",
  },
  {
    first_name:"Cimrmanová",
    phone:"727940292",
    mail:"",
  },
  {
    first_name:"Cipřišová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Color Zoom Show",
    phone:"",
    mail:"",
  },
  {
    first_name:"Cvrček",
    phone:"736539719",
    mail:"",
  },
  {
    first_name:"Cvrček Antonín",
    phone:"603 77 55 90",
    mail:"",
  },
  {
    first_name:"Cvrček Josef",
    phone:"736539719",
    mail:"illk@centrum.cz",
  },
  {
    first_name:"Čabaková, NK",
    phone:"777626451",
    mail:"",
  },
  {
    first_name:"Čechová Olga",
    phone:"728212403",
    mail:"cecholga@seznam.cz",
  },
  {
    first_name:"Čejková",
    phone:"777766041",
    mail:"",
  },
  {
    first_name:"Čejková",
    phone:"",
    mail:"icejka@email.com",
  },
  {
    first_name:"čekalová",
    phone:"775898145",
    mail:"",
  },
  {
    first_name:"čekání na manžela",
    phone:"",
    mail:"",
  },
  {
    first_name:"Čepeláková",
    phone:"736676107",
    mail:"",
  },
  {
    first_name:"Čepeláková",
    phone:"",
    mail:"ivete.no@seznam.cz",
  },
  {
    first_name:"Černá",
    phone:"723123439",
    mail:"",
  },
  {
    first_name:"Černá D.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Černá Dagmar",
    phone:"604130805",
    mail:"",
  },
  {
    first_name:"Černá Ilona",
    phone:"723123439",
    mail:"",
  },
  {
    first_name:"Černá Ilona",
    phone:"723127439",
    mail:"",
  },
  {
    first_name:"Černá Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Černá Lenka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Černá Lenka chtěla ke Kristý",
    phone:"605885281",
    mail:"",
  },
  {
    first_name:"Černá Míša",
    phone:"720474284",
    mail:"misisulik@gmail.com",
  },
  {
    first_name:"Černá Veronika",
    phone:"777632838",
    mail:"",
  },
  {
    first_name:"Dadáková Hana",
    phone:"775982472",
    mail:"hanadadakova@gmail.com",
  },
  {
    first_name:"Dagmar Kratochvílová",
    phone:"775002299",
    mail:"",
  },
  {
    first_name:"Dalibor - kamarád z Pivoňky",
    phone:"728855516",
    mail:"",
  },
  {
    first_name:"Dalibor Hnětila",
    phone:"",
    mail:"",
  },
  {
    first_name:"David Lábr",
    phone:"723499837",
    mail:"",
  },
  {
    first_name:"Deglova Oxana",
    phone:"",
    mail:"",
  },
  {
    first_name:"dělat recepční + trénink na panně",
    phone:"",
    mail:"",
  },
  {
    first_name:"Denisa Gamcová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Derová",
    phone:"775250272",
    mail:"",
  },
  {
    first_name:"Dezortová Veronika",
    phone:"603266911",
    mail:"",
  },
  {
    first_name:"Dezortová Veronika",
    phone:"724444036",
    mail:"",
  },
  {
    first_name:"dívat se na Janu a pomoct jí",
    phone:"",
    mail:"",
  },
  {
    first_name:"Divič",
    phone:"606131413",
    mail:"",
  },
  {
    first_name:"Diviš",
    phone:"",
    mail:"",
  },
  {
    first_name:"Diviš Václav",
    phone:"606131413",
    mail:"",
  },
  {
    first_name:"Diviš Václav",
    phone:"",
    mail:"divisvaclav@seznam.cz",
  },
  {
    first_name:"Dlubalová",
    phone:"777996570",
    mail:"pavla.dlubalova@gmail.com",
  },
  {
    first_name:"Doerová",
    phone:"775250272",
    mail:"",
  },
  {
    first_name:"Dolejší Marcela",
    phone:"",
    mail:"",
  },
  {
    first_name:"Domingues",
    phone:"",
    mail:"",
  },
  {
    first_name:"Dongerová",
    phone:"606754738",
    mail:"",
  },
  {
    first_name:"dopoledne přijde paní Maříková - reklamace BW",
    phone:"",
    mail:"",
  },
  {
    first_name:"Doráková",
    phone:"724570157",
    mail:"",
  },
  {
    first_name:"Doubková Lucie",
    phone:"731114536",
    mail:"",
  },
  {
    first_name:"Dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"Drahoňovská",
    phone:"777886066",
    mail:"",
  },
  {
    first_name:"Drbalová",
    phone:"602280040",
    mail:"",
  },
  {
    first_name:"drdol - panna",
    phone:"",
    mail:"",
  },
  {
    first_name:"Drožď",
    phone:"724998281",
    mail:"",
  },
  {
    first_name:"Dubská",
    phone:"606562098",
    mail:"",
  },
  {
    first_name:"Duda",
    phone:"721244879",
    mail:"",
  },
  {
    first_name:"Duda s manželkou",
    phone:"776828222",
    mail:"",
  },
  {
    first_name:"Duchková",
    phone:"608115684",
    mail:"",
  },
  {
    first_name:"Duchková, NK",
    phone:"723451001",
    mail:"",
  },
  {
    first_name:"Duspiva",
    phone:"724685272",
    mail:"",
  },
  {
    first_name:"Duspivová",
    phone:"725279719",
    mail:"",
  },
  {
    first_name:"Dušáková M.",
    phone:"602233462",
    mail:"",
  },
  {
    first_name:"Dušáková M.",
    phone:"střih kr. vl",
    mail:"",
  },
  {
    first_name:"Dzubová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ebenstreitová",
    phone:"724444944",
    mail:"",
  },
  {
    first_name:"Ebernová Tereza",
    phone:"7373153509",
    mail:"",
  },
  {
    first_name:"Edelová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Edelová - přijde ukázat, co umí",
    phone:"",
    mail:"",
  },
  {
    first_name:"Edelová Nela",
    phone:"",
    mail:"",
  },
  {
    first_name:"Edita - BioIonic",
    phone:"",
    mail:"",
  },
  {
    first_name:"Evička černá",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fabiánová NK",
    phone:"603260515",
    mail:"",
  },
  {
    first_name:"Faitová",
    phone:"607121148",
    mail:"",
  },
  {
    first_name:"Faitová",
    phone:"739421022",
    mail:"",
  },
  {
    first_name:"Fajtová",
    phone:"739421022",
    mail:"",
  },
  {
    first_name:"Fedelešová",
    phone:"723881868",
    mail:"",
  },
  {
    first_name:"Fejtová",
    phone:"737129863",
    mail:"",
  },
  {
    first_name:"Fenclová",
    phone:"739200557",
    mail:"",
  },
  {
    first_name:"Fenclová Petra",
    phone:"739200557",
    mail:"",
  },
  {
    first_name:"fiala",
    phone:"720377331",
    mail:"",
  },
  {
    first_name:"fialová",
    phone:"603119660",
    mail:"",
  },
  {
    first_name:"Fiedrman",
    phone:"603332284",
    mail:"",
  },
  {
    first_name:"Fichtnerová",
    phone:"607553249",
    mail:"",
  },
  {
    first_name:"Filerová",
    phone:"604943990",
    mail:"",
  },
  {
    first_name:"Filipová",
    phone:"",
    mail:"",
  },
  {
    first_name:"finální příprava na Color Zoom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fischerová",
    phone:"721611841",
    mail:"",
  },
  {
    first_name:"Fišerová",
    phone:"721611841",
    mail:"",
  },
  {
    first_name:"Flaková",
    phone:"723513755",
    mail:"",
  },
  {
    first_name:"Fláma",
    phone:"608981640",
    mail:"",
  },
  {
    first_name:"Florian",
    phone:"",
    mail:"",
  },
  {
    first_name:"focení - Aichi",
    phone:"",
    mail:"",
  },
  {
    first_name:"focení - Color Zoom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fořtova Linda",
    phone:"726461253",
    mail:"",
  },
  {
    first_name:"foukaná Evče",
    phone:"",
    mail:"",
  },
  {
    first_name:"foukaná Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"František Funda",
    phone:"",
    mail:"",
  },
  {
    first_name:"Fremr",
    phone:"",
    mail:"",
  },
  {
    first_name:"Friedman",
    phone:"603332284",
    mail:"",
  },
  {
    first_name:"Frischauf",
    phone:"724432213",
    mail:"",
  },
  {
    first_name:"Frouz",
    phone:"608272186",
    mail:"",
  },
  {
    first_name:"Furbacherová Klára",
    phone:"604309538",
    mail:"",
  },
  {
    first_name:"Furbacherová Klára",
    phone:"60430953",
    mail:"klara.matousu@seznam.cz",
  },
  {
    first_name:"Gablišová",
    phone:"606177407",
    mail:"",
  },
  {
    first_name:"Gajdošík",
    phone:"728855516",
    mail:"",
  },
  {
    first_name:"Ghatasová ELen",
    phone:"736278289",
    mail:"",
  },
  {
    first_name:"Ghatasová Marie",
    phone:"775028472",
    mail:"",
  },
  {
    first_name:"Ghatasová Sylva",
    phone:"774497316",
    mail:"",
  },
  {
    first_name:"Golčáková Tereza",
    phone:"377455861",
    mail:"",
  },
  {
    first_name:"grimová",
    phone:"774260236",
    mail:"",
  },
  {
    first_name:"Gruberová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Grunwald",
    phone:"733268591",
    mail:"",
  },
  {
    first_name:"Gusejnová",
    phone:"777880527",
    mail:"",
  },
  {
    first_name:"Gusejnová gula",
    phone:"776128603",
    mail:"",
  },
  {
    first_name:"Gust ml.",
    phone:"725879276",
    mail:"",
  },
  {
    first_name:"Gustová",
    phone:"775055235",
    mail:"",
  },
  {
    first_name:"Gvardová Kateřina",
    phone:"607963295",
    mail:"",
  },
  {
    first_name:"Hacker",
    phone:"605468918",
    mail:"",
  },
  {
    first_name:"Hadinec",
    phone:"728035759",
    mail:"",
  },
  {
    first_name:"Hájek J.",
    phone:"",
    mail:"jaromir.hajek@seznam.cz",
  },
  {
    first_name:"Hájková Ivana",
    phone:"731605076",
    mail:"",
  },
  {
    first_name:"Hájková Ivana",
    phone:"731605076",
    mail:"iv.hajkova@email.cz",
  },
  {
    first_name:"Hajšmanová Gabriela",
    phone:"606160636",
    mail:"gabina.haismanova@seznam.cz",
  },
  {
    first_name:"Hajšmanová Iveta st.",
    phone:"737749606",
    mail:"",
  },
  {
    first_name:"Hana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hána Pan",
    phone:"607643604",
    mail:"",
  },
  {
    first_name:"Hanka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hanzlíková",
    phone:"604951833",
    mail:"",
  },
  {
    first_name:"Hanzlíková Evženie",
    phone:"604951833",
    mail:"evzeniehanzlikova@seznam.cz",
  },
  {
    first_name:"Havelková",
    phone:"733114939",
    mail:"",
  },
  {
    first_name:"Havelková",
    phone:"",
    mail:"anna.havelkova@seznam.cz",
  },
  {
    first_name:"Havlíčková",
    phone:"739458942",
    mail:"",
  },
  {
    first_name:"Havlíčková",
    phone:"739458942",
    mail:"seznam.mih@gmail.com",
  },
  {
    first_name:"Havlíková",
    phone:"732152233",
    mail:"",
  },
  {
    first_name:"Havlová Michaela",
    phone:"605294587",
    mail:"",
  },
  {
    first_name:"Héčková",
    phone:"723401421",
    mail:"",
  },
  {
    first_name:"Heinzlová Iveta",
    phone:"731188157",
    mail:"",
  },
  {
    first_name:"Henischová (Tomovo kamarádka)",
    phone:"721057095",
    mail:"henischovaan@hotmail.com",
  },
  {
    first_name:"Herzigová Lucie",
    phone:"728366621",
    mail:"",
  },
  {
    first_name:"Hessová",
    phone:"730101159",
    mail:"",
  },
  {
    first_name:"Hirschová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hirschová - pohovor - zkouška",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hnetival",
    phone:"728855516",
    mail:"",
  },
  {
    first_name:"Hoblová",
    phone:"774742044",
    mail:"l.hoblova@seznam.cz",
  },
  {
    first_name:"Hodačová",
    phone:"721145701",
    mail:"",
  },
  {
    first_name:"hodnocení kadeřníků",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hofmajstrová",
    phone:"723245311",
    mail:"",
  },
  {
    first_name:"Hofmanová",
    phone:"606428791",
    mail:"",
  },
  {
    first_name:"Hofmeisterová",
    phone:"723245311",
    mail:"hofmeisterova.k@seznam.cz",
  },
  {
    first_name:"Holá",
    phone:"739254541",
    mail:"",
  },
  {
    first_name:"Holá Andrea",
    phone:"739254541",
    mail:"",
  },
  {
    first_name:"Holar Milan",
    phone:"724267110",
    mail:"",
  },
  {
    first_name:"Holomková Kateřina",
    phone:"728829585",
    mail:"",
  },
  {
    first_name:"Hordinská - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Horská",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hrabáková, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hrbá, NK, chtěla kvůli ceně juniora",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hrdinová",
    phone:"603119660",
    mail:"",
  },
  {
    first_name:"Hromádková Alena",
    phone:"722628399",
    mail:"",
  },
  {
    first_name:"Hromátková",
    phone:"722628399",
    mail:"",
  },
  {
    first_name:"Hronková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hronková Hermína",
    phone:"723588228",
    mail:"",
  },
  {
    first_name:"hronková posun wonder",
    phone:"",
    mail:"",
  },
  {
    first_name:"Hudecová",
    phone:"732850566",
    mail:"",
  },
  {
    first_name:"Hulková Kateřina",
    phone:"721313016",
    mail:"",
  },
  {
    first_name:"Huppertová",
    phone:"731514742",
    mail:"martina@huppertova.com",
  },
  {
    first_name:"Hůrková (za svobodna Srbecká) Kateřina",
    phone:"721313016",
    mail:"katerinasrbecka@gmail.com",
  },
  {
    first_name:"Chaloupková",
    phone:"728648404",
    mail:"",
  },
  {
    first_name:"chce mit volno",
    phone:"",
    mail:"",
  },
  {
    first_name:"Chladová",
    phone:"603113367",
    mail:"janachladova@janachladova.com",
  },
  {
    first_name:"Chlevans",
    phone:"737081998",
    mail:"",
  },
  {
    first_name:"Chocová Alena",
    phone:"774224437",
    mail:"alicho@seznam.cz",
  },
  {
    first_name:"Chocová H.",
    phone:"774224437",
    mail:"",
  },
  {
    first_name:"Choleva Ondrej",
    phone:"737081998",
    mail:"",
  },
  {
    first_name:"Ihová Karolína",
    phone:"607213643",
    mail:"",
  },
  {
    first_name:"Ilič Petra",
    phone:"731107964",
    mail:"",
  },
  {
    first_name:"Ilona - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona a Jana J. - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona Jana J. - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona Kozáková - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ilona Marešová",
    phone:"721728323",
    mail:"",
  },
  {
    first_name:"Inventura",
    phone:"",
    mail:"",
  },
  {
    first_name:"Inventura + hodnocení kadeřníků",
    phone:"",
    mail:"",
  },
  {
    first_name:"Inventura v 10h Katka Bláhová Glamour vlny, v 16h asi fotograf na interier přijde",
    phone:"",
    mail:"",
  },
  {
    first_name:"Inventura v 10h Katka Bláhová Glamour vlny, v 16h možná fotograf na interier přijde",
    phone:"",
    mail:"",
  },
  {
    first_name:"Irena Sekmilerová, NK",
    phone:"607849195",
    mail:"",
  },
  {
    first_name:"IT LOOK",
    phone:"",
    mail:"",
  },
  {
    first_name:"IT LOOK s M.M.",
    phone:"",
    mail:"",
  },
  {
    first_name:"IT LOOKS s MM TRENDY",
    phone:"",
    mail:"",
  },
  {
    first_name:"J.V.",
    phone:"",
    mail:"",
  },
  {
    first_name:"J.V. DOVOLENÁ",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jáchimová",
    phone:"775045305",
    mail:"romanaa@seznam.cz",
  },
  {
    first_name:"Jáchymová Alena",
    phone:"602339975",
    mail:"",
  },
  {
    first_name:"Jan Smitka",
    phone:"721161280",
    mail:"",
  },
  {
    first_name:"Jana - dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana Fišerová",
    phone:"721625946",
    mail:"",
  },
  {
    first_name:"Jana J - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana s M.M. barva střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jana WUchterová",
    phone:"604215488",
    mail:"",
  },
  {
    first_name:"Jandová Klára",
    phone:"",
    mail:"",
  },
  {
    first_name:"Janička Vlčková",
    phone:"702493754",
    mail:"",
  },
  {
    first_name:"Janouškovcová - Vdala se a jmenuje se jinak!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Janoutová",
    phone:"723039855",
    mail:"",
  },
  {
    first_name:"Jarka - odrosty",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka - prac.doba - Terky 1.den",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka - volno",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarka a Terka - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarmila Hauková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jarunka",
    phone:"607216943",
    mail:"",
  },
  {
    first_name:"Jaruška Hair",
    phone:"",
    mail:"",
  },
  {
    first_name:"jde domů",
    phone:"",
    mail:"",
  },
  {
    first_name:"jde domů - padla",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jedličková",
    phone:"728527067",
    mail:"",
  },
  {
    first_name:"Jelča",
    phone:"731955955",
    mail:"",
  },
  {
    first_name:"Jelča st.",
    phone:"731955955",
    mail:"",
  },
  {
    first_name:"Jelínek",
    phone:"725161571",
    mail:"",
  },
  {
    first_name:"Jelínek, NK",
    phone:"777339605",
    mail:"",
  },
  {
    first_name:"Jelínková",
    phone:"776261602",
    mail:"",
  },
  {
    first_name:"Jeništová",
    phone:"602260920",
    mail:"ludmilajenista@seznam.cz",
  },
  {
    first_name:"Jerinová Martina",
    phone:"726916715",
    mail:"",
  },
  {
    first_name:"Jesica Bandyová",
    phone:"732144200",
    mail:"",
  },
  {
    first_name:"Jesica Bandyová",
    phone:"",
    mail:"gagarin.2@seznam.cz",
  },
  {
    first_name:"Ježková Hana",
    phone:"603152489",
    mail:"",
  },
  {
    first_name:"Ježková Ivana",
    phone:"724575958",
    mail:"",
  },
  {
    first_name:"Jílková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jílková Klára",
    phone:"608715976",
    mail:"",
  },
  {
    first_name:"Jirka",
    phone:"731225398",
    mail:"",
  },
  {
    first_name:"Jirušová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jiří Boleček",
    phone:"731225398",
    mail:"",
  },
  {
    first_name:"Jiřina Karasová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jitka Dočkalová - managerka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jitka Fundová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jubová",
    phone:"602612926",
    mail:"",
  },
  {
    first_name:"Julie Fialová",
    phone:"721469523",
    mail:"zubovayv@gmail.com",
  },
  {
    first_name:"junioři s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"junioři s Jarkou - trénink prodeje",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jurášková Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Jurášková Jana - zkouška na modelech",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kablíková Petra",
    phone:"731709876",
    mail:"",
  },
  {
    first_name:"Kadlecová",
    phone:"607533752",
    mail:"",
  },
  {
    first_name:"Kadlecová",
    phone:"607533752",
    mail:"marcela.kadlecova@centrum.cz",
  },
  {
    first_name:"Kalašová",
    phone:"723995155",
    mail:"",
  },
  {
    first_name:"Kalašová Ivana",
    phone:"775657770",
    mail:"",
  },
  {
    first_name:"Kalatová",
    phone:"723997155",
    mail:"",
  },
  {
    first_name:"Kalousová",
    phone:"721307405",
    mail:"",
  },
  {
    first_name:"Kaňáková Lucie",
    phone:"732982474",
    mail:"luca.kan@seznam.cz",
  },
  {
    first_name:"Kaprová Hana",
    phone:"606316320",
    mail:"",
  },
  {
    first_name:"Karásková",
    phone:"777952042",
    mail:"",
  },
  {
    first_name:"Karel Královec",
    phone:"",
    mail:"",
  },
  {
    first_name:"Karlíková",
    phone:"736601847",
    mail:"",
  },
  {
    first_name:"Karlíková",
    phone:"736601847",
    mail:"",
  },
  {
    first_name:"Karlíková",
    phone:"",
    mail:"Karlikova.I@email.cz",
  },
  {
    first_name:"Karlovcová",
    phone:"607264543",
    mail:"",
  },
  {
    first_name:"Karlovcová, NK",
    phone:"607264543",
    mail:"",
  },
  {
    first_name:"Kaslová",
    phone:"733155555",
    mail:"",
  },
  {
    first_name:"Kašparová",
    phone:"724200235",
    mail:"",
  },
  {
    first_name:"Kateřina Martínková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kateřina Raisová",
    phone:"737835368",
    mail:"raisovak@gmail.com",
  },
  {
    first_name:"Kateřina Tikvartová NK",
    phone:"777036294",
    mail:"",
  },
  {
    first_name:"katka němečková",
    phone:"603830768",
    mail:"",
  },
  {
    first_name:"Kejvalová",
    phone:"728610076",
    mail:"",
  },
  {
    first_name:"Kejvalová",
    phone:"728610076",
    mail:"kejvalovaaneta@seznam.cz",
  },
  {
    first_name:"Kejvalová.... a pramínek posunout",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kellnerová Martina",
    phone:"723723725",
    mail:"",
  },
  {
    first_name:"Kellnerová Martina - napsat sms 2 dny, jestli přijde",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kelnerová M.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kerastase",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kerastase - školení",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kérastase den",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kinkal",
    phone:"602502557",
    mail:"",
  },
  {
    first_name:"Kirikovová",
    phone:"739252366",
    mail:"",
  },
  {
    first_name:"Klárka Nováková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Klasová Jitka",
    phone:"728024476",
    mail:"",
  },
  {
    first_name:"Kleandrová Jana",
    phone:"608446266",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/1",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/1 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/2 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/2 s Terkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/3 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/3 s Terkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/4 s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"klíč k barvě 1/4 s Terkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Klíč k barvě 2 PRAHA",
    phone:"",
    mail:"",
  },
  {
    first_name:"Klíč k barvě 2 PRAHA Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kohout",
    phone:"721979923",
    mail:"",
  },
  {
    first_name:"Kohoutová",
    phone:"603422046",
    mail:"",
  },
  {
    first_name:"Kokožková",
    phone:"731111067",
    mail:"",
  },
  {
    first_name:"Kolářová",
    phone:"724901316",
    mail:"",
  },
  {
    first_name:"Kolářová Tereza",
    phone:"721873236",
    mail:"t.eezka@centrum.cz",
  },
  {
    first_name:"koláže + dělat recepční",
    phone:"",
    mail:"",
  },
  {
    first_name:"Koldová Milena",
    phone:"602154435",
    mail:"",
  },
  {
    first_name:"Koldová Milena",
    phone:"602154435",
    mail:"koldova.milena@email.cz",
  },
  {
    first_name:"kolekce HAD",
    phone:"",
    mail:"",
  },
  {
    first_name:"kolekce HAD - zkouška",
    phone:"",
    mail:"",
  },
  {
    first_name:"kolekce HAD + výplata",
    phone:"",
    mail:"",
  },
  {
    first_name:"KONČÍ",
    phone:"",
    mail:"",
  },
  {
    first_name:"konec!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Konopíková",
    phone:"737729793",
    mail:"b.k12@email.cz",
  },
  {
    first_name:"kontrola barvy a střihu Toma",
    phone:"",
    mail:"",
  },
  {
    first_name:"kontrola nové kadeřnice a melíru",
    phone:"",
    mail:"",
  },
  {
    first_name:"kontrola nové kadeřnice a melíru, + zkouška nůžkami Hanka tchán",
    phone:"",
    mail:"",
  },
  {
    first_name:"Konzultace GL",
    phone:"602 184 888",
    mail:"",
  },
  {
    first_name:"konzultace Retex",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kopelentová",
    phone:"777225169",
    mail:"",
  },
  {
    first_name:"Kostecká",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kostecká Monika",
    phone:"773666642",
    mail:"",
  },
  {
    first_name:"Kostlivá Markéta",
    phone:"728532444",
    mail:"",
  },
  {
    first_name:"Kotorová",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink + trénink - panna - Jarka zadá, co jí udělat + úklid",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s Jarkou + vyhodnocení srpna",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s Jarkou, případně ještě školení Terezy",
    phone:"",
    mail:"",
  },
  {
    first_name:"koučink s manažerkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"koukat na holky a pomáhat jim",
    phone:"",
    mail:"",
  },
  {
    first_name:"koukat na holky, pomáhat, případně školení s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"koukat na MM a školení s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kováčová",
    phone:"606795232",
    mail:"",
  },
  {
    first_name:"Kovařík",
    phone:"606785189",
    mail:"",
  },
  {
    first_name:"Kovařík",
    phone:"",
    mail:"pavel.kovarik@vbleasing.cz",
  },
  {
    first_name:"Kozlerová Michaela",
    phone:"608856079",
    mail:"kozlerova@centrum.cz",
  },
  {
    first_name:"Kozlerová-Fořtová",
    phone:"774273008",
    mail:"",
  },
  {
    first_name:"Kozlerová-Fořtová",
    phone:"střih, výživa",
    mail:"",
  },
  {
    first_name:"Kozlová Ivana",
    phone:"602704693",
    mail:"",
  },
  {
    first_name:"Krajícová",
    phone:"606639259",
    mail:"",
  },
  {
    first_name:"Král",
    phone:"775970033",
    mail:"",
  },
  {
    first_name:"Králová Kateřina",
    phone:"776706246",
    mail:"",
  },
  {
    first_name:"Králová Markéta",
    phone:"",
    mail:"",
  },
  {
    first_name:"Královcová Marie",
    phone:"377520273",
    mail:"",
  },
  {
    first_name:"Kratochvílová, NK",
    phone:"606541820",
    mail:"",
  },
  {
    first_name:"Krausová veronika",
    phone:"724039800",
    mail:"",
  },
  {
    first_name:"Krblichová",
    phone:"606290538",
    mail:"",
  },
  {
    first_name:"Krblichová",
    phone:"606638305",
    mail:"",
  },
  {
    first_name:"Krčmerová, NK",
    phone:"602630042",
    mail:"",
  },
  {
    first_name:"Krejčová",
    phone:"605221800",
    mail:"",
  },
  {
    first_name:"Krejčová Jana",
    phone:"605221800",
    mail:"",
  },
  {
    first_name:"Krejčová, nemůže jinak",
    phone:"",
    mail:"",
  },
  {
    first_name:"Krieglsteinová Eva",
    phone:"608142142",
    mail:"eva.krigi@gmail.com",
  },
  {
    first_name:"Krippnerová",
    phone:"606877004",
    mail:"",
  },
  {
    first_name:"Kristýna - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kristýna američanka s překladatelem(přítelem) Terka ji bude mít jako model",
    phone:"",
    mail:"",
  },
  {
    first_name:"Krošláková",
    phone:"775312862",
    mail:"",
  },
  {
    first_name:"Kršláková Tereza",
    phone:"776312862",
    mail:"",
  },
  {
    first_name:"Kršláková Tereza",
    phone:"776312862",
    mail:"kroslakova.tereza@gmail.com",
  },
  {
    first_name:"Kryblichová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kučerová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kudrnáčová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kudrnová",
    phone:"721167963",
    mail:"",
  },
  {
    first_name:"Kucharčíková",
    phone:"378771671",
    mail:"",
  },
  {
    first_name:"Kucharčíková",
    phone:"731602587",
    mail:"daniela.kucharcukova@eurovia.cz",
  },
  {
    first_name:"Kulda",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kulda Miloš",
    phone:"724175491",
    mail:"",
  },
  {
    first_name:"Kulová",
    phone:"604216316",
    mail:"",
  },
  {
    first_name:"Kulová Lenka",
    phone:"604216316",
    mail:"",
  },
  {
    first_name:"Kuncová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Kunová",
    phone:"777281643",
    mail:"",
  },
  {
    first_name:"Kunstová",
    phone:"728440942",
    mail:"",
  },
  {
    first_name:"Kunstová",
    phone:"",
    mail:"alena.kunstova@centrum.cz",
  },
  {
    first_name:"Kuntscherová",
    phone:"739684098",
    mail:"",
  },
  {
    first_name:"Kupeček",
    phone:"602190474",
    mail:"",
  },
  {
    first_name:"Kůsová Magdalena",
    phone:"731466891",
    mail:"",
  },
  {
    first_name:"Kvasničková Lucie",
    phone:"",
    mail:"kvasnickova.lucie@gmail.com",
  },
  {
    first_name:"Labl",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lábr",
    phone:"723499837",
    mail:"",
  },
  {
    first_name:"Lábrt - reklamace střihu, zastřihnout",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lábrt - reklamace střihu, zastřihnout lépe a dát mu malý šampon",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lahoda",
    phone:"",
    mail:"",
  },
  {
    first_name:"Laibl",
    phone:"721838303",
    mail:"",
  },
  {
    first_name:"Lajbl",
    phone:"721838303",
    mail:"",
  },
  {
    first_name:"Lakatošová",
    phone:"",
    mail:"",
  },
  {
    first_name:"landrgottová",
    phone:"775287052",
    mail:"",
  },
  {
    first_name:"Lávr",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lebišová",
    phone:"603516080",
    mail:"",
  },
  {
    first_name:"LEE zuzana",
    phone:"608262043",
    mail:"",
  },
  {
    first_name:"Lehká",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lehká Lucie",
    phone:"777024186",
    mail:"",
  },
  {
    first_name:"Lehká Naďa",
    phone:"776051048",
    mail:"",
  },
  {
    first_name:"Lehký Michal",
    phone:"777024186",
    mail:"",
  },
  {
    first_name:"Leiderová Wendy",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lelková Veronika",
    phone:"731106254",
    mail:"",
  },
  {
    first_name:"Lepší",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lepší Andrea",
    phone:"773301494",
    mail:"",
  },
  {
    first_name:"Lepší Andrea",
    phone:"",
    mail:"andrea.lepsi@seznam.cz",
  },
  {
    first_name:"Levá Romana",
    phone:"602331236",
    mail:"",
  },
  {
    first_name:"Levá Vlasta",
    phone:"602331235",
    mail:"",
  },
  {
    first_name:"Lhotský",
    phone:"604658303",
    mail:"",
  },
  {
    first_name:"Linda Du Plessis",
    phone:"608312795",
    mail:"",
  },
  {
    first_name:"Lindová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lindová Pavlína",
    phone:"604269575",
    mail:"",
  },
  {
    first_name:"Lindová Pavlína k MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lipertová",
    phone:"606186997",
    mail:"",
  },
  {
    first_name:"Lisecová Alena",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lisecová Elena",
    phone:"728617966",
    mail:"",
  },
  {
    first_name:"Lisecová Elena",
    phone:"728617966",
    mail:"elen.lisecova@gmail.com",
  },
  {
    first_name:"Lisecová Kristyna",
    phone:"728610336",
    mail:"",
  },
  {
    first_name:"Livia Bunescu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lokvencová Veronika NK",
    phone:"777632838",
    mail:"",
  },
  {
    first_name:"Lomanová, NK, byla tu osobně",
    phone:"+491727188402",
    mail:"",
  },
  {
    first_name:"Loreal - nějaká slečna se staví",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lucáková",
    phone:"728121291",
    mail:"",
  },
  {
    first_name:"Lucie Greishein",
    phone:"777 276 772",
    mail:"",
  },
  {
    first_name:"Lucie Rašková NK",
    phone:"737217549",
    mail:"",
  },
  {
    first_name:"Lucka Kostecká",
    phone:"",
    mail:"",
  },
  {
    first_name:"Lukešová",
    phone:"602363945",
    mail:"",
  },
  {
    first_name:"Lysečová",
    phone:"728610336",
    mail:"",
  },
  {
    first_name:"M.K. známá Kalíšková přítelkyně dostala neomezený limit dárkového poukazu(neplatí)",
    phone:"",
    mail:"",
  },
  {
    first_name:"M.M. a Jana si budou dělat navzájem vlasy",
    phone:"",
    mail:"",
  },
  {
    first_name:"Machartová",
    phone:"722613402",
    mail:"",
  },
  {
    first_name:"Majerová Marie",
    phone:"607916504",
    mail:"mariemar@centrum.cz",
  },
  {
    first_name:"Makovička",
    phone:"777870876",
    mail:"",
  },
  {
    first_name:"Malinová",
    phone:"733322267",
    mail:"",
  },
  {
    first_name:"Malinová",
    phone:"733322267",
    mail:"anniette@centrum.cz",
  },
  {
    first_name:"malování salonu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Marešová",
    phone:"604207948",
    mail:"",
  },
  {
    first_name:"Marešová Markéta",
    phone:"604207948",
    mail:"",
  },
  {
    first_name:"Marešová, mladší",
    phone:"",
    mail:"",
  },
  {
    first_name:"Marianová",
    phone:"722180283",
    mail:"",
  },
  {
    first_name:"Marionová byla u Kristý",
    phone:"722180283",
    mail:"",
  },
  {
    first_name:"Markes",
    phone:"605415151",
    mail:"",
  },
  {
    first_name:"Marková Kateřina",
    phone:"777794630",
    mail:"markooova@gmail.cz",
  },
  {
    first_name:"Marková Kateřině",
    phone:"777794630",
    mail:"",
  },
  {
    first_name:"Maroušková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Maroušková Míša",
    phone:"720440442",
    mail:"marouskova19@seznam.cz",
  },
  {
    first_name:"Martin - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Martin Kováč",
    phone:"",
    mail:"",
  },
  {
    first_name:"Martínková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mařík",
    phone:"775632000",
    mail:"",
  },
  {
    first_name:"Maříková",
    phone:"608922339",
    mail:"",
  },
  {
    first_name:"Mašata",
    phone:"606289125",
    mail:"",
  },
  {
    first_name:"Mašková",
    phone:"728597734",
    mail:"",
  },
  {
    first_name:"Mášková Eliška",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mášková, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"Maškovská Markéta",
    phone:"721657967",
    mail:"",
  },
  {
    first_name:"Matas",
    phone:"",
    mail:"",
  },
  {
    first_name:"Matasová",
    phone:"736684048",
    mail:"",
  },
  {
    first_name:"Matasová, NK",
    phone:"603583317",
    mail:"",
  },
  {
    first_name:"Matějková Jana",
    phone:"777257192",
    mail:"",
  },
  {
    first_name:"Matějů Zdena",
    phone:"607685971",
    mail:"",
  },
  {
    first_name:"Matlasová",
    phone:"739007396",
    mail:"",
  },
  {
    first_name:"Matoušová obchodák GHD, BioIonic, chodí jinak do Prahy",
    phone:"601326222",
    mail:"edita@salonpro.cz",
  },
  {
    first_name:"Matuška Petr",
    phone:"725474962",
    mail:"",
  },
  {
    first_name:"Mavrespons",
    phone:"739516217",
    mail:"",
  },
  {
    first_name:"Mechová",
    phone:"775496561",
    mail:"",
  },
  {
    first_name:"Michal Benedikt",
    phone:"",
    mail:"",
  },
  {
    first_name:"Míková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Milfilerová",
    phone:"736148592",
    mail:"",
  },
  {
    first_name:"Milsimerová",
    phone:"736148592",
    mail:"",
  },
  {
    first_name:"Miluše Rožmberská",
    phone:"603369265",
    mail:"",
  },
  {
    first_name:"Mirka Křesťanová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Míša BRADOVÁ",
    phone:"776608882",
    mail:"",
  },
  {
    first_name:"Míša BRADOVÁ",
    phone:"377178883",
    mail:"",
  },
  {
    first_name:"Míša BRADOVÁ",
    phone:"",
    mail:"mbradova@post.cz",
  },
  {
    first_name:"Mlíková",
    phone:"777645625",
    mail:"",
  },
  {
    first_name:"Mlíková",
    phone:"775858564",
    mail:"",
  },
  {
    first_name:"Mlíková Květoslava",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM - dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM a Jana - dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM dovolená",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM musí končit",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM musí končit v 15:30",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM musím končit v 15:30",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM přijde už na 12 MODEL trénink retex TOMáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM Ti udělá vlasy",
    phone:"",
    mail:"",
  },
  {
    first_name:"MM ukáže GL - trénovat pak na panně",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL",
    phone:"",
    mail:"",
  },
  {
    first_name:"model - s Kristý",
    phone:"",
    mail:"",
  },
  {
    first_name:"model - s MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"model s Janou",
    phone:"",
    mail:"",
  },
  {
    first_name:"model s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Model střih tchýně MK",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink retex TOMáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink TOMáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODEL trénink TOMáš Tchýně MK",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - aichi",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - barevná změna",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - barva",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - foukaná",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - foukaná - Polášková Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - foukaná a vlny",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - melír",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - objemka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka - pásky - Moniky sestra",
    phone:"775666129",
    mail:"",
  },
  {
    first_name:"modelka - retex",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka&nbsp",
    phone:"&nbsp",
    mail:"s effasorem",
  },
  {
    first_name:"modelka&nbsp",
    phone:"&nbsp",
    mail:"s kvalitním ombre",
  },
  {
    first_name:"modelka - soft ombre",
    phone:"728322884",
    mail:"",
  },
  {
    first_name:"modelka - střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 1",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 2",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 3",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 4",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 5",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 6",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka 7",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Adéla Krausová objemka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka barvení barevné Elumen",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Hanka střih melír",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Hanka střih melír - slečna Dominika",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Hanka střih melír - slečna Jubová",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Holá",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Homolková - s&nbsp",
    phone:"&nbsp",
    mail:"Hankou",
  },
  {
    first_name:"modelka Jarunka",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka klasické melíry po celé hlavě",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka kvalitní střih a barva",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na efasor - Janička",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka na foukanou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na foukanou - Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka na melír,barvu,střih - Vlasáková",
    phone:"737013912",
    mail:"",
  },
  {
    first_name:"modelka na retex",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na retex - Katka odbarvené vlasy",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na retex - Katka Spourová - odbarvené vlasy",
    phone:"731520645",
    mail:"",
  },
  {
    first_name:"modelka na střih - nová kadeřnice",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka na střih - Nováková Klára",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka narovnání vlasů",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka Kateřina Kumová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka s Tomášem",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka objemka trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Pálková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Pálková s M.M. retex trénink",
    phone:"602453182",
    mail:"",
  },
  {
    first_name:"modelka precizní nadčasový střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Ilonou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Janou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Kristýnou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s M.M. retex trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s M.M. trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s M.M. trénink, Pálková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s MM trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka s MM trénink - učení GL",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s objemkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s polodlouhými vlasy – střih a melír",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka s Terkou - ombré",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka sehnat !!! pro Hanku",
    phone:"",
    mail:"",
  },
  {
    first_name:"MODELka tchýně Mk",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Tom trénink",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Tom trénink - učení GL",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modelka Tomáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelka Vlková, jen melír a přeliv",
    phone:"",
    mail:"",
  },
  {
    first_name:"modelky",
    phone:"",
    mail:"",
  },
  {
    first_name:"moderátorka",
    phone:"",
    mail:"",
  },
  {
    first_name:"módní nadčasový precizní pánský střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"Modroch",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mochtabiz",
    phone:"774897995",
    mail:"",
  },
  {
    first_name:"Mojžíš",
    phone:"602206895",
    mail:"",
  },
  {
    first_name:"Mojžíšová",
    phone:"736540282",
    mail:"",
  },
  {
    first_name:"Monča M",
    phone:"731406527",
    mail:"",
  },
  {
    first_name:"Monička Mocová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Monika - stáž",
    phone:"",
    mail:"",
  },
  {
    first_name:"Monika Abarka",
    phone:"734685767",
    mail:"",
  },
  {
    first_name:"Moniky manžel",
    phone:"",
    mail:"",
  },
  {
    first_name:"Motyková Renča",
    phone:"603389367",
    mail:"",
  },
  {
    first_name:"Motyková Renča",
    phone:"603389367",
    mail:"r.motykova@gmail.com",
  },
  {
    first_name:"Mourek",
    phone:"602101644",
    mail:"",
  },
  {
    first_name:"Mrazová zákaznice Jana Junior",
    phone:"725762798",
    mail:"",
  },
  {
    first_name:"Mrožíková Michaela (přijde s paní Štěpánkovou)",
    phone:"",
    mail:"",
  },
  {
    first_name:"Muchková",
    phone:"608669999",
    mail:"irenamuchkova@seznam.cz",
  },
  {
    first_name:"Mukenšnablová",
    phone:"737220099",
    mail:"",
  },
  {
    first_name:"Musilová",
    phone:"607441989",
    mail:"",
  },
  {
    first_name:"Musilová, NK",
    phone:"377152181",
    mail:"",
  },
  {
    first_name:"musím končit",
    phone:"",
    mail:"",
  },
  {
    first_name:"musím končit Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"musím končit v 15:30",
    phone:"",
    mail:"",
  },
  {
    first_name:"Mušovská",
    phone:"776544257",
    mail:"",
  },
  {
    first_name:"N.K. Černá",
    phone:"722224180",
    mail:"",
  },
  {
    first_name:"Nádraská",
    phone:"724874901",
    mail:"",
  },
  {
    first_name:"náhradní volno",
    phone:"",
    mail:"",
  },
  {
    first_name:"Náhradní volno - Pracák",
    phone:"",
    mail:"",
  },
  {
    first_name:"natáčení rychlostřihu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Navrátilová",
    phone:"724394174",
    mail:"",
  },
  {
    first_name:"Navrátilová, NK",
    phone:"604345879",
    mail:"",
  },
  {
    first_name:"nějaká OZ (byla tu ve čtvrtek osobně, ale neměla jsem na ni čas)",
    phone:"",
    mail:"",
  },
  {
    first_name:"nějaký obchodní zástupce - chce nám udělat nabídku",
    phone:"",
    mail:"",
  },
  {
    first_name:"nejde proud",
    phone:"",
    mail:"",
  },
  {
    first_name:"někdy se staví Míša Prášilová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová - k Tomovi",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová B.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Němcová Blanka",
    phone:"739117395",
    mail:"",
  },
  {
    first_name:"Němcová, NK",
    phone:"604682090",
    mail:"",
  },
  {
    first_name:"Neumanová",
    phone:"724105953",
    mail:"",
  },
  {
    first_name:"Neumanová Zuzana",
    phone:"724585313",
    mail:"",
  },
  {
    first_name:"Nikodýmová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nikola Scholzová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Níkrmajerová",
    phone:"",
    mail:"",
  },
  {
    first_name:"NK - Fenclová",
    phone:"775937622",
    mail:"",
  },
  {
    first_name:"NK Kalíškovo přítelkyně, pracuje na ministerstvu je z Prahy, dostala poukázku od přítele",
    phone:"",
    mail:"",
  },
  {
    first_name:"NK Kateřina Zbrámková",
    phone:"73610405O",
    mail:"",
  },
  {
    first_name:"NK Ombre změna",
    phone:"605885281",
    mail:"",
  },
  {
    first_name:"Noumanová Martina",
    phone:"724105953",
    mail:"",
  },
  {
    first_name:"nová kadeřnice ukáže melír na křesle, musí být hotová do 14:30h, aby měli volné křeslo klienti",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nová Karolína",
    phone:"722929662",
    mail:"",
  },
  {
    first_name:"Nová Karolína",
    phone:"722929662",
    mail:"kajinka.kn@gmail.com",
  },
  {
    first_name:"Nová Renata",
    phone:"733128910",
    mail:"",
  },
  {
    first_name:"Nová Renata",
    phone:"",
    mail:"renat.nova1@seznam.cz",
  },
  {
    first_name:"Nova zakaznice Hercikova",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nováček musí odejít. neexistuje bát ve 4 kadeřníkách na saloně",
    phone:"",
    mail:"",
  },
  {
    first_name:"Nováková",
    phone:"tel",
    mail:"",
  },
  {
    first_name:"Nováková",
    phone:"tel2",
    mail:"",
  },
  {
    first_name:"Nováková Jana",
    phone:"77777777",
    mail:"",
  },
  {
    first_name:"Nováková Klárka - modelka na foukanou",
    phone:"",
    mail:"",
  },
  {
    first_name:"NOváková lucie",
    phone:"725583249",
    mail:"",
  },
  {
    first_name:"obřad - zkouška na Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"Obřady a profesionální diagnóza",
    phone:"",
    mail:"",
  },
  {
    first_name:"odečet teplé vody - Plzeňské služby",
    phone:"",
    mail:"",
  },
  {
    first_name:"ofina",
    phone:"",
    mail:"",
  },
  {
    first_name:"Olinka Frausová",
    phone:"773909320",
    mail:"",
  },
  {
    first_name:"Ondra Platzer - Terky kamarád",
    phone:"",
    mail:"",
  },
  {
    first_name:"oprava - pan Koželuh",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ortinská Jana",
    phone:"605484886",
    mail:"",
  },
  {
    first_name:"Ortmanová Hana",
    phone:"604784903",
    mail:"",
  },
  {
    first_name:"osobní školení s MK, prozkoušení Toma na melír modelka sehnat, Privilege",
    phone:"",
    mail:"",
  },
  {
    first_name:"ostříhat Janu - hoří",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ouředník",
    phone:"602414299",
    mail:"",
  },
  {
    first_name:"Ouředníková Alena",
    phone:"731619701",
    mail:"",
  },
  {
    first_name:"Ouředníková Klára",
    phone:"723404114",
    mail:"",
  },
  {
    first_name:"Ouředníková Magdalena",
    phone:"777139764",
    mail:"",
  },
  {
    first_name:"p. Černá Jana",
    phone:"",
    mail:"",
  },
  {
    first_name:"p. Kuldová",
    phone:"606912399",
    mail:"",
  },
  {
    first_name:"p. Nováková A.",
    phone:"775011697",
    mail:"",
  },
  {
    first_name:"P. Ouředníková",
    phone:"",
    mail:"",
  },
  {
    first_name:"p. Půtová Monika",
    phone:"603889017",
    mail:"",
  },
  {
    first_name:"p. Vacková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Paciuchová",
    phone:"606692215",
    mail:"",
  },
  {
    first_name:"Pajmová",
    phone:"731474929",
    mail:"",
  },
  {
    first_name:"Palková",
    phone:"775143021",
    mail:"",
  },
  {
    first_name:"pan Hána",
    phone:"",
    mail:"",
  },
  {
    first_name:"pan klient",
    phone:"",
    mail:"",
  },
  {
    first_name:"pán na úsporu vody - nějaký OZ",
    phone:"602572573",
    mail:"",
  },
  {
    first_name:"pan Tomáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"Paní Bergerová",
    phone:"602870106",
    mail:"",
  },
  {
    first_name:"paní Hrubá, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"paní Křesťanová",
    phone:"",
    mail:"",
  },
  {
    first_name:"paní Lebišová",
    phone:"",
    mail:"",
  },
  {
    first_name:"paní Lucáková",
    phone:"728121291",
    mail:"",
  },
  {
    first_name:"pánský model",
    phone:"",
    mail:"",
  },
  {
    first_name:"Paruka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Parula Martin",
    phone:"728243690",
    mail:"martin.parula@gmail.com",
  },
  {
    first_name:"Parulová",
    phone:"607982397",
    mail:"",
  },
  {
    first_name:"Patricie Felcmanová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Patryk Borycki",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pavel Slegl",
    phone:"724708888",
    mail:"",
  },
  {
    first_name:"Pavlína ...",
    phone:"731121606",
    mail:"",
  },
  {
    first_name:"Pavlová Veronika",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pazderková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pecová",
    phone:"731188586",
    mail:"",
  },
  {
    first_name:"Pecháčová",
    phone:"702028817",
    mail:"",
  },
  {
    first_name:"Pechalová",
    phone:"602191563",
    mail:"",
  },
  {
    first_name:"Pechlátová",
    phone:"777270020",
    mail:"",
  },
  {
    first_name:"Pechlátová, skoro NK",
    phone:"777270020",
    mail:"",
  },
  {
    first_name:"pechová terezie",
    phone:"721426487",
    mail:"",
  },
  {
    first_name:"Peláková Kateřina",
    phone:"739478437",
    mail:"k.pelakova&amp",
  },
  {
    first_name:"Peláková Zuzana",
    phone:"778044577",
    mail:"zpelakova@seznam.cz",
  },
  {
    first_name:"Pernikl",
    phone:"776154412",
    mail:"",
  },
  {
    first_name:"Pernikl Michal",
    phone:"776154412",
    mail:"",
  },
  {
    first_name:"Pernikl Michal",
    phone:"776154421",
    mail:"",
  },
  {
    first_name:"Pethsová",
    phone:"731188586",
    mail:"",
  },
  {
    first_name:"Petra Šanderová",
    phone:"728720798",
    mail:"sanderovap@seznam.cz",
  },
  {
    first_name:"Petra Šanderová, NK",
    phone:"",
    mail:"",
  },
  {
    first_name:"Petrášová Tereza",
    phone:"774237537",
    mail:"",
  },
  {
    first_name:"Petrová",
    phone:"608551572",
    mail:"",
  },
  {
    first_name:"Petrová, NK",
    phone:"726303360",
    mail:"",
  },
  {
    first_name:"Pětvaldská",
    phone:"",
    mail:"",
  },
  {
    first_name:"pí. Rychlá",
    phone:"723652688",
    mail:"rychla.iveta@seznam.cz",
  },
  {
    first_name:"Pijálková",
    phone:"731082124",
    mail:"",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl",
    phone:"776056205",
    mail:"",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl&nbsp",
    phone:"&nbsp",
    mail:"NK",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl&nbsp",
    phone:"&nbsp",
    mail:"NK chce info",
  },
  {
    first_name:"Pirasová konzultace prodluž. vl&nbsp",
    phone:"&nbsp",
    mail:"NK chce info/ NEPŘIŠLA",
  },
  {
    first_name:"Píšová Helena",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pitrová gabriela ml",
    phone:"777866878",
    mail:"gabrielapitr@gmail.com",
  },
  {
    first_name:"Pitrová starší",
    phone:"728519102",
    mail:"",
  },
  {
    first_name:"Pittnerová Hana",
    phone:"603178679",
    mail:"",
  },
  {
    first_name:"Pittnerová, NK",
    phone:"739357071",
    mail:"",
  },
  {
    first_name:"Pivoňková",
    phone:"603287719",
    mail:"",
  },
  {
    first_name:"Pivoňková",
    phone:"728956957",
    mail:"",
  },
  {
    first_name:"Plachá Kateřina",
    phone:"721652387",
    mail:"",
  },
  {
    first_name:"Plasová",
    phone:"602958764",
    mail:"",
  },
  {
    first_name:"plnění úkolů od Jarky",
    phone:"",
    mail:"",
  },
  {
    first_name:"plnit úkoly od Jarky",
    phone:"",
    mail:"",
  },
  {
    first_name:"Podberecká",
    phone:"775304981",
    mail:"",
  },
  {
    first_name:"Pohlová Petra",
    phone:"606658512",
    mail:"",
  },
  {
    first_name:"pohovor Pištěláková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pojerová",
    phone:"730674363",
    mail:"",
  },
  {
    first_name:"Pokorná Lenka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pokorná Lenka, NK, známá manažerky",
    phone:"",
    mail:"",
  },
  {
    first_name:"pokračovat na panně - Jarky zadání",
    phone:"",
    mail:"",
  },
  {
    first_name:"pokračovat ve školení Ilony",
    phone:"",
    mail:"",
  },
  {
    first_name:"Polák petr",
    phone:"605156051",
    mail:"",
  },
  {
    first_name:"Poláková cizinka",
    phone:"608325389",
    mail:"",
  },
  {
    first_name:"Poláková, NK",
    phone:"721155244",
    mail:"",
  },
  {
    first_name:"Poláková, NK",
    phone:"608325431",
    mail:"",
  },
  {
    first_name:"pomáhat Janě se sundáním a rozčesáním",
    phone:"",
    mail:"",
  },
  {
    first_name:"pomáhat Janě se Zuberovou",
    phone:"",
    mail:"",
  },
  {
    first_name:"pomoct Janě se sundaváním vlasů",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pons Sandra",
    phone:"739516217",
    mail:"",
  },
  {
    first_name:"Popelková",
    phone:"605934564",
    mail:"",
  },
  {
    first_name:"Popelková",
    phone:"střih pak na barvu k Hance",
    mail:"",
  },
  {
    first_name:"porada",
    phone:"",
    mail:"",
  },
  {
    first_name:"porada + řešení kolekce HAD",
    phone:"",
    mail:"",
  },
  {
    first_name:"porada + řešení kolekce HAD + připomenutí Discipline",
    phone:"",
    mail:"",
  },
  {
    first_name:"porada s Jarkou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pospíšilová",
    phone:"739113100",
    mail:"andulka.pospisilova@seznam.cz",
  },
  {
    first_name:"povinný úklid",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid - výtěr",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid - VYTŘÍT!!!",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid + dopsat objednávku na LP",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid + výplata",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný úklid zavolat paní Ilič",
    phone:"",
    mail:"",
  },
  {
    first_name:"povinný uklízení",
    phone:"",
    mail:"",
  },
  {
    first_name:"PRAHA školení výčesy Vavrušková a spol.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Prášilová - Goldwell",
    phone:"",
    mail:"",
  },
  {
    first_name:"Praum",
    phone:"775209020",
    mail:"",
  },
  {
    first_name:"pražák Martin",
    phone:"731581595",
    mail:"",
  },
  {
    first_name:"Pražáková Karolína",
    phone:"736200637",
    mail:"",
  },
  {
    first_name:"Prexlová Kateřina",
    phone:"",
    mail:"",
  },
  {
    first_name:"Prchal",
    phone:"604804290",
    mail:"",
  },
  {
    first_name:"probrat s Hankou proběhlé školení - nastavit, co se naučí",
    phone:"",
    mail:"",
  },
  {
    first_name:"probrat s Monikou proběhlé školení",
    phone:"",
    mail:"",
  },
  {
    first_name:"Prodloužení 50 GL",
    phone:"",
    mail:"",
  },
  {
    first_name:"Procházková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Procházková L.",
    phone:"",
    mail:"",
  },
  {
    first_name:"Procházková Lucie",
    phone:"723264547",
    mail:"",
  },
  {
    first_name:"Procházková Markéta",
    phone:"",
    mail:"",
  },
  {
    first_name:"projít si fotky v ipadu a vytvořit Jarce seznam, jaké účesy nezvládneš - seženeme na ně modelky",
    phone:"",
    mail:"",
  },
  {
    first_name:"předání výplaty",
    phone:"",
    mail:"",
  },
  {
    first_name:"předělání koláží - ukázat Jarce",
    phone:"",
    mail:"",
  },
  {
    first_name:"přehlídka",
    phone:"",
    mail:"",
  },
  {
    first_name:"přijde servis pán ohledně klimatizace, vysvětlit vám jak se čistí filtr.",
    phone:"",
    mail:"",
  },
  {
    first_name:"přijde slečna pro banner na maturák",
    phone:"",
    mail:"",
  },
  {
    first_name:"Přijdu až na 14:10",
    phone:"",
    mail:"",
  },
  {
    first_name:"příprava na malování",
    phone:"",
    mail:"",
  },
  {
    first_name:"příprava na školení drdolů 14.8.",
    phone:"",
    mail:"",
  },
  {
    first_name:"přítel Bláhové",
    phone:"",
    mail:"",
  },
  {
    first_name:"přivezou terminál",
    phone:"",
    mail:"",
  },
  {
    first_name:"Pučelíková",
    phone:"776587669",
    mail:"",
  },
  {
    first_name:"Pultr Zdeněk",
    phone:"775197390",
    mail:"",
  },
  {
    first_name:"Pultr Zdeněk",
    phone:"775197390",
    mail:"zdendapr@centrum.cz",
  },
  {
    first_name:"Pumprová Lucie",
    phone:"777919332",
    mail:"",
  },
  {
    first_name:"Půtová",
    phone:"603889017",
    mail:"monika.putova@post.cz",
  },
  {
    first_name:"Půtová Martina",
    phone:"777118885",
    mail:"",
  },
  {
    first_name:"Pyšková Zuzana",
    phone:"608166622",
    mail:"",
  },
  {
    first_name:"rady pro lepší pánský střih - Tereza",
    phone:"",
    mail:"",
  },
  {
    first_name:"rady pro lepší pánský střih s Monikou",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ratajčiková",
    phone:"605842434",
    mail:"",
  },
  {
    first_name:"recepční + se dívat, jak Jana posouvá",
    phone:"",
    mail:"",
  },
  {
    first_name:"recepční + splnit úkoly od Jarky",
    phone:"",
    mail:"",
  },
  {
    first_name:"Rejdová Lenka",
    phone:"605978096",
    mail:"",
  },
  {
    first_name:"Reservé M.K. známá Kalíšek",
    phone:"",
    mail:"",
  },
  {
    first_name:"Richard Šulko",
    phone:"734253364",
    mail:"",
  },
  {
    first_name:"Ripplová Květa",
    phone:"604752694",
    mail:"kveta.ripplova@seznam.cz",
  },
  {
    first_name:"Rolingerová",
    phone:"604313233",
    mail:"",
  },
  {
    first_name:"Rolingerová",
    phone:"",
    mail:"monika.roll@seznam.cz",
  },
  {
    first_name:"Rollingerová",
    phone:"604313233",
    mail:"",
  },
  {
    first_name:"Roman Šefl",
    phone:"728690019",
    mail:"",
  },
  {
    first_name:"Roman Šefl",
    phone:"",
    mail:"sefl.roman@seznam.cz",
  },
  {
    first_name:"Ronzová",
    phone:"602746592",
    mail:"",
  },
  {
    first_name:"Ronzová Martina",
    phone:"602745592",
    mail:"ronzova.martina@seznam.cz",
  },
  {
    first_name:"Roztočilová",
    phone:"775858564",
    mail:"",
  },
  {
    first_name:"Roztočilová - k Janě",
    phone:"",
    mail:"",
  },
  {
    first_name:"Roztočilová Alena starší",
    phone:"607630444",
    mail:"",
  },
  {
    first_name:"Roztočilová k terce",
    phone:"",
    mail:"",
  },
  {
    first_name:"Roztočilová ml.",
    phone:"775858564",
    mail:"",
  },
  {
    first_name:"Roztočilová ml. - k Tomovi",
    phone:"",
    mail:"",
  },
  {
    first_name:"Roztočilová ml. - k Tomovi!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"603221905",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"603221905",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"608520220",
    mail:"",
  },
  {
    first_name:"Rudolfová",
    phone:"",
    mail:"v.rud.@seznam.cz",
  },
  {
    first_name:"Rusínová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Růžička",
    phone:"602437949",
    mail:"",
  },
  {
    first_name:"Růžička",
    phone:"602682419",
    mail:"",
  },
  {
    first_name:"Růžička",
    phone:"606642315",
    mail:"",
  },
  {
    first_name:"Růžička JAN",
    phone:"606793261",
    mail:"",
  },
  {
    first_name:"Růžička Ondřej",
    phone:"",
    mail:"",
  },
  {
    first_name:"Ružička Oto",
    phone:"602437949",
    mail:"",
  },
  {
    first_name:"Růžičková Alena",
    phone:"602682419",
    mail:"",
  },
  {
    first_name:"Růžičková Iva",
    phone:"774675218",
    mail:"",
  },
  {
    first_name:"Rychlá",
    phone:"723652688",
    mail:"",
  },
  {
    first_name:"Rychlá",
    phone:"",
    mail:"rychla.iveta@seznam.cz",
  },
  {
    first_name:"řehořová karolína",
    phone:"724160780",
    mail:"",
  },
  {
    first_name:"Řežábková",
    phone:"724320082",
    mail:"",
  },
  {
    first_name:"Řežábková",
    phone:"",
    mail:"rezabkova@vsp-auto.cz",
  },
  {
    first_name:"Saláková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Salcmanová",
    phone:"603298839",
    mail:"",
  },
  {
    first_name:"Senjuková",
    phone:"734208482",
    mail:"",
  },
  {
    first_name:"Senjuková",
    phone:"",
    mail:"terezasenjukova@gmail.com",
  },
  {
    first_name:"sepsat Jarce v bodech, co bylo na IT LOOKu a poslat do mailu",
    phone:"",
    mail:"",
  },
  {
    first_name:"Shandová",
    phone:"776680356",
    mail:"",
  },
  {
    first_name:"Scherbaumová Lenka",
    phone:"",
    mail:"",
  },
  {
    first_name:"Schmidová Pavla",
    phone:"+420723359951",
    mail:"",
  },
  {
    first_name:"scholzová eva",
    phone:"608962785",
    mail:"",
  },
  {
    first_name:"Schön Jakub",
    phone:"731053057",
    mail:"",
  },
  {
    first_name:"Schorník",
    phone:"728608555",
    mail:"",
  },
  {
    first_name:"Schurník Václav",
    phone:"728608555",
    mail:"",
  },
  {
    first_name:"Sieglerová",
    phone:"377237544",
    mail:"",
  },
  {
    first_name:"Skala",
    phone:"602710958",
    mail:"",
  },
  {
    first_name:"Skaláková",
    phone:"776134632",
    mail:"",
  },
  {
    first_name:"Skaláková",
    phone:"",
    mail:"skalakovi@email.cz",
  },
  {
    first_name:"Skalová",
    phone:"737105609",
    mail:"",
  },
  {
    first_name:"Skalová",
    phone:"737105609",
    mail:"karla.skalova@gmail.com",
  },
  {
    first_name:"Skalová Jana",
    phone:"728608013",
    mail:"",
  },
  {
    first_name:"Skalová Jana",
    phone:"",
    mail:"zebra.ska@centrum.cz",
  },
  {
    first_name:"Skleničková",
    phone:"775133217",
    mail:"",
  },
  {
    first_name:"Skočdopolová",
    phone:"",
    mail:"",
  },
  {
    first_name:"skolení beach wawes",
    phone:"",
    mail:"",
  },
  {
    first_name:"skolení beach wawes PŘIJDOU VŠICHNI!!!!!!!!",
    phone:"",
    mail:"",
  },
  {
    first_name:"Sl.Hronková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Sláma",
    phone:"608981640",
    mail:"ludek.sl@seznam.cz",
  },
  {
    first_name:"Slámová",
    phone:"",
    mail:"",
  },
  {
    first_name:"Slámová Andrea",
    phone:"608346336",
    mail:"sportstudioa@seznam.cz",
  },
  {
    first_name:"Smejkalová",
    phone:"724184522",
    mail:"",
  },
  {
    first_name:"Smejkalová",
    phone:"371728026",
    mail:"",
  },
  {
    first_name:"Smitka",
    phone:"721161280",
    mail:"",
  },
  {
    first_name:"Smitka",
    phone:"721161280",
    mail:"jan@smitka.org",
  },
  {
    first_name:"Smrček",
    phone:"603418522",
    mail:"",
  },
  {
    first_name:"Snopková",
    phone:"773638033",
    mail:"",
  },
  {
    first_name:"Soběhartová",
    phone:"736 244 842",
    mail:"",
  },
  {
    first_name:"Sobjehartová",
    phone:"736244842",
    mail:"",
  },
  {
    first_name:"Soldánová",
    phone:"739617206",
    mail:"soldanovakatrina@seznam.cz",
  },
  {
    first_name:"Solech Adam",
    phone:"773602900",
    mail:"",
  },
  {
    first_name:"Soukup Tomáš",
    phone:"",
    mail:"",
  },
  {
    first_name:"Soukupová, NK",
    phone:"378134701",
    mail:"",
  },
  {
    first_name:"Srbecká",
    phone:"721313015",
    mail:"",
  },
  {
    first_name:"Srbecká",
    phone:"721313015",
    mail:"srbecka@minus.cz",
  },
  {
    first_name:"Srbecká Kateřina, má za týden svatbu chce zvelebit",
    phone:"721313016",
    mail:"",
  },
  {
    first_name:"Stackhouse",
    phone:"",
    mail:"",
  },
  {
    first_name:"Staňková",
    phone:"602306142",
    mail:"",
  },
  {
    first_name:"Staňková",
    phone:"",
    mail:"stankova@profi-cz.cz",
  },
  {
    first_name:"stáž - Jana a Monika",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž - Monika a Kristý",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž - všichni kadeřníci",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Jana a Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Jana a Tom a Jarka",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Jarka a MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"stáž Kerastase - Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"Stoljarová",
    phone:"777539248",
    mail:"",
  },
  {
    first_name:"Strnadová - vizážistka",
    phone:"",
    mail:"",
  },
  {
    first_name:"střídání kadeřníků na stanovišti",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih - Terka",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih - Terka + foukaná (zadá Jarka)",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih Moniky",
    phone:"",
    mail:"",
  },
  {
    first_name:"střih u Moniky",
    phone:"",
    mail:"",
  },
  {
    first_name:"Sudová ( neumí se objednat včas a pak chce jít jinam)",
    phone:"724351120",
    mail:"",
  },
  {
    first_name:"Sudová k MM",
    phone:"724351120",
    mail:"",
  },
  {
    first_name:"Suchá",
    phone:"",
    mail:"",
  },
  {
    first_name:"Svitáková",
    phone:"739032687",
    mail:"",
  },
  {
    first_name:"Svobodová",
    phone:"606366123",
    mail:"",
  },
  {
    first_name:"Svobodová HANA",
    phone:"724254910",
    mail:"",
  },
  {
    first_name:"Svobodová HANA",
    phone:"",
    mail:"svob.h@seznam.cz",
  },
  {
    first_name:"Sýkorová Kornelie",
    phone:"602290200",
    mail:"nelus@centrum.cz",
  },
  {
    first_name:"Šamšula",
    phone:"602749198",
    mail:"",
  },
  {
    first_name:"Šárka Černá",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šašková Klára",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šašková Magdalena",
    phone:"607178154",
    mail:"",
  },
  {
    first_name:"Šebestová",
    phone:"732795019",
    mail:"",
  },
  {
    first_name:"Šedivá",
    phone:"775029036",
    mail:"",
  },
  {
    first_name:"Šedivá",
    phone:"",
    mail:"hanahauserova@seznam.cz",
  },
  {
    first_name:"Šedivá, NK",
    phone:"775029036",
    mail:"",
  },
  {
    first_name:"Šedivák",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šedivý",
    phone:"606402227",
    mail:"",
  },
  {
    first_name:"Šeflová",
    phone:"607691516",
    mail:"",
  },
  {
    first_name:"Šeflová",
    phone:"",
    mail:"marieseflova@seznam.cz",
  },
  {
    first_name:"Šejdová Kateřina",
    phone:"774736860",
    mail:"",
  },
  {
    first_name:"Šejdová Kateřina",
    phone:"",
    mail:"k.sejdova@seznam.cz",
  },
  {
    first_name:"Šejdová Kateřina, NK",
    phone:"774736860",
    mail:"",
  },
  {
    first_name:"Šenbauerová, NK",
    phone:"736226029",
    mail:"",
  },
  {
    first_name:"Šepelová",
    phone:"603922574",
    mail:"",
  },
  {
    first_name:"Šepelová Natálie",
    phone:"603922574",
    mail:"",
  },
  {
    first_name:"Šepelová Natálie",
    phone:"",
    mail:"milasek1406@azet.sk",
  },
  {
    first_name:"Ševčíková Tereza",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šimandlová",
    phone:"607550143",
    mail:"",
  },
  {
    first_name:"Šimandlová",
    phone:"",
    mail:"PVST@seznam.cz",
  },
  {
    first_name:"Šimánová - pohovor",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šimeček",
    phone:"728686119",
    mail:"",
  },
  {
    first_name:"Šimek",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šimková",
    phone:"",
    mail:"",
  },
  {
    first_name:"Šíšová Darina",
    phone:"774920245",
    mail:"darina.sisova@seznam.cz",
  },
  {
    first_name:"Škodová",
    phone:"731807167",
    mail:"",
  },
  {
    first_name:"škol. s Tom. retex kerasmoth",
    phone:"",
    mail:"",
  },
  {
    first_name:"škol. s Tom. tajemství úspěšného prodeje",
    phone:"",
    mail:"",
  },
  {
    first_name:"škol.konzultace na střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"škol.s Janou na konzultaci střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - co se MM naučila na stáži Drdoly",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - co se MM naučila na stážích",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - drdoly",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - drdoly - všichni",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - Jarka a junioři",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - MM a junioři",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - od Moniky, co se naučila v GHD",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - střihy a foukaná",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - střihy a foukaná + případně fotky",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - všichni",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení - všichni - co se Tom naučil na Šulovi",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení (obřady, plus co ještě Jarka zadá) + výpomoc, kde bude třeba, a koukání na ostatní kadeřníky",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení foukaná - Monika + junioři",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení foukaná - Monika + junioři - sehnat 3 modelky",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka dám. střih Zuzka Mach, + fialová elumen celá hlava, neví jestli odbarvit odrost",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka pánská masáž + teorie barev",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka pánská masáž + teorie barev - vysvětlit výživy",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka pánský střih",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka střih pán",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka střih pán - Honza Novák",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka teorie",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Hanka teorie Klíč k barvě 1",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení Jana na senior",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení konzultace prodej",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení konzultace prodej + natáčení na dvojče",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení konzultace retex ,kerasmooth s Tomem",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení MM it look",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení modelka na střih dlouhé vlasy Hanka",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení modelka na střih dlouhé vlasy Hanka - slečna Krausová",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení na melír Toma, Jany",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení na melír Toma, Jany&nbsp",
    phone:"&nbsp",
    mail:"a nováčka",
  },
  {
    first_name:"školení narovnání vlasů BioIonic model",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení narovnání vlasů Tom",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováček",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováček s Janou",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováček s MM",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení nováčka",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení s Ilonou",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení s J.retex a kerasmoth",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení s J.tajemství úspěšného prodeje",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"Strana 1 / 2",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"  ",
    phone:"",
    mail:"",
  },
  {
    first_name:"školení s Janou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Janou na retex a kerasmooth konzultace",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Janou prodej",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Janou prodej + natáčení na dvojče",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Jarkou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Jarkou - salon Privilege",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Jarkou - salon Privilege atd., vše co bude třeba ukázat a vysvětlit, plus pomoc kadeřníkům a pozorování při práci",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Jarkou a pak pomáhat Janě se Zuberovou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Kristý",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Kristý - i modelové",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s M.K. rezervační systém",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s M.M. drdoly",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s manažerkou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Mirkou Křesťanů",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s MK",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s MK, prozkoušení Toma na melír modelka a střih a MM zkouší Janu",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s MM",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s MM drdoly",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s MO K",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Mončou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Monikou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Monikou - modelka",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Monikou - pánský střih",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Monikou - pánský střih - model",
    phone:"723501243",
    mail:""
  },
  {
    first_name:"školení s Monikou modelka střih barva melír",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Monikou modelka střih barva melír - slečna Dominika",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Monikou modelka střih barva melír - slečna Jubová",
    phone:"608447371",
    mail:""
  },
  {
    first_name:"školení s Monikou teorie",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s novou kolegyní",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Terezou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Terkou",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Terkou - GL",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Terkou - modelka",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Terkou - objemka",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Terkou - pánský střih",
    phone:"",
    mail:""
  },
  {
    first_name:"školení s Terkou - pánský střih - model",
    phone:"723501243",
    mail:""
  },
  {
    first_name:"Šlachtová Michaela",
    phone:"604187070",
    mail:""
  },
  {
    first_name:"Šlachtová Michaela, NK",
    phone:"603187070",
    mail:""
  },
  {
    first_name:"Šlehofer",
    phone:"776851133, 776880663",
    mail:""
  },
  {
    first_name:"šlohoferová - pohovor",
    phone:"",
    mail:""
  },
  {
    first_name:"Šmídová",
    phone:"731537310",
    mail:""
  },
  {
    first_name:"Šmídová Jitka",
    phone:"602227481",
    mail:""
  },
  {
    first_name:"Šmídová Jitka",
    phone:"",
    mail:"jitka-smidova@seznam.cz"
  },
  {
    first_name:"Šmolíková",
    phone:"",
    mail:""
  },
  {
    first_name:"Šmolíková NK",
    phone:"",
    mail:""
  },
  {
    first_name:"Šmolíková Silvie",
    phone:"723516590",
    mail:""
  },
  {
    first_name:"Šperlová",
    phone:"777245792",
    mail:""
  },
  {
    first_name:"Špetová",
    phone:"731807167",
    mail:""
  },
  {
    first_name:"Šrámková",
    phone:"737500141",
    mail:""
  },
  {
    first_name:"Šrámková",
    phone:"",
    mail:"pavla.sramkova@seznam.cz"
  },
  {
    first_name:"Šrhořová",
    phone:"724160780",
    mail:""
  },
  {
    first_name:"Štádlerová Jana",
    phone:"602419838",
    mail:""
  },
  {
    first_name:"Štainbach",
    phone:"",
    mail:""
  },
  {
    first_name:"štambera",
    phone:"",
    mail:""
  },
  {
    first_name:"Štefanová",
    phone:"724651901",
    mail:""
  },
  {
    first_name:"Štěpánková",
    phone:"777177009",
    mail:""
  },
  {
    first_name:"Štěpánková k MM",
    phone:"",
    mail:""
  },
  {
    first_name:"Štěpanová Monika",
    phone:"",
    mail:""
  },
  {
    first_name:"štrekrová NK",
    phone:"608030686",
    mail:""
  },
  {
    first_name:"šuláková",
    phone:"724621334",
    mail:""
  },
  {
    first_name:"Šulcová",
    phone:"607832656",
    mail:""
  },
  {
    first_name:"Šulková Irena",
    phone:"724037846",
    mail:""
  },
  {
    first_name:"Šulková Irena",
    phone:"734253364",
    mail:""
  },
  {
    first_name:"Švábová",
    phone:"603882345",
    mail:""
  },
  {
    first_name:"Švédová Klára",
    phone:"",
    mail:""
  },
  {
    first_name:"telekonference s Monikou",
    phone:"",
    mail:""
  },
  {
    first_name:"teorie - co bude třeba rychle vysvětlit - Terka",
    phone:"",
    mail:""
  },
  {
    first_name:"teorie - s Monikou",
    phone:"",
    mail:""
  },
  {
    first_name:"teorie - Tereza",
    phone:"",
    mail:""
  },
  {
    first_name:"teorie - Tereza s Monikou",
    phone:"",
    mail:""
  },
  {
    first_name:"Tereza",
    phone:"",
    mail:""
  },
  {
    first_name:"Tereza - s Monikou",
    phone:"",
    mail:""
  },
  {
    first_name:"Tereza Pechátová",
    phone:"732548168",
    mail:""
  },
  {
    first_name:"Tereza Pechová",
    phone:"721426687",
    mail:""
  },
  {
    first_name:"Terka - nemoc!",
    phone:"",
    mail:""
  },
  {
    first_name:"Terka - stáž",
    phone:"",
    mail:""
  },
  {
    first_name:"Terka - ÚP",
    phone:"",
    mail:""
  },
  {
    first_name:"Teřl Dominik",
    phone:"721589479",
    mail:"dominik.terl@gmail.com"
  },
  {
    first_name:"Tesařová",
    phone:"739200557",
    mail:""
  },
  {
    first_name:"Tokárová Markéta",
    phone:"724821656",
    mail:""
  },
  {
    first_name:"Tom - dokonalý střih",
    phone:"",
    mail:""
  },
  {
    first_name:"Tom - dokonalý střih a přeliv",
    phone:"",
    mail:""
  },
  {
    first_name:"TOM - DOVOLENÁ",
    phone:"",
    mail:""
  },
  {
    first_name:"Tom - lékař",
    phone:"",
    mail:""
  },
  {
    first_name:"Tom - prosvětlení vlasů",
    phone:"",
    mail:""
  },
  {
    first_name:"Tom - stáž",
    phone:"",
    mail:""
  },
  {
    first_name:"Tom - ÚP",
    phone:"",
    mail:""
  },
  {
    first_name:"Tom cvičení GL",
    phone:"",
    mail:""
  },
  {
    first_name:"Tom musí končit! - doktor",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomáš Jarkins",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomáš Pravda",
    phone:"",
    mail:"pepa.demo@seznam.cz"
  },
  {
    first_name:"Tomášek - vlásky!",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomášková E.",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomášková Eva",
    phone:"737938672",
    mail:""
  },
  {
    first_name:"Tomášková Eva",
    phone:"",
    mail:"E.Tomaskova@seznam.cz"
  },
  {
    first_name:"Tomášková Eva II",
    phone:"777594694",
    mail:""
  },
  {
    first_name:"Tomčík",
    phone:"606456457",
    mail:""
  },
  {
    first_name:"Tomešková - pohovor",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomešková - předvede, co umí",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomík - barva a střih",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomovo vlasy",
    phone:"",
    mail:""
  },
  {
    first_name:"Tomšíčková Edita",
    phone:"723211232",
    mail:""
  },
  {
    first_name:"Topinková Markéta",
    phone:"773617013",
    mail:"marketka.raketka@seznam.cz"
  },
  {
    first_name:"Toráčová",
    phone:"",
    mail:""
  },
  {
    first_name:"Touš Václav",
    phone:"",
    mail:""
  },
  {
    first_name:"Tranová",
    phone:"776368678",
    mail:""
  },
  {
    first_name:"Trénik školení Hanka, melír + barva a střih paní",
    phone:"",
    mail:""
  },
  {
    first_name:"Trénik školení Hanka, melír + barva a střih paní Pálková",
    phone:"",
    mail:""
  },
  {
    first_name:"Trénik školení Hanka, melír + barva a střih žena",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink - panna - Jarka zadá, co jí udělat",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink - panna - Jarka zadá, co jí udělat + úklid",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink - ringy",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink - vlny žehličkou",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink drdolu na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink GL",
    phone:"",
    mail:""
  },
  {
    first_name:"Trénink Great Lenghts + úklid",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink koláží + koučink s Jarkou",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink na copánky příští týden",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink na panně - natáčení na natáčky",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink na panně a koukat na Janu",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink na panně, plus projít obrázky v ipadu",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink na seniora",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink natáčení - panna",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink natáčení na dvojče",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink pásků na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink prodlužování vlasů - na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink s Jarkou",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink účesů na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"trénink účesu na soutěž",
    phone:"",
    mail:""
  },
  {
    first_name:"trénovat na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"trénovat vlny na panně + drdol - vše vyfotit",
    phone:"",
    mail:""
  },
  {
    first_name:"Trnková Kristýna",
    phone:"604242993",
    mail:""
  },
  {
    first_name:"Trojanová Pavlína",
    phone:"739072843",
    mail:""
  },
  {
    first_name:"Trojanová Pavlína, NK",
    phone:"739072843",
    mail:""
  },
  {
    first_name:"Tronerová",
    phone:"72323311",
    mail:""
  },
  {
    first_name:"Tučáková Olga",
    phone:"602942189",
    mail:"olgatucak@gmail.com"
  },
  {
    first_name:"Tůmová jitka",
    phone:"606836936",
    mail:""
  },
  {
    first_name:"Tůmová, NK",
    phone:"",
    mail:""
  },
  {
    first_name:"Tylová",
    phone:"",
    mail:""
  },
  {
    first_name:"Tytltová",
    phone:"602488558",
    mail:""
  },
  {
    first_name:"Ubry, NK",
    phone:"",
    mail:""
  },
  {
    first_name:"účes Jarce - na večer",
    phone:"",
    mail:""
  },
  {
    first_name:"udělat discipline Jelči vlasem",
    phone:"",
    mail:""
  },
  {
    first_name:"udělat koláže",
    phone:"",
    mail:""
  },
  {
    first_name:"udělat přípravu na školení",
    phone:"",
    mail:""
  },
  {
    first_name:"udělat si navzájem vlasy",
    phone:"",
    mail:""
  },
  {
    first_name:"udělat vlasy Janě",
    phone:"",
    mail:""
  },
  {
    first_name:"udělat vlasy Kristýně",
    phone:"",
    mail:""
  },
  {
    first_name:"Uchytilová - konzultace",
    phone:"",
    mail:""
  },
  {
    first_name:"ukázat Terce GL a udělat účes na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"ukl",
    phone:"",
    mail:""
  },
  {
    first_name:"ukli",
    phone:"",
    mail:""
  },
  {
    first_name:"úklid",
    phone:"",
    mail:""
  },
  {
    first_name:"úklid, vystavení balíčků, koláže, případně pak trénink GL",
    phone:"",
    mail:""
  },
  {
    first_name:"uklizeci povinnosti",
    phone:"",
    mail:""
  },
  {
    first_name:"úklízení",
    phone:"",
    mail:""
  },
  {
    first_name:"Ulč Tomáš",
    phone:"725143131",
    mail:""
  },
  {
    first_name:"Ulrychová Martina - modelka na RETEX",
    phone:"775232594",
    mail:""
  },
  {
    first_name:"umýt Jarce vlasy - odpol účes",
    phone:"",
    mail:""
  },
  {
    first_name:"Ungrová Milena",
    phone:"602420047",
    mail:""
  },
  {
    first_name:"Urbanová",
    phone:"608509038",
    mail:""
  },
  {
    first_name:"Úřad Práce",
    phone:"",
    mail:""
  },
  {
    first_name:"Vacková",
    phone:"777766652",
    mail:""
  },
  {
    first_name:"Vacková - maturák",
    phone:"",
    mail:""
  },
  {
    first_name:"Vacková Eva",
    phone:"777766652",
    mail:""
  },
  {
    first_name:"Vacková Eva",
    phone:"",
    mail:"evicka.vackova@seznam.cz"
  },
  {
    first_name:"Vacovská Martina",
    phone:"732850566",
    mail:""
  },
  {
    first_name:"Valdesová",
    phone:"777619447",
    mail:""
  },
  {
    first_name:"Valečková",
    phone:"",
    mail:""
  },
  {
    first_name:"Valentová",
    phone:"723167979",
    mail:""
  },
  {
    first_name:"Vališová",
    phone:"776599023",
    mail:""
  },
  {
    first_name:"Vališová",
    phone:"",
    mail:"marie.valisova@volny.cz"
  },
  {
    first_name:"Valtr",
    phone:"",
    mail:""
  },
  {
    first_name:"Vavřičková",
    phone:"728956957",
    mail:""
  },
  {
    first_name:"Vavřichová",
    phone:"722177166",
    mail:""
  },
  {
    first_name:"Vedelbergrová",
    phone:"",
    mail:""
  },
  {
    first_name:"velký úklid - prach na produktech + vlastní úklid",
    phone:"",
    mail:""
  },
  {
    first_name:"velky uklid / zbytek odpoledne",
    phone:"",
    mail:""
  },
  {
    first_name:"Venasová Kateřina",
    phone:"774941574",
    mail:""
  },
  {
    first_name:"Vendelbergerova",
    phone:"739436607",
    mail:""
  },
  {
    first_name:"Vendelbergerova",
    phone:"",
    mail:"xvenl@seznam.cz"
  },
  {
    first_name:"Věra Rappová",
    phone:"605289598",
    mail:""
  },
  {
    first_name:"Veselá",
    phone:"602650589",
    mail:""
  },
  {
    first_name:"Vetchá Vladimíra",
    phone:"730548598",
    mail:""
  },
  {
    first_name:"Veverková",
    phone:"605909162",
    mail:""
  },
  {
    first_name:"videokonference s Monikou - všichni",
    phone:"",
    mail:""
  },
  {
    first_name:"Virka",
    phone:"",
    mail:""
  },
  {
    first_name:"Vitáková Pavlína",
    phone:"602624711",
    mail:""
  },
  {
    first_name:"Vlasáková",
    phone:"",
    mail:""
  },
  {
    first_name:"Vlasáková - nebere tel",
    phone:"",
    mail:""
  },
  {
    first_name:"Vlasáková Veronika",
    phone:"602476878",
    mail:"verun@seznam.cz"
  },
  {
    first_name:"VLasatý",
    phone:"731911169",
    mail:""
  },
  {
    first_name:"VLasatý",
    phone:"",
    mail:"vlasaty.lukas@gmail.com"
  },
  {
    first_name:"vlasy - dělá Tom",
    phone:"",
    mail:""
  },
  {
    first_name:"vlasy Janě",
    phone:"",
    mail:""
  },
  {
    first_name:"vlasy Janě - Tom",
    phone:"",
    mail:""
  },
  {
    first_name:"vlasy Jarce",
    phone:"",
    mail:""
  },
  {
    first_name:"vlasy Jarce - odrost a střih",
    phone:"",
    mail:""
  },
  {
    first_name:"vlasy Terce",
    phone:"",
    mail:""
  },
  {
    first_name:"vlasy Tomovi",
    phone:"",
    mail:""
  },
  {
    first_name:"Vodička",
    phone:"",
    mail:""
  },
  {
    first_name:"Vokolková",
    phone:"734188838",
    mail:""
  },
  {
    first_name:"Volařík",
    phone:"",
    mail:""
  },
  {
    first_name:"Voldřichová",
    phone:"608520220",
    mail:""
  },
  {
    first_name:"Voldřichová",
    phone:"",
    mail:"silviemil@volny.cz"
  },
  {
    first_name:"Volínová",
    phone:"702041032",
    mail:""
  },
  {
    first_name:"Volínová",
    phone:"702041032",
    mail:"volinova.tereza@seznam.cz"
  },
  {
    first_name:"volno",
    phone:"",
    mail:""
  },
  {
    first_name:"Voltrlová",
    phone:"",
    mail:""
  },
  {
    first_name:"Vopatová Veronika",
    phone:"603991389",
    mail:""
  },
  {
    first_name:"Voráčková",
    phone:"777972093",
    mail:""
  },
  {
    first_name:"Vorlová Pavlína",
    phone:"731121606",
    mail:""
  },
  {
    first_name:"Vorlová Pavlína",
    phone:"",
    mail:"pavlina.vorlova@centrum.cz"
  },
  {
    first_name:"Voříšková",
    phone:"606636381",
    mail:""
  },
  {
    first_name:"Votrlová",
    phone:"",
    mail:""
  },
  {
    first_name:"Vozár Zdeněk",
    phone:"",
    mail:""
  },
  {
    first_name:"Vožehová Silvie",
    phone:"721309464",
    mail:""
  },
  {
    first_name:"Vraná hana",
    phone:"604965056",
    mail:""
  },
  {
    first_name:"Vraštilová",
    phone:"739756566",
    mail:""
  },
  {
    first_name:"Vyletová",
    phone:"604611375",
    mail:""
  },
  {
    first_name:"Vyletová",
    phone:"604611375",
    mail:"e.sipova@seznam.cz"
  },
  {
    first_name:"výplata - Hanka",
    phone:"",
    mail:""
  },
  {
    first_name:"výplata - Jana",
    phone:"",
    mail:""
  },
  {
    first_name:"výplata - Monika",
    phone:"",
    mail:""
  },
  {
    first_name:"výplata - Terka",
    phone:"",
    mail:""
  },
  {
    first_name:"výplata - Tom",
    phone:"",
    mail:""
  },
  {
    first_name:"výplaty",
    phone:"",
    mail:""
  },
  {
    first_name:"vytřít",
    phone:"",
    mail:""
  },
  {
    first_name:"vytřít úklid",
    phone:"",
    mail:""
  },
  {
    first_name:"vytvořit paně 2 až 3 drdoly TRénink",
    phone:"",
    mail:""
  },
  {
    first_name:"vyzkoušet si drdol na panně - na čtvrteční školení",
    phone:"",
    mail:""
  },
  {
    first_name:"Walter",
    phone:"737265943",
    mail:""
  },
  {
    first_name:"Zborníková",
    phone:"605935497",
    mail:""
  },
  {
    first_name:"Zborníková",
    phone:"",
    mail:"eva.zbornikova1@seznam.cz"
  },
  {
    first_name:"Zdeňková",
    phone:"602364351",
    mail:""
  },
  {
    first_name:"Zdeňková",
    phone:"724329362",
    mail:""
  },
  {
    first_name:"Zdeňková - byla k Tomovi",
    phone:"",
    mail:""
  },
  {
    first_name:"Zdeňková Hana",
    phone:"724329362",
    mail:""
  },
  {
    first_name:"Zdeňková, NK",
    phone:"724329362",
    mail:""
  },
  {
    first_name:"Zdenková, wonder",
    phone:"602364351",
    mail:"jana.zdenkova@post.cz"
  },
  {
    first_name:"Zemanová",
    phone:"731485933",
    mail:""
  },
  {
    first_name:"Zíková",
    phone:"777117447",
    mail:""
  },
  {
    first_name:"Zimanová Wanda",
    phone:"605173799",
    mail:"nairuwana@gmail.com"
  },
  {
    first_name:"Zimová",
    phone:"724758825",
    mail:"zimovaka@seznam.cz"
  },
  {
    first_name:"zkouška účesu na panně - viz FB",
    phone:"",
    mail:""
  },
  {
    first_name:"zkusit drdol na panně",
    phone:"",
    mail:""
  },
  {
    first_name:"zkuste zavola Pitrové, jestli by mohla dřív",
    phone:"",
    mail:""
  },
  {
    first_name:"zkuste zavolat Pitrové, jestli by mohla dřív",
    phone:"",
    mail:""
  },
  {
    first_name:"Zlámalová",
    phone:"608325389",
    mail:""
  },
  {
    first_name:"zpětná vazba na fotky - všichni s Jarkou",
    phone:"",
    mail:""
  },
  {
    first_name:"zpětná vazba s Jarkou",
    phone:"",
    mail:""
  },
  {
    first_name:"zpětná vazba s Jarkou na novou kadeřnici",
    phone:"",
    mail:""
  },
  {
    first_name:"zubař",
    phone:"",
    mail:""
  },
  {
    first_name:"Zuberová Zuzana",
    phone:"603404010",
    mail:""
  },
  {
    first_name:"Zuberová Zuzana",
    phone:"",
    mail:"zu.zuberova@gmail.com"
  },
  {
    first_name:"Zuberová Zuzana - konzultace",
    phone:"",
    mail:""
  },
  {
    first_name:"zvedání telefonů, náplň práce za recepcí",
    phone:"",
    mail:""
  },
  {
    first_name:"Zvědělíková Alice",
    phone:"775214455",
    mail:""
  },
  {
    first_name:"Zvědělíková Alice",
    phone:"",
    mail:"a.zvedelikova@email.cz"
  },
  {
    first_name:"Žáčková Ivona",
    phone:"723985935",
    mail:""
  },
  {
    first_name:"Žebrakovský Michal",
    phone:"603965498",
    mail:"mohony.blatno@hmail.com"
  },
  {
    first_name:"žibřidová",
    phone:"604275657",
    mail:""
  },
  {
    first_name:"Žibřidová Zuzana",
    phone:"604275657",
    mail:"zibridova@gmail.com"
  },
  {
    first_name:"Žižková",
    phone:"",
    mail:""
  },
  {
    first_name:"Strana 2 / 2",
    phone:"",
    mail:""
  },
  {
    first_name:"",
    phone:"",
    mail:""
  }
]
)
