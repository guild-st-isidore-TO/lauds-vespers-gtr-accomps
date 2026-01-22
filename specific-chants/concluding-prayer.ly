chantTonePrayerBasic = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>2 <cs fs a>4. \divisioMaxima
  <d fs a>2 <cs e a>4. \finalis
}

chantTonePrayerBasicChords = \chordmode {
  a1:m c4.
  c2. f2 d4:m
}

chantTonePrayerEndings = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>2 a'4 <b, d fs> <cs e a>4. \finalis
  <d fs a>2 <cs e a>4. \finalis 
}

chantTonePrayerEndingsChords = \chordmode {
  a1:m c4.
  c2. f2 d4:m
}

chantTonePrayerPetition = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>4 a' a a a a a <d, fs a> \break
  a' <cs, e a> a'4. \divisioMinima <cs, e a>4 a' a a a \break
  a a a gs fs a a4. \divisioMinima <cs, e a>4 a'4. \divisioMinima \break
  a4 a a a <cs, e a>4. <b d fs> \finalis <d fs a> <cs e a> \finalis 
}

chantTonePrayerPetitionChords = \chordmode {
  a1:m c4.
  c2. f2 d4:m
}

chantTonePrayerPetitionWords = \lyricmode {
  We ask this through our Lord Jesus Christ, your Son,
  who lives and reigns with you and the Holy Spirit,
  one God, for ev -- er and ev -- er. Amen.
}