# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

User.destroy_all
Station.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
StationSong.destroy_all

demo = User.create(name: "Demo", email: "demo@gmail.com", password: "password")

artist1 = Artist.create(name: "3 Doors Down", description: "3 Doors Down is an American rock band from Escatawpa, Mississippi, that formed in 1996. The band originally consisted of Brad Arnold (lead vocals/drums), Todd Harrell (bass), and Matt Roberts (lead guitar, backing vocals). They were soon joined by rhythm guitarist Chris Henderson. The band rose to international fame with their first single, Kryptonite, which charted in the top three on the Billboard Hot 100 chart. The band then signed with Republic Records and released their debut album, The Better Life, in 2000. The album was the 11th-best-selling album of the year and was certified 6x platinum in the United States. They were later joined by drummer Richard Liles, who played during the tour for their first album. - From Wikipedia")

artist2 = Artist.create(name: "Cascada", description: "Cascada (/kəˈskɑːdə/; Spanish for Waterfall) are a German dance music act founded in 2004 by singer Natalie Horler, DJ Manian and DJ Yanou. They are best known for their hit singles Everytime We Touch, What Hurts the Most and Evacuate the Dancefloor. Cascada have sold over 30 million albums worldwide, an estimated 15 million digital downloads, and have an estimated net worth of over 7 million. Cascada represented Germany at the Eurovision Song Contest 2013 in Malmö, Sweden. While being one of the most successful acts of the dance music genre itself, Cascada was named the most successful German act of the 21st century - From Wikipedia")

artist3 = Artist.create(name: "Chainsmokers", description: "The Chainsmokers is an American DJ/production duo consisting of Alex Pall and Andrew Taggart. The EDM-pop duo1 achieved a breakthrough with their 2014 song #Selfie, which was a top twenty single in several countries. Their debut EP, Bouquet was released in October 2015 and featured the single Roses, which reached the top 10 on the US Billboard Hot 100.5 Don't Let Me Down became their first top 5 single there and won the Grammy Award for Best Dance Recording at the 59th awards ceremony,6 while Closer became their first number-one single on the chart.7 They have also won two American Music Awards8 and five iHeartRadio Music Awards.9 The duos second EP Collage was released in November 2016, succeeded by the release of their debut studio album, Memories...Do Not Open, in April 2017.10 - From Wikipedia")

artist4 = Artist.create(name: "Ed Sheeran", description: "Edward Christopher Sheeran, MBE (born 17 February 1991) is an English singer, songwriter, guitarist, and record producer. Sheeran was born in Halifax, West Yorkshire, and raised in Framlingham, Suffolk. He attended the Academy of Contemporary Music in Guildford as an undergraduate from the age of 18 in 2009. In early 2011, Sheeran independently released the extended play, No. 5 Collaborations Project. After signing with Asylum Records, his debut album, + (read as plus), was released in September 2011. It topped the UK and Australian charts, reached number five in the US, and has since been certified seven-times platinum in the UK. The album contains the single The A Team, which earned him the Ivor Novello Award for Best Song Musically and Lyrically. In 2012, Sheeran won the Brit Awards for Best British Male Solo Artist and British Breakthrough Act. The A Team was nominated for Song of the Year at the 2013 Grammy Awards, where he performed the song with Elton John. - From Wikipedia")

artist5 = Artist.create(name: "Foo Fighters", description: "Foo Fighters is an American rock band, formed in Seattle, Washington in 1994. It was founded by Nirvana drummer Dave Grohl as a one-man project following the dissolution of Nirvana after the death of Kurt Cobain. The group got its name from the UFOs and various aerial phenomena that were reported by Allied aircraft pilots in World War II, which were known collectively as foo fighters. Prior to the release of Foo Fighters' 1995 debut album Foo Fighters, which featured Grohl as the only official member, Grohl recruited bassist Nate Mendel and drummer William Goldsmith, both formerly of Sunny Day Real Estate, as well as Nirvana touring guitarist Pat Smear to complete the lineup. The band began with performances in Portland, Oregon. Goldsmith quit during the recording of the group's second album, The Colour and the Shape (1997), when most of the drum parts were re-recorded by Grohl himself. Smear's departure followed soon afterward, though he would rejoin them in 2006. - From Wikipedia")

artist6 = Artist.create(name: "Outkast", description: "Outkast (stylized as OutKast) is an American hip hop duo formed in 1991, in East Point, Atlanta, Georgia, composed of Atlanta-based rappers André Andre 3000 Benjamin (formerly known as Dre) and Antwan Big Boi Patton.1 The duo achieved both critical acclaim and commercial success in the 1990s and early 2000s, helping to popularize Southern hip hop while developing distinctive personas and experimenting with diverse genres such as funk, psychedelia, techno, and gospel. Benjamin and Patton formed the group as high school students in 1991. OutKast released their debut album Southernplayalisticadillacmuzik in 1994, which gained popularity after the single Player's Ball reached number one on the Billboard Hot Rap Tracks chart. With successive releases including ATLiens (1996) and Aquemini (1998), the duo further developed their sound, experimenting with a variety of styles and achieving commercial success. In 2000, Outkast released the critically acclaimed Stankonia, which included the singles Ms. Jackson and B.O.B. - From Wikipedia")

