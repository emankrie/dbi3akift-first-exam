/*
Eine View ist problematisch bei der Verwaltung von Konversationen, da sie nicht dem ACID-Anforderungen (Atomar, Konsistent, Isoliert, Permanent) entspricht

Werden Verarbeitungsschritte unabhängig voneinander ausgeführt, aber betreffen die gleichen Tabellen, kann es zu inkonsistenten Daten kommen.

Es ist wichtig, dass eine E-Mail atomar behandelt wird, da Sender und Empfänger die vollkommen identische Nachricht benötigen.

Eine Datenbanktransaktion ist eine atomare, konsistente, isolierte und permanente Veränderung der gespeicherten Daten. Die Änderungen gibt es entweder vollständig oder garnicht.
*/

PRAGMA foreign_keys = ON;
BEGIN TRANACTION;

INSERT INTO conversations(id, account_id, contact_id, status, last_message_at, last_message_direction, updated_at)
VALUES((last_insert_rowid() + 1), 1, 1 ,)

END;
