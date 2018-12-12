from setuptools import setup

setup(
    name='Stata Do-file Exporter',
    version='0.1.1',
    packages=['statadoexport'],
    author='Aleksandr Michuda',
    author_email='amichuda@gmail.com',
    description='An nbconvert exporter from .ipynb to .do',
    url='https://github.com/lordflaron/StataDoExport',
    license='LICENSE',
    long_description = open('README.rst').read(),
    install_requires=[
        "nbconvert"
    ],
    entry_points={
        'nbconvert.exporters' : [
            'dofile = statadoexport:StataDoExporter'
        ]
    }    
)