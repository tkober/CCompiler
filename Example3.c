double power(double a, int e)
{
    double result = a;
    while (--e > 0) {
        result *= a;
    }
    return result;
}


void main()
{
	double d = power(2, 5);
}