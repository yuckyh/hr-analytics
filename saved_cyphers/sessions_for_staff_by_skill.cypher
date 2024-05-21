MATCH (nSt:Staff {name: $staffName})-[:HAS_SKILL]->(nSk:Skill)<-[:HAS_SKILL]-(nStOther:Staff)
WITH nSt, nStOther, count(nSk) AS skillCount
ORDER BY skillCount DESC
LIMIT 10
MATCH g=(nSt)-[:HAS_SKILL]->(nSk)<-[:TRAINS]-(nSOther:Session)<-[:ATTENDS]-(nStOther)
RETURN g
LIMIT 20
