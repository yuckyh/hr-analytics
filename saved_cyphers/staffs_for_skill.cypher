MATCH (nSk:Skill {name: $skillName})<-[:HAS_SKILL]-(:Staff)-[rHS:HAS_SKILL]->(nSkOther:Skill)
WITH nSkOther, count(rHS) AS hasCount
ORDER BY hasCount DESC
LIMIT 2
WHERE hasCount >= 2
WITH nSkOther
MATCH (:Skill {name: $skillName})<-[:HAS_SKILL]-(:Staff)-[:HAS_SKILL]->(nSkOther)<-[rHSOther:HAS_SKILL]-(:Staff)
WITH rHSOther, nSkOther, count(rHSOther) AS otherHasCount
ORDER BY rHSOther DESC
WHERE otherHasCount >= 2
MATCH g=(:Skill {name: $skillName})<-[:HAS_SKILL]-(:Staff)-[:HAS_SKILL]->(nSkOther)<-[rHSOther]-(:Staff)
RETURN g
LIMIT 15
