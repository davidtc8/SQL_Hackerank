/*Generate the following two result sets:

  Query an alphabetically ordered list of all names in OCCUPATIONS,
  immediately followed by the first letter of each profession as a
  parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A),
  ADoctorName(D), AProfessorName(P), and ASingerName(S). */

  /*Query the number of ocurrences of each occupation in OCCUPATIONS.
  Sort the occurrences in ascending order, and output them in the following format:*/

SELECT NAME, CONCAT('(', LEFT(OCCUPATION,1), ')') AS OCC
FROM OCCUPATIONS
ORDER BY OCCUPATION DESC;

SELECT CONCAT('There are a total of ', COUNT(OCCUPATION) , ' ', LOWER(OCCUPATION) , 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(NAME), OCCUPATION;
