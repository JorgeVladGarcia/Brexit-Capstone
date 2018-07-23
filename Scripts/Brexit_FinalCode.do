reg ln_FDI eu_target eu_sender ln_GDPtarget ln_GDPpc_target ln_GDPsender ln_GDPpc_sender ln_distance, robust cluster(dist)

Linear regression                                      Number of obs =    5327
                                                       F(  7,   378) =   77.64
                                                       Prob > F      =  0.0000
                                                       R-squared     =  0.3114
                                                       Root MSE      =  2.1296

                                    (Std. Err. adjusted for 379 clusters in dist)
---------------------------------------------------------------------------------
                |               Robust
         ln_FDI |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
----------------+----------------------------------------------------------------
      eu_target |   .2985845   .1803623     1.66   0.099    -.0560546    .6532237
      eu_sender |    .033873   .1617327     0.21   0.834    -.2841356    .3518815
   ln_GDPtarget |   .2165876   .0447112     4.84   0.000     .1286737    .3045015
ln_GDPpc_target |   .1428373   .1143137     1.25   0.212    -.0819332    .3676078
   ln_GDPsender |    .528149   .0498383    10.60   0.000     .4301539    .6261441
ln_GDPpc_sender |   1.029801   .1141314     9.02   0.000     .8053892    1.254213
    ln_distance |  -.8210709   .0743187   -11.05   0.000    -.9672007    -.674941
          _cons |   -22.4308   2.029505   -11.05   0.000    -26.42133   -18.44026
---------------------------------------------------------------------------------

. 
## Summary Statistics

summarize FDI_inflow GDP_target GDP_sender GDPpc_target GDPpc_sender eu_target eu_sender

    Variable |       Obs        Mean    Std. Dev.       Min        Max
-------------+--------------------------------------------------------
  FDI_inflow |      7608    661.7001    4570.819  -59599.37   117617.9
  GDP_target |      7608    1.47e+12    2.89e+12   8.15e+09   1.62e+13
  GDP_sender |      7608    1.39e+12    2.76e+12   6.25e+09   1.62e+13
GDPpc_target |      7608    36842.27    19625.33   4981.199   115761.5
GDPpc_sender |      7608    37940.25    20159.69   3572.805   115761.5
-------------+--------------------------------------------------------
   eu_target |      7608    1.788644    .4082975                    
   eu_sender |      7608    1.705047    .4560515                    

