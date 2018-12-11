from distutils.core import setup

setup(
    name='Stata Do-file Exporter',
    version='0.1',
    packages=['StataDo_export'],
    author='Aleksandr Michuda',
    author_email='amichuda@gmail.com',
    description='An nbconvert exporter from .ipynb to .do',
    url=
    long_description= open('README.rst').read(),
    install_requires=[
        "nbconvert"
    ],
    entry_points={
        'nbconvert.exporters' : [
            'dofile = statadoexport.StataDoExporter'
        ]
    }    
)