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

  <e a cs(> b') a( gs) <b, e a>4.( <b e gs>) \finalis \break
  <e a cs(> b') a gs <b, e a>4.( <b e gs>) \finalis
}

chantToneDismissalClergyChords = \chordmode {
  a1:m c4.
  c2. f2 d4:m
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
  <d fs a>4 <cs e a> \finalis
}

chantToneDismissalLaityChords = \chordmode {
  a1:m c4.
  c2. f2 d4:m
}

chantToneDismissalLaityWords = \lyricmode {
  May the Lord bless us,
  pro -- tect us from all e -- vil,
  and bring us to ev -- er -- last -- ing life.
  A -- men.
}