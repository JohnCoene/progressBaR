HTMLWidgets.widget({

  name: 'progressBar',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

        if(x.colorTo){
          var colorTo = x.colorTo;
        } else {
          var colorTo = x.color;
        }

        if(x.colorFrom){
          var colorFrom = x.colorFrom;
        } else {
          var colorFrom = x.color;
        }

        if(x.type == 'line'){
          var progress = new ProgressBar.Line('#' + el.id, {
            strokeWidth: x.strokeWidth,
            easing: x.easing,
            duration: x.duration,
            color: x.color,
            trailColor: x.trailColor,
            trailWidth: x.trailWidth,
            svgStyle: {width: x.svgWidth, height: x.svgHeight},
            from: {color: colorFrom},
            to: {color: colorTo},
            step: (state, bar) => {
                bar.path.setAttribute('stroke', state.color);
            }
          });
        } else if(x.type == 'circle'){
          var progress = new ProgressBar.Circle('#' + el.id, {
            strokeWidth: x.strokeWidth,
            easing: x.easing,
            duration: x.duration,
            color: x.color,
            trailColor: x.trailColor,
            trailWidth: x.trailWidth,
            from: {color: colorFrom},
            to: {color: colorTo},
            step: (state, bar) => {
                bar.path.setAttribute('stroke', state.color);
            }
          });
        } else {
          var progress = new ProgressBar.SemiCircle('#' + el.id, {
            strokeWidth: x.strokeWidth,
            easing: x.easing,
            duration: x.duration,
            color: x.color,
            trailColor: x.trailColor,
            trailWidth: x.trailWidth,
            from: {color: colorFrom},
            to: {color: colorTo},
            step: (state, bar) => {
                bar.path.setAttribute('stroke', state.color);
            }
          });
        }

        progress.animate(x.value);

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
