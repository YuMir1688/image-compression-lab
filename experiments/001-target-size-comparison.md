# Experiment 001: 20/50/100/200 KB comparison

Status: **not run**. All result sections below are placeholders.

## Question

For the same input image, which visual details survive at four strict file-size limits, and what changes are needed to meet each limit?

## Samples

Use at least five redistributable samples: a detailed landscape, a portrait with consent, fine text on a plain background, line art, and a transparent graphic. Synthetic text must be obviously fictional. Record source, license, SHA-256, original bytes, pixel dimensions and format. Keep originals unchanged.

## Byte convention

For the main experiment define 1 KB = 1,000 bytes. Thresholds are 20,000 / 50,000 / 100,000 / 200,000 bytes. If a tool uses 1,024 bytes per KB, record that behavior separately; do not silently change the pass threshold. Passing the byte check does not guarantee acceptance by a visa or exam portal.

## Method

1. Record UTC date, tool URL/build if available, OS, device, browser version, input and output settings.
2. Run each original independently at each target. Never recompress a previous output.
3. Keep format, dimensions and other requested settings consistent across tools where possible. Record any automatic conversion or resizing. Mark unsupported combinations instead of substituting them silently.
4. Run three timed trials per condition. Measure from pressing compress to result availability; exclude file selection and download time. Retain all three timing values. Record cold-start separately if tested.
5. Save output as `sample-id-target-kb-tool-id.ext` in `results/outputs/`. Measure bytes and dimensions from the exported file, not the interface's rounded label. Pass only if bytes <= target_bytes.
6. Inspect at native output size and in equally sized display boxes. Include crops of fine detail; label any resampling. For transparency, inspect on light and dark backgrounds.
7. Record blur, ringing, text readability, transparency loss, errors and orientation changes. Do not call a result lossless solely because it looks similar.

## Privacy check (separate from quality testing)

Open browser Network tools before selecting a non-sensitive sample, preserve the request log, and inspect requests during selection, compression and download. Record observation scope and uncertainty. Do not publish cookies, tokens, personal identifiers or raw authenticated request logs. An absence of observed uploads in one test is not a universal security guarantee.

## Verify an exported file

Run this read-only PowerShell command with an actual downloaded image:

```powershell
./experiments/measure-output.ps1 -Path './results/outputs/sample-100kb.jpg' -TargetKB 100
```

It reports exact bytes, the decimal KB threshold, pass/fail and SHA-256. An empty file fails. The script does not upload the image or inspect its visual quality. Copy the corresponding values into the results CSV; measure dimensions and timing separately.

## Reporting template

### Environment

[Fill date, device, OS, browser, tool version and settings.]

### Results

[Link to completed CSV. Report number of conditions tested, passes, failures and unsupported combinations.]

### Visual comparison

[Add labeled originals and outputs for each sample at 20/50/100/200 KB. Include byte counts, dimensions and formats.]

### Findings and limitations

[Describe observations, not marketing claims. Explain the sample size and why results may differ with other images and devices.]

### Reproduction

[List exact settings and any deviations from this protocol.]

Research and experiment design | YuMir
