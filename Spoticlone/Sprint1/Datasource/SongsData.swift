//
//  SongsData.swift
//  Sprint1
//
//  Created by Ismael Sabri Pérez on 3/2/25.
//

import Foundation

struct SongsData {
    static func getSongsData() -> Data {
        return
"""
{
  "songs": [
    {
      "id": "1",
      "basicInfo": {
        "title": "Blinding Lights",
        "artist": "The Weeknd",
        "duration_ms": 200000,
        "genre": "Pop",
        "album": "After Hours",
        "releaseDate": "2019-11-29",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 171,
        "key": "F#",
        "isrc": "USUM71920298"
      },
      "metadata": {
        "tags": ["80s", "synthwave", "dance"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "2",
      "basicInfo": {
        "title": "Levitating",
        "artist": "Dua Lipa",
        "duration_ms": 203000,
        "genre": "Pop",
        "album": "Future Nostalgia",
        "releaseDate": "2020-03-27",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 103,
        "key": "A",
        "isrc": "GBUM72001564"
      },
      "metadata": {
        "tags": ["disco", "dance", "summer"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "3",
      "basicInfo": {
        "title": "Peaches",
        "artist": "Justin Bieber",
        "duration_ms": 198000,
        "genre": "R&B",
        "album": "Justice",
        "releaseDate": "2021-03-19",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 90,
        "key": "A",
        "isrc": "USUM72103145"
      },
      "metadata": {
        "tags": ["summer", "chill", "pop"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "4",
      "basicInfo": {
        "title": "Good 4 U",
        "artist": "Olivia Rodrigo",
        "duration_ms": 194000,
        "genre": "Pop-Rock",
        "album": "SOUR",
        "releaseDate": "2021-05-14",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 170,
        "key": "D",
        "isrc": "USHR12100112"
      },
      "metadata": {
        "tags": ["angry", "rock", "breakup"],
        "language": "en",
        "popularity": 92
      }
    },
    {
      "id": "5",
      "basicInfo": {
        "title": "Industry Baby",
        "artist": "Lil Nas X",
        "duration_ms": 227000,
        "genre": "Hip-Hop",
        "album": "MONTERO",
        "releaseDate": "2021-07-23",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 90,
        "key": "C",
        "isrc": "USUM72108570"
      },
      "metadata": {
        "tags": ["pride", "anthem", "confidence"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "6",
      "basicInfo": {
        "title": "Stay",
        "artist": "The Kid LAROI & Justin Bieber",
        "duration_ms": 177000,
        "genre": "Pop",
        "album": "F*CK LOVE",
        "releaseDate": "2021-07-09",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 110,
        "key": "B",
        "isrc": "USUM72109563"
      },
      "metadata": {
        "tags": ["love", "heartbreak", "acoustic"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "7",
      "basicInfo": {
        "title": "Kiss Me More",
        "artist": "Doja Cat ft. SZA",
        "duration_ms": 215000,
        "genre": "R&B",
        "album": "Planet Her",
        "releaseDate": "2021-04-09",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 111,
        "key": "E",
        "isrc": "USUM72103500"
      },
      "metadata": {
        "tags": ["summer", "flirty", "fun"],
        "language": "en",
        "popularity": 89
      }
    },
    {
      "id": "8",
      "basicInfo": {
        "title": "Montero (Call Me By Your Name)",
        "artist": "Lil Nas X",
        "duration_ms": 141000,
        "genre": "Pop",
        "album": "MONTERO",
        "releaseDate": "2021-03-26",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 120,
        "key": "A",
        "isrc": "USUM72104633"
      },
      "metadata": {
        "tags": ["confident", "dance", "pride"],
        "language": "en",
        "popularity": 91
      }
    },
    {
      "id": "9",
      "basicInfo": {
        "title": "Heat Waves",
        "artist": "Glass Animals",
        "duration_ms": 188000,
        "genre": "Indie",
        "album": "Dreamland",
        "releaseDate": "2020-08-7",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 151,
        "key": "B",
        "isrc": "GBUM72004154"
      },
      "metadata": {
        "tags": ["chill", "summer", "nostalgia"],
        "language": "en",
        "popularity": 87
      }
    },
    {
      "id": "10",
      "basicInfo": {
        "title": "Deja Vu",
        "artist": "Olivia Rodrigo",
        "duration_ms": 202000,
        "genre": "Pop",
        "album": "SOUR",
        "releaseDate": "2021-04-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 85,
        "key": "C",
        "isrc": "USHR12100111"
      },
      "metadata": {
        "tags": ["nostalgia", "love", "breakup"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "11",
      "basicInfo": {
        "title": "Shivers",
        "artist": "Ed Sheeran",
        "duration_ms": 232000,
        "genre": "Pop",
        "album": "Equals",
        "releaseDate": "2021-09-10",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 137,
        "key": "C",
        "isrc": "GBUM72109776"
      },
      "metadata": {
        "tags": ["dance", "romance", "uplifting"],
        "language": "en",
        "popularity": 93
      }
    },
    {
      "id": "12",
      "basicInfo": {
        "title": "Bad Habits",
        "artist": "Ed Sheeran",
        "duration_ms": 229000,
        "genre": "Pop",
        "album": "Equals",
        "releaseDate": "2021-06-25",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 124,
        "key": "C",
        "isrc": "GBUM72109567"
      },
      "metadata": {
        "tags": ["party", "regret", "love"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "13",
      "basicInfo": {
        "title": "Take My Breath",
        "artist": "The Weeknd",
        "duration_ms": 200000,
        "genre": "Pop",
        "album": "Dawn FM",
        "releaseDate": "2021-08-06",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 118,
        "key": "B",
        "isrc": "USUM72106040"
      },
      "metadata": {
        "tags": ["dance", "passion", "night"],
        "language": "en",
        "popularity": 89
      }
    },
    {
      "id": "14",
      "basicInfo": {
        "title": "Watermelon Sugar",
        "artist": "Harry Styles",
        "duration_ms": 174000,
        "genre": "Pop",
        "album": "Fine Line",
        "releaseDate": "2019-11-16",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 95,
        "key": "F",
        "isrc": "GBUM71905190"
      },
      "metadata": {
        "tags": ["summer", "fun", "love"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "15",
      "basicInfo": {
        "title": "Save Your Tears",
        "artist": "The Weeknd",
        "duration_ms": 215000,
        "genre": "Pop",
        "album": "After Hours",
        "releaseDate": "2020-08-05",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 118,
        "key": "F#",
        "isrc": "USUM72006936"
      },
      "metadata": {
        "tags": ["heartbreak", "nostalgia", "pop"],
        "language": "en",
        "popularity": 85
      }
    },
    {
      "id": "16",
      "basicInfo": {
        "title": "Runaway",
        "artist": "Aurora",
        "duration_ms": 227000,
        "genre": "Indie-Pop",
        "album": "The Gods We Can Touch",
        "releaseDate": "2022-01-21",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 115,
        "key": "C",
        "isrc": "NOU482100141"
      },
      "metadata": {
        "tags": ["epic", "uplifting", "nature"],
        "language": "en",
        "popularity": 83
      }
    },
    {
      "id": "17",
      "basicInfo": {
        "title": "Beautiful Mistakes",
        "artist": "Maroon 5 ft. Megan Thee Stallion",
        "duration_ms": 205000,
        "genre": "Pop",
        "album": "JORDI",
        "releaseDate": "2021-03-20",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 95,
        "key": "D",
        "isrc": "USUM72104801"
      },
      "metadata": {
        "tags": ["love", "relationship", "happy"],
        "language": "en",
        "popularity": 84
      }
    },
    {
      "id": "18",
      "basicInfo": {
        "title": "Rocket Man",
        "artist": "Elton John",
        "duration_ms": 324000,
        "genre": "Rock",
        "album": "Honky Château",
        "releaseDate": "1972-04-14",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 87,
        "key": "B",
        "isrc": "GBAYE7200454"
      },
      "metadata": {
        "tags": ["classic", "rock", "nostalgia"],
        "language": "en",
        "popularity": 86
      }
    },
    {
      "id": "19",
      "basicInfo": {
        "title": "Shape of You",
        "artist": "Ed Sheeran",
        "duration_ms": 233000,
        "genre": "Pop",
        "album": "Divide",
        "releaseDate": "2017-01-06",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 96,
        "key": "C#",
        "isrc": "GBUM71702363"
      },
      "metadata": {
        "tags": ["dance", "love", "happy"],
        "language": "en",
        "popularity": 97
      }
    },
    {
      "id": "20",
      "basicInfo": {
        "title": "All of Me",
        "artist": "John Legend",
        "duration_ms": 268000,
        "genre": "R&B",
        "album": "Love in the Future",
        "releaseDate": "2013-08-12",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 63,
        "key": "A",
        "isrc": "USUM71303414"
      },
      "metadata": {
        "tags": ["love", "ballad", "romantic"],
        "language": "en",
        "popularity": 89
      }
    },
    {
      "id": "21",
      "basicInfo": {
        "title": "Bad Romance",
        "artist": "Lady Gaga",
        "duration_ms": 227000,
        "genre": "Pop",
        "album": "The Fame Monster",
        "releaseDate": "2009-10-23",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 119,
        "key": "D#",
        "isrc": "USUM70926774"
      },
      "metadata": {
        "tags": ["power", "dance", "iconic"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "22",
      "basicInfo": {
        "title": "Shallow",
        "artist": "Lady Gaga & Bradley Cooper",
        "duration_ms": 216000,
        "genre": "Soundtrack",
        "album": "A Star Is Born",
        "releaseDate": "2018-09-27",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 96,
        "key": "A",
        "isrc": "USUM71813107"
      },
      "metadata": {
        "tags": ["emotion", "duet", "love"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "23",
      "basicInfo": {
        "title": "Dancing On My Own",
        "artist": "Robyn",
        "duration_ms": 253000,
        "genre": "Dance-Pop",
        "album": "Body Talk",
        "releaseDate": "2010-06-14",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 117,
        "key": "B",
        "isrc": "SEUM81002606"
      },
      "metadata": {
        "tags": ["breakup", "dance", "sad"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "24",
      "basicInfo": {
        "title": "Someone You Loved",
        "artist": "Lewis Capaldi",
        "duration_ms": 182000,
        "genre": "Pop",
        "album": "Divinely Uninspired to a Hellish Extent",
        "releaseDate": "2018-11-08",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 110,
        "key": "A",
        "isrc": "GBUM71804209"
      },
      "metadata": {
        "tags": ["sad", "love", "ballad"],
        "language": "en",
        "popularity": 91
      }
    },
    {
      "id": "25",
      "basicInfo": {
        "title": "Before You Go",
        "artist": "Lewis Capaldi",
        "duration_ms": 236000,
        "genre": "Pop",
        "album": "Divinely Uninspired to a Hellish Extent",
        "releaseDate": "2019-11-22",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 85,
        "key": "D",
        "isrc": "GBUM71902486"
      },
      "metadata": {
        "tags": ["heartbreak", "emotion", "sad"],
        "language": "en",
        "popularity": 89
      }
    },
    {
      "id": "26",
      "basicInfo": {
        "title": "Firework",
        "artist": "Katy Perry",
        "duration_ms": 229000,
        "genre": "Pop",
        "album": "Teenage Dream",
        "releaseDate": "2010-10-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 124,
        "key": "A#",
        "isrc": "USCA21023681"
      },
      "metadata": {
        "tags": ["empowerment", "uplifting", "inspiration"],
        "language": "en",
        "popularity": 92
      }
    },
    {
      "id": "27",
      "basicInfo": {
        "title": "Teenage Dream",
        "artist": "Katy Perry",
        "duration_ms": 221000,
        "genre": "Pop",
        "album": "Teenage Dream",
        "releaseDate": "2010-07-23",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 120,
        "key": "B",
        "isrc": "USCA21022449"
      },
      "metadata": {
        "tags": ["love", "happy", "nostalgia"],
        "language": "en",
        "popularity": 91
      }
    },
    {
      "id": "28",
      "basicInfo": {
        "title": "Call Me Maybe",
        "artist": "Carly Rae Jepsen",
        "duration_ms": 198000,
        "genre": "Pop",
        "album": "Kiss",
        "releaseDate": "2011-09-20",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 120,
        "key": "C",
        "isrc": "USCA21112793"
      },
      "metadata": {
        "tags": ["fun", "flirty", "catchy"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "29",
      "basicInfo": {
        "title": "I Really Like You",
        "artist": "Carly Rae Jepsen",
        "duration_ms": 196000,
        "genre": "Pop",
        "album": "Emotion",
        "releaseDate": "2015-03-02",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 120,
        "key": "C",
        "isrc": "USCA21511311"
      },
      "metadata": {
        "tags": ["flirty", "happy", "pop"],
        "language": "en",
        "popularity": 91
      }
    },
    {
      "id": "30",
      "basicInfo": {
        "title": "Rolling in the Deep",
        "artist": "Adele",
        "duration_ms": 228000,
        "genre": "Soul",
        "album": "21",
        "releaseDate": "2010-11-29",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 105,
        "key": "C",
        "isrc": "GBBKS1000136"
      },
      "metadata": {
        "tags": ["powerful", "emotional", "breakup"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "31",
      "basicInfo": {
        "title": "Someone Like You",
        "artist": "Adele",
        "duration_ms": 285000,
        "genre": "Soul",
        "album": "21",
        "releaseDate": "2011-01-24",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 68,
        "key": "A",
        "isrc": "GBBKS1100165"
      },
      "metadata": {
        "tags": ["sad", "breakup", "powerful"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "32",
      "basicInfo": {
        "title": "All About That Bass",
        "artist": "Meghan Trainor",
        "duration_ms": 198000,
        "genre": "Pop",
        "album": "Title",
        "releaseDate": "2014-06-30",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 134,
        "key": "C",
        "isrc": "USUM71402026"
      },
      "metadata": {
        "tags": ["body positivity", "fun", "happy"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "33",
      "basicInfo": {
        "title": "Like I'm Gonna Lose You",
        "artist": "Meghan Trainor ft. John Legend",
        "duration_ms": 232000,
        "genre": "Pop",
        "album": "Title",
        "releaseDate": "2015-06-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 72,
        "key": "A",
        "isrc": "USUM71405554"
      },
      "metadata": {
        "tags": ["love", "duet", "romance"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "34",
      "basicInfo": {
        "title": "Perfect",
        "artist": "Ed Sheeran",
        "duration_ms": 263000,
        "genre": "Pop",
        "album": "Divide",
        "releaseDate": "2017-09-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 63,
        "key": "A",
        "isrc": "GBUM71705901"
      },
      "metadata": {
        "tags": ["romantic", "wedding", "love"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "35",
      "basicInfo": {
        "title": "Castle on the Hill",
        "artist": "Ed Sheeran",
        "duration_ms": 262000,
        "genre": "Pop",
        "album": "Divide",
        "releaseDate": "2017-01-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 135,
        "key": "B",
        "isrc": "GBUM71701405"
      },
      "metadata": {
        "tags": ["nostalgia", "upbeat", "memories"],
        "language": "en",
        "popularity": 91
      }
    },
    {
      "id": "36",
      "basicInfo": {
        "title": "Bad Guy",
        "artist": "Billie Eilish",
        "duration_ms": 194000,
        "genre": "Electropop",
        "album": "When We All Fall Asleep, Where Do We Go?",
        "releaseDate": "2019-03-29",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 135,
        "key": "G#",
        "isrc": "USUM71902675"
      },
      "metadata": {
        "tags": ["quirky", "confidence", "fun"],
        "language": "en",
        "popularity": 97
      }
    },
    {
      "id": "37",
      "basicInfo": {
        "title": "Bad Liar",
        "artist": "Imagine Dragons",
        "duration_ms": 191000,
        "genre": "Pop-Rock",
        "album": "Evolve",
        "releaseDate": "2017-06-23",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 80,
        "key": "A#",
        "isrc": "USUM71703133"
      },
      "metadata": {
        "tags": ["emotional", "storytelling", "indie"],
        "language": "en",
        "popularity": 85
      }
    },
    {
      "id": "38",
      "basicInfo": {
        "title": "Believer",
        "artist": "Imagine Dragons",
        "duration_ms": 204000,
        "genre": "Pop-Rock",
        "album": "Evolve",
        "releaseDate": "2017-02-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 125,
        "key": "D",
        "isrc": "USUM71703671"
      },
      "metadata": {
        "tags": ["motivational", "uplifting", "anthem"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "39",
      "basicInfo": {
        "title": "Radioactive",
        "artist": "Imagine Dragons",
        "duration_ms": 215000,
        "genre": "Rock",
        "album": "Night Visions",
        "releaseDate": "2012-09-04",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 136,
        "key": "B",
        "isrc": "USUM31203204"
      },
      "metadata": {
        "tags": ["powerful", "anthem", "breakthrough"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "40",
      "basicInfo": {
        "title": "Adore You",
        "artist": "Harry Styles",
        "duration_ms": 215000,
        "genre": "Pop",
        "album": "Fine Line",
        "releaseDate": "2019-12-06",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 95,
        "key": "D",
        "isrc": "GBUM71908310"
      },
      "metadata": {
        "tags": ["romantic", "love", "soulful"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "41",
      "basicInfo": {
        "title": "Sign of the Times",
        "artist": "Harry Styles",
        "duration_ms": 343000,
        "genre": "Pop-Rock",
        "album": "Harry Styles",
        "releaseDate": "2017-04-07",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 63,
        "key": "F#",
        "isrc": "GBUM71700740"
      },
      "metadata": {
        "tags": ["epic", "dramatic", "rock"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "42",
      "basicInfo": {
        "title": "Stay With Me",
        "artist": "Sam Smith",
        "duration_ms": 204000,
        "genre": "Soul",
        "album": "In the Lonely Hour",
        "releaseDate": "2014-04-14",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 84,
        "key": "A",
        "isrc": "GBUM71402309"
      },
      "metadata": {
        "tags": ["soulful", "love", "powerful"],
        "language": "en",
        "popularity": 92
      }
    },
    {
      "id": "43",
      "basicInfo": {
        "title": "Too Good at Goodbyes",
        "artist": "Sam Smith",
        "duration_ms": 245000,
        "genre": "Soul",
        "album": "The Thrill of It All",
        "releaseDate": "2017-09-08",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 90,
        "key": "F",
        "isrc": "GBUM71702128"
      },
      "metadata": {
        "tags": ["breakup", "emotional", "powerful"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "44",
      "basicInfo": {
        "title": "I Will Always Love You",
        "artist": "Whitney Houston",
        "duration_ms": 285000,
        "genre": "R&B",
        "album": "The Bodyguard",
        "releaseDate": "1992-11-03",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 66,
        "key": "A",
        "isrc": "USAR19200812"
      },
      "metadata": {
        "tags": ["classic", "romantic", "powerful"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "45",
      "basicInfo": {
        "title": "My Heart Will Go On",
        "artist": "Celine Dion",
        "duration_ms": 276000,
        "genre": "Soundtrack",
        "album": "Let's Talk About Love",
        "releaseDate": "1997-11-03",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 70,
        "key": "E",
        "isrc": "CAX299700153"
      },
      "metadata": {
        "tags": ["romantic", "epic", "nostalgia"],
        "language": "en",
        "popularity": 97
      }
    },
    {
      "id": "46",
      "basicInfo": {
        "title": "Rolling Stones",
        "artist": "The Rolling Stones",
        "duration_ms": 210000,
        "genre": "Rock",
        "album": "Let It Bleed",
        "releaseDate": "1969-11-28",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 112,
        "key": "A",
        "isrc": "GBAYE6900502"
      },
      "metadata": {
        "tags": ["classic", "rock", "anarchy"],
        "language": "en",
        "popularity": 85
      }
    },
    {
      "id": "47",
      "basicInfo": {
        "title": "Angie",
        "artist": "The Rolling Stones",
        "duration_ms": 200000,
        "genre": "Rock",
        "album": "Goats Head Soup",
        "releaseDate": "1973-08-31",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 72,
        "key": "B",
        "isrc": "GBAYE7300549"
      },
      "metadata": {
        "tags": ["classic", "soft rock", "nostalgia"],
        "language": "en",
        "popularity": 82
      }
    },
    {
      "id": "48",
      "basicInfo": {
        "title": "Jump",
        "artist": "Van Halen",
        "duration_ms": 279000,
        "genre": "Rock",
        "album": "1984",
        "releaseDate": "1983-12-31",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 130,
        "key": "A",
        "isrc": "USWB10002032"
      },
      "metadata": {
        "tags": ["classic", "energetic", "party"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "49",
      "basicInfo": {
        "title": "Hot for Teacher",
        "artist": "Van Halen",
        "duration_ms": 209000,
        "genre": "Rock",
        "album": "1984",
        "releaseDate": "1984-01-09",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 98,
        "key": "E",
        "isrc": "USWB10002031"
      },
      "metadata": {
        "tags": ["classic", "energetic", "fun"],
        "language": "en",
        "popularity": 83
      }
    },
    {
      "id": "50",
      "basicInfo": {
        "title": "Hurt",
        "artist": "Nine Inch Nails",
        "duration_ms": 262000,
        "genre": "Industrial Rock",
        "album": "The Downward Spiral",
        "releaseDate": "1994-03-08",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 75,
        "key": "C",
        "isrc": "USUG09500005"
      },
      "metadata": {
        "tags": ["emotional", "dark", "deep"],
        "language": "en",
        "popularity": 87
      }
    },
    {
      "id": "51",
      "basicInfo": {
        "title": "Creep",
        "artist": "Radiohead",
        "duration_ms": 219000,
        "genre": "Alternative Rock",
        "album": "Pablo Honey",
        "releaseDate": "1992-09-21",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 92,
        "key": "G",
        "isrc": "GBBKS9200184"
      },
      "metadata": {
        "tags": ["emotional", "classic", "alternative"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "52",
      "basicInfo": {
        "title": "Karma Police",
        "artist": "Radiohead",
        "duration_ms": 257000,
        "genre": "Alternative Rock",
        "album": "OK Computer",
        "releaseDate": "1997-05-21",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 75,
        "key": "B",
        "isrc": "GBBKS9700247"
      },
      "metadata": {
        "tags": ["melancholic", "reflective", "classic"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "53",
      "basicInfo": {
        "title": "Wonderwall",
        "artist": "Oasis",
        "duration_ms": 258000,
        "genre": "Britpop",
        "album": "(What's the Story) Morning Glory?",
        "releaseDate": "1995-10-30",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 87,
        "key": "F#",
        "isrc": "GBAYE9500651"
      },
      "metadata": {
        "tags": ["classic", "emotional", "love"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "54",
      "basicInfo": {
        "title": "Champagne Supernova",
        "artist": "Oasis",
        "duration_ms": 387000,
        "genre": "Britpop",
        "album": "(What's the Story) Morning Glory?",
        "releaseDate": "1995-10-30",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 70,
        "key": "D",
        "isrc": "GBAYE9500644"
      },
      "metadata": {
        "tags": ["epic", "nostalgic", "rock"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "55",
      "basicInfo": {
        "title": "Mr. Brightside",
        "artist": "The Killers",
        "duration_ms": 219000,
        "genre": "Rock",
        "album": "Hot Fuss",
        "releaseDate": "2003-06-07",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 148,
        "key": "Db",
        "isrc": "USIR10300003"
      },
      "metadata": {
        "tags": ["upbeat", "nostalgic", "anthem"],
        "language": "en",
        "popularity": 97
      }
    },
    {
      "id": "56",
      "basicInfo": {
        "title": "Somebody Told Me",
        "artist": "The Killers",
        "duration_ms": 192000,
        "genre": "Rock",
        "album": "Hot Fuss",
        "releaseDate": "2004-01-13",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 148,
        "key": "F#",
        "isrc": "USIR10300004"
      },
      "metadata": {
        "tags": ["energetic", "fun", "party"],
        "language": "en",
        "popularity": 93
      }
    },
    {
      "id": "57",
      "basicInfo": {
        "title": "Take Me Out",
        "artist": "Franz Ferdinand",
        "duration_ms": 173000,
        "genre": "Indie Rock",
        "album": "Franz Ferdinand",
        "releaseDate": "2004-01-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 104,
        "key": "D",
        "isrc": "GBBKS0400150"
      },
      "metadata": {
        "tags": ["indie", "energetic", "party"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "58",
      "basicInfo": {
        "title": "Do I Wanna Know?",
        "artist": "Arctic Monkeys",
        "duration_ms": 272000,
        "genre": "Rock",
        "album": "AM",
        "releaseDate": "2013-09-10",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 85,
        "key": "F",
        "isrc": "GBBKS1301458"
      },
      "metadata": {
        "tags": ["indie", "dark", "catchy"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "59",
      "basicInfo": {
        "title": "R U Mine?",
        "artist": "Arctic Monkeys",
        "duration_ms": 227000,
        "genre": "Rock",
        "album": "AM",
        "releaseDate": "2013-09-10",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 138,
        "key": "C",
        "isrc": "GBBKS1301465"
      },
      "metadata": {
        "tags": ["indie", "catchy", "upbeat"],
        "language": "en",
        "popularity": 88
      }
    },
    {
      "id": "60",
      "basicInfo": {
        "title": "Chasing Cars",
        "artist": "Snow Patrol",
        "duration_ms": 234000,
        "genre": "Alternative Rock",
        "album": "Eyes Open",
        "releaseDate": "2006-05-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 90,
        "key": "E",
        "isrc": "GBBKS0600072"
      },
      "metadata": {
        "tags": ["emotional", "romantic", "epic"],
        "language": "en",
        "popularity": 91
      }
    },
    {
      "id": "61",
      "basicInfo": {
        "title": "Run",
        "artist": "Snow Patrol",
        "duration_ms": 228000,
        "genre": "Alternative Rock",
        "album": "Eyes Open",
        "releaseDate": "2006-05-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 80,
        "key": "D",
        "isrc": "GBBKS0600073"
      },
      "metadata": {
        "tags": ["epic", "emotional", "powerful"],
        "language": "en",
        "popularity": 89
      }
    },
    {
      "id": "62",
      "basicInfo": {
        "title": "Take It Easy",
        "artist": "Eagles",
        "duration_ms": 239000,
        "genre": "Rock",
        "album": "Eagles",
        "releaseDate": "1972-06-17",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 126,
        "key": "A",
        "isrc": "USAM17200008"
      },
      "metadata": {
        "tags": ["classic", "soft rock", "nostalgia"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "63",
      "basicInfo": {
        "title": "Hotel California",
        "artist": "Eagles",
        "duration_ms": 391000,
        "genre": "Rock",
        "album": "Hotel California",
        "releaseDate": "1976-12-08",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 75,
        "key": "B",
        "isrc": "USAM17200001"
      },
      "metadata": {
        "tags": ["classic", "epic", "nostalgia"],
        "language": "en",
        "popularity": 97
      }
    },
    {
      "id": "64",
      "basicInfo": {
        "title": "Don't Stop Believin'",
        "artist": "Journey",
        "duration_ms": 252000,
        "genre": "Rock",
        "album": "Escape",
        "releaseDate": "1981-01-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 118,
        "key": "E",
        "isrc": "USPC18110002"
      },
      "metadata": {
        "tags": ["classic", "anthem", "uplifting"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "65",
      "basicInfo": {
        "title": "Livin' on a Prayer",
        "artist": "Bon Jovi",
        "duration_ms": 289000,
        "genre": "Rock",
        "album": "Slippery When Wet",
        "releaseDate": "1986-08-18",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 123,
        "key": "F",
        "isrc": "USPR28600002"
      },
      "metadata": {
        "tags": ["anthem", "uplifting", "classic"],
        "language": "en",
        "popularity": 97
      }
    },
    {
      "id": "66",
      "basicInfo": {
        "title": "You Give Love a Bad Name",
        "artist": "Bon Jovi",
        "duration_ms": 360000,
        "genre": "Rock",
        "album": "Slippery When Wet",
        "releaseDate": "1986-07-21",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 123,
        "key": "F",
        "isrc": "USPR28600003"
      },
      "metadata": {
        "tags": ["power ballad", "classic", "rock"],
        "language": "en",
        "popularity": 92
      }
    },
    {
      "id": "67",
      "basicInfo": {
        "title": "Sweet Child o' Mine",
        "artist": "Guns N' Roses",
        "duration_ms": 356000,
        "genre": "Rock",
        "album": "Appetite for Destruction",
        "releaseDate": "1987-07-21",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 125,
        "key": "D",
        "isrc": "USGE28700012"
      },
      "metadata": {
        "tags": ["classic", "heartfelt", "rock"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "68",
      "basicInfo": {
        "title": "Welcome to the Jungle",
        "artist": "Guns N' Roses",
        "duration_ms": 270000,
        "genre": "Rock",
        "album": "Appetite for Destruction",
        "releaseDate": "1987-07-21",
        "isExplicit": true
      },
      "technicalInfo": {
        "bpm": 123,
        "key": "E",
        "isrc": "USGE28700011"
      },
      "metadata": {
        "tags": ["aggressive", "powerful", "classic"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "69",
      "basicInfo": {
        "title": "Back in Black",
        "artist": "AC/DC",
        "duration_ms": 255000,
        "genre": "Rock",
        "album": "Back in Black",
        "releaseDate": "1980-07-25",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 94,
        "key": "E",
        "isrc": "AUS320700095"
      },
      "metadata": {
        "tags": ["classic", "hard rock", "party"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "70",
      "basicInfo": {
        "title": "Highway to Hell",
        "artist": "AC/DC",
        "duration_ms": 208000,
        "genre": "Rock",
        "album": "Highway to Hell",
        "releaseDate": "1979-07-27",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 116,
        "key": "A",
        "isrc": "AUS320700056"
      },
      "metadata": {
        "tags": ["classic", "hard rock", "party"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "71",
      "basicInfo": {
        "title": "Hotel California (Live)",
        "artist": "Eagles",
        "duration_ms": 392000,
        "genre": "Rock",
        "album": "Eagles: Live",
        "releaseDate": "1994-07-04",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 75,
        "key": "B",
        "isrc": "USAM17200383"
      },
      "metadata": {
        "tags": ["live", "classic", "epic"],
        "language": "en",
        "popularity": 99
      }
    },
    {
      "id": "72",
      "basicInfo": {
        "title": "Dreams",
        "artist": "Fleetwood Mac",
        "duration_ms": 243000,
        "genre": "Rock",
        "album": "Rumours",
        "releaseDate": "1977-02-04",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 120,
        "key": "F",
        "isrc": "USCA27700012"
      },
      "metadata": {
        "tags": ["classic", "soft rock", "nostalgic"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "73",
      "basicInfo": {
        "title": "Go Your Own Way",
        "artist": "Fleetwood Mac",
        "duration_ms": 230000,
        "genre": "Rock",
        "album": "Rumours",
        "releaseDate": "1976-02-04",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 137,
        "key": "A",
        "isrc": "USCA27700018"
      },
      "metadata": {
        "tags": ["classic", "soft rock", "love"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "74",
      "basicInfo": {
        "title": "Take It Easy",
        "artist": "Eagles",
        "duration_ms": 239000,
        "genre": "Rock",
        "album": "Eagles",
        "releaseDate": "1972-06-17",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 126,
        "key": "A",
        "isrc": "USAM17200008"
      },
      "metadata": {
        "tags": ["classic", "soft rock", "nostalgia"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "75",
      "basicInfo": {
        "title": "Under Pressure",
        "artist": "Queen & David Bowie",
        "duration_ms": 246000,
        "genre": "Rock",
        "album": "Hot Space",
        "releaseDate": "1981-10-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 114,
        "key": "B",
        "isrc": "GBBKS8100272"
      },
      "metadata": {
        "tags": ["classic", "collaboration", "epic"],
        "language": "en",
        "popularity": 93
      }
    },
    {
      "id": "76",
      "basicInfo": {
        "title": "Bohemian Rhapsody",
        "artist": "Queen",
        "duration_ms": 354000,
        "genre": "Rock",
        "album": "A Night at the Opera",
        "releaseDate": "1975-11-21",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 72,
        "key": "A#",
        "isrc": "GBBKS7500269"
      },
      "metadata": {
        "tags": ["classic", "epic", "rock opera"],
        "language": "en",
        "popularity": 99
      }
    },
    {
      "id": "77",
      "basicInfo": {
        "title": "We Will Rock You",
        "artist": "Queen",
        "duration_ms": 120000,
        "genre": "Rock",
        "album": "News of the World",
        "releaseDate": "1977-10-07",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 81,
        "key": "E",
        "isrc": "GBBKS7700250"
      },
      "metadata": {
        "tags": ["anthem", "classic", "rock"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "78",
      "basicInfo": {
        "title": "I Want to Break Free",
        "artist": "Queen",
        "duration_ms": 239000,
        "genre": "Rock",
        "album": "The Works",
        "releaseDate": "1984-04-15",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 116,
        "key": "C",
        "isrc": "GBBKS8400279"
      },
      "metadata": {
        "tags": ["freedom", "classic", "epic"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "79",
      "basicInfo": {
        "title": "Somebody to Love",
        "artist": "Queen",
        "duration_ms": 240000,
        "genre": "Rock",
        "album": "A Day at the Races",
        "releaseDate": "1976-01-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 90,
        "key": "E",
        "isrc": "GBBKS7600032"
      },
      "metadata": {
        "tags": ["love", "classic", "emotional"],
        "language": "en",
        "popularity": 92
      }
    },
    {
      "id": "80",
      "basicInfo": {
        "title": "Africa",
        "artist": "Toto",
        "duration_ms": 260000,
        "genre": "Rock",
        "album": "Toto IV",
        "releaseDate": "1982-04-08",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 92,
        "key": "B",
        "isrc": "USMRR8205002"
      },
      "metadata": {
        "tags": ["classic", "nostalgic", "rock"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "81",
      "basicInfo": {
        "title": "Hold the Line",
        "artist": "Toto",
        "duration_ms": 240000,
        "genre": "Rock",
        "album": "Toto",
        "releaseDate": "1978-10-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 91,
        "key": "F#",
        "isrc": "USMRR7800071"
      },
      "metadata": {
        "tags": ["classic", "upbeat", "rock"],
        "language": "en",
        "popularity": 92
      }
    },
    {
      "id": "82",
      "basicInfo": {
        "title": "Sultans of Swing",
        "artist": "Dire Straits",
        "duration_ms": 356000,
        "genre": "Rock",
        "album": "Dire Straits",
        "releaseDate": "1978-04-07",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 148,
        "key": "D",
        "isrc": "GBBKS7800156"
      },
      "metadata": {
        "tags": ["classic", "guitar", "rock"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "83",
      "basicInfo": {
        "title": "Money for Nothing",
        "artist": "Dire Straits",
        "duration_ms": 258000,
        "genre": "Rock",
        "album": "Brothers in Arms",
        "releaseDate": "1985-05-13",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 112,
        "key": "E",
        "isrc": "GBBKS8500279"
      },
      "metadata": {
        "tags": ["classic", "rock", "satire"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "84",
      "basicInfo": {
        "title": "I Want to Know What Love Is",
        "artist": "Foreigner",
        "duration_ms": 290000,
        "genre": "Rock",
        "album": "Agent Provocateur",
        "releaseDate": "1984-11-13",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 90,
        "key": "D",
        "isrc": "USBB48417001"
      },
      "metadata": {
        "tags": ["ballad", "classic", "emotional"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "85",
      "basicInfo": {
        "title": "Cold as Ice",
        "artist": "Foreigner",
        "duration_ms": 240000,
        "genre": "Rock",
        "album": "Foreigner",
        "releaseDate": "1977-01-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 103,
        "key": "A",
        "isrc": "USBB07700002"
      },
      "metadata": {
        "tags": ["classic", "rock", "love"],
        "language": "en",
        "popularity": 91
      }
    },
    {
      "id": "86",
      "basicInfo": {
        "title": "Separate Ways (Worlds Apart)",
        "artist": "Journey",
        "duration_ms": 257000,
        "genre": "Rock",
        "album": "Escape",
        "releaseDate": "1983-10-30",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 91,
        "key": "B",
        "isrc": "USAR18337001"
      },
      "metadata": {
        "tags": ["classic", "nostalgia", "rock"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "87",
      "basicInfo": {
        "title": "Don't Stop Believin'",
        "artist": "Journey",
        "duration_ms": 252000,
        "genre": "Rock",
        "album": "Escape",
        "releaseDate": "1981-01-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 118,
        "key": "E",
        "isrc": "USPC18110002"
      },
      "metadata": {
        "tags": ["classic", "anthem", "uplifting"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "88",
      "basicInfo": {
        "title": "Eye of the Tiger",
        "artist": "Survivor",
        "duration_ms": 245000,
        "genre": "Rock",
        "album": "Eye of the Tiger",
        "releaseDate": "1982-05-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 109,
        "key": "F",
        "isrc": "USCA28100005"
      },
      "metadata": {
        "tags": ["motivational", "classic", "sports"],
        "language": "en",
        "popularity": 99
      }
    },
    {
      "id": "89",
      "basicInfo": {
        "title": "The Search Is Over",
        "artist": "Survivor",
        "duration_ms": 245000,
        "genre": "Rock",
        "album": "Vital Signs",
        "releaseDate": "1984-09-08",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 93,
        "key": "A",
        "isrc": "USCA28100015"
      },
      "metadata": {
        "tags": ["romantic", "classic", "rock"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "90",
      "basicInfo": {
        "title": "Total Eclipse of the Heart",
        "artist": "Bonnie Tyler",
        "duration_ms": 270000,
        "genre": "Pop-Rock",
        "album": "Faster Than the Speed of Night",
        "releaseDate": "1983-04-12",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 130,
        "key": "A",
        "isrc": "GBBLS8301676"
      },
      "metadata": {
        "tags": ["epic", "romantic", "heartbreak"],
        "language": "en",
        "popularity": 95
      }
    },
    {
      "id": "91",
      "basicInfo": {
        "title": "Holding Out for a Hero",
        "artist": "Bonnie Tyler",
        "duration_ms": 300000,
        "genre": "Pop-Rock",
        "album": "Secret Dreams and Forbidden Fire",
        "releaseDate": "1986-04-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 130,
        "key": "C",
        "isrc": "GBBLS8601520"
      },
      "metadata": {
        "tags": ["heroic", "classic", "upbeat"],
        "language": "en",
        "popularity": 92
      }
    },
    {
      "id": "92",
      "basicInfo": {
        "title": "I Will Survive",
        "artist": "Gloria Gaynor",
        "duration_ms": 240000,
        "genre": "Disco",
        "album": "Love Tracks",
        "releaseDate": "1978-10-23",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 117,
        "key": "A",
        "isrc": "USG789800022"
      },
      "metadata": {
        "tags": ["empowerment", "classic", "disco"],
        "language": "en",
        "popularity": 99
      }
    },
    {
      "id": "93",
      "basicInfo": {
        "title": "Never Can Say Goodbye",
        "artist": "Gloria Gaynor",
        "duration_ms": 215000,
        "genre": "Disco",
        "album": "Never Can Say Goodbye",
        "releaseDate": "1975-01-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 122,
        "key": "B",
        "isrc": "USG789800025"
      },
      "metadata": {
        "tags": ["classic", "nostalgia", "disco"],
        "language": "en",
        "popularity": 90
      }
    },
    {
      "id": "94",
      "basicInfo": {
        "title": "Dancing Queen",
        "artist": "ABBA",
        "duration_ms": 210000,
        "genre": "Pop",
        "album": "Arrival",
        "releaseDate": "1976-08-15",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 100,
        "key": "A",
        "isrc": "BABK01700002"
      },
      "metadata": {
        "tags": ["classic", "party", "nostalgia"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "95",
      "basicInfo": {
        "title": "Mamma Mia",
        "artist": "ABBA",
        "duration_ms": 210000,
        "genre": "Pop",
        "album": "ABBA",
        "releaseDate": "1975-04-21",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 95,
        "key": "E",
        "isrc": "BABK01700004"
      },
      "metadata": {
        "tags": ["classic", "upbeat", "fun"],
        "language": "en",
        "popularity": 96
      }
    },
    {
      "id": "96",
      "basicInfo": {
        "title": "Let It Be",
        "artist": "The Beatles",
        "duration_ms": 243000,
        "genre": "Rock",
        "album": "Let It Be",
        "releaseDate": "1970-03-06",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 71,
        "key": "A",
        "isrc": "GBAYE7000063"
      },
      "metadata": {
        "tags": ["classic", "emotional", "rock"],
        "language": "en",
        "popularity": 99
      }
    },
    {
      "id": "97",
      "basicInfo": {
        "title": "Hey Jude",
        "artist": "The Beatles",
        "duration_ms": 431000,
        "genre": "Rock",
        "album": "Hey Jude",
        "releaseDate": "1968-08-26",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 71,
        "key": "C",
        "isrc": "GBAYE6800043"
      },
      "metadata": {
        "tags": ["classic", "uplifting", "rock"],
        "language": "en",
        "popularity": 98
      }
    },
    {
      "id": "98",
      "basicInfo": {
        "title": "Imagine",
        "artist": "John Lennon",
        "duration_ms": 183000,
        "genre": "Rock",
        "album": "Imagine",
        "releaseDate": "1971-09-09",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 75,
        "key": "C",
        "isrc": "USRF17103771"
      },
      "metadata": {
        "tags": ["classic", "peace", "rock"],
        "language": "en",
        "popularity": 99
      }
    },
    {
      "id": "99",
      "basicInfo": {
        "title": "Proud Mary",
        "artist": "Tina Turner",
        "duration_ms": 120000,
        "genre": "Rock",
        "album": "Private Dancer",
        "releaseDate": "1984-05-29",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 120,
        "key": "B",
        "isrc": "USAT28400220"
      },
      "metadata": {
        "tags": ["classic", "cover", "rock"],
        "language": "en",
        "popularity": 94
      }
    },
    {
      "id": "100",
      "basicInfo": {
        "title": "What’s Love Got to Do with It",
        "artist": "Tina Turner",
        "duration_ms": 224000,
        "genre": "Pop",
        "album": "Private Dancer",
        "releaseDate": "1984-01-01",
        "isExplicit": false
      },
      "technicalInfo": {
        "bpm": 104,
        "key": "A",
        "isrc": "USAT28400218"
      },
      "metadata": {
        "tags": ["classic", "emotional", "pop"],
        "language": "en",
        "popularity": 95
      }
    }
  ]
}
""".data(using: .utf8)!
    }
}
