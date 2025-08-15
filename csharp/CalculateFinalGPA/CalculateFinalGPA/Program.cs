// Receber o nome do aluno e info de classe
// Cada classe tem um nome, a nota do aluno e numero de horas de credito da classe
// Calcular GPA do aluno
// Exibir Nome do aluno, Info classe e GPA

// Calculo GPA
// nota * numero de horas do curso
// divida o resultado pelo numero total de horas

// Exemplo

// Student: Sophia Johnson

// Course          Grade   Credit Hours	
// English 101         4       3
// Algebra 101         3       3
// Biology 101         3       4
// Computer Science I  3       4
// Psychology 101      4       3

// Final GPA:          3.35

using System.Globalization;

int totalCreditHours = 0;
int totalGradePoints = 0;

string name1 = "Sophia Johnson";

string course1Name1 = "English 101";
string course2Name1 = "Algebra 101";
string course3Name1 = "Biology 101";
string course4Name1 = "Computer Science I";
string course5Name1 = "Psychology 101";

int grade1Name1 = 4;
int grade2Name1 = 3;
int grade3Name1 = 3;
int grade4Name1 = 3;
int grade5Name1 = 4;

int creditHours1Name1 = 3;
int creditHours2Name1 = 3;
int creditHours3Name1 = 4;
int creditHours4Name1 = 4;
int creditHours5Name1 = 3;

totalCreditHours += creditHours1Name1;
totalCreditHours += creditHours2Name1;
totalCreditHours += creditHours3Name1;
totalCreditHours += creditHours4Name1;
totalCreditHours += creditHours5Name1;

int point1Name1 = grade1Name1 * creditHours1Name1;
int point2Name1 = grade2Name1 * creditHours2Name1;
int point3Name1 = grade3Name1 * creditHours3Name1;
int point4Name1 = grade4Name1 * creditHours4Name1;
int point5Name1 = grade5Name1 * creditHours5Name1;

totalGradePoints += point1Name1;
totalGradePoints += point2Name1;
totalGradePoints += point3Name1;
totalGradePoints += point4Name1;
totalGradePoints += point5Name1;

decimal gradePointAverage = (decimal) totalGradePoints / totalCreditHours;

Console.WriteLine($"\nStudent: {name1}\n");

Console.WriteLine("Course\t\t\t" + " Credit\t" + " Credit Hours");

Console.WriteLine($"{course1Name1}\t\t {grade1Name1}\t {creditHours1Name1}");
Console.WriteLine($"{course2Name1}\t\t {grade2Name1}\t {creditHours2Name1}");
Console.WriteLine($"{course3Name1}\t\t {grade3Name1}\t {creditHours3Name1}");
Console.WriteLine($"{course4Name1}\t {grade4Name1}\t {creditHours4Name1}");
Console.WriteLine($"{course5Name1}\t\t {grade5Name1}\t {creditHours5Name1}");

// Console.WriteLine($"\n\t Total Credit Hours: {totalCreditHours}" + $"\t\tTotal Garde Points: {totalGradePoints}");

string gradePointAverageConvert = string.Format(CultureInfo.GetCultureInfo("en-US"),"{0:F2}", gradePointAverage);
Console.WriteLine($"\nFinal GPA: {gradePointAverageConvert}");