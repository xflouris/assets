seed = -1

treefile = mytree.tre
Imapfile = myimap.txt
seqfile = mydata.txt
*concatfile = concat.txt
modelparafile = modelparas.txt

#phase = 0 0 0
species&tree = 3  A  B  C
                  4  4  4
                ((A #0.015, B #0.025) #0.015 :0.01, C #0.025) :0.02 #0.025;

loci&length = 2000 500

model = 0

migration = 5
            A     B      C        ABC   AB
      A     0     0.12   0.13    -1    -1
      B     0.21  0      0.23    -1    -1
      C     0.31  0.32   0       -1     0.2
      ABC  -1    -1      0       -1    -1
      AB   -1    -1      0.1     -1    -1
