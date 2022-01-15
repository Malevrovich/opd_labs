cat log.txt | grep -v '^$' | sed 's/:$//'
