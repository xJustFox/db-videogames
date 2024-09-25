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


<hr>

## Descrizione delle Tabelle

### 1. SoftwareHouse
Contiene informazioni sulle aziende che producono i videogiochi.

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `name`: Nome della software house.
  - `vat_number`: Partita IVA.
  - `city`: Città.
  - `country`: Nazione.

### 2. Videogame
Contiene i dettagli sui videogiochi.

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `name`: Nome del videogioco.
  - `storyline`: Trama del videogioco.
  - `release_date`: Data di rilascio.
  - `software_house_id`: Chiave esterna verso la tabella `SoftwareHouse` (relazione uno-a-molti).
  - `pegi_rating_id`: Chiave esterna verso la tabella `pegi_rating` (relazione uno-a-molti).

### 3. Platform
Elenca le piattaforme disponibili su cui possono essere rilasciati i videogiochi.

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `name`: Nome della piattaforma (ad esempio, PlayStation, Xbox, Windows, ecc.).

### 4. Videogame_Platform
Relazione molti-a-molti tra `Videogame` e `Platform`.

- **Colonne**:
  - `videogame_id`: Chiave esterna verso `Videogame`.
  - `platform_id`: Chiave esterna verso `Platform`.

### 5. Category
Elenca le categorie dei videogiochi (ad esempio, avventura, strategia, RPG, ecc.).

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `name`: Nome della categoria.

### 6. Videogame_Category
Relazione molti-a-molti tra `Videogame` e `Category`.

- **Colonne**:
  - `videogame_id`: Chiave esterna verso `Videogame`.
  - `category_id`: Chiave esterna verso `Category`.

### 7. PEGI_Rating
Contiene le classificazioni PEGI dei videogiochi (es. PEGI 7, PEGI 12, PEGI 18, ecc.).

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `rating`: Descrizione della classificazione PEGI.

### 9. Tournament
Gestisce le informazioni sui tornei internazionali di E-sports.

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `name`: Nome del torneo.
  - `year`: Anno in cui si svolge il torneo.
  - `city`: Città in cui si tiene il torneo.

### 10. Player
Contiene i dettagli sui giocatori che partecipano ai tornei.

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `first_name`: Nome del giocatore.
  - `last_name`: Cognome del giocatore.
  - `nickname`: Nickname usato nei giochi.
  - `city`: Città di provenienza.

### 11. Player_Tournament
Relazione molti-a-molti tra `Player` e `Tournament`.

- **Colonne**:
  - `player_id`: Chiave esterna verso `Player`.
  - `tournament_id`: Chiave esterna verso `Tournament`.

### 12. Review
Permette ai giocatori di recensire i videogiochi.

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `title`: Titolo della recensione.
  - `text`: Testo della recensione.
  - `rating`: Valutazione (da 1 a 5).
  - `player_id`: Chiave esterna verso `Player`.
  - `videogame_id`: Chiave esterna verso `Videogame`.

### 13. Award
Gestisce i premi che possono essere assegnati ai videogiochi (es. gioco dell’anno, miglior narrativa, ecc.).

- **Colonne**:
  - `id`: Identificativo univoco (Primary Key).
  - `name`: Nome del premio.

### 14. Videogame_Award
Relazione molti-a-molti tra `Videogame` e `Award` con l'anno di assegnazione del premio.

- **Colonne**:
  - `videogame_id`: Chiave esterna verso `Videogame`.
  - `award_id`: Chiave esterna verso `Award`.
  - `year`: Anno in cui il videogioco ha vinto il premio.

---

## Relazioni Chiave

### Uno-a-molti:
- Ogni `SoftwareHouse` può produrre più `Videogame`.
- Ogni `Player` può scrivere più `Review`.

### Molti-a-molti:
- Un `Videogame` può essere disponibile su più `Platform` e può avere più `Category` e `PEGI_Rating`.
- I giocatori possono partecipare a più tornei, e i videogiochi possono vincere più premi.


