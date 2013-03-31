/*
 * Downloads .po files from Transifex localization site
 *
 * Copyright 2013 Viktor Szakats (harbour syenar.net)
 * www - http://harbour-project.org
 *
 * Requires: curl (built with SSL)
 * Reference: http://help.transifex.com/features/api/api-v2.1.html
 *
 */

#pragma -w3

PROCEDURE Main( cLogin )

   LOCAL cBase := hb_DirBase()

   LOCAL json
   LOCAL cLang
   LOCAL cTemp

   IF Empty( cLogin )
      cLogin := GetEnv( "HB_TRANSIFEX_LOGIN" )  /* Format: username:password */
   ENDIF

   FClose( hb_FTempCreateEx( @cTemp ) )

   ? "pulling .po files:"

   FOR EACH cLang IN hb_ATokens( hb_regexAll( "-lng=([a-zA-Z0-9_,]*)", hb_MemoRead( cBase + "hbmk2.hbp" ),,,,, .T. )[ 1 ][ 2 ], "," )

      ?? "", cLang

      hb_run( hb_StrFormat( "curl -s -i -L --user %1$s -X " + ;
         "GET https://www.transifex.com/api/2/project/harbour/resource/hbmk2/translation/%2$s/ " + ;
         "-o %3$s", ;
         cLogin, cLang, cTemp ) )

      IF hb_jsonDecode( GetJSON( hb_MemoRead( cTemp ) ), @json ) > 0
         hb_MemoWrit( hb_DirSepToOS( cBase + "po/hbmk2." + cLang + ".po" ), StrTran( json[ "content" ], e"\n", hb_eol() ) )
      ELSE
         ? "API error"
      ENDIF
   NEXT

   FErase( cTemp )

   RETURN

STATIC FUNCTION GetJSON( cString )

   cString := SubStr( cString, At( "{", cString ) )
   cString := Left( cString, RAt( "}", cString ) )

   RETURN cString