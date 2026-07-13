# WNV / USUV phylogenetic analysis — Camargue surveillance

Companion repository for the phylogenetic analyses supporting our manuscript on
West Nile virus (WNV) and Usutu virus (USUV) active surveillance in wild birds
in the Montpellier–Camargue region (submitted to *PLOS Neglected Tropical
Diseases*; citation to be added once the article is published).

This repository contains the full pipeline used to place newly generated
WNV/USUV isolates in their global phylogenetic context, from raw sequence
retrieval to the final annotated trees.

## Contents

| File | Description |
|---|---|
| `script.sh` | Full pipeline: alignment → trimming → tree inference |
| `WNV.fasta` / `USUV.fasta` | Unaligned input sequences (public reference genomes + newly generated isolates) |
| `WNV.faa` / `USUV.faa` | MAFFT-aligned sequences |
| `WNV_trimmed.faa` / `USUV_trimmed.faa` | TrimAl-trimmed alignments used for tree inference |
| `WNV_trimmed_faa.treefile` / `USUV_trimmed_faa.treefile` | Final IQ-TREE maximum-likelihood trees (Newick format) |

Sequence headers follow the format `Virus-Isolate/Country/Year-Accession`
(e.g. `WNV-Occitanie/France/2024-AX76078`), so the GenBank accession for
every public sequence is directly readable from the alignment/tree files.

## Outgroups

- **WNV tree**: rooted using a Japanese encephalitis virus sequence
  (`JEV-GP78/India/1978-AF075723`), the reference outgroup for WNV lineage
  studies within the JEV serocomplex.
- **USUV tree**: rooted using a WNV sequence
  (`WNV-NY99-flamingo382-99/USA/1999-AF196835`), USUV's closest relative
  within the JEV serocomplex.

## Software and versions

| Tool | Version | Purpose |
|---|---|---|
| MAFFT | 7.505 | Multiple sequence alignment (`--auto`) |
| TrimAl | 1.5.rev1 | Alignment trimming (`-automated1`) |
| IQ-TREE | 3.0.1 | Maximum-likelihood tree inference (model selection via `MFP`, 1000 UFBoot replicates, 1000 SH-aLRT replicates) |

## Reproducing the analysis

```bash
# Edit PREFIX in script.sh to "WNV" or "USUV", then:
bash script.sh
```

This regenerates the aligned (`_aligned.faa`), trimmed (`_trimmed.faa`), and
tree (`.treefile`) outputs from the corresponding `.fasta` input.

## Citation

If you use this pipeline or these trees, please cite:

> [Author list]. [Manuscript title]. *PLOS Neglected Tropical Diseases*
> (in review). [DOI to be added upon publication]

## License

Code released under the MIT License (see `LICENSE`). Public reference
sequences retain their original GenBank provenance as indicated in each
header.

## Contact

Yannick Simonin — Université de Montpellier / Inserm
