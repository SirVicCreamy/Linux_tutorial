#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* --- furnizat: nu modifica ------------------------------------------------- */
static void usage(FILE *out) {
    fprintf(out,
        "Usage: calc <op> <n1> <n2> [n3 ...]\n"
        "       calc --help\n"
        "Operatii: min  max  avg\n");
}

/* --- TODO 1 [1.5p]: returneaza minimul din v[0..n-1] ----------------------- */
double calc_min(double *v, int n) {
maxim=max(v[n]);

}

/* --- TODO 2 [1.5p]: returneaza maximul din v[0..n-1] ----------------------- */
double calc_max(double *v, int n) {
minim=min(v[n]);
}

/* --- TODO 3 [1.5p]: returneaza media aritmetica din v[0..n-1] -------------- */
double calc_avg(double *v, int n) {
media=avg(v[n]);
}

int main(int argc, char *argv[]) {
    /* furnizat: --help */
    if (argc >= 2 && strcmp(argv[1], "--help") == 0) {
        usage(stdout);
        return 0;
    }
    /* furnizat: verificare numar minim de argumente */
    if (argc < 4) {
        usage(stderr);
        return 1;
    }

    const char *op = argv[1];
    int n = argc - 2;
    double *v = malloc((size_t)n * sizeof(double));
    if (!v) { perror("malloc"); return 1; }

    /* --- TODO 4 [2p]: conversie argv[2..argc-1] -> v[] cu sscanf ----------
       Pentru fiecare argv[2+i]: converteste in v[i] cu sscanf
       La eroare de parsare: mesaj la stderr cu argv[2+i], exit 2          */
    for (int i = 0; i < n; i++) {
        v[i]=argv[2+i]
    }

    /* --- TODO 5 [2p]: dispatch pe op + afisare rezultat -------------------
       Apeleaza calc_min / calc_max / calc_avg in functie de op
       Op necunoscuta -> usage(stderr) + exit 1
       Afiseaza rezultatul la stdout cu 4 zecimale (%.4f)                  */


    free(v);
    return 0;
}
