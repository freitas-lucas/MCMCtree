Notes for compiling the MCMCtree-focused source tree

This src directory keeps the programs needed for MCMCtree workflows:

   mcmctree
   infinitesites
   baseml
   codeml

Use the Makefile on UNIX/Linux/macOS:

   make

or from the repository root:

   make -C src

The build produces:

   baseml
   codeml
   mcmctree
   infinitesites

The helper programs baseml and codeml are retained because mcmctree can
call them when generating approximate-likelihood files with usedata = 3
or usedata = 4.

To clean object files and executables:

   make clean
