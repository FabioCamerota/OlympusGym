# OlympusGym


![Git-Banner](/app/assets/images/banner-alpha.png)


*Sito web per la gestione e l'iscrizione ai corsi offerti dalla palestra OlympusGym.*


## Creazione del database e dell'ambiente per il testing:
	
1. `$ [bundle exec] rake db:drop:all`
2. `$ [bundle exec] rake db:create:all`
3. `$ [bundle exec] rake db:migrate`
4. `$ [bundle exec] rake db:setup`


## Per il testing Cucumber+Capybara:

- `$ bundle exec cucumber`


## Per il testing RSpec:

- `$ bundle exec rspec [-f d]` 


## Per lanciare l'applicazione in locale:

1. `$ rails server`
2. Visitare `http://localhost:3000`




#### Dettagli:

- Ruby version: 3.0.0

- Rails version: 6.1.3

- Sqlite3 version: 3.31.1

- Yarn version: 1.22.5
