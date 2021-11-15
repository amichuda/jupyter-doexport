/*
Stata Do File converted from Jupyter notebook
*/

* <h1>Table of Contents<span class="tocSkip"></span></h1>
* <div class="toc"><ul class="toc-item"><li><span><a href="#Other-Stuff" data-toc-modified-id="Other-Stuff-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Other Stuff</a></span></li></ul></div>

* # Test File for Stata Do File Exporter

* ## Other Stuff

* - wow okay
*     - is this good?


//*```s

sysuse auto 
sum *
//*```




//*```s

reg price mpg
//*```




//*```s

local this = "hello goodbye"
foreach i of local this {

di "`i'"

}
//*```




//*```s

* %locals
//*```




//*```s

* %browse
//*```




//*```s

estimates store r
esttab r, tex
//*```


