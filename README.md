# Esercizio - DB Videogames

Descrizione: <br>
Creare lo schema E-R con tutte le entità necessarie a gestire le informazioni di un archivio di E-sports. Utilizza [draw.io](https://www.drawio.com/) per la creazione del diagramma.

### Requisiti

- **Videogames**:
  - Ogni videogame ha un:
    - Nome
    - Trama
    - Data di rilascio
    - Prodotto da una software house
- **Software House**:
  - Ogni software house è identificata da:
    - Nome
    - Partita IVA
    - Città
    - Nazione
- **Piattaforme**:
  - I videogames possono essere disponibili su diverse piattaforme:
    - PlayStation 4
    - PlayStation 5
    - Xbox One
    - Xbox Serie X
    - Windows
    - Nintendo Switch
    - Google Stadia
- **Categorie**:
  - I videogames appartengono a diverse categorie:
    - Avventura
    - Strategia
    - RPG
    - Sparatutto
    - Calcio
- **Classificazioni PEGI**:
  - I videogames hanno diverse classificazioni PEGI:
    - PEGI 7
    - PEGI 12
    - PEGI 18
    - Violenza
    - Paura
    - Gioco d'azzardo

### Tornei

- Periodicamente vengono organizzati tornei di videogiochi.
- Caratteristiche di ogni torneo:
  - Nome
  - Anno
  - Città di svolgimento

### Giocatori

- Ogni giocatore, al momento dell'iscrizione, fornisce:
  - Nome
  - Cognome
  - Nickname di gioco
  - Città di provenienza

### Recensioni

- I giocatori possono recensire i videogames:
  - Ogni recensione include:
    - Titolo
    - Testo
    - Valutazione da 1 a 5

### Premi

- Ogni anno vengono votati i migliori videogiochi.
- I premi includono:
  - Gioco dell'anno
  - Miglior narrativa
  - Miglior colonna sonora
  - Miglior gioco indipendente
  - Gioco più atteso
