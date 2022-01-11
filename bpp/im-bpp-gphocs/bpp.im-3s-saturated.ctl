    seed = -1

 seqfile = mydata.txt
Imapfile = myimap.txt
 outfile = out-L5000.txt
mcmcfile = mcmc-L5000.txt

speciesdelimitation = 0
        speciestree = 0

 species&tree = 3  A  B  C
                   4  4  4
                  ((A, B)S, C)R;

      usedata = 1
        nloci = 2000
    cleandata = 0
     tauprior = gamma 2 100
   thetaprior = gamma 2 100
     migprior = 2 10
    migration = 8
                A B
                B A
                B C
                C B
                C A
                A C
                S C
                C S

     finetune = 1: 2 0.001 0.001 0.0001 0.03 0.00123 0.00789  
        print = 1 0 0 0  
       burnin = 32000
     sampfreq = 1
      nsample = 1000000
     threads =  8 1 1
