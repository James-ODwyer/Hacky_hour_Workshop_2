#!/bin/bash
# All scripts start with the bin bash above as the first line
# CSIRO Petrichor
# Login with Nexus username and password
# Do not run jobs directly in the login node
# Submit jobs to the SLURM scheduler with sbatch Petrichor_SLURM_template.txt
# Use an interactive node with sinteractive -A OD-123456 -t hh:mm:ss -c 1 -m 1G
# cd $SCRATCH1DIR
# Check job status with squeue -u username
# Kill job with scancel job_ID
# Check job efficiency report with seff 19849476

# CSIRO project code
#SBATCH --account=OD-123456

# The name of the job:
#SBATCH --job-name="Adenovirus_SPAdes_2023-04-19"

# Multithreaded (SMP) jobs must run as one task on one node
# Do not request multiple nodes unless appropriate and necessary
#SBATCH --nodes=1
# Only request multiple tasks if parallelising jobs (e.g. with GNU parallel)
#SBATCH --ntasks-per-node=1

# Maximum number of CPU cores to be used by the job:
# Only request multiple CPU cores if running a multithreaded program
#SBATCH --cpus-per-task=1
# Maximum memory to be used by the job:
#SBATCH --mem=4G
# Default memory units are megabytes - specify [K|M|G|T]

# Send yourself an email when the job:
# aborts abnormally (fails)
#SBATCH --mail-type=FAIL
# begins
#SBATCH --mail-type=BEGIN
# ends successfully
#SBATCH --mail-type=END

# Use this email address:
#SBATCH --mail-user=given_name.family_name@csiro.au

# The maximum running time of the job in days-hours:mins:sec
#SBATCH --time=00-00:10:00

# The modules to load:
module load spades/3.15.5
module load quast/5.2.0-py39
module load minimap2/2.24

# The job command(s):

# Assembly viral reads with SPAdes
spades.py -t ${SLURM_CPUS_PER_TASK} \
-1 $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/fastp/SRR10009242_trimmed_R1.fastq.gz \
-2 $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/fastp/SRR10009242_trimmed_R2.fastq.gz \
-o $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/SPAdes/

# Generate assembly statistics with QUAST
quast.py -o $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/statistics/ $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/SPAdes/scaffolds.fasta

# Map contigs to reference genome with Minimap2
minimap2 -ax asm5 \
$SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/Reference_genome_human_adenovirus/NC_001405.fasta \
$SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/SPAdes/contigs.fasta \
> $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/Adenovirus_contigs_aln.sam