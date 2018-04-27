rm perf* ./*/*.sz
perf record -e cycles:pp -F 1999 -g -- snzip -k ./*/*.jpg
perf report
