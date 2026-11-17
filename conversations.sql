/*
Eine View ist eine "virtuelle Tabelle", auf die man nur Lesezugriff hat und im Hintergrund einen Select auf echte Tabelle ausführt.

Views haben den Vorteil, dass der Ersteller selbst entscheiden kann, welche Informationen einer, oder mehrerer, Tabellen preisgegeben werden.
Normale Nutzer sollten gar nicht über ID's bescheid wissen, hier könnte eine View den Einblick auf die ID's verhindern, und trotzdem noch die relevanten Informationen wie z.B status liefern.

*/


CREATE VIEW conversations_incoming AS
SELECT c.id, c.first_name, c.last_name, COUNT(m.messages)
FROM messages m
JOIN messages_conversations mc
ON m.id = mc.message_id
JOIN conversations conv
ON mc.conversation_id = conv.id
JOIN contacts c
ON c.id = conv.contact_id
GROUP BY c.id
WHERE conv.last_message_direction = 'incoming';


Erweiterung:
CREATE VIEW conversations_incoming AS
SELECT c.id, c.first_name, c.last_name, COUNT(m.messages), conv.last_message_at
FROM messages m
JOIN messages_conversations mc
ON m.id = mc.message_id
JOIN conversations conv
ON mc.conversation_id = conv.id
JOIN contacts c
ON c.id = conv.contact_id
GROUP BY c.id;

