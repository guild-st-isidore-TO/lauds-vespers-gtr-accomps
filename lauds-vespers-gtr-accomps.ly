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
  #(set-global-staff-size 22)

  \bookpart {
    \header {
      title = \markup \abs-fontsize #30 {
        \center-column {
          \line { "Chant Tones" }
          \line { "& Accompaniments" }
          \hspace #0
        }
      }
      subtitle = \markup \abs-fontsize #20 {
        \center-column {
          \line { "on Guitar for" }
          \line { "Lauds and Vespers" }
        }
      }
    }
    \paper {
      top-markup-spacing.basic-distance = #7.5
      left-margin = 1.5\in
      right-margin = 1.5\in
    }
    \markup \abs-fontsize #14 {
      \fill-line {
        \center-column \italic {
          \hspace #0
          \hspace #0
          "by the"
          \bold { "Guild of St. Isidore (TO)" }
          \hspace #0
          \with-color #grey { "Generated on " }
          \with-color #grey { \date }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIDChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantID" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneID
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneID }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIfChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantIf" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneIf
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneIf }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIIAChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantIIA" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneIIA
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneIIA }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIIDChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantIID" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneIID
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneIID }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIIIbChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantIIIb" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneIIIb
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneIIIb }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIVaChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantIVa" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneIVa
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneIVa }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIVdChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantIVd" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneIVd
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneIVd }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneVaChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantVa" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneVa
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneVa }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneVcChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantVc" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneVc
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneVc }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneVIFChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantVIF" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneVIF
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneVIF }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneVIIaChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantVIIa" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneVIIa
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneVIIa }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneVIIdChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantVIId" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneVIId
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneVIId }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneVIIIaChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantVIIIa" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneVIIIa
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneVIIIa }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneVIIIgChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantVIIIg" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneVIIIg
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneVIIIg }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneIntercessionsChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantIntercessions" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneIntercessions
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneIntercessions }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneLordsPrayerPrefaceChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantLordsPrayerPreface" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneLordsPrayerPreface
          }
          \new Lyrics = "chantLordsPrayerPreface" \with {
            \override LyricText.font-size = -0.125
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2.5
            \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2.5
          }
          \context Lyrics = "chantLordsPrayerPreface" {
            \lyricsto "chantLordsPrayerPreface" {
              \chantToneLordsPrayerPrefaceWords
            }
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneLordsPrayerPreface }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneLordsPrayerChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantLordsPrayer" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneLordsPrayer
          }
          \new Lyrics = "chantLordsPrayer" \with {
            \override LyricText.font-size = -0.125
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2.5
            \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2.5
          }
          \context Lyrics = "chantLordsPrayer" {
            \lyricsto "chantLordsPrayer" {
              \chantToneLordsPrayerWords
            }
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneLordsPrayer }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantTonePrayerBasicChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantPrayerBasic" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantTonePrayerBasic
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantTonePrayerBasic }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantTonePrayerEndingsChords
        }
        \new GregorianTranscriptionStaff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6)
             (minimum-distance . 5)
             (padding . 1))
        } <<
          \new GregorianTranscriptionVoice = "chantPrayerEndings" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantTonePrayerEndings
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantTonePrayerEndings }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantTonePrayerPetitionChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantPrayerPetition" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantTonePrayerPetition
          }
          \new Lyrics = "chantPrayerPetition" \with {
            \override LyricText.font-size = -0.125
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2.5
            \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2.5
          }
          \context Lyrics = "chantPrayerPetition" {
            \lyricsto "chantPrayerPetition" {
              \chantTonePrayerPetitionWords
            }
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantTonePrayerPetition }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneDismissalClergyChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantDismissalClergy" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneDismissalClergy
          }
          \new Lyrics = "chantDismissalClergy" \with {
            \override LyricText.font-size = -0.125
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2.5
            \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2.5
          }
          \context Lyrics = "chantDismissalClergy" {
            \lyricsto "chantDismissalClergy" {
              \chantToneDismissalClergyWords
            }
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneDismissalClergy }
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
          \override ChordName.font-size = 0.5
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
          \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
          \chantToneDismissalLaityChords
        }
        \new GregorianTranscriptionStaff <<
          \new GregorianTranscriptionVoice = "chantDismissalLaity" {
            \clef "treble_8"
            \override Slur.direction = #UP
            \chantToneDismissalLaity
          }
          \new Lyrics = "chantDismissalLaity" \with {
            \override LyricText.font-size = -0.125
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2.5
            \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2.5
          }
          \context Lyrics = "chantDismissalLaity" {
            \lyricsto "chantDismissalLaity" {
              \chantToneDismissalLaityWords
            }
          }
        >>
        \new TabStaff \with {
          \remove Caesura_engraver
          \magnifyStaff #1.125
        } { \clef tab \chantToneDismissalLaity }
      >>
      \layout {
        indent = #0
        ragged-last = ##f
      }
    }
  }
}
