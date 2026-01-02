%{
https://lilypond.org/doc/v2.25/Documentation/notation/overview-of-the-supported-styles

https://lilypond.org/doc/v2.25/Documentation/notation/typesetting-gregorian-chant

The predefined contexts VaticanaScore, VaticanaVoice, VaticanaStaff, and VaticanaLyrics
can be used to engrave a piece of Gregorian chant in the style of the Editio Vaticana.
These contexts initialize all relevant context and grob properties to proper values;
you can immediately go ahead entering the chant, as the following excerpt demonstrates.
%}

\new VaticanaScore {
  <<
    \new VaticanaVoice = "cantus" {
      \[ c'\melisma c' \flexa a \]
      \[ a \flexa \deminutum g\melismaEnd \]
      f \divisioMinima
      \[ f\melisma \pes a c' c' \pes d'\melismaEnd \]
      c' \divisioMinima \break
      \[ c'\melisma c' \flexa a \]
      \[ a \flexa \deminutum g\melismaEnd \] f \divisioMinima
    }
    \new VaticanaLyrics \lyricsto "cantus" {
      San -- ctus, San -- ctus, San -- ctus
    }
  >>
}

\layout {
  indent = 0
  ragged-last = ##t
}
