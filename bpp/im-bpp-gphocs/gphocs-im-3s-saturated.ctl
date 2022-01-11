GENERAL-INFO-START
   seq-file            mydata-gphocs.txt
   trace-file          mcmc-gphocs.txt       
   locus-mut-rate      CONST

   mcmc-iterations      1000000
   iterations-per-log   1000
   logs-per-line        5000
   mcmc-sample-skip     1

   # added by tomas
   # burn-in 100000

   find-finetunes    TRUE
   finetune-coal-time   0.01     
   finetune-mig-time 0.3      
   finetune-theta    0.04
   finetune-mig-rate 0.2
   finetune-tau      0.0008
   finetune-mixing      0.003
#   finetune-locus-rate 0.3
   
   tau-theta-print      1
   tau-theta-alpha      2     
   tau-theta-beta     100

   mig-rate-print       1 
   mig-rate-alpha       2
   mig-rate-beta        0.05
GENERAL-INFO-END

CURRENT-POPS-START   
   POP-START
      name        A
      samples     a1 h  a2 h  a3 h  a4 h  
   POP-END
   POP-START
      name        B
      samples     b1 h  b2 h  b3 h  b4 h  
   POP-END
   POP-START
      name        C
      samples     c1 h  c2 h  c3 h  c4 h  
   POP-END
CURRENT-POPS-END

ANCESTRAL-POPS-START
   POP-START
      name           S
      children       A B
      tau-initial    0.01
      tau-alpha      2
      tau-beta       200
      finetune-tau   0.001
   POP-END
   POP-START
      name           R
      children       S C
      tau-initial    0.02
      tau-alpha      2
      tau-beta       100
      finetune-tau   0.002
   POP-END
ANCESTRAL-POPS-END

MIG-BANDS-START   
   BAND-START     
          source  A
          target  B
          mig-rate-print 1
          mig-rate-alpha 2
          mig-rate-beta  0.05
   BAND-END
   BAND-START     
          source  B
          target  A
   BAND-END
   BAND-START     
          source  B
          target  C
   BAND-END
   BAND-START     
          source  C
          target  B
   BAND-END
   BAND-START     
          source  C
          target  A
   BAND-END
   BAND-START     
          source  A
          target  C
   BAND-END
   BAND-START     
          source  S
          target  C
   BAND-END
   BAND-START     
          source  C
          target  S
   BAND-END
MIG-BANDS-END
