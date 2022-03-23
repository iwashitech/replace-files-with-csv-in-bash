# https://qiita.com/SoarTec-lab/items/4475ba6de612fba3f163
# https://www.yukiiworks.com/archives/62
# https://www.greptips.com/posts/1265/
# diff -s 同じ場合も出力https://www.atmarkit.co.jp/ait/articles/1704/13/news021.html

# ******************************************
#
# NOTE:
# csvの最終行に空行が必要
#
# ******************************************
while read row; do
  col1=`echo ${row} | cut -d ',' -f 1`
  #col2=`echo ${row} | cut -d , -f 2`
  dirpath='/mnt/c/home/www.example.co.jp/laravelapp/resources/views/static/'
  #extension='.txt'

  sed -i -e "s/include('static/include('global_include.static/g" $dirpath$col1
  #sed -i -e "s/include('static/include('global_include.static/g" foo.blade.php
done < list.csv
