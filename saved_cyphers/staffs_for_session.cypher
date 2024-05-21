MATCH (nsMain:Session {name: $sessionName})
MATCH (nsMain)<-[:ATTENDS]-(nSt:Staff)-[:ATTENDS]->(nS:Session)<-[:ATTENDS]-(nStOther:Staff)-[:ATTENDS]->(nsMain)
WITH nSt, nStOther, count(nS) AS sessionCount
WHERE sessionCount >= 2
MATCH (nS)<-[:ATTENDS]-(nStOther)-[:ATTENDS]->(nSOther:Session)<-[:ATTENDS]-(nSt)-[:ATTENDS]->(nS)
MATCH g=(nS)<-[:ATTENDS]-(nStResult:Staff)-[:ATTENDS]->(nSOther)
RETURN g
