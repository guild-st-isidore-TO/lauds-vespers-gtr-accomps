%{ ----------------------------------------
https://lilypond.org/doc/v2.25/Documentation/notation/common-notation-for-fretted-strings#default-tablatures

Typesetting chant tone accompaniments for Lauds and Vespers.
 * ------------------------------------- %}

\version "2.25.18"
\language "english"

%{ ----------------------------------------
 * Examples
 * ------------------------------------- %}

% this includes the gregorian transcription definitions (v2.24, not needed in 2.25+)
% \include "gregorian.ly"

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
  indent = 0
  ragged-last = ##f
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
      subtitle = \markup { \abs-fontsize #18 "on Guitar for Lauds and Vespers" }
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
      <<
        \new ChordNames {
          \chantToneIDChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantID" { \clef "treble_8" \chantToneID }
        >>
        \new TabStaff { \clef tab \chantToneID }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneIfChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIf" { \clef "treble_8" \chantToneIf }
        >>
        \new TabStaff { \clef tab \chantToneIf }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneIIAChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIIA" { \clef "treble_8" \chantToneIIA}
        >>
        \new TabStaff { \clef tab \chantToneIIA }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneIIDChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIID" { \clef "treble_8" \chantToneIID}
        >>
        \new TabStaff { \clef tab \chantToneIID }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneIIIbChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIIIb" { \clef "treble_8" \chantToneIIIb}
        >>
        \new TabStaff { \clef tab \chantToneIIIb }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneIVaChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIVa" { \clef "treble_8" \chantToneIVa}
        >>
        \new TabStaff { \clef tab \chantToneIVa }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneIVdChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIVd" { \clef "treble_8" \chantToneIVd}
        >>
        \new TabStaff { \clef tab \chantToneIVd }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneVaChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantVa" { \clef "treble_8" \chantToneVa}
        >>
        \new TabStaff { \clef tab \chantToneVa }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneVcChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantVc" { \clef "treble_8" \chantToneVc}
        >>
        \new TabStaff { \clef tab \chantToneVc }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneVIFChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantVIF" { \clef "treble_8" \chantToneVIF}
        >>
        \new TabStaff { \clef tab \chantToneVIF }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneVIIaChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantVIIa" { \clef "treble_8" \chantToneVIIa}
        >>
        \new TabStaff { \clef tab \chantToneVIIa }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneVIIdChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantVIId" { \clef "treble_8" \chantToneVIId}
        >>
        \new TabStaff { \clef tab \chantToneVIId }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneVIIIaChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantVIIIa" { \clef "treble_8" \chantToneVIIIa}
        >>
        \new TabStaff { \clef tab \chantToneVIIIa }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneVIIIgChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantVIIIg" { \clef "treble_8" \chantToneVIIIg}
        >>
        \new TabStaff { \clef tab \chantToneVIIIg }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneIntercessionsChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIntercessions" { \clef "treble_8" \chantToneIntercessions}
        >>
        \new TabStaff { \clef tab \chantToneIntercessions }
      >>
      \layout {
        indent = #0
        ragged-last = ##f
      }
    }
  }
  \bookpart {
    \tocItem \markup { "LordsPrayerPreface" }
    \header {
      title = "Chant tone LordsPrayerPreface"
      composer = " "
    }
    \score {
      <<
        \new ChordNames {
          \chantToneLordsPrayerPrefaceChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantLordsPrayerPreface" { \clef "treble_8" \chantToneLordsPrayerPreface}
          \new Lyrics = "chantLordsPrayerPreface"
        >>
        \new TabStaff { \clef tab \chantToneLordsPrayerPreface }
        \context Lyrics = "chantLordsPrayerPreface" {
          \lyricsto "chantLordsPrayerPreface" {
            \chantToneLordsPrayerPrefaceWords
          }
        }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneLordsPrayerChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantLordsPrayer" { \clef "treble_8" \chantToneLordsPrayer}
          \new Lyrics = "chantLordsPrayer"
        >>
        \new TabStaff { \clef tab \chantToneLordsPrayer }
        \context Lyrics = "chantLordsPrayer" {
          \lyricsto "chantLordsPrayer" {
            \chantToneLordsPrayerWords
          }
        }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantTonePrayerBasicChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantPrayerBasic" { \clef "treble_8" \chantTonePrayerBasic}
        >>
        \new TabStaff { \clef tab \chantTonePrayerBasic }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantTonePrayerEndingsChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantPrayerEndings" { \clef "treble_8" \chantTonePrayerEndings}
        >>
        \new TabStaff { \clef tab \chantTonePrayerEndings }
      >>
      \layout {
        indent = #0
        ragged-last = ##f
      }
    }
  }
  \bookpart {
    \tocItem \markup { "PrayerPetition" }
    \header {
      title = "Chant tone PrayerPetition"
      composer = " "
    }
    \score {
      <<
        \new ChordNames {
          \chantTonePrayerPetitionChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantPrayerPetition" { \clef "treble_8" \chantTonePrayerPetition}
          \new Lyrics = "chantPrayerPetition"
        >>
        \new TabStaff { \clef tab \chantTonePrayerPetition }
        \context Lyrics = "chantPrayerPetition" {
          \lyricsto "chantPrayerPetition" {
            \chantTonePrayerPetitionWords
          }
        }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneDismissalClergyChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantDismissalClergy" { \clef "treble_8" \chantToneDismissalClergy}
          \new Lyrics = "chantDismissalClergy"
        >>
        \new TabStaff { \clef tab \chantToneDismissalClergy }
        \context Lyrics = "chantDismissalClergy" {
          \lyricsto "chantDismissalClergy" {
            \chantToneDismissalClergyWords
          }
        }
      >>
      \layout {
        indent = #0
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
      <<
        \new ChordNames {
          \chantToneDismissalLaityChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantDismissalLaity" { \clef "treble_8" \chantToneDismissalLaity}
          \new Lyrics = "chantDismissalLaity"
        >>
        \new TabStaff { \clef tab \chantToneDismissalLaity }
        \context Lyrics = "chantDismissalLaity" {
          \lyricsto "chantDismissalLaity" {
            \chantToneDismissalLaityWords
          }
        }
      >>
      \layout {
        indent = #0
        ragged-last = ##f
      }
    }
  }
}
