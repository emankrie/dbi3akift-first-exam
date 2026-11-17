# Speicherplatz nach 10 Jahren

## Größen der Tabellen

Größe einer Nachricht:
    id (4B)
    account_id (4B)
    rfc_identifier (1B/Buchstabe)
    sender (4B)
    sender_address_id (4B)
    sent_at (10B)
    subject (1B/Buchstabe)
    body (1B/Buchstabe)
    read (4B)
    flagged (4B)
    deleted (4B)
    created_at (10B)
    updated_at (10B)

Die kleinstmögliche Nachricht (Jedes Textfeld nur ein Zeichen, außer Timestamp), wäre also 61B groß.

Wenn man annimmt, dass der rfc_identifier ca 8 Zeichen, der Betreff 20 Zeichen und der Inhalt der Nachricht 300 Zeichen lang ist, dann wäre eine durchschnittliche Nachricht 386B groß.

Größe eines Anhangs:

    id (4B)
    message_id  (4B)
    filename (1B/Zeichen)
    mimetype  (3B) (sowas wie .sql, also schätze ich mit 3 Zeichen)
    size  (4B)
    path (1B/Zeichen)

Das kleinste Attachment ist 17B groß, angenommen, dass der Pfad zum Anhang 1 Zeichen und der Name des Anhangs 1 Zeichen sind.

Ich nehme an, dass der Pfad 40 Zeichen und der Name 10 Zeichen lang ist, also hat das durchschnittliche Attachment 65B.

Größe eines Kontakts:

    id (4B)
    name (1B/Zeichen)
    first_name (1B/Zeichen)
    last_name (1B/Zeichen)
    created_at (10B)

Ein Kontakt hat 17B, wenn name, Vorname und Nachname 1 Zeichen lang sind.
Ich würde 7B für Name, Vorname und Nachname nehmen, also 35B pro Kontakt.

# Meine Schätzung über 10 Jahre

Ich schätze, dass pro Nutzer 3 * 300 Nachrichten pro Jahr (also ca. 3 pro Arbeitstag) gesendet werden. Das wären (x * 9000 * 386)B mit x als Anzahl der Nutzer.

Ich schätze, dass pro Nutzer ein neuer Kontakt im Monat erstellt wird, also 12 pro Jahr. Das wären (x * 120 * 35)B mit x als Anzahl der Nutzer.

Ich schätze, dass jede 3. E-Mail einen Anhang enthält, das wären also mit der oben genannten Nachrichtenschätzung (9000 pro Nutzer auf 10 Jahre)(x * 3000 * 65) B mit x als Anzahl der Nutzer.
