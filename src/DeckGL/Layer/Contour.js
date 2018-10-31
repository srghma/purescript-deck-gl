var DeckGL = require('deck.gl');

exports.makeContourLayer = function (props) {
    return new DeckGL.ContourLayer(props);
};

exports.defaultContourProps = DeckGL.ContourLayer.defaultProps;
