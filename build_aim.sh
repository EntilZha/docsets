conda activate aim-docs
cd aim
pip install -r requirements.txt
cd docs
pip install mistune==0.8.4 sphinx sphinx_rtd_theme m2r2==0.3.1 sphinx-copybutton Cython==3.0.0a9
make html
cd ../..

doc2dash aim/docs/build/html/ -d . -n aim -i logos/aim.png
