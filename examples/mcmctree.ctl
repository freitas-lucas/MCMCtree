          seed = -1
       seqfile = DatingSoftBound/mtCDNApri123.txt
      treefile = DatingSoftBound/mtCDNApri.trees
       outfile = out

         ndata = 3
       seqtype = 0  * 0: nucleotides; 1:codons; 2:AAs
       usedata = 1    * 0: no data; 1:seq like; 2:use in.BV; 3: out.BV
         clock = 1    * 1: global clock; 2: independent rates; 3: correlated rates
       RootAge = <1.0  * safe constraint on root age, used if no fossil for root.

         model = 0    * nucleotides: 0:JC69, 1:K80, 2:F81, 3:F84, 4:HKY85; AAs: LG, WAG, JTT, etc., or path/to/model.dat
         alpha = 0    * alpha for gamma rates at sites
         ncatG = 5    * No. categories in discrete gamma

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

       BDparas = 1 1 0    * birth, death, sampling
   kappa_gamma = 6 2      * gamma prior for kappa
   alpha_gamma = 1 1      * gamma prior for alpha

   rgene_gamma = 2 2   * gamma prior for overall rates for genes
  sigma2_gamma = 1 10    * gamma prior for sigma^2     (for clock=2 or 3)

      finetune = 1: 0.1  0.1  0.1  0.01 .5  * auto (0 or 1) : times, musigma2, rates, mixing, paras, FossilErr

          mode = classic * classic: fixed burnin/nsample; dynamic: burnin is a fraction and nsample is the maximum per chain
         print = 1
        burnin = 8000
      sampfreq = 2
       nsample = 200000

        n_runs = 1   * number of independent MCMC runs to run in parallel
    chunk_size = 1000 * adaptive mode: samples added per chain before checking convergence/ESS
   target_rhat = 1.01 * adaptive mode: stop after all parameters have Rhat <= target_rhat
    target_ess = 200  * adaptive mode: stop after combined post-burnin ESS reaches target_ess for all parameters

*** Note: Make your window wider (100 columns) before running the program.
