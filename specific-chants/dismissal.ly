% by Priest or Deacon
chantToneDismissalClergy = \relative c' {
  \key a \major
  \set Score.timing = ##f
  
  <cs e a>4 a' a a <cs, fs a>4. \finalis \break
  <d fs a>4 a' a <cs, e a> a'4. \finalis \break
  <cs, e a>4 a' a gs <b, d fs> <cs e a> a' \divisioMaior \break

  <cs, fs a> a' a \divisioMaior
  gs <b, d fs> <cs e a> \divisioMinima \break
  <d fs a> a' a a <cs, e a>4. <b d fs>4. \finalis

  <d fs a>4. <cs e a>4. \finalis \break

  <e a cs(>4 b') a( gs) <b, e a>4.( <b e gs>) \finalis \break
  <e a cs(>4 b') a gs <b, e a>4.( <b e gs>) \finalis
}

chantToneDismissalClergyChords = \chordmode {
  a1: fs4.:m
  d2. a4 s4.
  a1 b4:m a2

  fs1:m b4:m a
  d1 a4. b:m

  d4. a

  a1 e4.:sus4 e
  a1 e4.:sus4 e
}

chantToneDismissalClergyWords = \lyricmode {
  The Lord be with you.
  And with your spi -- rit.
  May al -- migh -- ty God bless you,
  the Fa -- ther, and the Son,
  and the Ho -- ly Spi -- rit.
  A -- men.
  Go in peace.
  Thanks be to God.
}

% when no Priest or Deacon is present
chantToneDismissalLaity = \relative c' {
  \key a \major
  \set Score.timing = ##f
  
  <cs e a>4 a' a a <cs, fs a>4. \divisioMaior \break
  <cs e a>4 a' a gs <b, d fs> <cs e a> a'4. \divisioMaior \break
  <cs, fs a>4 a' a a a a \break a a <cs, e a>4. \finalis
  <d fs a>4. <cs e a> \finalis
}

chantToneDismissalLaityChords = \chordmode {
  a1 fs4.:m
  a1 b4:m a s4.
  fs1:m s1 a4.
  d a
}

chantToneDismissalLaityWords = \lyricmode {
  May the Lord bless us,
  pro -- tect us from all e -- vil,
  and bring us to ev -- er -- last -- ing life.
  A -- men.
}