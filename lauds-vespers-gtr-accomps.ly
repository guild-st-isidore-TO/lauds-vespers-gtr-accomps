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
  ragged-last-bottom = ##f

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
      composer = " "
    }
    \score {
      \new StaffGroup <<
        \new VaticanaStaff <<
          \new VaticanaVoice = "sqChantID" \sqChantToneID
        >>
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantID" \chantToneID
          % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
          \new TabStaff { \chantToneID }
        >>
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
      composer = " "
    }
    \score {
      \new StaffGroup <<
        \new VaticanaStaff <<
          \new VaticanaVoice = "sqChantIf" \sqChantToneIf
        >>
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIf" \chantToneIf
          % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
          \new TabStaff { \chantToneIf }
        >>
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantIIA" \chantToneIIA
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantIID" \chantToneIID
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantIIIb" \chantToneIIIb
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIIIb }
      >>
      \layout {
        ragged-last = ##f
      }
    }
  }
  \bookpart {
    \tocItem \markup { "IVa" }
    \header {
      title = "Chant tone IVa"
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantIVa" \chantToneIVa
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneIVa }
      >>
      \layout {
        ragged-last = ##f
      }
    }
  }
  \bookpart {
    \tocItem \markup { "IVd" }
    \header {
      title = "Chant tone IVd"
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantIVd" \chantToneIVd
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantVa" \chantToneVa
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantVc" \chantToneVc
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantVIF" \chantToneVIF
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantVIIa" \chantToneVIIa
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantVIId" \chantToneVIId
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantVIIIa" \chantToneVIIIa
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantVIIIg" \chantToneVIIIg
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantIntercessions" \chantToneIntercessions
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantLordsPrayer" \chantToneLordsPrayer
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantPrayerBasic" \chantTonePrayerBasic
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantPrayerEndings" \chantTonePrayerEndings
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantDismissalClergy" \chantToneDismissalClergy
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
      composer = " "
    }
    \score {
      \new GregorianTranscriptionStaff <<
        \new GregorianTranscriptionVoice = "chantDismissalLaity" \chantToneDismissalLaity
        % \new GregorianTranscriptionLyrics = "one" \lyricsto melody \verba
        \new TabStaff { \chantToneDismissalLaity }
      >>
      \layout {
        ragged-last = ##f
      }
    }
  }
}