artist7 = Artist.create(name: "Nickelback", description: "Nickelback is a Canadian rock band formed in 1995 in Hanna, Alberta, Canada. The band is composed of guitarist and lead vocalist Chad Kroeger, guitarist, keyboardist and backing vocalist Ryan Peake, bassist Mike Kroeger, and drummer Daniel Adair. The band went through a few drummer changes between 1995 and 2005, achieving its current lineup when Adair replaced drummer Ryan Vikedal. Nickelback is one of the most commercially successful Canadian groups, having sold more than 50 million albums worldwide1 and ranking as the eleventh best-selling music act, and the second best-selling foreign act in the U.S. of the 2000s, behind The Beatles. Billboard ranks them the most successful rock group of the decade; their song How You Remind Me was listed as the best-selling rock song of the decade and the fourth best-selling of the decade. They were listed number seven on the Billboard top artist of the decade, with four albums listed on the Billboard top albums of the decade. - From Wikipedia")

artist8 = Artist.create(name: "Zara Larsson", description: "Zara Maria Larsson (pronounced ²sɑːra ma²riːa ˈlɑːʂɔn; born 16 December 1997) is a Swedish singer and songwriter. At the age of 10, she achieved national fame in Sweden for winning the 2008 season of the talent show Talang, the Swedish version of British TV's Got Talent. Four years later, in 2012, Larsson signed with the record label TEN Music Group and released her debut EP album Introducing in January 2013. The single Uncover topped the music charts in Scandinavia: Sweden, Denmark, and Norway. In February 2013, Uncover was certified platinum by Universal Music Sweden. In July 2013, her EP Introducing was certified triple platinum in the country. Larsson signed a three-year contract with Epic Records in the United States in April 2013. In 2016, she performed at the opening and closing ceremonies for UEFA Euro in France - From Wikipedia")

artist9 = Artist.create(name: "Clean Bandit & Jess", description: "Clean Bandit are an English electronic music band formed in Cambridge in 2008. The band consists of Grace Chatto, and brothers Jack and Luke Patterson. Their 2011 single Mozarts House reached number 17 on the UK Singles Chart when re-released in 2013. In January 2014, they scored their first UK chart topping single with Rather Be, a collaboration with Jess Glynne, featuring elements of both classical and dance music. They also reached number 10 on the US Billboard Hot 100. In 2015, Rather Be won the Grammy Award for Best Dance Recording. Their 2016 single Rockabye, which features rapper Sean Paul and singer Anne-Marie, became their second number-one hit in the UK, becoming the Christmas number one single for 2016 in its seventh consecutive week at number one. The song became an international chart topper for the band, and also charted at number 9 in the US. Clean Bandit have sold over 13 million singles and 1.6 million albums worldwide - From Wikipedia")

artist10 = Artist.create(name: "Chris Brown", description: "Christopher Maurice Brown (born May 5, 1989) is an American singer, songwriter, and actor. Born in Tappahannock, Virginia, he was involved in his church choir and several local talent shows from a young age. Having signed with Jive Records in 2004, Brown released his self-titled debut studio album the following year. It peaked at number two on the US Billboard 200 and was later certified double platinum by the Recording Industry Association of America (RIAA), selling an overall three million copies worldwide. With his first single Run It! peaking atop the US Billboard Hot 100, Brown became the first male artist as a lead since Diddy in 1997 to have his debut single top the chart. His second album Exclusive (2007) spawned his second Hot 100 number one Kiss Kiss, in addition to With You and Forever. The album was also certified double platinum by the RIAA. In addition to his solo commercial success, Brown has been featured on several singles such as No Air, a duet with singer Jordin Sparks, Shortie like Mine with the rapper Bow Wow and Shawty Get Loose alongside Lil Mama and T-Pain. The songs have peaked at number three, number nine and number ten on the US Billboard Hot 100 respectively. - From Wikipedia")

artist11 = Artist.create(name: "Martin Garrix", description: "Garrix was born as Martijn Gerard Garritsen on 14 May 1996 in Amstelveen in the Netherlands. He learned to play guitar at age 8. In 2004, he expressed interest in becoming a DJ after seeing Tiësto perform at the Olympic games in Athens. He took particular inspiration from the track Traffic, prompting him to download specialist software, FL Studio, and enabling him to start composing. In 2013, he graduated from the Herman Brood Academy, a production school in Utrecht.1314 In an interview when asked about his social class, Garrix said middle-class.15 He also said his 'dream mentor' was Calvin Harris - From Wikipedia")

