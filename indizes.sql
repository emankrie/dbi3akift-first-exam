/*
Ein Datenbankindex ist ein im Hintergrund gespeicherter "Suchweg" der für häufig abgefragte Tabellenfelder (z.B. Geburtsdatum in Tabelle Users) angelegt wird.
Er verkürzt die Zeit, die ein Selekt beim abfragen dieses Feldes benötigt, von O(n) auf O(log(n)). Er benötigt allerdings Speicherplatz und kann
INSERT, DELETE und UPDATE-Statements verlangsamen, da auch der Index bei Änderungen angepasst werden muss.


Spalten für die ein Index sinnvoll wäre:

converstaions(status)

messages(deleted)

messages(sender)


messages(sender):
Die Nachrichten nach Absender zu sortieren ist wohl ein täglicher Anwendungsfall.
Der Speicherplatz, den man für einen Index auf eine so relevante Spalte opfern müsste, ist es auf jeden Fall Wert hier schneller Filtern zu können.
Zudem wird man die Messages Tabelle kaum bearbeiten, weshalb die Verlangsamung der INSERT, DELETE und UPDATE-Statements irrelevant ist.

*/
CREATE INDEX idx_conversation_by_status ON converstaions(status);

CREATE INDEX idx_deleted_messages ON messages(deleted);

CREATE INDEX idx_messages_from_sender ON messages(sender);