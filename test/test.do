/*
Stata Do File converted from Jupyter notebook
*/

* <h1>Table of Contents<span class="tocSkip"></span></h1>
* <div class="toc"><ul class="toc-item"><li><span><a href="#Other-Stuff" data-toc-modified-id="Other-Stuff-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Other Stuff</a></span></li></ul></div>

* # Test File for Stata Do File Exporter

* ## Other Stuff

* - wow okay
*     - is this good?

* In[1]:


sysuse auto
sum *

* In[3]:


reg price mpg

* In[7]:


local this = "hello goodbye"
foreach i of local this {

di "`i'"

}

* In[9]:


* %locals
