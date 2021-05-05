#include <stddef.h>

double trapz(double *xdata, double *ydata, size_t len) 
{
    double sum;
    
    for (int i = 0; i < len - 1; i++) {
        sum += (ydata[i + 1] + ydata[i]) * (xdata[i + 1] - xdata[i]) / 2;
    }
    
    return sum;
}
