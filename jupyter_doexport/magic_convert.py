from stata_kernel.stata_magics import StataMagics

def magic_stripper(element):

   s = StataMagics(kernel=None)

   if element in [f"%{magic}" for magic in s.available_magics]:
        
      element = "* " + element 
    
   return element