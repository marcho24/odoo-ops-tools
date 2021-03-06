#!/usr/bin/env bash
set -e
branches=(7.0 8.0 saas-6 9.0 10.0 saas-14 saas-15 11.0 saas-11.3 12.0 saas-12.3 saas-12.4 saas-12.5 13.0 master)
declare -A prevs
declare -A nexts
for i in "${!branches[@]}"; do
    prevs[${branches[$i]}]=${branches[$i-1]};
    nexts[${branches[$i]}]=${branches[$i+1]};
done;
unset -v prevs["${branches[0]}"]
unset -v nexts["${branches[-1]}"]
