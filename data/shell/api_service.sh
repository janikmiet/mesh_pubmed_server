cd /home/ubuntu/mesh_prediction_api
. bin/activate
gunicorn api:app --bind 0.0.0.0:8000 