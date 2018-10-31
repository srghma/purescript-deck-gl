-- | https://github.com/uber/deck.gl/blob/6.2-release/docs/layers/contour-layer.md
module DeckGL.Layer.Contour where

import DeckGL (Layer)
import DeckGL.BaseProps (BaseProps)
import WebMercator.LngLat (LngLat)

foreign import defaultContourProps :: forall eff . ContourLayerProps eff
foreign import makeContourLayer :: forall eff . ContourLayerProps eff -> Layer

type ContourData =
  { position :: LngLat
  }

-- | - `threshold` Threshold value to be used in contour generation.
-- | - `color`: RGB color array to be used to render contour lines, if not specified a default value of [255, 255, 255] is used.
-- | - `strokeWidth` : Width of the contour line in pixels, if not specified a default value of 1 is used.
type Contour = 
  { threshold :: Int
  , color :: Array Int
  , strokeWidth :: Int
  }

-- | - `cellSize`: Size of each cell in meters
-- | - `contours`: Array of `Contour`
-- | - `getPosition`: Method called to retrieve the position of each point.
type ContourLayerProps eff = BaseProps
    eff
    ( cellSize :: Int
    , contours :: Array Contour
    , getPosition :: ContourData -> LngLat
    )
    ContourData
