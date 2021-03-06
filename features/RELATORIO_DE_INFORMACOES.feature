Feature: self evaluation
In order to complete my process of evaluation
As a student 
I want to evaluate me for each goal of the subject

GUI
Scenario: student doing his self-evaluation
Given The teacher has attributed "MPA” for the average
learning goals
And I am at the "Auto Avaliação" page
When I fill all the empty grade spaces for self-evaluation
Then I can see the button “Enviar” turning into a black color
And i am still at the “Auto Avaliação”  page
And I see grades from my teacher and my own self-evaluation grades

SERVIÇO
Scenario: student doing his self-evaluation
Given The student “Cicrano” has "MPA" for the average learning goals stored in system
When “Cicrano” sends “MPA” for his three self-evaluation grades
Then the system stores “MPA” for his self-evaluation grades in the system.

GUI
Scenario: student doing his self-assessment incompletely
Given I am at the "Auto Avaliação" page
And I see grades from my teacher and no grade for self-evaluation 
When  I left a empty space for self-evaluation
Then i see an unreachable red button “enviar”  
And i am still at the “Auto Avaliação”  page
And I see grades from my teacher and one grade for self-evaluation 

SERVIÇO
Scenario: student doing his self-assessment incompletely
Given The student “Cicrano” has "MPA" for the average learning goals stored in system
When “Cicrano” sends “NULL” for his self-evaluation grade
Then the system doesn’t store NULL’ for his self-evaluation grade in the system.

Feature: discrepant self-evaluation 
As a professor
I want to view the amount, percentage, and list of students with 25% differing self-assessments grades than mine grades
so that i can check if the calculate of his average grade was correct

Scenario: students grades and self-evaluation are the same
Given I am logged as “Professor” with the login “professor” and password “abc123”
And I am at the "Página do Professor"
And I see “Maria” grades, “MA, MA, MA, MA, MA”, and her self-evaluation grades, “MA, MA, MA, MA, MA”
And I see “Jose” grades, “MA, MANA, MPA, MA, MA”, and her self-evaluation grades, “MA, MANA, MA, MA, MA”
And I see “João” grades, “MA, MA, MPA, MA, MA”, and her self-evaluation grades, “MPA, MPA, MANA, MPA, MPA”
When  i look at the “% of discrepancy” space for each student i see “Maria” with 0%
And I see “Jose” with 20%
And I see “João” with 0%
