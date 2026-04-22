# CAV 2026 Artifact: A Multi-Width Parametric Bitvector Equivalence Solver

Claimed badges: Available + Functional

Justification for the badges: [no need to justify Available -- just provide the DOI link in HotCRP]

  * Functional: [give reasons why you believe that the Functional badge should
    be awarded (if applied for Functional or Reusable); example:  The artifact
    replicates most of the results in the paper (see below for details).  It
    compiles Tool and executes the benchmarks on it and the other tools.  We
    validate the correctness of the outputs of Tool by cross-comparison with
    the results of the other tools.  The source code of Tool is included in the
    artifact.]

    - replicated: [which claims/results of the paper are replicated by the
      artifact and how (you can, e.g., refer to a concrete point in FULL REVIEW
      below), e.g.,
       * Table 1: point (1)
       * Figure 1: point (2)
       * Figures 2 and 3: point (3)
       * Figure 4: point (4) [requires external connectivity]
       * Proof of Thm. 5: point (5)
      ]

    - not-replicated: [which claims/results cannot be replicated and why, e.g.,
       * Table 2: to reproduce the results, one needs to have access to the
                  computer Holly 6000, which is not available outside our
                  research lab
       * Table 3: this table is a result of a survey among undergraduate students
                  at the Institute of Happiness; the survey cannot be
                  reproduced as a part of the artifact, but the raw filled in
                  questionnaires are available in the directory survey/
       * Fig. 6: to obtain the results, one needs to have a working installation
                 of AcmeVerifier of Acme Inc.; if the reviewers have it,
                 they can reproduce the results by point (6) below.
      ]

  * Reusable: [give reasons why you believe that the Reusable badge should be
    awarded (if applied for); e.g., The license of Tool is GNU GPLv3.  Tool is
    provided with an extensive test suite (in /tool/tests/) and documentation
    (in /tool/doc after the tool is compiled).]

Requirements:

  * RAM: 16 GB
  * CPU cores: 12
  * Time (smoke test): 15 minutes
  * Time (full review): [expected time to execute the full review (do not
    include the time of reviewers reading the paper, playing with the tool on
    their own, etc.)]

external connectivity: NO

## Setup

- Install Docker on the system (https://docs.docker.com/get-docker/)

- Load the container present in this tar:
    ```
    docker load ...
    docker run -it 
    ```
## Smoke test

The smoke test will run a subset of the tests with a smaller timeout and then
verify them using Isabelle.

- Load the Docker container in interactive mode as described previously.
- Run the smoke test
    ```
    ./scripts/run_smoke.sh
    ```
- After ~15 minutes the test will have run all of the benchmarks with a 5
second timeout and 1 GB memory bound. All the results can be found in the 
results directory, under {fill_in}.
- The tests that were passed and the time taken to pass are found in the
`{benchmark}/results.csv` of each respective benchmark. 
Eg. `/artifact/results/ROVER/results.csv`
- Run the following command to produce tables and figures:
    ```
    command
    ```
- After running this the Tables and Figures will be found in 
`/artifact/results/plots` and `/artifact/results/tables` respectively.

## Full Review

In order to replicate the full review there is a small version, which runs all
of the benchmarks using the parabit tool with the timeouts used in the paper.

In order to compare against prior work, we also evaluated the novel benchmarks
using the PBV solver [cite]. Running this will take ~{tbd} hours.

Finally, as before, the graphs and tables can be obtained by running 

```
insert
```

This will generate the plots as pdfs in the /plots folder and the tables as
latex functions in the /tables folder.
-------------------------------------------------------------------------------
**                               FULL REVIEW                                 **
-------------------------------------------------------------------------------