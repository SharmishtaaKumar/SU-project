#cd ../fasta_data/
for i in fasta_data/*.fasta
do
psiblast -query $i -db /home/u2343/Desktop/uniprot_sprot.fasta -evalue 0.01 -num_iterations 3 -out $i.out -out_ascii_pssm $i.pssm -num_threads 8
done
