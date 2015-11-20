export var CUSTOMERS_FIXTURE = {
  "data": [
    {
      "id": "1",
      "type": "customers",
      "links": {
        "self": "http://localhost:3000/customers/1"
      },
      "attributes": {
        "birth": "1986-07-31",
        "phone": "",
        "mail": null,
        "note": "Lama",
        "first-name": "Michal",
        "last-name": "Bryxí",
        "visits-count": 23,
        "last-visit": 1162
      },
      "relationships": {
        "visits": {
          "links": {
            "self": "http://localhost:3000/customers/1/relationships/visits",
            "related": "http://localhost:3000/customers/1/visits"
          }
        }
      }
    },
    {
      "id": "5",
      "type": "customers",
      "links": {
        "self": "http://localhost:3000/customers/5"
      },
      "attributes": {
        "birth": null,
        "phone": "728735501",
        "mail": "a.pesulka@seznam.cz",
        "note": null,
        "first-name": "Petra",
        "last-name": "Alblová ",
        "visits-count": 2,
        "last-visit": null
      },
      "relationships": {
        "visits": {
          "links": {
            "self": "http://localhost:3000/customers/5/relationships/visits",
            "related": "http://localhost:3000/customers/5/visits"
          }
        }
      }
    },
    {
      "id": "14",
      "type": "customers",
      "links": {
        "self": "http://localhost:3000/customers/14"
      },
      "attributes": {
        "birth": null,
        "phone": "604642849",
        "mail": "baronova@seznam.cz",
        "note": "chodívala k MM",
        "first-name": "Veronika",
        "last-name": "Baroňová",
        "visits-count": 0,
        "last-visit": null
      },
      "relationships": {
        "visits": {
          "links": {
            "self": "http://localhost:3000/customers/14/relationships/visits",
            "related": "http://localhost:3000/customers/14/visits"
          }
        }
      }
    },
    {
      "id": "16",
      "type": "customers",
      "links": {
        "self": "http://localhost:3000/customers/16"
      },
      "attributes": {
        "birth": null,
        "phone": "724675966",
        "mail": "martinbartak@tiscali.it",
        "note": null,
        "first-name": "Martin",
        "last-name": "Barták",
        "visits-count": 9,
        "last-visit": 1108
      },
      "relationships": {
        "visits": {
          "links": {
            "self": "http://localhost:3000/customers/16/relationships/visits",
            "related": "http://localhost:3000/customers/16/visits"
          }
        }
      }
    },
    {
      "id": "27",
      "type": "customers",
      "links": {
        "self": "http://localhost:3000/customers/27"
      },
      "attributes": {
        "birth": null,
        "phone": "607822975",
        "mail": "luciasci@seznam.cz",
        "note": "ozve se",
        "first-name": "Lucie",
        "last-name": "Benýšková ",
        "visits-count": 0,
        "last-visit": null
      },
      "relationships": {
        "visits": {
          "links": {
            "self": "http://localhost:3000/customers/27/relationships/visits",
            "related": "http://localhost:3000/customers/27/visits"
          }
        }
      }
    }
  ]
};
