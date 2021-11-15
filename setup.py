from setuptools import setup
import versioneer

setup(
    name='jupyter-doexport',
    version=versioneer.get_version(),
    cmdclass=versioneer.get_cmdclass(),
    packages=['jupyter_doexport'],
    author='Aleksandr Michuda',
    author_email='amichuda@gmail.com',
    description='An nbconvert exporter from .ipynb to .do',
    url='https://github.com/amichuda/jupyter-doexport',
    license='LICENSE',
    long_description = open('README.rst').read(),
    install_requires=[
        "nbconvert",
        "stata_kernel"
    ],
    entry_points={
        'nbconvert.exporters' : [
            'dofile = jupyter_doexport:StataDoExporter'
        ]
    }    
)