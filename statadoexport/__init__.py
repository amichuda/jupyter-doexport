""" Stata Do-file Exporter Script """

import os
import os.path

from traitlets.config import Config

from nbconvert.exporters.templateexporter import TemplateExporter
from .magic_convert import magic_converter


class StataDoExporter(TemplateExporter):

    """
    Exports a Stata Do file
    """


    def _file_extension_default(self):

        return '.do'
    
    @property
    def template_path(self):
        
        return super().template_path+[os.path.join(os.path.dirname(__file__), "templates")]

    def _template_file_default(self):

        return 'statado'

    export_from_notebook = "dofile"

    def default_filters(self):

        ## add the filter I want for commenting out the magics
        new_filter = {'magic_converter':magic_converter}
        return super().default_filters().__or__(new_filter.items())
