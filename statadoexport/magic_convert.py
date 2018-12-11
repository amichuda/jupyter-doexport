"""
Comments out stata_kernel magics
"""

def magic_converter(element):

    if element.strip().startswith("%"):
        
       element = "* " + element 
    
    return element