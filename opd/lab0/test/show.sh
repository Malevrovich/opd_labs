ls -R | grep '^\.' | sed 's\:\\' | sed 's\.\echo \' | sed 's\/\\' | sed 's/$/ | tee dir.txt | xargs ls -p | grep -v "\/$" >files.txt; cat dir.txt | sed '\''s\\$\\\/\\'\'' | sed '\''s\\^\\cat files.txt | xargs -n 1 echo \\'\'' | sh/' | sh | sed 's\/ \/\'  | sort | sed '/^[^/]/s/^/\//'

