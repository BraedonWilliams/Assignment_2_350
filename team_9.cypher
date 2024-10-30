//* Problem 1    Solution */
//* Author:  Megan Naylor */
MATCH (t:Tournament) RETURN (t.name)

//* Problem 6    Solution */
//* Author:  Megan Naylor */
MATCH (p:Person)-[g:SCORED_GOAL]->(m:Match)-[i:IN_TOURNAMENT]->(t:Tournament)<-[r:PARTICIPATED_IN]-(e:Team{name:"USA"}) RETURN DISTINCT p.name

//* Problem 8    Solution */
//* Author:  Megan Naylor */
MATCH (p:Person{name:"Rose Lavelle"})-[g:SCORED_GOAL]->(m:Match) RETURN DISTINCT m.id