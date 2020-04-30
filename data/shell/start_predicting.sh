
cd /home/ubuntu/mesh_prediction_api/ 
. bin/activate 
python3 parse_into_db.py $(ls ~/PubMed_daily/ | tail -n1 | xargs -I '{}' find ~/PubMed_daily/{} -mtime -7 -name 'pubmed*.xml.gz')
