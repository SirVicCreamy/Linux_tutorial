# Examen Practic — Sistem & Programare

> Repository gestionat de **Ing. Aldica Victor-Mihai**  
> Fiecare student lucrează pe propriul branch — **nu se comite pe `main`**.

---


---

## Structura așteptată pe branch-ul tău

```
Linux_tutorial/               ← rădăcina repo-ului
├── ex01/
│   └── ex01_perms.sh
├── ex02/
│   └── ex02_procese.sh
├── ex03/
│   └── ex03_storage.sh
├── ex04/
│   └── ex04_filops.sh
├── ex05/
│   └── ex05_greet.sh
├── ex06/
│   └── ex06_grep.sh
├── ex07/
│   ├── ex07_fix.c
│   └── BUGS.md
├── ex08/
│   └── ex08_calc.c
├── ex09/
│   └── ex09_arhiva.sh
├── ex10/
│   └── ex10_find.sh
└── .gitignore
```

---

## Exemplu concret — cum arată un branch corect

### Structura de fișiere

```
$ git checkout examen_ion-popescu
$ find . -not -path './.git/*' | sort

./.gitignore
./ex01/ex01_perms.sh
./ex02/ex02_procese.sh
./ex03/ex03_storage.sh
./ex04/ex04_filops.sh
./ex05/ex05_greet.sh
./ex06/ex06_grep.sh
./ex07/BUGS.md
./ex07/ex07_fix.c
./ex08/ex08_calc.c
./ex09/ex09_arhiva.sh
./ex10/ex10_find.sh
```

### Exemplu .gitignore

```gitignore
# Binare compilate
ex07
ex08
*.o

# Artefacte temporare
/tmp/
*.tar.gz
*.zip
```

### Exemplu ex01_perms.sh (primele linii)

```bash
#!/usr/bin/env bash
set -euo pipefail

ORIGINAL_UMASK=$(umask)
BASE="/tmp/ex1/"
# ... restul solutiei
```

## Reguli obligatorii

| Regulă | Penalizare |
|--------|-----------|
| Branch nenumit `examen_<nume>` | fișierele nu pot fi evaluate |
| Fișier `.sh` fără shebang sau fără `chmod +x` | −0.5p |
| Fișier `.c` cu warning-uri la `-Wall -Wextra` | −1p per warning |
| Fișier cu numele greșit (ex. `ex01.sh` în loc de `ex01_perms.sh`) | −1p |
| Artefacte de build comise (`*.o`, binare) | −2p total |
| Lipsă `.gitignore` | −0.5p |
| Lipsă commit pentru un exercițiu | −1p |

---

## Verificare înainte de trimitere

```bash
# Esti pe branch-ul corect?
git branch --show-current
# -> examen_prenume-nume

# Toate fisierele sunt comise?
git status
# -> nothing to commit, working tree clean

# Branch-ul este publicat?
git log origin/examen_prenume-nume..HEAD
# -> (gol = esti sincronizat)

# Scripturile au bit de executie?
find . -name "*.sh" -not -executable -not -path './.git/*'
# -> (gol = toate sunt executabile)
```
