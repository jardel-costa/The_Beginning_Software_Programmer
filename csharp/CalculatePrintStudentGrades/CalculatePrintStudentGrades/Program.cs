// lista 4 alunos
// 5 notas de 5 tarefas
// notas variam de 0 a 100 (100 = 100% de acerto)
// Resultados medias das 5 notas das tarefas para cada aluno
// Print saida nome do aluno e pontuação final

// initialize variables - graded assignments 
int currentAssignments = 5;

int sophia1 = 93;
int sophia2 = 87;
int sophia3 = 98;
int sophia4 = 95;
int sophia5 = 100;
int sophiaSum = sophia1 + sophia2 + sophia3 + sophia4 + sophia5;

int nicolas1 = 80;
int nicolas2 = 83;
int nicolas3 = 82;
int nicolas4 = 88;
int nicolas5 = 85;
int nicolasSum = nicolas1 + nicolas2 + nicolas3 + nicolas4 + nicolas5;

int zahirah1 = 84;
int zahirah2 = 96;
int zahirah3 = 73;
int zahirah4 = 85;
int zahirah5 = 79;
int zahirahSum = zahirah1 + zahirah2 + zahirah3 + zahirah4 + zahirah5;

int jeong1 = 90;
int jeong2 = 92;
int jeong3 = 98;
int jeong4 = 100;
int jeong5 = 97;
int jeongSum = jeong1 + jeong2 + jeong3 + jeong4 + jeong5;

// Console.WriteLine("Sophia soma: " + sophiaSum);
// Console.WriteLine("Nicolas soma: " + nicolasSum);
// Console.WriteLine("Zahirah soma: " + zahirahSum);
// Console.WriteLine("Jeong soma: " + jeongSum);

decimal sophiaScore = (decimal)sophiaSum/currentAssignments;
decimal nicolasScore  = (decimal)nicolasSum/currentAssignments;
decimal zahirahScore  = (decimal)zahirahSum/currentAssignments;
decimal jeongScore = (decimal)jeongSum / currentAssignments;

Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t\t" + jeongScore + "\tA");

// 97 - 100    A+
// 93 - 96     A
// 90 - 92     A-
// 87 - 89     B+
// 83 - 86     B

// decimal gradePointAverage = 3.99872831m;

// int a = (int)gradePointAverage;

// Console.Write(a);