artist12 = Artist.create(name: "Avril Lavigne", description: "Lavigne was born in Belleville, Ontario, Canada. Her mother is of English, Scottish, and German descent, and her father, Jean-Claude Joseph Lavigne, is of French-Canadian origin.24 She was named Avril by her father after the French word for the month of April. He and Lavigne's mother, Judith-Rosanne Judy Lavigne (née Loshaw), recognized their child's vocal abilities when she was two years old and sang Jesus Loves Me on the way home from church. Lavigne has an older brother, Matthew, and a younger sister, Michelle, both of whom teased her when she sang. My brother used to knock on the wall because I used to sing myself to sleep and he thought it was really annoying. In school, she was sometimes kicked out of class for misbehaving, her parents supported her singing. Her father bought her a microphone, a drum kit, a keyboard, and several guitars, and converted their basement into a studio; following his own love for music Jean-Claude led the family to church at Third Day Worship Center in Kingston, Ontario, where he often played bass. When Lavigne was 14 years old, her parents took her to karaoke sessions.34 Lavigne also performed at country fairs, singing songs by Garth Brooks, the Dixie Chicks, and Shania Twain. She also began writing her own songs. Her first song was called Cant Stop Thinking About You, about a teenage crush, which she described as cheesy cute - From Wikipedia")

artist13 = Artist.create(name: "Clean Bandit", description: "Clean Bandit are an English electronic music band formed in Cambridge in 2008. The band consists of Grace Chatto, and brothers Jack and Luke Patterson. Their 2011 single Mozarts House reached number 17 on the UK Singles Chart when re-released in 2013. In January 2014, they scored their first UK chart topping single with Rather Be, a collaboration with Jess Glynne, featuring elements of both classical and dance music. They also reached number 10 on the US Billboard Hot 100. In 2015, Rather Be won the Grammy Award for Best Dance Recording. Their 2016 single Rockabye, which features rapper Sean Paul and singer Anne-Marie, became their second number-one hit in the UK, becoming the Christmas number one single for 2016 in its seventh consecutive week at number one. The song became an international chart topper for the band, and also charted at number 9 in the US. Clean Bandit have sold over 13 million singles and 1.6 million albums worldwide - From Wikipedia")

artist14 = Artist.create(name: "Britney Spears", description: "Britney Jean Spears (born December 2, 1981) is an American singer, dancer, and actress. Born in McComb, Mississippi, and raised in Kentwood, Louisiana, she performed acting roles in stage productions and television shows as a child before signing with Jive Records in 1997. Spears's first and second studio albums, ...Baby One More Time (1999) and Oops!... I Did It Again (2000), became massive international successes, with the former becoming the best-selling album by a teenage solo artist.2 Title tracks ...Baby One More Time and Oops!... I Did It Again broke international sales records. In 2001, Spears released her self-titled third studio album, Britney, which spawned international hit single I'm a Slave 4 U and played the starring role in the film Crossroads (2002). She assumed creative control of her fourth studio album, In the Zone (2003), which yielded the worldwide success of the single Toxic which earned Spears for her first and only Grammy award. - From Wikipedia")

artist15 = Artist.create(name: "Camila Cabello", description: "Karla Camila Cabello-Estrabao is a Cuban/Mexican singer-songwriter was born on March 3, 1997 in Havana, Cuba. In 2012, she auditioned for the X-Factor and joined a girl group where she was known as the lead singer of Fifth Harmony. Cabello and her band-mates released one EP and two studio albums. Her departure from the group was announced in December 18th 2016. As a lead artist, Cabello released two hit singles with Shawn Mendes 'I Know What You Did Last Summer' and Machine Gun Kelly's 'Bad Things'. In 2017, Cabello prepared for the release of her debut solo album. Camila scored features with artists such as Cashmere Cat's 'Love Incredible' and Pitbull and J Balvin's 'Hey Ma' scoring the artists and Camila herself a Grammy nomination. Whilst Cabello receives these achievements she scores herself a Guess deal to become an official Guess girl and to be the face of their 2017 Fall campaign. Cabello was welcomed to join the Bruno Mars 24K Magic World Tour as an Opening act, she performed a total of 20 shows. - From IMDB")

