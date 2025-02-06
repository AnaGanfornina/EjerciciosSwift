//
//  TestData.swift
//  Sprint1Testing
//
//  Created by Ismael Sabri Pérez on 20/1/25.
//

import Foundation

struct TestData {
    
    static func getFiveSongs() -> Data? {
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
        "tags": ["80s", "summer", "dance"],
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
        "tags": ["summer", "chill", "pop"],
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
        "popularity": 92
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
        "bpm": 110,
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
        "popularity": 40
      }
    },
    {
      "id": "6",
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
        "tags": ["pride", "anthem", "fun", "chill"],
        "language": "en",
        "popularity": 20
      }
    },
    {
      "id": "7",
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
        "tags": ["pride", "anthem"],
        "language": "en",
        "popularity": 100
      }
    },
    {
      "id": "8",
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
        "popularity": 0
      }
    }
    ]
}
""".data(using: .utf8)
    }
}
