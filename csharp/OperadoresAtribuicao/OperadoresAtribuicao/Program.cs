
//int z = int.Parse(null);
int z = Convert.ToInt32(null);

int a = 10;
int b = 20;

int c = a + b + z;

Console.WriteLine(c);

//c = c + 5;
c += 5;

Console.WriteLine(c);

c -= 2;

Console.WriteLine(c);

c /= 3;

Console.WriteLine(c);

c *= 11;

Console.WriteLine(c);

c %= 7;

Console.WriteLine(c);