artist16 = Artist.create(name: "Lady Gaga", description: "Lady Gaga, born Stefani Joanne Angelina Germanotta, is an American songwriter, singer, actress, philanthropist, dancer and fashion designer. Gaga was born on March 28, 1986 in Manhattan, New York City, to Cynthia Louise (Bissett) and Joseph Anthony Germanotta, Jr., an internet entrepreneur. Her father is of Italian descent, and her mother is of half Italian and half French-Canadian, English, German, and Scottish ancestry. Gaga was able to sing and play the piano from a young age. She attended the Convent of the Sacred Heart from age 11 where was bullied for her appearance (she was small and plumper than other girls with large front teeth) and eccentric habits. By the age of 14, Gaga was performing at open mike nights in clubs and bars. By age 17, she had gained early admission to New York University's Tisch School of the Arts. In addition to sharpening her songwriting skills, she composed essays and analytical papers on art, religion, social issues and politics. At the age of 19 Gaga withdrew from her studies and moved out of her parents' home in order to pursue a musical career. During this time she started a band which began to gain local attention. - From IMDB")

artist17 = Artist.create(name: "A-Ha", description: "Norwegian pop group formed in 1985 comprised of: Morten Harket, lead singer and song writer; Magne Furuholmen ((Mags), keyboards, piano, vocals and song writer, and Paul Waaktaar-Savoy (Pål Waaktaar), guitars, vocals and song writer. Achieved a major breakthrough in 1985 with the hit Take On Me. Has since then had following hits with The Sun Always Shines On TV, Hunting High and Low, Manhattan Skyline, I've Been Losing You, The Living Daylights, Stay on These Roads, Crying in the Rain, Summer Moved On, Forever Not Yours, and recently Analogue - All I Want to name a few. Has sold over 70 millions records worldwide. Made the theme song for the 1987 James Bond movie The Living Daylights (1987). Made a comeback in the year 2000 after a seven year split with the album Minor Earth Major Sky. - From IMDB")

artist18 = Artist.create(name: "Skillet", description: "Skillet is an American Christian rock band formed in Memphis, Tennessee in 1996. The band currently consists of husband John (lead vocals, bass) and wife Korey Cooper (rhythm guitar, keyboards, backing vocals) along with Jen Ledger (drums, vocals) and Seth Morrison (lead guitar). The band has released ten albums, two receiving Grammy nominations: Collide and Comatose. Two of their albums, Comatose and Awake, are certified Platinum and Double Platinum respectively by the RIAA while Rise, is certified Gold as of November 10, 2017. Skillet went through several line-up changes early in their career, leaving founder John Cooper as the only original member remaining in the band. They are known for a relentless touring schedule, which garnered them a top five ranking in the Hardest Working Bands of 2010 by Songkick.com. - From Wikipedia")

artist19 = Artist.create(name: "Wham!", description: "Michael and Ridgeley met at Bushey Meads School in Bushey near the town of Watford in Hertfordshire. The two at first performed in a short-lived ska band called the Executive, alongside former school friends David (Austin) Mortimer, Andrew Leaver and Paul Ridgeley. When this group split, Michael and Ridgeley eventually formed Wham!, signing with Innervision Records. British graphic design studio Stylorouge was credited with adding the exclamation point to the name of the band. Michael took on the majority of roles and responsibilities within the band—composer, producer, lead singer, and occasional instrumentalist. Still teenagers, they promoted themselves as hedonistic youngsters, proud to live a carefree life without work or commitment. This was reflected in their earliest singles which, part-parody, part-social comment, briefly earned Wham! a reputation as a dance protest group. - From IMDB")

artist20 = Artist.create(name: "Linkin Park", description: "Linkin Park is an American rock band from Agoura Hills, California. Formed in 1996, the band rose to international fame with their debut album Hybrid Theory (2000), which was certified Diamond by the RIAA in 2005 and multi-Platinum in several other countries. Their following studio album Meteora continued the band's success, topping the Billboard 200 album chart in 2003, and was followed by extensive touring and charity work.Having adapted nu metal and rap metal to a radio-friendly yet densely layered style in Hybrid Theory and Meteora, the band explored other genres on their next studio album, Minutes to Midnight (2007). The album topped the Billboard charts and had the third-best debut week of any album that year. The band continued to explore a wider variation of musical types in their fourth album, A Thousand Suns (2010), layering their music with more electronic sounds. Their fifth album, Living Things (2012), combines musical elements from all of their previous records. Their sixth album, The Hunting Party (2014), returned to a heavier rock sound. Their seventh album One More Light, a more electronic and pop-oriented record, was released on May 19, 2017. - From Wikipedia")

artist21 = Artist.create(name: "Taylor Swift", description: "Born and raised in Pennsylvania, Swift moved to Nashville, Tennessee at the age of 14 to pursue a career in country music. She signed with the label Big Machine Records and became the youngest artist ever signed by the Sony/ATV Music publishing house. Her 2006 self-titled debut album peaked at number five on the Billboard 200 and spent the most weeks on the chart in the 2000s. The album's third single, Our Song, made her the youngest person to single-handedly write and perform a number-one song on the Hot Country Songs chart. Swift's second album, Fearless, was released in 2008. Buoyed by the success of pop crossover singles Love Story and You Belong with Me, Fearless became the best-selling album of 2009 in the United States. The album won four Grammy Awards, with Swift becoming the youngest Album of the Year winner. - From Wikipedia")

