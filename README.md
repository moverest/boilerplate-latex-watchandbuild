# boilerplate-latex-watchandbuild

This repository is a boilerplate code to (re)build Latex documents automatically on changes. See a demo video [here](https://youtu.be/NtgmjwsaLqs).

To start the script, just run:

```bash
make watchandbuild
```

Any changes on `main.tex` or the `Makefile` will rebuild the document. You can add other files to be watch in the `Makefile` with the variable `TO_WATCH`.
