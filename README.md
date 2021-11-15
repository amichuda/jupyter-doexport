# jupyter-doexport

This packages provides a context menu and template for exporting a jupyter notebook with Stata kernel, to a do-file with all markdown and code ready to be executed at the Stata GUI or console.

To install the exporter, write:

``pip install jupyter-doexport``

## Features

This package features two types of export, a regular script export to that you can then run in Stata, `dofile`, and one which also includes output from the notebook making it a sort of hybrid do-file/log, called `dofile_output`.

Your jupyter notebook should be available for export from the  ``File ->  Download as`` menu.

Alternatively, you can export your notebook from the commandline like so:

```
jupyter nbconvert --to [dofile/dofile_output] <name of file>
```

Currently, translation of stata_kernel magics are not supported.

Thanks also to
--------------

Kyle Barron for an amazing Stata kernel implementation.
You can see how to install it [here](https://kylebarron.github.io/stata_kernel/).