artist22 = Artist.create(name: "Rihanna", description: "Robyn Rihanna Fenty was born in a parish in Barbados called St. Michael, to Monica (Braithwaite), an accountant, and Ronald Fenty, a warehouse supervisor. Her mother is Afro-Guyanese and her father is of Afro-Barbadian and British Isles ancestry (known as Redlegs in the Caribbean). Rihanna lived the life of a normal island girl going to Combermere, a top sixth form school. Rihanna won numerous beauty pageants and performed Mariah Carey's single Hero in a school talent show. Her life changed forever when one of her friends introduced her to Evan Rodgers, a producer from New York who was in Barbados for a vacation with his wife, who is a native. Rodgers arranged for her to go to New York to meet Jay Z, CEO of Def Jam Records. He heard her sing and knew she was going to be incredibly successful. She was age 16 when she was signed to Def Jam. Since then, she's amassed phenomenal success. - From IMDB")

artist23 = Artist.create(name: "Selena Gomez", description: "Selena Marie Gomez was born in Grand Prairie, Texas on July 22, 1992, to Ricardo Joel Gomez and former stage actress Amanda Dawn Mandy Cornett. Gomez was named after Tejano singer and actress Selena Quintanilla-Pérez, who died in 1995. Her father is of Mexican descent while her mother, who was adopted, has some Italian ancestry. Regarding her Hispanic heritage, Gomez has stated, My family does have Quinceañeras, and we go to the communion church. We do everything that's Catholic, but we don't really have anything traditional except [that we] go to the park and have barbecues on Sundays after church. Gomez's parents divorced when she was five years old, and she remained with her mother.[5][14] Selena has two siblings: Gracie Elliot Teefey was born to Amanda and her second husband Brian Teefey on June 12, 2013; and Victoria Tori Gomez was born to Ricardo and his wife Sara Gomez on June 25, 2014. She earned her high-school diploma through homeschooling in May 2010. - From Wikipedia")

artist24 = Artist.create(name: "Elton John", description: "Raised in the Pinner area of London, John learned to play piano at an early age, and by 1962 had formed Bluesology. John met his songwriting partner, Bernie Taupin, in 1967, after they had both answered an advert for songwriters. For two years they wrote songs for other artists, including Lulu, and John also worked as a session musician for artists such as the Hollies and the Scaffold. In 1969 his debut album, Empty Sky, was released. In 1970 a single, Your Song, from his second album, Elton John, reached the top ten in the UK and the US, his first hit single. After decades of commercial chart success, John has also achieved success in musical theatre, both in the West End and on Broadway, composing the music for The Lion King (film and musical), Aida and Billy Elliot the Musical. - From Wikipedia")

