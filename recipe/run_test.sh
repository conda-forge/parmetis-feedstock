#!/bin/bash
set -xeuo pipefail

MPIEXEC="${RECIPE_DIR}/mpiexec.sh"
mpiexec() { $MPIEXEC $@; }

mpiexec -n 1 parmetis
mpiexec -n 1 pometis
mpiexec -n 1 mtest
mpiexec -n 1 ptest
