set -e
true
true
/apps/spades/3.15.5/bin/spades-hammer /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/corrected/configs/config.info
/apps/python/3.9.4/bin/python /apps/spades/3.15.5/share/spades/spades_pipeline/scripts/compress_all.py --input_file /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/corrected/corrected.yaml --ext_python_modules_home /apps/spades/3.15.5/share/spades --max_threads 1 --output_dir /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/corrected --gzip_output
true
true
/apps/spades/3.15.5/bin/spades-core /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K21/configs/config.info
/apps/spades/3.15.5/bin/spades-core /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K33/configs/config.info
/apps/spades/3.15.5/bin/spades-core /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K55/configs/config.info
/apps/spades/3.15.5/bin/spades-core /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/configs/config.info
/apps/python/3.9.4/bin/python /apps/spades/3.15.5/share/spades/spades_pipeline/scripts/copy_files.py /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/before_rr.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/before_rr.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/assembly_graph_after_simplification.gfa /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/assembly_graph_after_simplification.gfa /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/final_contigs.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/contigs.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/first_pe_contigs.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/first_pe_contigs.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/strain_graph.gfa /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/strain_graph.gfa /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/scaffolds.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/scaffolds.fasta /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/scaffolds.paths /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/scaffolds.paths /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/assembly_graph_with_scaffolds.gfa /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/assembly_graph_with_scaffolds.gfa /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/assembly_graph.fastg /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/assembly_graph.fastg /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/K77/final_contigs.paths /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/contigs.paths
true
/apps/python/3.9.4/bin/python /apps/spades/3.15.5/share/spades/spades_pipeline/scripts/breaking_scaffolds_script.py --result_scaffolds_filename /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/scaffolds.fasta --misc_dir /scratch1/odw014/Hacky_hour_Workshop_2/Adenovirus/SPAdes/misc --threshold_for_breaking_scaffolds 3
true
