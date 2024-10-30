//* Problem 1    Solution */
//* Author:  Megan Naylor */
MATCH (t:Tournament) RETURN (t.name)

// Problem 2 Solution*/
// Author: Braedon Williams*/
MATCH (n:Person)-[:REPRESENTS]-> (t:Team{name:'USA'}) RETURN n

//* Problem 3    Solution */
//* Author:    Dana Cavanagh*/
MATCH (n:Person {name:'Lauren Holiday'}) return (n.dob)

//* Problem 4    Solution */
//* Author:    Braedon Williams */
MATCH (n:Person) WHERE n.name CONTAINS 'Hara' RETURN n
       
//* Problem 5    Solution */
//* Author:    Dana Cavanagh*/
MATCH (n:Person {name:'Kelley O Hara'}) -[IN_SQUAD]-> (k:Squad) return count(k)


//* Problem 6    Solution */
//* Author:  Megan Naylor */
MATCH (n:Person)-[g:SCORED_GOAL]->(m:Match)-[i:IN_TOURNAMENT]->(t:Tournament)<-[r:PARTICIPATED_IN]-(e:Team{name:'USA'}) RETURN DISTINCT n.name

//* Problem 7    Solution */
//* Author:    Dana Cavanagh*/
MATCH (n:Person) -[:COACH_FOR]-> (k:Squad {id:'USA in 2019'}) return n.name

//* Problem 8    Solution */
//* Author:  Megan Naylor */
MATCH (n:Person{name:'Rose Lavelle'})-[g:SCORED_GOAL]->(m:Match) RETURN DISTINCT m.id

//* Problem 9 Solution */
//*Author: Braedon Williams */
MATCH (n:Person)-[:REPRESENTS]->(t:Team {name: "USA"})
MATCH (n)-[:COACH_FOR]->(:Squad)
RETURN DISTINCT n.name AS PersonName
       
