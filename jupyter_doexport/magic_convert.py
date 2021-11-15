import pandas as pd
from io import StringIO

def magic_stripper(element):

   if element.startswith("%"):
        
      element = "* " + element 
    
   return element

def convert_text_html(element):
   df = pd.read_html(StringIO(element))[0]
   return df.to_markdown()