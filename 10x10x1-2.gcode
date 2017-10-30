M190 S70.000000
M109 S200.000000
M109 S200.000000
G92 X0 Y0 Z0 E0
G28
G29
G1 Z0.2 F200
G1 X15 Y20 F12000

;Layer count: 6
;LAYER:0
M107
G0 F9000 X66.250 Y66.250 Z0.200
;TYPE:SKIRT
;G1 F1200 X83.750 Y66.250 E0.43654
;G1 X83.750 Y83.750 E0.87308
;G1 X66.250 Y83.750 E1.30962
;G1 X66.250 Y66.250 E1.74616
;G0 F9000 X66.550 Y66.550
;G1 F1200 X83.450 Y66.550 E2.16773
;G1 X83.450 Y83.450 E2.58930
;G1 X66.550 Y83.450 E3.01087
;G1 X66.550 Y66.550 E3.43245
;G0 F9000 X66.850 Y66.850
;G1 F1200 X83.150 Y66.850 E3.83905
;G1 X83.150 Y83.150 E4.24566
;G1 X66.850 Y83.150 E4.65226
;G1 X66.850 Y66.850 E5.05887
;G1 F2400 E0.55887
;G0 F9000 X70.750 Y70.750
;TYPE:WALL-INNER
G1 F2400 E5.05887
G1 F1200 X79.250 Y70.750 E5.27090
G1 X79.250 Y79.250 E5.48293
G1 X70.750 Y79.250 E5.69497
G1 X70.750 Y70.750 E5.90700
G0 F9000 X70.450 Y70.450
G1 F1200 X79.550 Y70.450 E6.13400
G1 X79.550 Y79.550 E6.36100
G1 X70.450 Y79.550 E6.58800
G1 X70.450 Y70.450 E6.81500
G0 F9000 X70.150 Y70.150
;TYPE:WALL-OUTER
G1 F1200 X79.850 Y70.150 E7.05697
G1 X79.850 Y79.850 E7.29894
G1 X70.150 Y79.850 E7.54090
G1 X70.150 Y70.150 E7.78287
G0 F9000 X70.854 Y71.067
;TYPE:SKIN
G1 F1200 X78.932 Y79.144 E8.06783
G0 F9000 X79.144 Y78.932
G1 F1200 X71.067 Y70.855 E8.35277
G0 F9000 X71.492 Y70.855
G1 F1200 X79.144 Y78.507 E8.62271
G0 F9000 X79.144 Y78.083
G1 F1200 X71.916 Y70.855 E8.87770
G0 F9000 X72.340 Y70.855
G1 F1200 X79.144 Y77.659 E9.11773
G0 F9000 X79.144 Y77.235
G1 F1200 X72.764 Y70.855 E9.34280
G0 F9000 X73.189 Y70.855
G1 F1200 X79.144 Y76.810 E9.55288
G0 F9000 X79.144 Y76.386
G1 F1200 X73.613 Y70.855 E9.74800
G0 F9000 X74.037 Y70.855
G1 F1200 X79.144 Y75.962 E9.92816
G0 F9000 X79.144 Y75.538
G1 F1200 X74.461 Y70.855 E10.09337
G0 F9000 X74.886 Y70.855
G1 F1200 X79.144 Y75.113 E10.24358
G0 F9000 X79.144 Y74.689
G1 F1200 X75.310 Y70.855 E10.37883
G0 F9000 X75.734 Y70.855
G1 F1200 X79.144 Y74.265 E10.49913
G0 F9000 X79.144 Y73.841
G1 F1200 X76.158 Y70.855 E10.60447
G0 F9000 X76.583 Y70.855
G1 F1200 X79.144 Y73.416 E10.69482
G0 F9000 X79.144 Y72.992
G1 F1200 X77.007 Y70.855 E10.77020
G0 F9000 X77.431 Y70.855
G1 F1200 X79.144 Y72.568 E10.83064
G0 F9000 X79.144 Y72.143
G1 F1200 X77.855 Y70.855 E10.87609
G0 F9000 X78.280 Y70.855
G1 F1200 X79.144 Y71.719 E10.90657
G0 F9000 X79.144 Y71.295
G1 F1200 X78.704 Y70.855 E10.92209
G0 F9000 X70.854 Y71.491
G1 F1200 X78.507 Y79.144 E11.19207
G0 F9000 X78.083 Y79.144
G1 F1200 X70.854 Y71.915 E11.44710
G0 F9000 X70.854 Y72.339
G1 F1200 X77.659 Y79.144 E11.68716
G0 F9000 X77.235 Y79.144
G1 F1200 X70.854 Y72.764 E11.91225
G0 F9000 X70.854 Y73.188
G1 F1200 X76.810 Y79.144 E12.12236
G0 F9000 X76.386 Y79.144
G1 F1200 X70.854 Y73.612 E12.31752
G0 F9000 X70.854 Y74.036
G1 F1200 X75.962 Y79.144 E12.49772
G0 F9000 X75.538 Y79.144
G1 F1200 X70.854 Y74.461 E12.66294
G0 F9000 X70.854 Y74.885
G1 F1200 X75.113 Y79.144 E12.81319
G0 F9000 X74.689 Y79.144
G1 F1200 X70.854 Y75.309 E12.94848
G0 F9000 X70.854 Y75.733
G1 F1200 X74.265 Y79.144 E13.06881
G0 F9000 X73.841 Y79.144
G1 F1200 X70.854 Y76.158 E13.17417
G0 F9000 X70.854 Y76.582
G1 F1200 X73.416 Y79.144 E13.26455
G0 F9000 X72.992 Y79.144
G1 F1200 X70.854 Y77.006 E13.33997
G0 F9000 X70.854 Y77.431
G1 F1200 X72.568 Y79.144 E13.40042
G0 F9000 X72.143 Y79.144
G1 F1200 X70.854 Y77.855 E13.44590
G0 F9000 X70.854 Y78.279
G1 F1200 X71.719 Y79.144 E13.47641
G0 F9000 X71.295 Y79.144
G1 F1200 X70.854 Y78.703 E13.49197
;LAYER:1
M106 S127
G0 F9000 X70.750 Y79.250 Z0.400
;TYPE:WALL-INNER
G1 F1620 X70.750 Y70.750 E13.70400
G1 X79.250 Y70.750 E13.91603
G1 X79.250 Y79.250 E14.12807
G1 X70.750 Y79.250 E14.34010
G0 F9000 X70.450 Y79.550
G1 F1620 X70.450 Y70.450 E14.56710
G1 X79.550 Y70.450 E14.79410
G1 X79.550 Y79.550 E15.02110
G1 X70.450 Y79.550 E15.24810
G0 F9000 X70.150 Y79.850
;TYPE:WALL-OUTER
G1 F1620 X70.150 Y70.150 E15.49007
G1 X79.850 Y70.150 E15.73204
G1 X79.850 Y79.850 E15.97401
G1 X70.150 Y79.850 E16.21597
G0 F9000 X70.855 Y79.121
;TYPE:SKIN
G1 F1620 X79.122 Y70.854 E16.50761
G0 F9000 X79.144 Y71.257
G1 F1620 X71.257 Y79.144 E16.78585
G0 F9000 X71.681 Y79.144
G1 F1620 X79.144 Y71.681 E17.04913
G0 F9000 X79.144 Y72.105
G1 F1620 X72.105 Y79.144 E17.29745
G0 F9000 X72.530 Y79.144
G1 F1620 X79.144 Y72.530 E17.53077
G0 F9000 X79.144 Y72.954
G1 F1620 X72.954 Y79.144 E17.74914
G0 F9000 X73.378 Y79.144
G1 F1620 X79.144 Y73.378 E17.95255
G0 F9000 X79.144 Y73.802
G1 F1620 X73.802 Y79.144 E18.14101
G0 F9000 X74.227 Y79.144
G1 F1620 X79.144 Y74.227 E18.31447
G0 F9000 X79.144 Y74.651
G1 F1620 X74.651 Y79.144 E18.47297
G0 F9000 X75.075 Y79.144
G1 F1620 X79.144 Y75.075 E18.61651
G0 F9000 X79.144 Y75.499
G1 F1620 X75.499 Y79.144 E18.74510
G0 F9000 X75.924 Y79.144
G1 F1620 X79.144 Y75.924 E18.85870
G0 F9000 X79.144 Y76.348
G1 F1620 X76.348 Y79.144 E18.95733
G0 F9000 X76.772 Y79.144
G1 F1620 X79.144 Y76.772 E19.04101
G0 F9000 X79.144 Y77.196
G1 F1620 X77.196 Y79.144 E19.10973
G0 F9000 X77.621 Y79.144
G1 F1620 X79.144 Y77.621 E19.16346
G0 F9000 X79.144 Y78.045
G1 F1620 X78.045 Y79.144 E19.20223
G0 F9000 X78.469 Y79.144
G1 F1620 X79.144 Y78.469 E19.22604
G0 F9000 X79.144 Y78.894
G1 F1620 X78.894 Y79.144 E19.23486
G0 F9000 X70.855 Y78.697
G1 F1620 X78.698 Y70.854 E19.51155
G0 F9000 X78.273 Y70.854
G1 F1620 X70.855 Y78.273 E19.77325
G0 F9000 X70.855 Y77.848
G1 F1620 X77.849 Y70.854 E20.01998
G0 F9000 X77.425 Y70.854
G1 F1620 X70.855 Y77.424 E20.25176
G0 F9000 X70.855 Y77.000
G1 F1620 X77.001 Y70.854 E20.46858
G0 F9000 X76.576 Y70.854
G1 F1620 X70.855 Y76.576 E20.67042
G0 F9000 X70.855 Y76.151
G1 F1620 X76.152 Y70.854 E20.85728
G0 F9000 X75.728 Y70.854
G1 F1620 X70.855 Y75.727 E21.02919
G0 F9000 X70.855 Y75.303
G1 F1620 X75.304 Y70.854 E21.18614
G0 F9000 X74.879 Y70.854
G1 F1620 X70.855 Y74.879 E21.32812
G0 F9000 X70.855 Y74.454
G1 F1620 X74.455 Y70.854 E21.45512
G0 F9000 X74.031 Y70.854
G1 F1620 X70.855 Y74.030 E21.56716
G0 F9000 X70.855 Y73.606
G1 F1620 X73.606 Y70.854 E21.66423
G0 F9000 X73.182 Y70.854
G1 F1620 X70.855 Y73.182 E21.74633
G0 F9000 X70.855 Y72.757
G1 F1620 X72.758 Y70.854 E21.81347
G0 F9000 X72.334 Y70.854
G1 F1620 X70.855 Y72.333 E21.86564
G0 F9000 X70.855 Y71.909
G1 F1620 X71.909 Y70.854 E21.90284
G0 F9000 X71.485 Y70.854
G1 F1620 X70.855 Y71.484 E21.92507
G0 F9000 X70.855 Y71.060
G1 F1620 X71.061 Y70.854 E21.93234
;LAYER:2
M106 S255
G0 F9000 X70.750 Y70.750 Z0.600
;TYPE:WALL-INNER
G1 F2100 X79.250 Y70.750 E22.14437
G1 X79.250 Y79.250 E22.35640
G1 X70.750 Y79.250 E22.56844
G1 X70.750 Y70.750 E22.78047
G0 F9000 X70.450 Y70.450
G1 F2100 X79.550 Y70.450 E23.00747
G1 X79.550 Y79.550 E23.23447
G1 X70.450 Y79.550 E23.46147
G1 X70.450 Y70.450 E23.68847
G0 F9000 X70.150 Y70.150
;TYPE:WALL-OUTER
G1 F2100 X79.850 Y70.150 E23.93044
G1 X79.850 Y79.850 E24.17241
G1 X70.150 Y79.850 E24.41437
G1 X70.150 Y70.150 E24.65634
G0 F9000 X70.854 Y71.067
;TYPE:SKIN
G1 F2100 X78.932 Y79.144 E24.94130
G0 F9000 X79.144 Y78.932
G1 F2100 X71.067 Y70.855 E25.22623
G0 F9000 X71.492 Y70.855
G1 F2100 X79.144 Y78.507 E25.49618
G0 F9000 X79.144 Y78.083
G1 F2100 X71.916 Y70.855 E25.75117
G0 F9000 X72.340 Y70.855
G1 F2100 X79.144 Y77.659 E25.99120
G0 F9000 X79.144 Y77.235
G1 F2100 X72.764 Y70.855 E26.21627
G0 F9000 X73.189 Y70.855
G1 F2100 X79.144 Y76.810 E26.42635
G0 F9000 X79.144 Y76.386
G1 F2100 X73.613 Y70.855 E26.62147
G0 F9000 X74.037 Y70.855
G1 F2100 X79.144 Y75.962 E26.80163
G0 F9000 X79.144 Y75.538
G1 F2100 X74.461 Y70.855 E26.96684
G0 F9000 X74.886 Y70.855
G1 F2100 X79.144 Y75.113 E27.11705
G0 F9000 X79.144 Y74.689
G1 F2100 X75.310 Y70.855 E27.25230
G0 F9000 X75.734 Y70.855
G1 F2100 X79.144 Y74.265 E27.37260
G0 F9000 X79.144 Y73.841
G1 F2100 X76.158 Y70.855 E27.47794
G0 F9000 X76.583 Y70.855
G1 F2100 X79.144 Y73.416 E27.56829
G0 F9000 X79.144 Y72.992
G1 F2100 X77.007 Y70.855 E27.64367
G0 F9000 X77.431 Y70.855
G1 F2100 X79.144 Y72.568 E27.70411
G0 F9000 X79.144 Y72.143
G1 F2100 X77.855 Y70.855 E27.74956
G0 F9000 X78.280 Y70.855
G1 F2100 X79.144 Y71.719 E27.78004
G0 F9000 X79.144 Y71.295
G1 F2100 X78.704 Y70.855 E27.79556
G0 F9000 X70.854 Y71.491
G1 F2100 X78.507 Y79.144 E28.06554
G0 F9000 X78.083 Y79.144
G1 F2100 X70.854 Y71.915 E28.32057
G0 F9000 X70.854 Y72.339
G1 F2100 X77.659 Y79.144 E28.56063
G0 F9000 X77.235 Y79.144
G1 F2100 X70.854 Y72.764 E28.78572
G0 F9000 X70.854 Y73.188
G1 F2100 X76.810 Y79.144 E28.99583
G0 F9000 X76.386 Y79.144
G1 F2100 X70.854 Y73.612 E29.19099
G0 F9000 X70.854 Y74.036
G1 F2100 X75.962 Y79.144 E29.37119
G0 F9000 X75.538 Y79.144
G1 F2100 X70.854 Y74.461 E29.53641
G0 F9000 X70.854 Y74.885
G1 F2100 X75.113 Y79.144 E29.68666
G0 F9000 X74.689 Y79.144
G1 F2100 X70.854 Y75.309 E29.82195
G0 F9000 X70.854 Y75.733
G1 F2100 X74.265 Y79.144 E29.94228
G0 F9000 X73.841 Y79.144
G1 F2100 X70.854 Y76.158 E30.04764
G0 F9000 X70.854 Y76.582
G1 F2100 X73.416 Y79.144 E30.13802
G0 F9000 X72.992 Y79.144
G1 F2100 X70.854 Y77.006 E30.21344
G0 F9000 X70.854 Y77.431
G1 F2100 X72.568 Y79.144 E30.27389
G0 F9000 X72.143 Y79.144
G1 F2100 X70.854 Y77.855 E30.31936
G0 F9000 X70.854 Y78.279
G1 F2100 X71.719 Y79.144 E30.34988
G0 F9000 X71.295 Y79.144
G1 F2100 X70.854 Y78.703 E30.36544
;LAYER:3
G0 F9000 X70.750 Y79.250 Z0.800
;TYPE:WALL-INNER
G1 F2520 X70.750 Y70.750 E30.57747
G1 X79.250 Y70.750 E30.78950
G1 X79.250 Y79.250 E31.00154
G1 X70.750 Y79.250 E31.21357
G0 F9000 X70.450 Y79.550
G1 F2520 X70.450 Y70.450 E31.44057
G1 X79.550 Y70.450 E31.66757
G1 X79.550 Y79.550 E31.89457
G1 X70.450 Y79.550 E32.12157
G0 F9000 X70.150 Y79.850
;TYPE:WALL-OUTER
G1 F2520 X70.150 Y70.150 E32.36354
G1 X79.850 Y70.150 E32.60551
G1 X79.850 Y79.850 E32.84747
G1 X70.150 Y79.850 E33.08944
G0 F9000 X70.855 Y79.121
;TYPE:SKIN
G1 F2520 X79.122 Y70.854 E33.38108
G0 F9000 X79.144 Y71.257
G1 F2520 X71.257 Y79.144 E33.65932
G0 F9000 X71.681 Y79.144
G1 F2520 X79.144 Y71.681 E33.92260
G0 F9000 X79.144 Y72.105
G1 F2520 X72.105 Y79.144 E34.17092
G0 F9000 X72.530 Y79.144
G1 F2520 X79.144 Y72.530 E34.40424
G0 F9000 X79.144 Y72.954
G1 F2520 X72.954 Y79.144 E34.62261
G0 F9000 X73.378 Y79.144
G1 F2520 X79.144 Y73.378 E34.82602
G0 F9000 X79.144 Y73.802
G1 F2520 X73.802 Y79.144 E35.01448
G0 F9000 X74.227 Y79.144
G1 F2520 X79.144 Y74.227 E35.18794
G0 F9000 X79.144 Y74.651
G1 F2520 X74.651 Y79.144 E35.34644
G0 F9000 X75.075 Y79.144
G1 F2520 X79.144 Y75.075 E35.48998
G0 F9000 X79.144 Y75.499
G1 F2520 X75.499 Y79.144 E35.61857
G0 F9000 X75.924 Y79.144
G1 F2520 X79.144 Y75.924 E35.73217
G0 F9000 X79.144 Y76.348
G1 F2520 X76.348 Y79.144 E35.83080
G0 F9000 X76.772 Y79.144
G1 F2520 X79.144 Y76.772 E35.91448
G0 F9000 X79.144 Y77.196
G1 F2520 X77.196 Y79.144 E35.98320
G0 F9000 X77.621 Y79.144
G1 F2520 X79.144 Y77.621 E36.03693
G0 F9000 X79.144 Y78.045
G1 F2520 X78.045 Y79.144 E36.07570
G0 F9000 X78.469 Y79.144
G1 F2520 X79.144 Y78.469 E36.09951
G0 F9000 X79.144 Y78.894
G1 F2520 X78.894 Y79.144 E36.10833
G0 F9000 X70.855 Y78.697
G1 F2520 X78.698 Y70.854 E36.38501
G0 F9000 X78.273 Y70.854
G1 F2520 X70.855 Y78.273 E36.64672
G0 F9000 X70.855 Y77.848
G1 F2520 X77.849 Y70.854 E36.89345
G0 F9000 X77.425 Y70.854
G1 F2520 X70.855 Y77.424 E37.12523
G0 F9000 X70.855 Y77.000
G1 F2520 X77.001 Y70.854 E37.34205
G0 F9000 X76.576 Y70.854
G1 F2520 X70.855 Y76.576 E37.54389
G0 F9000 X70.855 Y76.151
G1 F2520 X76.152 Y70.854 E37.73075
G0 F9000 X75.728 Y70.854
G1 F2520 X70.855 Y75.727 E37.90266
G0 F9000 X70.855 Y75.303
G1 F2520 X75.304 Y70.854 E38.05961
G0 F9000 X74.879 Y70.854
G1 F2520 X70.855 Y74.879 E38.20159
G0 F9000 X70.855 Y74.454
G1 F2520 X74.455 Y70.854 E38.32859
G0 F9000 X74.031 Y70.854
G1 F2520 X70.855 Y74.030 E38.44063
G0 F9000 X70.855 Y73.606
G1 F2520 X73.606 Y70.854 E38.53770
G0 F9000 X73.182 Y70.854
G1 F2520 X70.855 Y73.182 E38.61980
G0 F9000 X70.855 Y72.757
G1 F2520 X72.758 Y70.854 E38.68694
G0 F9000 X72.334 Y70.854
G1 F2520 X70.855 Y72.333 E38.73911
G0 F9000 X70.855 Y71.909
G1 F2520 X71.909 Y70.854 E38.77631
G0 F9000 X71.485 Y70.854
G1 F2520 X70.855 Y71.484 E38.79854
G0 F9000 X70.855 Y71.060
G1 F2520 X71.061 Y70.854 E38.80581
;LAYER:4
G0 F9000 X70.750 Y70.750 Z1.000
;TYPE:WALL-INNER
G1 F3000 X79.250 Y70.750 E39.01784
G1 X79.250 Y79.250 E39.22987
G1 X70.750 Y79.250 E39.44191
G1 X70.750 Y70.750 E39.65394
G0 F9000 X70.450 Y70.450
G1 F3000 X79.550 Y70.450 E39.88094
G1 X79.550 Y79.550 E40.10794
G1 X70.450 Y79.550 E40.33494
G1 X70.450 Y70.450 E40.56194
G0 F9000 X70.150 Y70.150
;TYPE:WALL-OUTER
G1 F3000 X79.850 Y70.150 E40.80391
G1 X79.850 Y79.850 E41.04588
G1 X70.150 Y79.850 E41.28784
G1 X70.150 Y70.150 E41.52981
G0 F9000 X70.854 Y71.067
;TYPE:SKIN
G1 F3000 X78.932 Y79.144 E41.81477
G0 F9000 X79.144 Y78.932
G1 F3000 X71.067 Y70.855 E42.09970
G0 F9000 X71.492 Y70.855
G1 F3000 X79.144 Y78.507 E42.36965
G0 F9000 X79.144 Y78.083
G1 F3000 X71.916 Y70.855 E42.62464
G0 F9000 X72.340 Y70.855
G1 F3000 X79.144 Y77.659 E42.86467
G0 F9000 X79.144 Y77.235
G1 F3000 X72.764 Y70.855 E43.08974
G0 F9000 X73.189 Y70.855
G1 F3000 X79.144 Y76.810 E43.29982
G0 F9000 X79.144 Y76.386
G1 F3000 X73.613 Y70.855 E43.49494
G0 F9000 X74.037 Y70.855
G1 F3000 X79.144 Y75.962 E43.67510
G0 F9000 X79.144 Y75.538
G1 F3000 X74.461 Y70.855 E43.84031
G0 F9000 X74.886 Y70.855
G1 F3000 X79.144 Y75.113 E43.99052
G0 F9000 X79.144 Y74.689
G1 F3000 X75.310 Y70.855 E44.12577
G0 F9000 X75.734 Y70.855
G1 F3000 X79.144 Y74.265 E44.24607
G0 F9000 X79.144 Y73.841
G1 F3000 X76.158 Y70.855 E44.35141
G0 F9000 X76.583 Y70.855
G1 F3000 X79.144 Y73.416 E44.44176
G0 F9000 X79.144 Y72.992
G1 F3000 X77.007 Y70.855 E44.51714
G0 F9000 X77.431 Y70.855
G1 F3000 X79.144 Y72.568 E44.57757
G0 F9000 X79.144 Y72.143
G1 F3000 X77.855 Y70.855 E44.62303
G0 F9000 X78.280 Y70.855
G1 F3000 X79.144 Y71.719 E44.65351
G0 F9000 X79.144 Y71.295
G1 F3000 X78.704 Y70.855 E44.66903
G0 F9000 X70.854 Y71.491
G1 F3000 X78.507 Y79.144 E44.93901
G0 F9000 X78.083 Y79.144
G1 F3000 X70.854 Y71.915 E45.19403
G0 F9000 X70.854 Y72.339
G1 F3000 X77.659 Y79.144 E45.43410
G0 F9000 X77.235 Y79.144
G1 F3000 X70.854 Y72.764 E45.65919
G0 F9000 X70.854 Y73.188
G1 F3000 X76.810 Y79.144 E45.86930
G0 F9000 X76.386 Y79.144
G1 F3000 X70.854 Y73.612 E46.06446
G0 F9000 X70.854 Y74.036
G1 F3000 X75.962 Y79.144 E46.24466
G0 F9000 X75.538 Y79.144
G1 F3000 X70.854 Y74.461 E46.40988
G0 F9000 X70.854 Y74.885
G1 F3000 X75.113 Y79.144 E46.56013
G0 F9000 X74.689 Y79.144
G1 F3000 X70.854 Y75.309 E46.69542
G0 F9000 X70.854 Y75.733
G1 F3000 X74.265 Y79.144 E46.81575
G0 F9000 X73.841 Y79.144
G1 F3000 X70.854 Y76.158 E46.92111
G0 F9000 X70.854 Y76.582
G1 F3000 X73.416 Y79.144 E47.01149
G0 F9000 X72.992 Y79.144
G1 F3000 X70.854 Y77.006 E47.08691
G0 F9000 X70.854 Y77.431
G1 F3000 X72.568 Y79.144 E47.14736
G0 F9000 X72.143 Y79.144
G1 F3000 X70.854 Y77.855 E47.19283
G0 F9000 X70.854 Y78.279
G1 F3000 X71.719 Y79.144 E47.22335
G0 F9000 X71.295 Y79.144
G1 F3000 X70.854 Y78.703 E47.23891
;LAYER:5
G0 F9000 X70.750 Y79.250 Z1.200
;TYPE:WALL-INNER
G1 F3000 X70.750 Y70.750 E47.45094
G1 X79.250 Y70.750 E47.66297
G1 X79.250 Y79.250 E47.87501
G1 X70.750 Y79.250 E48.08704
G0 F9000 X70.450 Y79.550
G1 F3000 X70.450 Y70.450 E48.31404
G1 X79.550 Y70.450 E48.54104
G1 X79.550 Y79.550 E48.76804
G1 X70.450 Y79.550 E48.99504
G0 F9000 X70.150 Y79.850
;TYPE:WALL-OUTER
G1 F3000 X70.150 Y70.150 E49.23701
G1 X79.850 Y70.150 E49.47898
G1 X79.850 Y79.850 E49.72094
G1 X70.150 Y79.850 E49.96291
G0 F9000 X70.855 Y79.121
;TYPE:SKIN
G1 F3000 X79.122 Y70.854 E50.25455
G0 F9000 X79.144 Y71.257
G1 F3000 X71.257 Y79.144 E50.53279
G0 F9000 X71.681 Y79.144
G1 F3000 X79.144 Y71.681 E50.79607
G0 F9000 X79.144 Y72.105
G1 F3000 X72.105 Y79.144 E51.04439
G0 F9000 X72.530 Y79.144
G1 F3000 X79.144 Y72.530 E51.27771
G0 F9000 X79.144 Y72.954
G1 F3000 X72.954 Y79.144 E51.49608
G0 F9000 X73.378 Y79.144
G1 F3000 X79.144 Y73.378 E51.69949
G0 F9000 X79.144 Y73.802
G1 F3000 X73.802 Y79.144 E51.88795
G0 F9000 X74.227 Y79.144
G1 F3000 X79.144 Y74.227 E52.06141
G0 F9000 X79.144 Y74.651
G1 F3000 X74.651 Y79.144 E52.21991
G0 F9000 X75.075 Y79.144
G1 F3000 X79.144 Y75.075 E52.36345
G0 F9000 X79.144 Y75.499
G1 F3000 X75.499 Y79.144 E52.49204
G0 F9000 X75.924 Y79.144
G1 F3000 X79.144 Y75.924 E52.60564
G0 F9000 X79.144 Y76.348
G1 F3000 X76.348 Y79.144 E52.70427
G0 F9000 X76.772 Y79.144
G1 F3000 X79.144 Y76.772 E52.78795
G0 F9000 X79.144 Y77.196
G1 F3000 X77.196 Y79.144 E52.85667
G0 F9000 X77.621 Y79.144
G1 F3000 X79.144 Y77.621 E52.91040
G0 F9000 X79.144 Y78.045
G1 F3000 X78.045 Y79.144 E52.94917
G0 F9000 X78.469 Y79.144
G1 F3000 X79.144 Y78.469 E52.97298
G0 F9000 X79.144 Y78.894
G1 F3000 X78.894 Y79.144 E52.98180
G0 F9000 X70.855 Y78.697
G1 F3000 X78.698 Y70.854 E53.25848
G0 F9000 X78.273 Y70.854
G1 F3000 X70.855 Y78.273 E53.52019
G0 F9000 X70.855 Y77.848
G1 F3000 X77.849 Y70.854 E53.76692
G0 F9000 X77.425 Y70.854
G1 F3000 X70.855 Y77.424 E53.99870
G0 F9000 X70.855 Y77.000
G1 F3000 X77.001 Y70.854 E54.21552
G0 F9000 X76.576 Y70.854
G1 F3000 X70.855 Y76.576 E54.41736
G0 F9000 X70.855 Y76.151
G1 F3000 X76.152 Y70.854 E54.60422
G0 F9000 X75.728 Y70.854
G1 F3000 X70.855 Y75.727 E54.77613
G0 F9000 X70.855 Y75.303
G1 F3000 X75.304 Y70.854 E54.93308
G0 F9000 X74.879 Y70.854
G1 F3000 X70.855 Y74.879 E55.07506
G0 F9000 X70.855 Y74.454
G1 F3000 X74.455 Y70.854 E55.20206
G0 F9000 X74.031 Y70.854
G1 F3000 X70.855 Y74.030 E55.31410
G0 F9000 X70.855 Y73.606
G1 F3000 X73.606 Y70.854 E55.41116
G0 F9000 X73.182 Y70.854
G1 F3000 X70.855 Y73.182 E55.49327
G0 F9000 X70.855 Y72.757
G1 F3000 X72.758 Y70.854 E55.56041
G0 F9000 X72.334 Y70.854
G1 F3000 X70.855 Y72.333 E55.61258
G0 F9000 X70.855 Y71.909
G1 F3000 X71.909 Y70.854 E55.64978
G0 F9000 X71.485 Y70.854
G1 F3000 X70.855 Y71.484 E55.67201
G0 F9000 X70.855 Y71.060
G1 F3000 X71.061 Y70.854 E55.67928
M107
G1 F2400 E51.17928
G0 F9000 X71.061 Y70.854 Z6.200
M104 S0
M140 S0

