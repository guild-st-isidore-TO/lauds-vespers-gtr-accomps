chantToneLordsPrayerPreface = \relative c' {
  \key bf \major
  \set Score.timing = ##f
  
  <a c f>4 g' <c, ef g> g' g <a, c f>4. \divisioMaior \break
  <a d f>4 g' a <d, f a> g( a) g <a, c f>4. \divisioMaior \break
  <bf d g>4 f'( g) <c, f a> <c e g>4. \finalis
}

chantToneLordsPrayerPrefaceWords = \lyricmode {
  With longing for the coming of God's kingdom,
  let us offer our prayer
  to the Father.
}

chantToneLordsPrayer = \relative c' {
  \key bf \major
  \set Score.timing = ##f
  
  <a c f(>4 g') <c, f a> a' \divisioMinima
  g <c, f bf> a' <a, c g'> f' \divisioMinima \break
  <bf, d g> f' f( g) <c, f a> <bf d g> \divisioMaxima
  a' <d, g bf(> a') g( a) <a, c g'> f' \divisioMaior \break
  a <d, g bf(> a') g <a, c g'> f' \divisioMaior \break
  <bf, d g> a' g f <a, d f(> g') a <bf, d g(> a') g \finalis \break

  <c, f a> g' a <d, g bf> a' <bf, d g(> a') g <a, c g'(> f') \divisioMaxima \break
  g a <d, g bf(> a') g a <a, c g'> f' f \divisioMaior \break
  g <a, d f> g' a <bf, d g> f' <a, d f> g' a <bf, d g(> a') g \divisioMaxima \break
  <f, a d> f' <bf, d g> g' g g a <a, c g'(> f') f \divisioMaxima \break
  <bf, d f> g' <bf, d g> g' g a <c, e g(> f) <a, c f> \finalis 
}

chantToneLordsPrayerWords = \lyricmode {
  Our Fa -- ther, who art in hea -- ven,
  hal -- lowed be thy name;
  thy king -- dom come;
  thy will be done on earth as it is in hea -- ven.
  Give us this day our dai -- ly bread;
  and for -- give us our tres -- passes.
  As we forgive those who tres -- pass a -- gainst us;
  and lead us not into temp -- ta -- tion,
  but de -- liv -- er us from e -- vil.
}
