chantToneID = \relative c' {
  \key c \major
  \set Score.timing = ##f

  <c e a>2 g'4 f <c e g>4. \divisioMaxima
  <c e g>2 a'4 <a, c f> e' <f, a d>4. \finalis
}

chantToneIDChords = \chordmode {
  a1:m c4.
  c2. f2 d4:m
}

chantToneIf = \relative c' {
  \key c \major
  \set Score.timing = ##f

  <c e a>2 g'4 f <c e g>4. \divisioMaxima
  <c e g>2 a'4 <a, c f>4. \finalis
}

chantToneIfChords = \chordmode {
  a1:m c4.
  c2. f4
}