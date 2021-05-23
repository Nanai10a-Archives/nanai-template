#/bin/sh

# Project create helper script
# Author: Nanai10a <Nanai10a@tutanota.com>

while [ true ]
do
    echo "what's new project name?: "
    read pj_name
    echo

    if [ "$pj_name" = "" ]
    then
        continue
    else
        break
    fi
done

echo "1: nodejs + typescript"

echo

while [ true ]
do
    echo "which template does use?: "
    read template_num_raw
    echo

    template_num=`echo "$template_num_raw" | sed -e "s/[^0-9]//g"`

    if [ "$template_num" = "" ]
    then
        continue
    elif [ "$template_num" != "$template_num_raw" ]
    then
        continue
    fi

    if [ $template_num -ge 0 ]
    then
        break
    else
        continue
    fi
done

echo

template_name=""
if [ $template_num = 1 ]
then
    template_name="Nanai10a/ts-template"
else
    echo "invalid number."
    echo "exit..."
    exit 1
fi

git clone "https://github.com/$template_name" "./$pj_name"

cd "./$pj_name"

rm -rf .git
git init

echo
echo "end of this script."
echo

exit 0

