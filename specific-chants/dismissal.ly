% by Priest or Deacon
chantToneDismissalClergy = \relative c' {
  \clef "treble_8"
  \key c \major
  \set Score.timing = ##f
  
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

% when no Priest or Deacon is present
chantToneDismissalLaity = \relative c' {
  \clef "treble_8"
  \key c \major
  \set Score.timing = ##f
  
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}