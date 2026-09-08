# Exact-size image compression lab

An open experiment framework for comparing images exported under **20 KB, 50 KB, 100 KB and 200 KB** limits.

Maintained by YuMir, creator of [Compress to 100KB](https://compressto100kb.com/). This affiliation is disclosed because the product is one of the tools being evaluated.

## Current status

**Protocol and templates only. No measured results have been published yet.** This repository is not the compressor's source code. No quality, speed, privacy or superiority claim should be inferred from the empty results table.

## What this experiment measures

- Whether the exported file meets the requested byte limit.
- How image dimensions and output format change.
- Visual differences in photographs, fine text, line art and transparent images.
- Processing time in a recorded browser/device environment.
- Whether any image data is sent over the network during a separately documented privacy check.

## Start here

1. Read [the protocol](experiments/001-target-size-comparison.md).
2. Add images you own or have permission to redistribute to `samples/`, recording their provenance in [the sample register](samples/README.md). Never use real passports, signatures or application documents containing personal information.
3. Run each sample at all four limits using the same settings and environment.
4. Put exported images in `results/outputs/`, then fill [results.csv](results/results.csv).
5. Add original-versus-output comparison pictures and write the observed limitations in the experiment report.

## Tools and related pages

- [100 KB compressor](https://compressto100kb.com/)
- [50 KB compressor](https://compressto100kb.com/compress-image-to-50kb)
- [20 KB compressor](https://compressto100kb.com/compress-image-to-20kb)

The experiment includes 200 KB as a test condition; it does not imply a dedicated 200 KB landing page currently exists.

Contributions with reproducible settings and redistributable samples are welcome. Please report unsuccessful cases as well as successful ones.

Research and experiment design | YuMir
