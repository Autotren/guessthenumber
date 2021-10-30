int t;
int lives;
Random rnd = new Random();

Console.Write("'Till what number?: ");
t = Convert.ToInt32(Console.ReadLine());
// Console.WriteLine(t);
Console.Write("How many lives?: ");
lives = Convert.ToInt32(Console.ReadLine());
int rint = rnd.Next (1,t);
Console.WriteLine("Guess the number. It's between 1 and " + t + " and you have " + lives + " lives.");

foreach (int l in Enumerable.Range(0,lives)) {
    Console.Write("Insert number: ");
    int inp = Convert.ToInt32(Console.ReadLine());
    if (inp > rint) {
        Console.WriteLine("Too high");
        if (l > lives - 2) {
            Console.WriteLine("I won, the number was " + rint);
        }
    }
    else if(inp < rint) {
        Console.WriteLine("Too low");
        if (l > lives - 2) {
            Console.WriteLine("I won, the number was " + rint);
        }
    }
    else {
        Console.WriteLine("You won, the number was " + rint);
        Environment.Exit(0);
    }
}