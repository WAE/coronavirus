<link rel="prerender" href="https://github.com/WAE/coronavirus">

## [WAE.virus.coronavirus](https://github.com/WAE/coronavirus)

##### -r--r--r-- [coronavirus.statistics.zsh](https://raw.githubusercontent.com/WAE/coronavirus/master/coronavirus.statistics.zsh)
##### -rwxrwxrwx [coronavirus.statistics.zsh](https://wae.github.io/coronavirus/coronavirus.statistics.zsh)

[This repository](https://github.com/WAE/coronavirus) is a submodule for [WAE.virus](https://github.com/WAE/virus).  In order to install it in its' proper place on a smartphone, tablet an TV, run [coronavirus.statistics.zsh](https://raw.githubusercontent.com/WAE/coronavirus/master/coronavirus.statistics.zsh) after downloading.  Alternatively, copy and paste the following into [Termux](https://github.com/termux):

```
   au git wget zsh || apt install git wget zsh # installs git wget and zsh

   mkdir -p ~/WAE/virus/coronavirus/ # creates directories

   cd ~/WAE/virus/

   git clone https://github.com/WAE/coronavirus # clones repository

   cd ~/WAE/virus/coronavirus

   coronavirus.statistics.zsh new-zealand uk # lists statistics
```
Run this command to see all available country names:
```
   coronavirus.statistics.zsh
```
[![Screenshot_20200408-062343.png](https://github.com/WAE/coronavirus/raw/master/docs/images/Screenshot_20200408-062343.png)](https://github.com/WAE/coronavirus/raw/master/docs/images/Screenshot_20200408-062343.png)

To configure default statistical output for China run this command in the root directory of this repository after cloning:
```
   echo china > .conf/COUNTRYSTAT
```
File [output/by.country.20200408.md](https://raw.githubusercontent.com/WAE/coronavirus/master/output/by.country.20200408.md) has example output to queries;  Example queries:
```
   coronavirus.statistics.zsh brazil france

   coronavirus.statistics.zsh canada japan

   coronavirus.statistics.zsh iceland mexico

   coronavirus.statistics.zsh italy norway

   coronavirus.statistics.zsh uk spain
```
File [output/by.new.mortality.20200409.md](https://raw.githubusercontent.com/WAE/coronavirus/master/output/by.new.mortality.20200409.md) was created by script [scripts/by.new.mortality.sh](https://raw.githubusercontent.com/WAE/coronavirus/master/scripts/by.new.mortality.sh) which lists countries by new mortality rate.

File [output/by.new.spread.20200409.md](https://raw.githubusercontent.com/WAE/coronavirus/master/output/by.new.spread.20200409.md) was created by script [scripts/by.new.spread.sh](https://raw.githubusercontent.com/WAE/coronavirus/master/scripts/by.new.spread.sh) which lists countries by new spread rate.

Recommended Internet searches during current viral pandemic:
```
   coronavirus meter

   "egg yolk" virus

   "egg yolk" virus site:.gov

   hydration virus

   hydration virus site:.gov
```
Are bacteria, cancers, fungi and worms viruses?

Bacteria, cancers, fungi and worms are not viruses.


Les bactéries, les cancers, les champignons et les vers sont-ils des virus?

Les bactéries, les cancers, les champignons et les vers ne sont pas des virus.


¿Son bacterias, los cánceres, hongos y gusanos virus?

Las bacterias, los cánceres, los hongos y los gusanos no son virus.

> #### Iceland has tested more of its population for coronavirus than anywhere else. Here's what it learned

> Iceland has achieved something no other country has: tested 10% of its population for coronavirus, a figure far higher than anywhere else in the world. 

> While many countries publish daily and cumulative infection and death rates, there don't appear to be comparable statistics for other nations available that give an overall sense of how deep-rooted the virus is, or how many carriers of the disease, at any given time, may have no symptoms. 

https://amp.usatoday.com/amp/2959797001 20200410

> #### One by one, nurses got coronavirus at a Silicon Valley hospital while management kept quiet

https://m.sfgate.com/news/article/One-by-one-nurses-got-coronavirus-at-a-Silicon-15193580.php 20200411

> #### Coronavirus patients can suffer lasting bodily damage, even after recovery

https://nypost.com/2020/04/11/coronavirus-patients-can-suffer-lasting-bodily-damage/ 20200411


> #### Private jet carrying vacationers turned back after landing in the south of France

> A group of international vacationers who flew from London to the south of France in a private jet were turned away by French police after they landed.

> had "a lot of money" and wanted "to just pay a fine and go to Cannes,"

> nine passengers returned to London, including the three French nationals, while a Ukrainian passenger rented a plane to Berlin

https://www.cnn.com/travel/amp/private-jet-turned-back-cannes-france/index.html 20200411 

Countries mentioned in private jet article:

4.9763% = GERMANY 20200411 NEW MORTALITY RATE (0.0000% is ideal)

6.1047% = CROATIA 20200411 NEW MORTALITY RATE (0.0000% is ideal)

29.1589% = ROMANIA 20200411 NEW MORTALITY RATE (0.0000% is ideal)

35.4080% = FRANCE 20200411 NEW MORTALITY RATE (0.0000% is ideal)

49.3590% = UKRAINE 20200411 NEW MORTALITY RATE (0.0000% is ideal)
	
96.9109% = UK 20200411 NEW MORTALITY RATE (0.0000% is ideal)

> NASA data reveals air pollution in northeast areas of the US have dropped by 30 percent as millions are under lockdown due to the coronavirus pandemic

https://www.dailymail.co.uk/sciencetech/article-8208831/NASA-data-shows-air-pollution-northeast-areas-dropped-30-percent-amid-coronavirus.html

> #### How a Bronx Zoo tiger was tested for coronavirus

> On the plus side, the zoo says Nadia is on the mend and will be just fine.

> “We are practicing social distancing with our wild cats as well,” Calle said

https://nypost.com/2020/04/12/how-a-bronx-zoo-tiger-was-tested-for-coronavirus/ 20200412

The following command will attempt to show the current statistics for the default country, Iceland and Norway: 	
```
coronavirus.statistics.zsh iceland norway # lists statistics for the default country, Iceland and Norway 
```
<!--coronavirus README.md EOF-->
