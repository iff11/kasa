export default {
  // "some.translation.key": "Text for some.translation.key",
  //
  // "a": {
  //   "nested": {
  //     "key": "Text for a.nested.key"
  //   }
  // },
  //
  // "key.with.interpolation": "Text with {{anInterpolation}}"

  customers: {
    all: 'Všichni zákazníci',
    newsletter: 'Newsletter',
    filterBy: {
      placeholder: 'Jan Novák...'
    }
  },

  customer: {
    firstName: 'Jméno',
    lastName: 'Příjmení',
    full_name: 'Jméno',
    birth: 'Datum narození',
    note: 'Poznámka',
    birthday_in: 'Narozeniny',
    phone: 'Telefon',
    mail: 'E-mail',
    action: 'Akce',
    add: 'Přidat zákazníka',
    visits_length: 'Návštěv',
    all_customers: 'Seznam zákazníků',
    all_visits: 'Seznam návštěv',
    lastVisit: 'Poslední návštěva'
  },

  visit: {
    all_visits: 'Všechny otevřené zakázky',
    checkout: 'K pokladně',
    customer: 'Zákazník',
    employee: 'Zaměstnanec',
    all_open: 'Všechny otevřené zakázky',
    auto_complete: 'Hledej...',
    total_price: 'Celková cena',
    close_warning: 'Zakázka bude uzavřena. Již nebude možno přidávat, odebírat ani měnit položky.',
    close: 'Uzavřít',
    note: 'Poznámka k zakázce',
    back_to_visit: 'Zpátky do zakázky',
    sum_price_is: 'Celková částka k zaplacení',
    sum_with_tip_is: 'Celková částka i s dýškem',
    tip: 'Dýško',
    back_to_customer: 'Zpátky na zákazníka',
    reopen: 'Znovu otevřít',
    visit_of: 'Návštěva',
    element: 'Položka',
    number: 'Hodnota',
    received_amount: 'Přijatá částka',
    return_amount: 'K vrácení',
    updatedAt: 'Datum',
    employee_margin: 'Podíl zaměstnance',
    isDirty: 'Neuložili jste položku zakázky. Klikněte na zelené plus, nebo položku smažte.',
    noLastVisit: '---',
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
    unit_price: 'Cena / ks',
    count: 'Kusů',
    sum_price: 'Cena',
    action: 'Akce',
    select_item: '-- Vyber položku --',
    customer: 'Zákazník',
    date: 'Datum',
    employee: 'Zeměstnanec',
    visit: 'Zakázka'
  },

  item: {
    new: 'Nová položka skladu',
    name: 'Název',
    stock: 'Skladem',
    purchase_price: 'Nákup',
    unlimited: 'Neomezené množství',
    sellingPrice: 'Prodejní cena (s DPH)',
    barcode: 'Čárový kód',
    unlimited_or_stock: 'Koupeno - Prodáno = Skladem',
    action: 'Akce',
    actualCount: 'Skladem',
    sold: 'Prodáno',
    bought: 'Naskladněno',
    warningThreshold: 'Minimálně skladem',
    edit: 'Upravit',
    margin: 'Marže',
    isActive: 'V prodeji'
  },

  employee: {
    firstName: 'Jméno',
    lastName: 'Příjmení',
    photo_url: 'Odkaz na fotku',
    action: 'Akce',
    add: 'Přidat',
    all_employees: 'Všichni zaměstnanci',
    all_visits: 'Všechny zakázky'
  },

  supply: {
    heading: 'Naskladnění',
    purchase_price: 'Nákupní cena (bez DPH)',
    last_purchase_price_with_vat: 'Poslední nákupní cena s DPH',
    last_purchase_price: 'Poslední nákupní cena',
    quantity: 'Množství',
    vat: 'DPH nákupu',
    item: 'Položka skladu',
    create: 'Naskladnit',
    created_at: 'Naskladněno',
    sum: 'Celková cena',
    sum_with_vat: 'Celková cena s DPH'
  },

  employees: {
    all: 'Zaměstnanci'
  },

  login: {
    header: 'Přihlášení'
  },

  sidebar: {
    admin: {
      items: 'Sklad',
      customers: 'Zákazníci',
      employees: 'Zaměstnanci',
      supply: 'Naskladnění'
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
  noNewNotifications: 'Žádné nové notifikace'
};