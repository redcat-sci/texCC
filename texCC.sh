#! /bin/bash

# The Tex cleaner after using tracking package.\added{} \deleted{} \replaced{}{}

sed -E 's/\\deleted\{[^}]*\}//g'    $1 |\
sed -E 's/\\added\{([^}]*)\}/\1/g'     |\
sed -E 's/\\replaced\{([^}]*)\}\{[^}]*\}/\1/g'
