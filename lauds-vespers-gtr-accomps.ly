%{ ----------------------------------------
https://lilypond.org/doc/v2.25/Documentation/notation/common-notation-for-fretted-strings#default-tablatures

Typesetting chant tone accompaniments for Lauds and Vespers.
 * ------------------------------------- %}


%{ ----------------------------------------
 * Examples
 * ------------------------------------- %}

% this includes the gregorian transcription definitions (v2.24, not needed in 2.25+)
\include "gregorian.ly"

symbols = {
  \time 3/4
  c4-.^"Allegro" d( e)
  f4-.\f g a^\fermata
  \mark \default
  c8_.\<\( c16 c~ 2\!
  c'2.\prall\)
}

chant = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

verba = \lyricmode {
  Lo -- rem ip -- sum do -- lor sit a -- met,
  lo -- rem ip -- sum do -- lor sit a -- met.
}

%{ ----------------------------------------
 * Setup
 * ------------------------------------- %}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%{ ----------------------------------------
 * General chant tones according to modes
 * ------------------------------------- %}

chantToneID = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneIf = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneIIA = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneIID = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneIIIb = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneIVa = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneIVd = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneVa = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneVc = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneVIF = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneVIIa = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneVIId = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneVIIIa = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneVIIIg = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

%{ ----------------------------------------
 * Chant tones for specific prayers
 * ------------------------------------- %}

chantToneIntercessions = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantToneLordsPrayer = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantTonePrayerBasic = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

chantTonePrayerEndings = \relative c' {
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

% by Priest or Deacon
chantToneDismissalClergy = \relative c' {
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
  \set Score.timing = ##f
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g f) a2 \finalis \break
  f4 a2 \divisioMinima
  g4 b a2 f2 \divisioMaior
  g4( f) f( g a) g2( f) \finalis
}

%{ ----------------------------------------
 * Book setup
 * ------------------------------------- %}

\paper {
  #(set-paper-size '(cons (* 139.5 mm) (* 216 mm)))
  top-margin = 0.625\in
  left-margin = 0.625\in
  right-margin = 0.625\in
  bottom-margin = 0.625\in
}

\book {
  \bookOutputName "Chant Tone Accompaniments on Guitar for Lauds and Vespers"

  \bookpart {
    \header {
      title = \markup \abs-fontsize #34 {
        \center-column {
          \line { "Chant Tone Accompaniments" }
          \hspace #0
        }
      }
      subtitle = \markup { \abs-fontsize #18 \medium "on Guitar for Lauds and Vespers" }
    }
    \paper {
      top-markup-spacing.basic-distance = #20
      left-margin = 1.5\in
      right-margin = 1.5\in
    }
    \markup \abs-fontsize #14 {
      \fill-line {
        \center-column \italic {
          \hspace #0
          \hspace #0
          "by the Guild of St. Isidore (TO)"
          \with-color #grey \concat { "Generated on " \date }
        }
      }
    }
  }

  \bookpart {
    \paper {
      indent = 0\mm
      print-page-number = false

      top-margin = 1.3\in
      left-margin = 1.75\in
      right-margin = 1.75\in
      bottom-margin = 1.3\in

      tocTitleMarkup = \markup \huge \bold \column {
        \fill-line {
          \null "Table of Contents" \null
        }
        \hspace #1
      }
      tocItemMarkup = \tocItemWithDotsMarkup
    }

    \markuplist \table-of-contents
  }

%{ ----------------------------------------
 * Book parts
 * ------------------------------------- %}

  \bookpart {
    \tocItem \markup { "ID" }
    \header {
      title = "Chant tone ID"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneID
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneID }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "If" }
    \header {
      title = "Chant tone If"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneIf
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIf }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "IIA" }
    \header {
      title = "Chant tone IIA"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneIIA
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIIA }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "IID" }
    \header {
      title = "Chant tone IID"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneIID
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIID }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "IIIb" }
    \header {
      title = "Chant tone IIIb"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneIIIb
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIIIb }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "IVa" }
    \header {
      title = "Chant tone IVa"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneIVa
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIVa }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "IVd" }
    \header {
      title = "Chant tone IVd"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneIVd
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIVd }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "Va" }
    \header {
      title = "Chant tone Va"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneVa
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneVa }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "Vc" }
    \header {
      title = "Chant tone Vc"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneVc
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneVc }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "VIF" }
    \header {
      title = "Chant tone VIF"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneVIF
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneVIF }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "VIIa" }
    \header {
      title = "Chant tone VIIa"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneVIIa
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneVIIa }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "VIId" }
    \header {
      title = "Chant tone VIId"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneVIId
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneVIId }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "VIIIa" }
    \header {
      title = "Chant tone VIIIa"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneVIIIa
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneVIIIa }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "VIIIg" }
    \header {
      title = "Chant tone VIIIg"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneVIIIg
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneVIIIg }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "Intercessions" }
    \header {
      title = "Chant tone Intercessions"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneIntercessions
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIntercessions }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "LordsPrayer" }
    \header {
      title = "Chant tone LordsPrayer"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneLordsPrayer
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneLordsPrayer }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "PrayerBasic" }
    \header {
      title = "Chant tone PrayerBasic"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantTonePrayerBasic
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantTonePrayerBasic }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "PrayerEndings" }
    \header {
      title = "Chant tone PrayerEndings"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantTonePrayerEndings
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantTonePrayerEndings }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "DismissalClergy" }
    \header {
      title = "Chant tone DismissalClergy"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneDismissalClergy
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneDismissalClergy }
      >>
    }
  }
  \bookpart {
    \tocItem \markup { "DismissalLaity" }
    \header {
      title = "Chant tone DismissalLaity"
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "melody" \chantToneDismissalLaity
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneDismissalLaity }
      >>
    }
  }
}
