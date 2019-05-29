export PYTHONPATH=$PYTHONPATH:/miniconda3/lib/python3.7/site-packages
/miniconda3/bin/jupyter notebook \
                                --port=8888 \
                                --no-browser \
                                --ip=0.0.0.0 \
                                --notebook-dir=/notebook \
                                --NotebookApp.token='' \
                                --allow-root
