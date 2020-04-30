# mesh prediction api server installation script


Copy big files to `/data/` folder:

```
data/root/neuro2.db
data/root/neuro2.tar.gz
data/root/bert_best_fintuned.h5
data/root/PubMed_daily-2020_02_25.tar.gz
```

Use ansible script in host computer to install pubmed api to server (correct ip address):

```
ansible-playbook -i "199.199.99.99," neuroapi.yml --check
```



(C) Jani Miettinen
Licence: MIT