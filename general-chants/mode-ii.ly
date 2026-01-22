chantToneIIA = \relative c' {
  \key a \major
  \set Score.timing = ##f

  <cs e a>2 gs'4 fs a4. \divisioMaxima
  a2 gs fs4. \finalis 
}

chantToneIIAChords = \chordmode {
  a1
}

chantToneIID = \relative c' {
  \key e \major
  \set Score.timing = ##f

  <cs e a>2 gs'4 <a, cs fs> <gs cs e>4. \divisioMaxima
  <a cs e>2 <a cs fs>4. \finalis 
}

chantToneIIDChords = \chordmode {
  a2. fs4:m cs4.:m
  a2 fs4.:m
}