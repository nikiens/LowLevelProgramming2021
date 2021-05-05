# 1 "/home/dmitri/Загрузки/LowLevelProgramming2021/separate/src/libtrapz/libtrapz.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/dmitri/Загрузки/LowLevelProgramming2021/separate/src/libtrapz/libtrapz.c"
# 1 "/media/dmitri/scdvfbg/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/media/dmitri/scdvfbg/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/media/dmitri/scdvfbg/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/media/dmitri/scdvfbg/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/media/dmitri/scdvfbg/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 415 "/media/dmitri/scdvfbg/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 426 "/media/dmitri/scdvfbg/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
} max_align_t;
# 2 "/home/dmitri/Загрузки/LowLevelProgramming2021/separate/src/libtrapz/libtrapz.c" 2


# 3 "/home/dmitri/Загрузки/LowLevelProgramming2021/separate/src/libtrapz/libtrapz.c"
double trapz(double *xdata, double *ydata, size_t len)
{
    double sum;

    for (int i = 0; i < len - 1; i++) {
        sum += (ydata[i + 1] + ydata[i]) * (xdata[i + 1] - xdata[i]) / 2;
    }

    return sum;
}
