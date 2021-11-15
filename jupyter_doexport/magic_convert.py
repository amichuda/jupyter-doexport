"""
Comments out stata_kernel magics
"""

def magic_stripper(element):

    if element.strip().startswith("%"):
        
       element = "* " + element 
    
    return element