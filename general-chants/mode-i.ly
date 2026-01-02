sqChantToneID = {
  \clef "vaticana-do3"
  \[ \cavum a \] g f \augmentum g \divisioMaxima
  \[ \cavum g \] a \[f \flexa e \melismaEnd \] \augmentum d \finalis
}

sqChantToneIf = {
  \clef "vaticana-do3"
  \[ \cavum a\] g f \augmentum a \divisioMaxima
  \[ \cavum g\] a \augmentum f \finalis
}

chantToneID = \relative c' {
  \clef "treble_8"
  \key a \major
  \set Score.timing = ##f

  <a cs fs>2 e'4 d <a cs e>4. \divisioMaxima
  <a cs e>2 fs'4 <fs, a d> cs' <d, fs b>4. \finalis
}


chantToneIf = \relative c' {
  \clef "treble_8"
  \key a \major
  \set Score.timing = ##f

  <a cs fs>2 e'4 d <a cs e>4. \divisioMaxima
  <a cs e>2 fs'4 <fs, a d>4. \finalis
}