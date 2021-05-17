### Chia log analyzer
Bash script that post-processes chia plotter's logs to see your statistics

### Description
Have you ever considered what's your best plotting options? Forget to write down some values during plotting? That's no longer a problem due to this script.

### Requirements
* Linux
* Bash and standard CLI tools installed [awk, grep] (most of Linux distros has this installed)
* Existing log files from chia plotting

### What is inside this repo
* `chiacheck_all.sh` - Script that builds statistics from all files, both from finished and cancelled plots.
* `chiacheck_onlyfinished.sh` - Script that builds statistics from only finished plots.
* `README.md` - this file (the one that you're reading now)
* `LICENSE` - Copy of MIT license file.

Note: no demo files are provided. The script won't work as-is unless copied to Chia Plotter Log directory.

### How to use
This script (without modifications) should reside in plotter's log directory, which by default can be found here: `~/.chia/mainnet/plotter/`.
If your path differs from this, please change the commands accordingly.

0. Enter your plotting directory: `cd ~/.chia/mainnet/plotter/`
1. Clone this repo there: `git clone https://github.com/sxiii/chia-log-analyzer`
2. Move the files from chia-log-analyzer into current folder and remove the chia-log-analyzer folder: `mv ./chia-log-analyzer/* . && rm -rf ./chia-log-analyzer`
3. Run the script (choose one of the two above, for example: `./chiacheck_onlyfinished.sh`)
4. Open your terminal to full screen. Wait several seconds. You would see results on the screen as well as in file `result.tsv`.
5. Optional: if you want, open the file (result.tsv) with any spreadsheet program you like, for example: `gnumeric result.tsv` or `libreoffice result.tsv` or `openoffice result.tsv` or others, or even just show everything again in terminal: `cat result.tsv`.

