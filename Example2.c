int max(int a, int b);
int min(int a, int b);

void main()
{
    int max_result = max(4711, 4712);
    int min_result = min(4711, 4712);
}


int max(int a, int b)
{
    if (a > b) {
        return a;
    } else {
        return b;
    }
}


int min(int a, int b)
{
    return a < b ? a : b;
}