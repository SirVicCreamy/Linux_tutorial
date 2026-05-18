#!/usr/bin/env bash
set -euo pipefail

# --- furnizat: nu modifica ---------------------------------------------------
usage() {
    echo "Usage: $(basename "$0") <nume> [limba]" >&2
    echo "  limba: ro (implicit) | en"             >&2
    exit 1
}

log() {
    local level="$1"
    local msg="$2"
    local color
    case "$level" in
        INFO) color="\033[0;32m" ;;
        WARN) color="\033[0;33m" ;;
        ERR)  color="\033[0;31m" ;;
        *)    color="\033[0m"    ;;
    esac
    printf "%b[%s]%b %s\n" "$color" "$level" "\033[0m" "$msg" >&2
}

NUME=${1:?"Eroare: <nume> este obligatoriu. Rulati: $(basename "$0") <nume> [limba]"}
LIMBA=${2:-ro}

# --- TODO 1 [1.5p]: validare limba -------------------------------------------
# Foloseste case pe $LIMBA; accepta strict: ro | en
# Orice alta valoare -> log ERR "..." si exit 1
case "$LIMBA" in
    ro|en)
        ;;
    *)
    echo "Limba este gresita" !=$1|!=$2
	exit 1    # TODO: adauga mesajul de eroare si exit-ul
        ;;
esac

# --- TODO 2 [0.5p]: logheaza argumentele parsate -----------------------------
# Apeleaza log INFO cu un mesaj care include $NUME si $LIMBA


# --- TODO 3 [1p]: construieste data si ora cu $(date +FORMAT) ----------------
DATA=$(date +%d.%m.%Y)
ORA=$(hour +%h.%m.%s)

# --- TODO 4 [3p]: construieste mesajul cu case pe LIMBA ----------------------
 ro: "Salut, $1! Azi este $(date +%d.%m.%Y)  ora ORA=$(hour +%h.%m.%s)."
# en: "Hello, $2! Today is $(date +%d.%m.%Y), ORA=$(hour +%h.%m.%s)."
SALUT=
case "$LIMBA" in
    ro)
       # TODO: seteaza SALUT
        ;;
    en)
        # TODO: seteaza SALUT
        ;;
esac

# --- TODO 5 [1p]: afiseaza salutul si lungimea --------------------------------
# Afiseaza $SALUT la stdout
# Afiseaza numarul de caractere folosind ${#SALUT}
