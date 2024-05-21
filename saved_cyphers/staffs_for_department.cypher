MATCH (nD:Department {name: $departmentName})<-[:BELONGS_TO]-(:Staff)-[:IN_FIELD]->(nF:Field)
WITH nD, nF, count(nF) AS fieldCount
ORDER BY fieldCount DESC
LIMIT 1
MATCH (nD)<-[:BELONGS_TO]-(nSt:Staff)-[:ATTENDS]->(:Session)-[:TRAINS]->(:Skill)-[:SKILL_OF]->(nFOther:Field)
WHERE nF <> nFOther AND nFOther.name <> "General"
WITH nD, nSt, nFOther, count(nFOther) AS otherFieldCount
MATCH g=(nD)<-[:BELONGS_TO]-(nSt)-[:ATTENDS]->(:Session)-[:TRAINS]->(:Skill)-[:SKILL_OF]->(nFOther)
RETURN g