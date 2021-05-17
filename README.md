### Chia log analyzer | Анализатор логов Chia
Bash script that post-processes chia plotter's logs to see your statistics <BR>
Баш-скрипт, обрабатывающий логи плоттера Чиа, для получения полезной статистики. Русское ридми - ниже

![ChiaTimeDiagram](ChiaTimeDiagram.png?raw=true "Chia Time Diagram")

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
* Two images illustrating program outputs.

Note: no demo files are provided. The script won't work as-is unless copied to Chia Plotter Log directory.

### How to use
This script (without modifications) should reside in plotter's log directory, which by default can be found here: `~/.chia/mainnet/plotter/`.
If your path differs from this, please change the commands accordingly.

0. Enter your plotting directory: `cd ~/.chia/mainnet/plotter/`
1. Clone this repo there: `git clone https://github.com/sxiii/chia-log-analyzer`
2. Move the files from chia-log-analyzer into current folder and remove the chia-log-analyzer folder: `mv ./chia-log-analyzer/* . && rm -rf ./chia-log-analyzer`
3. Run the script (choose one of the two above, for example: `./chiacheck_onlyfinished.sh`)
4. Open your terminal to full screen. Wait several seconds. You would see results on the screen as well as in file `result.tsv`.
5. Optional: if you want, open the file (result.tsv) with any spreadsheet program you like, for example: `gnumeric result.tsv` or `libreoffice result.tsv` or `openoffice result.tsv` or others, or even just show everything again in terminal: `cat result.tsv`. You can plot some nice charts like in this repo by using offline/desktop spreadsheet software or online/google spreadsheets.

NB! If the script does not run, please, mark .sh files for execution: `chmod +x *sh`

P.S. Theoretically, this script can use Mac/Win logs as well, but you will need to use Linux to run it anyways. You can do it from live USB flash or virtual machine, if you want to.

### Further improvements & questions
Feel free to send your ideas, questions and bug reports into the "issues" of this project. Also, if you'll manage to add some cool functionality, please send me a pull request.

### Support authour
You can support me directly via Github (Sponsors), or on my webpage https://sxiii.ru/donate

![ChiaCLI](ChiaCLI.png?raw=true "Chia CLI Results")

### Описание
Задумывались ли вы когда-то, оптимальные ли настройки плоттинга у вас заданы? Забывали записывать ваши тестовые параметры? Это больше не проблема, благодаря данному скрипту.

### Требования
* Linux
* Bash и стандартные CLI инструменты [awk, grep] (большинство Linux-дистрибутивов уже имеет их)
* Лог-файлы плоттинга Чиа (они у вас уже должны быть)

### Что в этом репозитории
* `chiacheck_all.sh` - Скрипт, собирающий статистику из всех ваших файлов (включая отменённые/незавершённые плоты)
* `chiacheck_onlyfinished.sh` - Скрипт, собирающий статистику только о успешно "нарисованных" плотах.
* `README.md` - этот файл (что вы сейчас читаете)
* `LICENSE` - Копия лицензии MIT.
* Два изображения с иллюстрациями данных, которые может выводить программа.

Внимание: демо-файлы не предоставляются. Скрипт не будет работать в текущем виде, если вы не поместите его в директорию с логами плоттинга Chia.

### Как использовать
Этот скрипт (без модификаций) необходимо расположить в папку с логами плоттера, которая в Linux по умолчанию находится вот тут: `~/.chia/mainnet/plotter/`.
Если ваш путь с логами плоттера отличается, пожалуйста, исправьте следующие команды в соответствии с ним.

0. Входим в папку с логами плоттера: `cd ~/.chia/mainnet/plotter/`
1. Клонируем мой репозиторий туда: `git clone https://github.com/sxiii/chia-log-analyzer`
2. Перемещаем файлы из папки репозитория (chia-log-analyzer) в текущую папку, и удаляем ненужную более chia-log-analyzer: `mv ./chia-log-analyzer/* . && rm -rf ./chia-log-analyzer`
3. Запускаем скрипт (выбирайте один из двух - указанных выше, например: `./chiacheck_onlyfinished.sh`)
4. Откройте терминал на весь экран. Подождите пару секунд. Вы должны увидеть результаты на экране, а так же в файле `result.tsv`.
5. Дополнительно: если хотите, откройте файл (result.tsv) любой программой для создания электронных таблиц, например: `gnumeric result.tsv` или `libreoffice result.tsv` или `openoffice result.tsv` или другими, или же повторно просмотрите данные в терминале: `cat result.tsv`. Теперь вы можете нарисовать прекрасные графики, вроде того что показан на скриншоте в этом репозитории, используя оффлайн софт для электронных таблиц или же онлайн вариант (гугл таблицы).

NB! Если скрипт не запускается на шаге 3, пожалуйста, сделайте SH файлы исполняемыми: `chmod +x *sh`

P.S. Теоритически, этот скрипт может работать так же с логами с платформ Mac/Win, но вам всё равно понадобится Linux чтобы запустить его. Вы, разумеется, можете запустить Linux для этого с живой флэшки или в виртуальной машине, если у вас нет полноценной установки.

### Развитие скрипта
Предложения, вопросы и баг-репорты пишите в Issues данного проекта. Так же, если добавите какой-то классный функционал, присылайте pull-request.

### Поддержать автора
Поддержать меня можно прямо через Github (Sponsors), либо на моём сайте https://sxiii.ru/donate
