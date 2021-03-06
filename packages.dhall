let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200922/packages.dhall sha256:5edc9af74593eab8834d7e324e5868a3d258bbab75c5531d2eb770d4324a2900

let overrides = {=}

let additions =
  { react-map-gl =
      { dependencies =
          [ "prelude"
          , "react"
          , "web-mercator"
          , "simple-json"
          , "generics-rep"
          ]
      , repo =
          "https://github.com/srghma/purescript-react-map-gl.git"
      , version =
          "master"
      }
  , web-mercator =
      { dependencies =
          [ "partial"
          , "prelude"
          , "functions"
          ]
      , repo =
          "https://github.com/f-o-a-m/purescript-web-mercator.git"
      , version =
          "master"
      }
  }

in  upstream // overrides // additions
