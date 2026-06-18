          seed = -1
       seqfile = mc.txt
      treefile = 6s-bracing.trees
      mcmcfile = mcmc.txt
       outfile = out.txt

         ndata = 1
       seqtype = 0 * 0: nucleotides; 1:codons; 2:AAs
       usedata = 1 * 0: no data; 1:seq Like; 2:normal approximation; 3:out.BV(in.BV)
     cleandata = 0 * remove sites with ambiguity data (1:yes, 0:no)?

         model = 0  * 0 : JC69, 1: K80, 2: F81, 3: F84, 4: HKY85
         alpha = 0  * alpha for gamma rates at sites
         ncatG = 5  * No. categories In discrete gamma
         clock = 2  * 1: Global clock; 2: independent rates; 3: correlated rates

       BDparas = 1 1 0.1 M  * birth, death, sampling, multiplicative (M) or conditional (C) construction
   kappa_gamma = 6 2        * gamma prior for kappa
   alpha_gamma = 1 1        * gamma prior for alpha

   rgene_gamma = 2 20 1    * gammaDir prior for rate for genes
  sigma2_gamma = 1 10 1    * gammaDir prior for sigma^2     (for clock=2 or 3)

         print = 1   * 0: no mcmc sample; 1: everything except branch rates 2: everything
        burnin = 20000
      sampfreq = 100
       nsample = 2000
        n_runs = 1   * number of independent MCMC runs to run in parallel
*   checkpoint = 1 0.01 mcmctree.ckpt1 * Type of checkpointing: 0: none (default);  1: save;  2: resume;  3: auto-resume append

    burnin_per = -1   * -1: classic burnin/nsample; >=0: adaptive chunks discard this fraction for diagnostics/summaries
    chunk_size = 1000 * adaptive mode: samples added per chain before checking convergence/ESS
   target_rhat = 1.01 * adaptive mode: stop after all parameters have Rhat <= target_rhat
    target_ess = 200  * adaptive mode: stop after combined post-burnin ESS reaches target_ess for all parameters
   max_samples = 20000 * adaptive mode: maximum samples per chain
   duplication = 0  * Enable equality/inequality constraints? 1: yes; 0: no (default)                