album1 = Album.create(name: "The Better Life", artist_id: artist1.id, release_yr: 2018, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/18.jpg')

album2 = Album.create(name: "Eurodance", artist_id: artist2.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/1.png')

album3 = Album.create(name: "Collage", artist_id: artist3.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/3.jpg')

album4 = Album.create(name: "Divide", artist_id: artist4.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/4.jpg')

album5 = Album.create(name: "The Colour And The Shape", artist_id: artist5.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/5.jpg')

album6 = Album.create(name: "The Love Below", artist_id: artist6.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/6.jpg')

album7 = Album.create(name: "All The Right Reasons", artist_id: artist7.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/7.jpg')

album8 = Album.create(name: "So Good", artist_id: artist8.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/8.png')

album9 = Album.create(name: "New Eyes", artist_id: artist9.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/9.jpg')

album10 = Album.create(name: "Royalty", artist_id: artist10.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/10.jpg')

album11 = Album.create(name: "BFAM", artist_id: artist11.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/11.png')

album12 = Album.create(name: "Let Go", artist_id: artist12.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/12.jpg')

album13 = Album.create(name: "So Good", artist_id: artist13.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/13.png')

album14 = Album.create(name: "In The Zone", artist_id: artist14.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/14.png')

album15 = Album.create(name: "Camila", artist_id: artist15.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/30.jpg')

album16 = Album.create(name: "The Fame Monster", artist_id: artist16.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/25.png')

album17 = Album.create(name: "High And Low", artist_id: artist17.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/20.jpg')

album18 = Album.create(name: "Comatose", artist_id: artist18.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/22.jpg')

album19 = Album.create(name: "Make It Big", artist_id: artist19.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/whm.jpg')

album20 = Album.create(name: "One More Light", artist_id: artist20.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/23.jpg')

album21 = Album.create(name: "Fearless", artist_id: artist21.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/26.png')

album22 = Album.create(name: "Loud", artist_id: artist22.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/31.jpg')

album23 = Album.create(name: "Best Of Elton", artist_id: artist24.id, release_yr: 2017, image_url: 'https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/elt.jpg')

album24 = Album.create(name: "The Fame", artist_id: artist16.id, release_yr: 2017, image_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/27.jpg")

album25 = Album.create(name: "Revival", artist_id: artist23.id, release_yr: 2016, image_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_images/19.jpg")

station1 = Station.create(name: "Selena Gomez", user_id: demo.id, image_url: album25.image_url)
station2 = Station.create(name: "Taylor Swift", user_id: demo.id, image_url: album21.image_url)
station3 = Station.create(name: "Bad Romance", user_id: demo.id, image_url: album16.image_url)
station4 = Station.create(name: "Jennifer Ledger", user_id: demo.id, image_url: album18.image_url)
station5 = Station.create(name: "Meteora", user_id: demo.id, image_url: album19.image_url)
station6 = Station.create(name: "One More Light", user_id: demo.id, image_url: album20.image_url)
station7 = Station.create(name: "Rihanna", user_id: demo.id, image_url: album22.image_url)

song1 = Song.create(name: "Kryptonite", album_id: album1.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/3doord.mp3")

song2 = Song.create(name: "Everytime We Touch", album_id: album2.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/casc.mp3")

song3 = Song.create(name: "Closer", album_id: album3.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/chnsmk.mp3")

song4 = Song.create(name: "Shape Of You", album_id: album4.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/ed.mp3")

song5 = Song.create(name: "Everlong", album_id: album5.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/evr.mp3")

song6 = Song.create(name: "Hey Ya!", album_id: album6.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/hya.mp3")

song7 = Song.create(name: "How You Remind Me", album_id: album7.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/nikl.mp3")

song8 = Song.create(name: "Never Forget You", album_id: album8.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/nvr.mp3")

song9 = Song.create(name: "Rather Be", album_id: album9.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/rthrb.mp3")

song10 = Song.create(name: "Run It!", album_id: album10.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/runnit.mp3")

song11 = Song.create(name: "Scared To Be Lonely", album_id: album11.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/scrd.mp3")

song12 = Song.create(name: "Sk8ter Boi", album_id: album12.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/sk8.mp3")

song13 = Song.create(name: "Symphony", album_id: album13.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/symph.mp3")

song14 = Song.create(name: "Toxic", album_id: album14.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/tox.mp3")

song15 = Song.create(name: "Havana", album_id: album15.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/hav.mp3")

song16 = Song.create(name: "Bad Romance", album_id: album16.id, duration: 130, song_url: "https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/badr.mp3")

song17 = Song.create(name: "Poker Face", album_id: album24.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/pkr.mp3")

song18 = Song.create(name: "Take On Me", album_id: album17.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/take.mp3")

song19 = Song.create(name: "Awake And Alive", album_id: album18.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/skill.mp3")

song20 = Song.create(name: "Wake Me Up", album_id: album19.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/gogo.mp3")

song21 = Song.create(name: "Heavy", album_id: album20.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/heavy.mp3")

song22 = Song.create(name: "Red", album_id: album21.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/rd.mp3")

song23 = Song.create(name: "Your Song", album_id: album23.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/yrsong.mp3")

song24 = Song.create(name: "Don't Stop The Music", album_id: album22.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/dntstp.mp3")

song25 = Song.create(name: "Wolves", album_id: album25.id, duration: 130, song_url: "	https://s3-us-west-1.amazonaws.com/jukebox-storage-dev/jukebox_music/wol.mp3")


StationSong.create(song_id: song1.id, station_id: station1.id)
StationSong.create(song_id: song2.id, station_id: station1.id)
StationSong.create(song_id: song3.id, station_id: station1.id)
StationSong.create(song_id: song4.id, station_id: station1.id)
StationSong.create(song_id: song5.id, station_id: station1.id)
StationSong.create(song_id: song6.id, station_id: station1.id)
StationSong.create(song_id: song7.id, station_id: station1.id)
StationSong.create(song_id: song8.id, station_id: station1.id)
StationSong.create(song_id: song9.id, station_id: station1.id)
StationSong.create(song_id: song10.id, station_id: station1.id)
StationSong.create(song_id: song11.id, station_id: station1.id)
StationSong.create(song_id: song12.id, station_id: station1.id)
StationSong.create(song_id: song13.id, station_id: station1.id)
StationSong.create(song_id: song14.id, station_id: station1.id)
StationSong.create(song_id: song15.id, station_id: station1.id)
StationSong.create(song_id: song16.id, station_id: station1.id)
StationSong.create(song_id: song17.id, station_id: station1.id)
StationSong.create(song_id: song18.id, station_id: station1.id)
StationSong.create(song_id: song19.id, station_id: station1.id)
StationSong.create(song_id: song20.id, station_id: station1.id)
StationSong.create(song_id: song21.id, station_id: station1.id)
StationSong.create(song_id: song22.id, station_id: station1.id)
StationSong.create(song_id: song23.id, station_id: station1.id)
StationSong.create(song_id: song24.id, station_id: station1.id)
StationSong.create(song_id: song25.id, station_id: station1.id)

StationSong.create(song_id: song25.id, station_id: station2.id)
StationSong.create(song_id: song24.id, station_id: station2.id)
StationSong.create(song_id: song23.id, station_id: station2.id)
StationSong.create(song_id: song22.id, station_id: station2.id)
StationSong.create(song_id: song21.id, station_id: station2.id)
StationSong.create(song_id: song20.id, station_id: station2.id)
StationSong.create(song_id: song19.id, station_id: station2.id)
StationSong.create(song_id: song18.id, station_id: station2.id)
StationSong.create(song_id: song17.id, station_id: station2.id)
StationSong.create(song_id: song16.id, station_id: station2.id)
StationSong.create(song_id: song15.id, station_id: station2.id)
StationSong.create(song_id: song14.id, station_id: station2.id)
StationSong.create(song_id: song13.id, station_id: station2.id)
StationSong.create(song_id: song12.id, station_id: station2.id)
StationSong.create(song_id: song11.id, station_id: station2.id)
StationSong.create(song_id: song10.id, station_id: station2.id)
StationSong.create(song_id: song9.id, station_id: station2.id)
StationSong.create(song_id: song8.id, station_id: station2.id)
StationSong.create(song_id: song7.id, station_id: station2.id)
StationSong.create(song_id: song6.id, station_id: station2.id)
StationSong.create(song_id: song5.id, station_id: station2.id)
StationSong.create(song_id: song4.id, station_id: station2.id)
StationSong.create(song_id: song3.id, station_id: station2.id)
StationSong.create(song_id: song2.id, station_id: station2.id)
StationSong.create(song_id: song1.id, station_id: station2.id)

StationSong.create(song_id: song19.id, station_id: station3.id)
StationSong.create(song_id: song17.id, station_id: station3.id)
StationSong.create(song_id: song15.id, station_id: station3.id)
StationSong.create(song_id: song13.id, station_id: station3.id)
StationSong.create(song_id: song11.id, station_id: station3.id)
StationSong.create(song_id: song9.id, station_id: station3.id)
StationSong.create(song_id: song7.id, station_id: station3.id)
StationSong.create(song_id: song5.id, station_id: station3.id)
StationSong.create(song_id: song3.id, station_id: station3.id)
StationSong.create(song_id: song1.id, station_id: station3.id)
StationSong.create(song_id: song25.id, station_id: station3.id)
StationSong.create(song_id: song23.id, station_id: station3.id)
StationSong.create(song_id: song21.id, station_id: station3.id)
StationSong.create(song_id: song2.id, station_id: station3.id)
StationSong.create(song_id: song4.id, station_id: station3.id)
StationSong.create(song_id: song6.id, station_id: station3.id)
StationSong.create(song_id: song8.id, station_id: station3.id)
StationSong.create(song_id: song10.id, station_id: station3.id)
StationSong.create(song_id: song12.id, station_id: station3.id)
StationSong.create(song_id: song14.id, station_id: station3.id)
StationSong.create(song_id: song16.id, station_id: station3.id)
StationSong.create(song_id: song18.id, station_id: station3.id)
StationSong.create(song_id: song20.id, station_id: station3.id)
StationSong.create(song_id: song22.id, station_id: station3.id)
StationSong.create(song_id: song24.id, station_id: station3.id)

StationSong.create(song_id: song20.id, station_id: station4.id)
StationSong.create(song_id: song15.id, station_id: station4.id)
StationSong.create(song_id: song10.id, station_id: station4.id)
StationSong.create(song_id: song5.id, station_id: station4.id)
StationSong.create(song_id: song1.id, station_id: station4.id)
StationSong.create(song_id: song6.id, station_id: station4.id)
StationSong.create(song_id: song11.id, station_id: station4.id)
StationSong.create(song_id: song16.id, station_id: station4.id)
StationSong.create(song_id: song21.id, station_id: station4.id)
StationSong.create(song_id: song25.id, station_id: station4.id)
StationSong.create(song_id: song24.id, station_id: station4.id)
StationSong.create(song_id: song19.id, station_id: station4.id)
StationSong.create(song_id: song14.id, station_id: station4.id)
StationSong.create(song_id: song9.id, station_id: station4.id)
StationSong.create(song_id: song4.id, station_id: station4.id)
StationSong.create(song_id: song2.id, station_id: station4.id)
StationSong.create(song_id: song7.id, station_id: station4.id)
StationSong.create(song_id: song12.id, station_id: station4.id)
StationSong.create(song_id: song17.id, station_id: station4.id)
StationSong.create(song_id: song23.id, station_id: station4.id)
StationSong.create(song_id: song22.id, station_id: station4.id)
StationSong.create(song_id: song8.id, station_id: station4.id)
StationSong.create(song_id: song3.id, station_id: station4.id)
StationSong.create(song_id: song9.id, station_id: station4.id)

StationSong.create(song_id: song19.id, station_id: station5.id)
StationSong.create(song_id: song15.id, station_id: station5.id)
StationSong.create(song_id: song10.id, station_id: station5.id)
StationSong.create(song_id: song14.id, station_id: station5.id)
StationSong.create(song_id: song7.id, station_id: station5.id)
StationSong.create(song_id: song13.id, station_id: station5.id)
StationSong.create(song_id: song12.id, station_id: station5.id)
StationSong.create(song_id: song9.id, station_id: station5.id)
StationSong.create(song_id: song25.id, station_id: station5.id)
StationSong.create(song_id: song8.id, station_id: station5.id)
StationSong.create(song_id: song23.id, station_id: station5.id)
StationSong.create(song_id: song20.id, station_id: station5.id)
StationSong.create(song_id: song18.id, station_id: station5.id)
StationSong.create(song_id: song16.id, station_id: station5.id)
StationSong.create(song_id: song11.id, station_id: station5.id)
StationSong.create(song_id: song24.id, station_id: station5.id)
StationSong.create(song_id: song22.id, station_id: station5.id)
StationSong.create(song_id: song17.id, station_id: station5.id)
StationSong.create(song_id: song21.id, station_id: station5.id)
StationSong.create(song_id: song2.id, station_id: station5.id)

StationSong.create(song_id: song6.id, station_id: station6.id)
StationSong.create(song_id: song9.id, station_id: station6.id)
StationSong.create(song_id: song10.id, station_id: station6.id)
StationSong.create(song_id: song11.id, station_id: station6.id)
StationSong.create(song_id: song12.id, station_id: station6.id)
StationSong.create(song_id: song13.id, station_id: station6.id)
StationSong.create(song_id: song22.id, station_id: station6.id)
StationSong.create(song_id: song23.id, station_id: station6.id)
StationSong.create(song_id: song25.id, station_id: station6.id)
StationSong.create(song_id: song21.id, station_id: station6.id)
StationSong.create(song_id: song20.id, station_id: station6.id)
StationSong.create(song_id: song19.id, station_id: station6.id)
StationSong.create(song_id: song18.id, station_id: station6.id)
StationSong.create(song_id: song17.id, station_id: station6.id)
StationSong.create(song_id: song16.id, station_id: station6.id)
StationSong.create(song_id: song15.id, station_id: station6.id)
StationSong.create(song_id: song14.id, station_id: station6.id)
StationSong.create(song_id: song8.id, station_id: station6.id)
StationSong.create(song_id: song7.id, station_id: station6.id)
StationSong.create(song_id: song3.id, station_id: station6.id)
StationSong.create(song_id: song5.id, station_id: station6.id)
StationSong.create(song_id: song4.id, station_id: station6.id)
StationSong.create(song_id: song2.id, station_id: station6.id)
StationSong.create(song_id: song1.id, station_id: station6.id)

StationSong.create(song_id: song1.id, station_id: station7.id)
StationSong.create(song_id: song2.id, station_id: station7.id)
StationSong.create(song_id: song3.id, station_id: station7.id)
StationSong.create(song_id: song4.id, station_id: station7.id)
StationSong.create(song_id: song5.id, station_id: station7.id)
StationSong.create(song_id: song6.id, station_id: station7.id)
StationSong.create(song_id: song7.id, station_id: station7.id)
StationSong.create(song_id: song8.id, station_id: station7.id)
StationSong.create(song_id: song9.id, station_id: station7.id)
StationSong.create(song_id: song10.id, station_id: station7.id)
StationSong.create(song_id: song11.id, station_id: station7.id)
StationSong.create(song_id: song12.id, station_id: station7.id)
StationSong.create(song_id: song13.id, station_id: station7.id)
StationSong.create(song_id: song14.id, station_id: station7.id)
StationSong.create(song_id: song15.id, station_id: station7.id)
StationSong.create(song_id: song16.id, station_id: station7.id)
StationSong.create(song_id: song17.id, station_id: station7.id)
StationSong.create(song_id: song18.id, station_id: station7.id)
StationSong.create(song_id: song19.id, station_id: station7.id)
StationSong.create(song_id: song20.id, station_id: station7.id)
StationSong.create(song_id: song21.id, station_id: station7.id)
StationSong.create(song_id: song22.id, station_id: station7.id)
StationSong.create(song_id: song23.id, station_id: station7.id)
StationSong.create(song_id: song24.id, station_id: station7.id)
StationSong.create(song_id: song25.id, station_id: station7.id)
