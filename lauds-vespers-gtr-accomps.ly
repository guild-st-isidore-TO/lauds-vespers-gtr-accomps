%{ ----------------------------------------
https://lilypond.org/doc/v2.25/Documentation/notation/common-notation-for-fretted-strings#default-tablatures

Typesetting chant tone accompaniments for Lauds and Vespers.
 * ------------------------------------- %}

\version "2.24.4"
\language "english"

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

\include "general-chants/mode-i.ly"
\include "general-chants/mode-ii.ly"
\include "general-chants/mode-iii.ly"
\include "general-chants/mode-iv.ly"
\include "general-chants/mode-v.ly"
\include "general-chants/mode-vi.ly"
\include "general-chants/mode-vii.ly"
\include "general-chants/mode-viii.ly"

%{ ----------------------------------------
 * Chant tones for specific prayers
 * ------------------------------------- %}

\include "specific-chants/concluding-prayer.ly"
\include "specific-chants/dismissal.ly"
\include "specific-chants/intercessions.ly"
\include "specific-chants/lords-prayer.ly"

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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
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
      \layout {
        ragged-last = ##f
      }
    }
  }
}
