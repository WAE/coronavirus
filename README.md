<link rel="prerender" href="https://github.com/WAE/coronavirus">

## [WAE/virus/coronavirus](https://github.com/WAE/coronavirus)

##### -r--r--r-- [coronavirus.statistics.zsh](https://raw.githubusercontent.com/WAE/coronavirus/master/coronavirus.statistics.zsh)
##### -rwxrwxrwx [coronavirus.statistics.zsh](https://wae.github.io/coronavirus/coronavirus.statistics.zsh)

[This repository](https://github.com/WAE/coronavirus) is a submodule for [WAE/virus](https://github.com/WAE/virus).  In order to install it in its' proper place on a smartphone, tablet and TV, run [setup.coronavirus.statistics.sh](https://raw.githubusercontent.com/WAE/coronavirus/master/scripts/setup.coronavirus.statistics.sh) after downloading.  Tap this link to download [setup.coronavirus.statistics.sh](https://wae.github.io/coronavirus/scripts/setup.coronavirus.statistics.sh).  Alternatively, copy and paste the following into [Termux](https://github.com/termux) on smartphone, tablet, TV and wearable:

```
   au git wget zsh || apt install git wget zsh # install git wget and zsh

   mkdir -p ~/WAE/virus/coronavirus/ # create directories

   cd ~/WAE/virus/

   git clone https://github.com/WAE/coronavirus # clone repository

   ~/WAE/virus/coronavirus/coronavirus.statistics.zsh new-zealand uk # list statistics
```
This command will show all available country names:
```
   ~/WAE/virus/coronavirus/coronavirus.statistics.zsh
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

   "egg yolk" parvovirus

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

```
4.9763% = GERMANY 20200411 NEW MORTALITY RATE (0.0000% is ideal)
6.1047% = CROATIA 20200411 NEW MORTALITY RATE (0.0000% is ideal)
29.1589% = ROMANIA 20200411 NEW MORTALITY RATE (0.0000% is ideal)
35.4080% = FRANCE 20200411 NEW MORTALITY RATE (0.0000% is ideal)
49.3590% = UKRAINE 20200411 NEW MORTALITY RATE (0.0000% is ideal)
96.9109% = UK 20200411 NEW MORTALITY RATE (0.0000% is ideal)
```

> #### NASA data reveals air pollution in northeast areas of the US have dropped by 30 percent as millions are under lockdown due to the coronavirus pandemic

https://www.dailymail.co.uk/sciencetech/article-8208831/NASA-data-shows-air-pollution-northeast-areas-dropped-30-percent-amid-coronavirus.html 20200412

> #### How a Bronx Zoo tiger was tested for coronavirus

> On the plus side, the zoo says Nadia is on the mend and will be just fine.

> “We are practicing social distancing with our wild cats as well,” Calle said

https://nypost.com/2020/04/12/how-a-bronx-zoo-tiger-was-tested-for-coronavirus/ 20200412

> #### The coronavirus spreads at least 13 feet, travels on shoes: CDC

https://nypost.com/2020/04/12/the-coronavirus-can-travel-at-least-13-feet-new-study-shows/

> #### Sweden resisted a lockdown, and its capital Stockholm is expected to reach 'herd immunity' in weeks

https://www.cnbc.com/2020/04/22/no-lockdown-in-sweden-but-stockholm-could-see-herd-immunity-in-weeks.html

```
$ grep -hw SWEDEN ~/WAE/virus/coronavirus/output/by.new.spread.*
89.8814% = SWEDEN 20200409
89.0822% = SWEDEN 20200410
88.0569% = SWEDEN 20200411
88.1646% = SWEDEN 20200412
85.7153% = SWEDEN 20200418
85.0890% = SWEDEN 20200419
85.5857% = SWEDEN 20200421
85.0953% = SWEDEN 20200422
```

> #### Experts demolish studies suggesting COVID-19 is no worse than flu

> Authors of widely publicized antibody studies “owe us all an apology,” one expert says.

https://arstechnica.com/science/2020/04/experts-demolish-studies-suggesting-covid-19-is-no-worse-than-flu/

> #### 'Happy hypoxia': unusual coronavirus effect baffles doctors

> It is a mystery that has left doctors questioning the basic tenets of biology: Covid-19 patients who are talking and apparently not in distress, but who have oxygen levels low enough to typically cause unconsciousness or even death.

https://www.theguardian.com/world/2020/may/03/happy-hypoxia-unusual-coronavirus-effect-baffles-doctors

> #### The mystery of the pandemic's ‘happy hypoxia’

> Among the many surprises of the new coronavirus is one that seems to defy basic biology: infected patients with extraordinarily low blood-oxygen levels, or hypoxia, scrolling on their phones, chatting with doctors, and generally describing themselves as comfortable. Clinicians call them happy hypoxics.

https://science.sciencemag.org/content/368/6490/455

> #### The coronavirus has mutated and appears to be more contagious now, new study finds

> The study has yet to be peer-reviewed, but the researchers noted that news of the mutation was of "urgent concern" considering the more than 100 vaccines in the process of being developed to prevent Covid-19.

> To date, the researchers have identified 14 mutations. 

https://www.cnbc.com/2020/05/05/the-coronavirus-mutated-and-appears-to-be-more-contagious-now-new-study-finds.html

> #### U.S. COVID-19 death rate is 1.3%, study finds

> On the other hand, the new estimate is much lower than prior death rate calculations. For example, China's COVID-19 death rate was initially reported to be 5.6%, falling to 3.8% by Feb. 20. But that could be due to timing: As in China, U.S. rates were much higher in the early stages of the pandemic, Basu noted.

> The new study's findings are based on 40,835 confirmed COVID-19 cases and 1,620 confirmed deaths in 116 counties across 33 states through April 20. Death rates varied widely across locales, with some counties recording a death rate of just 0.5% while others went as high as 3.6%.

https://medicalxpress.com/news/2020-05-covid-death.html

```
$ head ~/WAE/virus/coronavirus/output/by.new.mortality.20200509.md
0.0000% = CARIBBEAN-NETHERLANDS 20200509 
0.0000% = SAINT-PIERRE-AND-MIQUELON 20200509 
0.3628% = DJIBOUTI 20200509 
0.3889% = BAHRAIN 20200509 
0.4119% = CHINA-HONG-KONG-SAR 20200509 
0.5516% = UZBEKISTAN 20200509 
0.5634% = ICELAND 20200509 
0.5684% = QATAR 20200509 
0.7519% = BRUNEI-DARUSSALAM 20200509 
0.8333% = FRENCH-GUIANA 20200509 
$ grep -in -e " US " -e " CHINA " ~/WAE/virus/coronavirus/output/by.new.mortality.20200509.md
63:5.6036% = CHINA 20200509 
155:26.0000% = US 20200509 
$ grep -h " US " ~/WAE/virus/coronavirus/output/by.new.mortality.202005*
29.0889% = US 20200501 
28.9402% = US 20200502 
28.1056% = US 20200503 
27.7434% = US 20200504 
26.4658% = US 20200506 
26.7639% = US 20200507 
26.5631% = US 20200508 
26.0000% = US 20200509 
```

> #### Leaked White House data shows infections spiking more than 1,000% in rural areas that backed Trump

> "Anybody that claims we're on a downward trajectory nationally is out of touch with reality," Dr. Irwin Redlener, the director of the Columbia University National Center for Disaster Preparedness, told NBC News, adding that even the rising numbers do not tell the full story. 

https://www.salon.com/2020/05/12/leaked-white-house-data-shows-infections-spiking-more-than-1000-in-rural-areas-that-backed-trump/

```
$ grep -h " US " ~/WAE/virus/coronavirus/output/by.new.spread.20200{4,5}{10..12}*
90.9159% = US 20200410 
90.9990% = US 20200411 
90.7458% = US 20200412 
76.7096% = US 20200510 
75.3993% = US 20200511 
74.5362% = US 20200512 
$ grep -hn " US " ~/WAE/virus/coronavirus/output/by.new.spread.20200{4,5}{10..12}* | sort -g
172:90.9159% = US 20200410 
175:74.5362% = US 20200512 
176:75.3993% = US 20200511 
178:90.9990% = US 20200411 
180:76.7096% = US 20200510 
186:90.7458% = US 20200412 
```

> #### Sweden stayed open. A deadly month shows the risks

> “It’s not a very flattering comparison for Sweden, which has such a great public health system,” said Andrew Noymer, a demographer at the University of California at Irvine. “There’s no reason Sweden should be doing worse than Norway, Denmark and Finland.”

> “Sweden will be judged at the finish line,” Mr. Noymer said. “But it’s a very high-stakes risk, and the consequences are people's lives.”

https://www.nytimes.com/interactive/2020/05/15/world/europe/sweden-coronavirus-deaths.html 20200517

```
$ grep -hn -e DENMARK -e FAEROE-ISLANDS -e FINLAND -e GREENLAND -e ICELAND -e NORWAY -e SWEDEN ~/WAE/virus/coronavirus/output/by.new.mortality.20200409.md
24:0.8646% = ICELAND 20200409 
87:12.7907% = FINLAND 20200409 
88:12.8514% = DENMARK 20200409 
189:73.9130% = FAEROE-ISLANDS 20200409 
190:78.2313% = NORWAY 20200409 
193:81.4312% = SWEDEN 20200409 
204:100.0000% = GREENLAND 20200409 
$ grep -hn -e DENMARK -e FAEROE-ISLANDS -e FINLAND -e GREENLAND -e ICELAND -e NORWAY -e SWEDEN ~/WAE/virus/coronavirus/output/by.new.mortality.20200517.md
7:0.5568% = ICELAND 20200517 
77:5.6351% = DENMARK 20200517 
78:5.6426% = FINLAND 20200517 
176:42.5650% = SWEDEN 20200517 
189:87.8788% = NORWAY 20200517 
201:100.0000% = FAEROE-ISLANDS 20200517 
203:100.0000% = GREENLAND 20200517 
$ grep -hn -e DENMARK -e FAEROE-ISLANDS -e FINLAND -e GREENLAND -e ICELAND -e NORWAY -e SWEDEN ~/WAE/virus/coronavirus/output/by.new.spread.20200409.md
11:0.0000% = FAEROE-ISLANDS 20200409 
15:0.0000% = GREENLAND 20200409 
74:58.6905% = ICELAND 20200409 
84:66.3770% = DENMARK 20200409 
147:87.4403% = FINLAND 20200409 
166:89.8814% = SWEDEN 20200409 
209:97.7714% = NORWAY 20200409 
$ grep -hn -e DENMARK -e FAEROE-ISLANDS -e FINLAND -e GREENLAND -e ICELAND -e NORWAY -e SWEDEN ~/WAE/virus/coronavirus/output/by.new.spread.20200517.md
8:0.0000% = FAEROE-ISLANDS 20200517 
13:0.0000% = GREENLAND 20200517 
33:0.3330% = ICELAND 20200517 
62:11.1131% = DENMARK 20200517 
73:17.3221% = FINLAND 20200517 
174:71.7403% = SWEDEN 20200517 
208:96.8004% = NORWAY 20200517 
```

> #### Dogs could sniff out coronavirus cases at rate of 750 per hour, experts believe

> "There have already been so many fantastic achievements in the dogs' work to detect human disease, and I believe they can be trained to sniff out COVID-19," Guest told the news outlet.

https://www.foxnews.com/science/dogs-could-sniff-coronavirus-cases-750-per-hour-experts-believe 20200518

> #### Dogs are now being trained to smell coronavirus in US patients

> Dr. Guest also estimated dogs could sniff out as many as 750 people per hour, significantly aiding in the testing capabilities throughout the world.

https://www.foxnews.com/science/dogs-trained-smell-coronavirus-in-us-patients 20200518

> #### Trial for dogs to sniff out COVID-19 in UK starts

> “Bio-detection dogs already detect specific cancers and we believe this innovation might provide speedy results as part of our wider testing strategy," Minister for Innovation Lord Bethell said in a statement. “Accuracy is essential so this trial will tell us whether ‘COVID dogs’ can reliably detect the virus and stop it spreading.”

https://www.foxnews.com/science/trial-dogs-sniff-covid-19-uk-starts 20200518

> #### Prescribed for Covid19 positive patients, here is why eggs are so good for your immunity

> Eggs are super good for your immunity

> In a welcome move, authorities are also providing a lot of healthcare workers and frontline heroes eggs daily to boost immunity.  A new challenge #eggsforimmunity has also gone viral on Twitter, wherein users are sharing pictures of the many ways they have eggs, talking of the several nutrient-rich benefits.

https://m.timesofindia.com/life-style/health-fitness/diet/prescribed-for-covid19-positive-patients-here-is-why-eggs-are-so-good-for-your-immunity/photostory/75183540.cms 20200525

> ‘Maybe they can’t breathe’: NYPD official offers tone deaf reason for cops ditching masks

https://nypost.com/2020/06/09/nypd-big-on-cops-ditching-masks-at-george-floyd-protests/

20200924 https://www.theguardian.com/world/2020/sep/24/close-to-100-accuracy-airport-enlists-sniffer-dogs-to-test-for-covid-19

20201216 https://nypost.com/2020/12/16/wearing-a-used-mask-could-worse-than-no-mask-amid-covid-19-study/

20210108 https://www.sfgate.com/bayarea/article/Mobile-morgue-refrigerated-truck-COVID-Bay-Area-15855325.php

> A grim sign of the coronavirus surge, California has leased 10 refrigerated semitrailer to assist with the collection of bodies as the daily death toll climbs to unprecedented levels, according to the Governor's Office of Emergency Services (Cal OES).

This command shows the current statistics for [the default country](https://github.com/WAE/coronavirus/blob/master/.conf/COUNTRYNAME), Iceland and Norway: 	

```
~/WAE/virus/coronavirus/coronavirus.statistics.zsh iceland norway # list statistics for the default country, Iceland and Norway 
```

<!--coronavirus README.md EOF-->
