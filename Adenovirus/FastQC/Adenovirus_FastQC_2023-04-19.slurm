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
#SBATCH --job-name="Adenovirus_FastQC_2023-04-19"

# Multithreaded (SMP) jobs must run as one task on one node
# Do not request multiple nodes unless appropriate and necessary
#SBATCH --nodes=1
# Only request multiple tasks if parallelising jobs (e.g. with GNU parallel)
#SBATCH --ntasks-per-node=1

# Maximum number of CPU cores to be used by the job:
# Only request multiple CPU cores if running a multithreaded program
#SBATCH --cpus-per-task=1
# Maximum memory to be used by the job:
#SBATCH --mem=2G
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
module load fastqc/0.11.9

# The job command(s):
fastqc $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/Raw_data/SRR10009242_R*.fastq.gz -o $SCRATCH1DIR/Hacky_hour_Workshop_2/Adenovirus/FastQC