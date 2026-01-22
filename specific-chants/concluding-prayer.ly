chantTonePrayerBasic = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>2 <cs fs a>4. \divisioMaxima
  <d fs a>2 <cs e a>4. \finalis
}

chantTonePrayerBasicChords = \chordmode {
  a2 fs4.:m
  d2 a4.
}

chantTonePrayerEndings = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>2 a'4 <b, d fs> <cs e a>4. \finalis
  <d fs a>2 <cs e a>4. \finalis 
}

chantTonePrayerEndingsChords = \chordmode {
  a2. b4:m a4.
  d2 a4.
}

chantTonePrayerPetition = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>4 a' a a a a <d, fs a> a' a \break
  <cs, e a> a'4. \divisioMinima <cs, e a>4 a' a a a \break
  a a a gs <a, cs fs> <cs e a> a'4. \divisioMinima <cs, e a>4 a'4. \divisioMinima \break
  a4 a a a <cs, e a>4. <a cs fs> \finalis <d fs a> <cs e a> \finalis 
}

chantTonePrayerPetitionChords = \chordmode {
  a1. d2. a4 s4.
  a1. s2. fs4:m a4 s4.
  a4 s4. s1 a4. fs4.:m
  d a
}

chantTonePrayerPetitionWords = \lyricmode {
  We ask this through our Lord Je -- sus Christ, your Son,
  who lives and reigns with you and the Ho -- ly Spi -- rit,
  one God, for ev -- er and ev -- er. Amen.
}