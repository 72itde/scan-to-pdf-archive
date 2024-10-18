# scan-to-pdf-archive

current state: MVP/works on my computer. Nothing more.

## description

A little tool for scanning documents to PDF. Our goal was to put all paper in an archive folder in our Nextcloud and use the Nextcloud search index and function. Works perfect :-)

See `scan.sh` script for using a duplex document scanner; we use a an Epson DS-1660W connected via USB, also known as Epson DS-1660W ESC/I-2

Our goal is to have a file for each bunch of paper we put into (1-50 sheets in our case with the DS-1660W).
The file names are extended with current date and time and the output directory is given as a directory which is synchronized with our Nextcloud installation.

As a result all scanned documents are uploaded to our Nextcloud and indexed so we search for text in the pdf files using the Nextcloud fulltext search function.

That's a lovely archive :-)

## recommendations

### udev rule

We should add a udev rule for a persistent `--device-name` but I didn't get this working yet (LMDE6).

## Gathering the device id

```
scanimage -L
```

