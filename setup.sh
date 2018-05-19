# http://blog.matsuokah.jp/entry/2016/01/01/191338
# http://twdlab.hatenablog.com/entry/2018/03/19/121950

which pip >/dev/null 2>&1
if [ $? -ne 0 ];
then
  echo "not found command pip"
  echo "install pip"
  sudo easy_install pip
fi

which ansible >/dev/null 2>&1
if [ $? -ne 0 ];
then
  echo "not found command ansible"
  echo "install ansible"
  sudo pip install ansible
fi

echo "localhost" >> hosts;
ansible-playbook -i hosts -vv localhost.yaml;
