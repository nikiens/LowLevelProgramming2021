#include <stddef.h>
#include <stdio.h>

#include "../../include/libtrapz/libtrapz.h"

int main(void) 
{
    double xarray[] = {1.1, 2.28, 4.6, 5, 10.001};
    double yarray[] = {0.8, 0.16, 0.8, 0.16, 0.8};
    
    size_t length = sizeof(xarray) / sizeof(*xarray);
    
    printf("%f\n", trapz(xarray, yarray, length));
    
    return 0;
}
