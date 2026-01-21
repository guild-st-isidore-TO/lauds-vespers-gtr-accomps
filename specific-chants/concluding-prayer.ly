chantTonePrayerBasic = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>2 <cs fs a>4. \divisioMaxima
  <d fs a>2 <cs e a>4. \finalis
}

chantTonePrayerEndings = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>2 a'4 <b, d fs> <cs e a>4. \finalis
  <d fs a>2 <cs e a>4. \finalis 
}

chantTonePrayerPetition = \relative c' {
  \set Score.timing = ##f
  \key a \major

  <cs e a>4 a' a a a a a <d, fs a> \break
  a' <cs, e a> a'4. \divisioMinima <cs, e a>4 a' a a a \break
  a a a gs fs a a4. \divisioMinima <cs, e a>4 a'4. \divisioMinima \break
  a4 a a a <cs, e a>4. <b d fs> \finalis <d fs a> <cs e a> \finalis 
}