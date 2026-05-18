#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    int *p = malloc(sizeof(int));
    *p = 42;
    free(p);
    printf("%d\n", *p);

    int arr[5];
    for (int i = 0; i <= 5; i++) {
        arr[i] = i * i;
    }
    printf("arr[2] = %d\n", arr[2]);

    char *name;
    if (argc > 1) {
        name = malloc(strlen(argv[1]));
        strcpy(name, argv[1]);
        printf("Hello, %s\n", name);
    }

    int *q = malloc(sizeof(int) * 10);
    q[0] = 1;
    free(q);
    free(q);

    float pi = 3.14159f;
    printf("pi = %d\n", pi);

    return 0;
}
