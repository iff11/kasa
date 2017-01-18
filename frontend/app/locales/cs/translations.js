export default {
  // "some.translation.key": "Text for some.translation.key",
  //
  // "a": {
  //   "nested": {
  //     "key": "Text for a.nested.key"
  //   }
  // },
  //
  // "key.with.interpolation": "Text with { {anInterpolation }}"

  'registration.heading': 'Registrace',
  'registration.save': 'Uložit',
  'registration.success': 'Registrace proběhla úspěšně',
  'registration.failure': 'Při registraci došlo k chybě',

  customers: {
    all: 'Všichni zákazníci',
    newsletter: 'Newsletter',
    filterBy: {
      placeholder: 'Jan Novák...'
    },
    newCustomer: 'Nový zákazník'
  },

  customer: {
    genders: {
      male: 'Muž',
      female: 'Žena'
    },
    isApproved: 'Schválen',
    gender: 'Pohlaví',
    firstName: 'Jméno',
    lastName: 'Příjmení',
    'fullName': 'Jméno',
    birth: 'Datum narození',
    note: 'Poznámka',
    birthdayIn: 'Narozeniny',
    phone: 'Telefon',
    mail: 'E-mail',
    action: 'Akce',
    add: 'Přidat zákazníka',
    'visits_length': 'Návštěv',
    allCustomers: 'Seznam zákazníků',
    'all_visits': 'Seznam návštěv',
    lastVisitDate: 'Poslední návštěva'
  },

  visit: {
    priceSection: 'Částka',
    paymentSection: 'Platba',
    selectAnItem: 'Vyberte položku',
    'all_visits': 'Všechny otevřené zakázky',
    checkout: 'K pokladně',
    customer: 'Zákazník',
    employee: 'Zaměstnanec',
    'all_open': 'Všechny otevřené zakázky',
    'auto_complete': 'Hledej...',
    'price': 'Celková cena',
    'close_warning': 'Zakázka bude uzavřena. Již nebude možno přidávat, odebírat ani měnit položky.',
    close: 'Uzavřít',
    note: 'Poznámka k zakázce',
    'back_to_visit': 'Zpátky do zakázky',
    'sum_price_is': 'Celková částka',
    'sum_with_tip_is': 'Celková částka i s dýškem',
    tip: 'Dýško',
    'back_to_customer': 'Zpátky na zákazníka',
    reopen: 'Znovu otevřít',
    'visit_of': 'Návštěva',
    element: 'Položka',
    number: 'Hodnota',
    'paid_in_cash': 'Přijato v hotovosti',
    paidByCard: 'Zaplaceno kartou',
    enablePaymentByCard: 'platba kartou',
    'return_amount': 'K vrácení',
    updatedAt: 'Datum',
    'employee_margin': 'Podíl zaměstnance',
    isDirty: 'Neuložili jste položku zakázky. Klikněte na zelené plus, nebo položku smažte.',
    noLastVisit: '---',
    employeeShareService: 'Podíl zaměstnance služby',
    employeeShareSale: 'Podíl zaměstnance prodej',
    new: {
      selectCustomer: '-- Vyber --',
      selectEmployee: '-- Vyber --',
      confirm: 'Přidat'
    }
  },

  items: {
    all: 'Sklad',
    add: 'Přidat',
    newName: 'Nová položka',
    newBarcode: '123456789',
    newStock: '10',
    newSellingPrice: '100',
    newWarningThreshold: '5',
    active: 'Aktivní',
    inactive: 'Neaktivní',
    filterBy: {
      label: 'Filtrace',
      placeholder: 'Šampón...',
      count: 'kusů',
      showing: 'Zobrazeno'
    }
  },

  sell: {
    item: 'Položka',
    'unit_price': 'Cena / ks',
    count: 'Kusů',
    'sum_price': 'Cena',
    action: 'Akce',
    'select_item': '-- Vyber položku --',
    customer: 'Zákazník',
    date: 'Datum',
    employee: 'Zeměstnanec',
    visit: 'Zakázka'
  },

  item: {
    new: 'Nová položka skladu',
    name: 'Název',
    stock: 'Skladem',
    'purchasePrice': 'Nákup',
    unlimited: 'Neomezené množství',
    sellingPrice: 'Prodejní cena (s DPH)',
    barcode: 'Čárový kód',
    'unlimited_or_stock': 'Koupeno - Prodáno = Skladem',
    action: 'Akce',
    actualCount: 'Skladem',
    sold: 'Prodáno',
    bought: 'Naskladněno',
    warningThreshold: 'Minimálně skladem',
    newItemEntity: 'Ekonomický subjekt',
    edit: 'Upravit',
    margin: 'Marže',
    isActive: 'Aktivní',
    isService: 'Služba'
  },

  employee: {
    firstName: 'Jméno',
    lastName: 'Příjmení',
    photoUrl: 'Odkaz na fotku',
    action: 'Akce',
    add: 'Přidat',
    'all_employees': 'Všichni zaměstnanci',
    'all_visits': 'Všechny zakázky',
    isActive: 'Aktivní'
  },

  supply: {
    heading: 'Naskladnění',
    purchasePrice: 'Nákupní cena (bez DPH)',
    lastPurchasePriceWithVat: 'Poslední nákupní cena s DPH',
    lastPurchasePrice: 'Poslední nákupní cena',
    quantity: 'Množství',
    vat: 'DPH nákupu',
    item: 'Položka skladu',
    create: 'Naskladnit',
    'created_at': 'Naskladněno',
    sum: 'Celková cena',
    'sumWithVat': 'Celková cena s DPH'
  },

  employees: {
    all: 'Zaměstnanci'
  },

  login: {
    header: 'Přihlášení'
  },

  admin: {
    companies: {
      heading: 'Moje firma',
      companyNameLabel: 'Název firmy',
      entities: 'Ekonomické entity',
      entityName: 'Název entity'
    },
    statuses: {
      heading: 'Stav systému'
    },
    employee: {
      year: 'Rok',
      month: 'Měsíc'
    },
    visits: {
      heading: 'Všechny zakázky'
    }
  },

  sidebar: {
    admin: {
      items: 'Sklad',
      customers: 'Zákazníci',
      employees: 'Zaměstnanci',
      supply: 'Naskladnění',
      statuses: 'Stav systému',
      companies: 'Firma',
      visits: 'Zakázky'
    },
    heading: {
      navigation: 'Navigace',
      employee: 'Zaměstnanec',
      admin: 'Administrátor',
      profile: 'Profil'
    },
    customers: 'Zákazníci',
    items: 'Sklad',
    visits: 'Otevřené zakázky',
    logout: 'Odhlásit'
  },

  currency: 'Kč',
  pieces: 'ks',
  noNewNotifications: 'Žádné nové notifikace',
  loadMore: 'Více...',
  loading: '... načítám ...'
};
