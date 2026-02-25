void delay(unsigned int ms)
{
 resetCoreTimer();
 while(readCoreTimer() < K * ms);
}

int main(void)
{

    int cnt1 = 0, cnt5 = 0, cnt10 = 0;

    int counter = 0;
    while (1)
    {
        putChar('\r'); // cursor regressa ao inicio da linha no ecrã
        printInt(cnt1, 10 | 5 << 16);
        putChar(' ');
        printInt(cnt5, 10 | 5 << 16);
        putChar(' ');
        printInt(cnt10, 10 | 5 << 16);

        delay(100);     // 10 Hz

        cnt10++;
        if (++counter % 2 == 0) {
            cnt5++;
        }
        if (counter % 10 == 0) {
            cnt1++;
            counter = 0;
        }
        
        counter++;
    }

    

    return 0;
}

