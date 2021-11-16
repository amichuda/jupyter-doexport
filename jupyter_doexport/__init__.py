""" Stata Do-file Exporter Script """

import os
import os.path

from traitlets.config import Config, default

from nbconvert.exporters.templateexporter import TemplateExporter
from .magic_convert import convert_text_html, magic_stripper

 
class StataDoExporter(TemplateExporter):

    """
    Exports a Stata Do file
    """
    
    def _file_extension_default(self):
        return '.do'
    
    @default('extra_template_basedirs')
    def _extra_template_basedirs(self):
        return super()._default_extra_template_basedirs() + [os.path.join(os.path.dirname(__file__), "templates")]
    
    def _template_name_default(self):
        return 'dofile'

    def _template_file_default(self):
        return 'dofile'

    export_from_notebook = "Stata do-file"

    def default_filters(self):
        new_filter = {'magic_stripper':magic_stripper}
        return super().default_filters().__or__(new_filter.items())
    
class StataDoExporterWithOutput(TemplateExporter):
    
    def _file_extension_default(self):
        return '.do'
    
    @default('extra_template_basedirs')
    def _extra_template_basedirs(self):
        return super()._default_extra_template_basedirs() + [os.path.join(os.path.dirname(__file__), "templates")]
    
    
    def _template_name_default(self):
        return 'dofile_output'

    def _template_file_default(self):
        return 'dofile_output'

    export_from_notebook = "Stata do-file with Output"
    
    def default_filters(self):
        new_filter = {'magic_stripper':magic_stripper,
                      'convert_text_html' : convert_text_html}
        return super().default_filters().__or__(new_filter.items())
    
    
