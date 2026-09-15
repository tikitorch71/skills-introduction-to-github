# Tiny Elvis

> "Hey, man, check out that cursor!"

Tiny Elvis was a Windows 3.1 freeware program written by **Matthew T. Smith**
for Pegasus Development in 1994. It sat minimized as a tiny pixel-art Elvis
icon on your desktop and, every so often, woke up to comment on how huge
everything around him was — a spoof of the 1992 SNL "Tiny Elvis" sketch.

The original `TNYELVIS.EXE` is a 16-bit Windows 3.1 program. Modern 64-bit
Windows 11 dropped support for running 16-bit executables directly (there's
no WOW16 layer), so it can't just be double-clicked anymore. This folder
contains a faithful **browser-based recreation** — using the original art
and sound clips — built from the JavaScript port by
[Christian Lawson-Perfect](https://somethingorotherwhatever.com/tiny-elvis/)
([source](https://github.com/christianp/tiny-elvis)), so Tiny Elvis rides
again on Windows 11 (or any OS with a web browser).

## Run it on Windows 11

**Easiest:** double-click `index.html` to open it in your default browser,
then click Tiny Elvis to wake him up.

**More reliable** (some browsers restrict local file access for images/audio):
double-click `start-windows.bat`. It serves this folder over
`http://localhost:8641/` using Python (if installed) and opens it in your
browser automatically. If Python isn't installed, it just falls back to
opening `index.html` directly.

Either way, click on Elvis and wait — he stands up, cracks a joke about
whatever's "huge", rocks out, and sits back down. He'll also wake up on his
own every few minutes.

## Running the real 16-bit original

If you want the actual 1994 executable rather than the web recreation, the
original files are preserved in [`original/`](original/). It won't run
natively on 64-bit Windows 11, but you can run it in a Windows 3.1/DOS
environment via an emulator such as [DOSBox](https://www.dosbox.com/) or
[86Box](https://86box.net/) with a Windows 3.1 install, or in a Windows 3.1
virtual machine.

## Files

- `index.html`, `about.html`, `tinyelvis.js` — the web recreation
- `pngs/` — Elvis animation frames, extracted from the original icon resources
- `sounds/` — the original 1994 `.WAV` voice clips, played directly
- `original/` — the untouched original `TNYELVIS.EXE`, help file, and readme
- `LICENSE` — licensing for the original files and the web recreation

## License

The original Tiny Elvis files (`original/`, `sounds/`, and the artwork in
`pngs/`) were contributed to the public domain by Matthew T. Smith /
Pegasus Development. The web recreation code (`index.html`, `about.html`,
`tinyelvis.js`), created by Christian Lawson-Perfect, is CC0 1.0 ("no
rights reserved"). See [`LICENSE`](LICENSE) for the full text.
