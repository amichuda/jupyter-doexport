/*
Stata Do File converted from Jupyter notebook

Output Included
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


* 
* (1978 Automobile Data)
* 
* 
*     Variable |        Obs        Mean    Std. Dev.       Min        Max
* -------------+---------------------------------------------------------
*         make |          0
*        price |         74    6165.257    2949.496       3291      15906
*          mpg |         74     21.2973    5.785503         12         41
*        rep78 |         69    3.405797    .9899323          1          5
*     headroom |         74    2.993243    .8459948        1.5          5
* -------------+---------------------------------------------------------
*        trunk |         74    13.75676    4.277404          5         23
*       weight |         74    3019.459    777.1936       1760       4840
*       length |         74    187.9324    22.26634        142        233
*         turn |         74    39.64865    4.399354         31         51
* displacement |         74    197.2973    91.83722         79        425
* -------------+---------------------------------------------------------
*   gear_ratio |         74    3.014865    .4562871       2.19       3.89
*      foreign |         74    .2972973    .4601885          0          1
* 



//*```s

reg price mpg
//*```


* 
*       Source |       SS           df       MS      Number of obs   =        74
* -------------+----------------------------------   F(1, 72)        =     20.26
*        Model |   139449474         1   139449474   Prob > F        =    0.0000
*     Residual |   495615923        72  6883554.48   R-squared       =    0.2196
* -------------+----------------------------------   Adj R-squared   =    0.2087
*        Total |   635065396        73  8699525.97   Root MSE        =    2623.7
* 
* ------------------------------------------------------------------------------
*        price |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
* -------------+----------------------------------------------------------------
*          mpg |  -238.8943   53.07669    -4.50   0.000    -344.7008   -133.0879
*        _cons |   11253.06   1170.813     9.61   0.000     8919.088    13587.03
* ------------------------------------------------------------------------------
* 



//*```s

local this = "hello goodbye"
foreach i of local this {

di "`i'"

}
//*```


* 
* 
* hello
* goodbye
* 



//*```s

* %locals
//*```


* this: hello goodbye
* 



//*```s

* %browse
//*```



    
        * |    |   Unnamed: 0 | make              |   price |   mpg | rep78   |   headroom |   trunk |   weight |   length |   turn |   displacement |   gear_ratio | foreign   |
* |---:|-------------:|:------------------|--------:|------:|:--------|-----------:|--------:|---------:|---------:|-------:|---------------:|-------------:|:----------|
* |  0 |            1 | AMC Concord       |    4099 |    22 | 3       |        2.5 |      11 |     2930 |      186 |     40 |            121 |         3.58 | Domestic  |
* |  1 |            2 | AMC Pacer         |    4749 |    17 | 3       |        3   |      11 |     3350 |      173 |     40 |            258 |         2.53 | Domestic  |
* |  2 |            3 | AMC Spirit        |    3799 |    22 | .       |        3   |      12 |     2640 |      168 |     35 |            121 |         3.08 | Domestic  |
* |  3 |            4 | Buick Century     |    4816 |    20 | 3       |        4.5 |      16 |     3250 |      196 |     40 |            196 |         2.93 | Domestic  |
* |  4 |            5 | Buick Electra     |    7827 |    15 | 4       |        4   |      20 |     4080 |      222 |     43 |            350 |         2.41 | Domestic  |
* |  5 |            6 | Buick LeSabre     |    5788 |    18 | 3       |        4   |      21 |     3670 |      218 |     43 |            231 |         2.73 | Domestic  |
* |  6 |            7 | Buick Opel        |    4453 |    26 | .       |        3   |      10 |     2230 |      170 |     34 |            304 |         2.87 | Domestic  |
* |  7 |            8 | Buick Regal       |    5189 |    20 | 3       |        2   |      16 |     3280 |      200 |     42 |            196 |         2.93 | Domestic  |
* |  8 |            9 | Buick Riviera     |   10372 |    16 | 3       |        3.5 |      17 |     3880 |      207 |     43 |            231 |         2.93 | Domestic  |
* |  9 |           10 | Buick Skylark     |    4082 |    19 | 3       |        3.5 |      13 |     3400 |      200 |     42 |            231 |         3.08 | Domestic  |
* | 10 |           11 | Cad. Deville      |   11385 |    14 | 3       |        4   |      20 |     4330 |      221 |     44 |            425 |         2.28 | Domestic  |
* | 11 |           12 | Cad. Eldorado     |   14500 |    14 | 2       |        3.5 |      16 |     3900 |      204 |     43 |            350 |         2.19 | Domestic  |
* | 12 |           13 | Cad. Seville      |   15906 |    21 | 3       |        3   |      13 |     4290 |      204 |     45 |            350 |         2.24 | Domestic  |
* | 13 |           14 | Chev. Chevette    |    3299 |    29 | 3       |        2.5 |       9 |     2110 |      163 |     34 |            231 |         2.93 | Domestic  |
* | 14 |           15 | Chev. Impala      |    5705 |    16 | 4       |        4   |      20 |     3690 |      212 |     43 |            250 |         2.56 | Domestic  |
* | 15 |           16 | Chev. Malibu      |    4504 |    22 | 3       |        3.5 |      17 |     3180 |      193 |     31 |            200 |         2.73 | Domestic  |
* | 16 |           17 | Chev. Monte Carlo |    5104 |    22 | 2       |        2   |      16 |     3220 |      200 |     41 |            200 |         2.73 | Domestic  |
* | 17 |           18 | Chev. Monza       |    3667 |    24 | 2       |        2   |       7 |     2750 |      179 |     40 |            151 |         2.73 | Domestic  |
* | 18 |           19 | Chev. Nova        |    3955 |    19 | 3       |        3.5 |      13 |     3430 |      197 |     43 |            250 |         2.56 | Domestic  |
* | 19 |           20 | Dodge Colt        |    3984 |    30 | 5       |        2   |       8 |     2120 |      163 |     35 |             98 |         3.54 | Domestic  |
* | 20 |           21 | Dodge Diplomat    |    4010 |    18 | 2       |        4   |      17 |     3600 |      206 |     46 |            318 |         2.47 | Domestic  |
* | 21 |           22 | Dodge Magnum      |    5886 |    16 | 2       |        4   |      17 |     3600 |      206 |     46 |            318 |         2.47 | Domestic  |
* | 22 |           23 | Dodge St. Regis   |    6342 |    17 | 2       |        4.5 |      21 |     3740 |      220 |     46 |            225 |         2.94 | Domestic  |
* | 23 |           24 | Ford Fiesta       |    4389 |    28 | 4       |        1.5 |       9 |     1800 |      147 |     33 |             98 |         3.15 | Domestic  |
* | 24 |           25 | Ford Mustang      |    4187 |    21 | 3       |        2   |      10 |     2650 |      179 |     43 |            140 |         3.08 | Domestic  |
* | 25 |           26 | Linc. Continental |   11497 |    12 | 3       |        3.5 |      22 |     4840 |      233 |     51 |            400 |         2.47 | Domestic  |
* | 26 |           27 | Linc. Mark V      |   13594 |    12 | 3       |        2.5 |      18 |     4720 |      230 |     48 |            400 |         2.47 | Domestic  |
* | 27 |           28 | Linc. Versailles  |   13466 |    14 | 3       |        3.5 |      15 |     3830 |      201 |     41 |            302 |         2.47 | Domestic  |
* | 28 |           29 | Merc. Bobcat      |    3829 |    22 | 4       |        3   |       9 |     2580 |      169 |     39 |            140 |         2.73 | Domestic  |
* | 29 |           30 | Merc. Cougar      |    5379 |    14 | 4       |        3.5 |      16 |     4060 |      221 |     48 |            302 |         2.75 | Domestic  |
* | 30 |           31 | Merc. Marquis     |    6165 |    15 | 3       |        3.5 |      23 |     3720 |      212 |     44 |            302 |         2.26 | Domestic  |
* | 31 |           32 | Merc. Monarch     |    4516 |    18 | 3       |        3   |      15 |     3370 |      198 |     41 |            250 |         2.43 | Domestic  |
* | 32 |           33 | Merc. XR-7        |    6303 |    14 | 4       |        3   |      16 |     4130 |      217 |     45 |            302 |         2.75 | Domestic  |
* | 33 |           34 | Merc. Zephyr      |    3291 |    20 | 3       |        3.5 |      17 |     2830 |      195 |     43 |            140 |         3.08 | Domestic  |
* | 34 |           35 | Olds 98           |    8814 |    21 | 4       |        4   |      20 |     4060 |      220 |     43 |            350 |         2.41 | Domestic  |
* | 35 |           36 | Olds Cutl Supr    |    5172 |    19 | 3       |        2   |      16 |     3310 |      198 |     42 |            231 |         2.93 | Domestic  |
* | 36 |           37 | Olds Cutlass      |    4733 |    19 | 3       |        4.5 |      16 |     3300 |      198 |     42 |            231 |         2.93 | Domestic  |
* | 37 |           38 | Olds Delta 88     |    4890 |    18 | 4       |        4   |      20 |     3690 |      218 |     42 |            231 |         2.73 | Domestic  |
* | 38 |           39 | Olds Omega        |    4181 |    19 | 3       |        4.5 |      14 |     3370 |      200 |     43 |            231 |         3.08 | Domestic  |
* | 39 |           40 | Olds Starfire     |    4195 |    24 | 1       |        2   |      10 |     2730 |      180 |     40 |            151 |         2.73 | Domestic  |
* | 40 |           41 | Olds Toronado     |   10371 |    16 | 3       |        3.5 |      17 |     4030 |      206 |     43 |            350 |         2.41 | Domestic  |
* | 41 |           42 | Plym. Arrow       |    4647 |    28 | 3       |        2   |      11 |     3260 |      170 |     37 |            156 |         3.05 | Domestic  |
* | 42 |           43 | Plym. Champ       |    4425 |    34 | 5       |        2.5 |      11 |     1800 |      157 |     37 |             86 |         2.97 | Domestic  |
* | 43 |           44 | Plym. Horizon     |    4482 |    25 | 3       |        4   |      17 |     2200 |      165 |     36 |            105 |         3.37 | Domestic  |
* | 44 |           45 | Plym. Sapporo     |    6486 |    26 | .       |        1.5 |       8 |     2520 |      182 |     38 |            119 |         3.54 | Domestic  |
* | 45 |           46 | Plym. Volare      |    4060 |    18 | 2       |        5   |      16 |     3330 |      201 |     44 |            225 |         3.23 | Domestic  |
* | 46 |           47 | Pont. Catalina    |    5798 |    18 | 4       |        4   |      20 |     3700 |      214 |     42 |            231 |         2.73 | Domestic  |
* | 47 |           48 | Pont. Firebird    |    4934 |    18 | 1       |        1.5 |       7 |     3470 |      198 |     42 |            231 |         3.08 | Domestic  |
* | 48 |           49 | Pont. Grand Prix  |    5222 |    19 | 3       |        2   |      16 |     3210 |      201 |     45 |            231 |         2.93 | Domestic  |
* | 49 |           50 | Pont. Le Mans     |    4723 |    19 | 3       |        3.5 |      17 |     3200 |      199 |     40 |            231 |         2.93 | Domestic  |
* | 50 |           51 | Pont. Phoenix     |    4424 |    19 | .       |        3.5 |      13 |     3420 |      203 |     43 |            231 |         3.08 | Domestic  |
* | 51 |           52 | Pont. Sunbird     |    4172 |    24 | 2       |        2   |       7 |     2690 |      179 |     41 |            151 |         2.73 | Domestic  |
* | 52 |           53 | Audi 5000         |    9690 |    17 | 5       |        3   |      15 |     2830 |      189 |     37 |            131 |         3.2  | Foreign   |
* | 53 |           54 | Audi Fox          |    6295 |    23 | 3       |        2.5 |      11 |     2070 |      174 |     36 |             97 |         3.7  | Foreign   |
* | 54 |           55 | BMW 320i          |    9735 |    25 | 4       |        2.5 |      12 |     2650 |      177 |     34 |            121 |         3.64 | Foreign   |
* | 55 |           56 | Datsun 200        |    6229 |    23 | 4       |        1.5 |       6 |     2370 |      170 |     35 |            119 |         3.89 | Foreign   |
* | 56 |           57 | Datsun 210        |    4589 |    35 | 5       |        2   |       8 |     2020 |      165 |     32 |             85 |         3.7  | Foreign   |
* | 57 |           58 | Datsun 510        |    5079 |    24 | 4       |        2.5 |       8 |     2280 |      170 |     34 |            119 |         3.54 | Foreign   |
* | 58 |           59 | Datsun 810        |    8129 |    21 | 4       |        2.5 |       8 |     2750 |      184 |     38 |            146 |         3.55 | Foreign   |
* | 59 |           60 | Fiat Strada       |    4296 |    21 | 3       |        2.5 |      16 |     2130 |      161 |     36 |            105 |         3.37 | Foreign   |
* | 60 |           61 | Honda Accord      |    5799 |    25 | 5       |        3   |      10 |     2240 |      172 |     36 |            107 |         3.05 | Foreign   |
* | 61 |           62 | Honda Civic       |    4499 |    28 | 4       |        2.5 |       5 |     1760 |      149 |     34 |             91 |         3.3  | Foreign   |
* | 62 |           63 | Mazda GLC         |    3995 |    30 | 4       |        3.5 |      11 |     1980 |      154 |     33 |             86 |         3.73 | Foreign   |
* | 63 |           64 | Peugeot 604       |   12990 |    14 | .       |        3.5 |      14 |     3420 |      192 |     38 |            163 |         3.58 | Foreign   |
* | 64 |           65 | Renault Le Car    |    3895 |    26 | 3       |        3   |      10 |     1830 |      142 |     34 |             79 |         3.72 | Foreign   |
* | 65 |           66 | Subaru            |    3798 |    35 | 5       |        2.5 |      11 |     2050 |      164 |     36 |             97 |         3.81 | Foreign   |
* | 66 |           67 | Toyota Celica     |    5899 |    18 | 5       |        2.5 |      14 |     2410 |      174 |     36 |            134 |         3.06 | Foreign   |
* | 67 |           68 | Toyota Corolla    |    3748 |    31 | 5       |        3   |       9 |     2200 |      165 |     35 |             97 |         3.21 | Foreign   |
* | 68 |           69 | Toyota Corona     |    5719 |    18 | 5       |        2   |      11 |     2670 |      175 |     36 |            134 |         3.05 | Foreign   |
* | 69 |           70 | VW Dasher         |    7140 |    23 | 4       |        2.5 |      12 |     2160 |      172 |     36 |             97 |         3.74 | Foreign   |
* | 70 |           71 | VW Diesel         |    5397 |    41 | 5       |        3   |      15 |     2040 |      155 |     35 |             90 |         3.78 | Foreign   |
* | 71 |           72 | VW Rabbit         |    4697 |    25 | 4       |        3   |      15 |     1930 |      155 |     35 |             89 |         3.78 | Foreign   |
* | 72 |           73 | VW Scirocco       |    6850 |    25 | 4       |        2   |      16 |     1990 |      156 |     36 |             97 |         3.78 | Foreign   |
* | 73 |           74 | Volvo 260         |   11995 |    17 | 5       |        2.5 |      14 |     3170 |      193 |     37 |            163 |         2.98 | Foreign   |
    




//*```s

estimates store r
esttab r, tex
//*```


* 
* 
* 
* {
* \def\sym#1{\ifmmode^{#1}\else\(^{#1}\)\fi}
* \begin{tabular}{l*{1}{c}}
* \hline\hline
*             &\multicolumn{1}{c}{(1)}\\
*             &\multicolumn{1}{c}{price}\\
* \hline
* mpg         &      -238.9\sym{***}\\
*             &     (-4.50)         \\
* [1em]
* \_cons      &     11253.1\sym{***}\\
*             &      (9.61)         \\
* \hline
* \(N\)       &          74         \\
* \hline\hline
* \multicolumn{2}{l}{\footnotesize \textit{t} statistics in parentheses}\\
* \multicolumn{2}{l}{\footnotesize \sym{*} \(p<0.05\), \sym{**} \(p<0.01\), \sym{*
* > **} \(p<0.001\)}\\
* \end{tabular}
* }
* 
