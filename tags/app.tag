<app>
  <div class="" if = { testing }>
    <h1> {question.qus} </h1>
    <div class="button">
        <button type="button" onclick={ submit } >submit</button>
    </div>
  </div>

  <div class="" if={ !testing }>
    <h1>no testing</h1>
    <div class="" if={ surveypage==1 }>
      <h1>How do you feel right now? please circle one</h1>
      <div class="row">
        <choice class="col" each={ choice in choices1 }></choice>
      </div>
    </div>

    <div class="" if={ surveypage==2 }>
      <h1>How enjoyed are you when working on the task?</h1>
      <div class="row">
        <choice class="col" each={ choice in choices2 }></choice>
      </div>
    </div>

    <div class="" if={ surveypage==3 }>
      <h1>How good do you think you are in this kind of task?</h1>
      <div class="row">
        <choice class="col" each={ choice in choices1 }></choice>
      </div>
    </div>

  </div>





  <script>

    console.log("app tags");
    var dataset = [
      {qus: "Example: FODO",
        answer: "FOOD"
      },
      {qus: "1. CIBAN",
        answer: ""
      },
      {qus: "2. AUBLM",
        answer: ""
      },
      {qus: "3. GROLY",
        answer: ""
      },
      {qus: "1. EMONV",
        answer: ""
      },
      {qus: "2. MAHES",
        answer: ""
      },
      {qus: "3. AORDI",
        answer: ""
      }
    ];

    var surveyChoices = [
      [{text: "1",
        url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjIJaaCOJhg-Qrvkc2Nnjs08fZSvWPhdTXFm0djiKiJnXPaE3y"
      },{text: "2",
        url: "https://thumbs.dreamstime.com/t/smiley-face-icon-set-isolated-white-background-different-smiley-face-icon-rating-symbols-smiley-face-icon-set-115826589.jpg"
      },{text: "3",
        url: "https://thumbs.dreamstime.com/t/smiley-face-icon-set-isolated-white-background-different-smiley-face-icon-rating-symbols-smiley-face-icon-set-115826589.jpg"
      },{text: "4",
        url: "https://thumbs.dreamstime.com/t/smiley-face-icon-set-isolated-white-background-different-smiley-face-icon-rating-symbols-smiley-face-icon-set-115826589.jpg"
      },{text: "5",
        url: "https://thumbs.dreamstime.com/t/smiley-face-icon-set-isolated-white-background-different-smiley-face-icon-rating-symbols-smiley-face-icon-set-115826589.jpg"
      }],

      [{text: "1"
      },{text: "2"
      },{text: "3"
      },{text: "4"
      },{text: "5"
      },{text: "6"
      },{text: "7"
      }],
      [{text: "1"
      },{text: "2"
      },{text: "3"
      },{text: "4"
      },{text: "5"
      },{text: "6"
      },{text: "7"
      }]
    ]
    this.choices1 = surveyChoices[0];
    this.choices2 = surveyChoices[1];
    this.surveypage = 2;

    this.testing = false;
    var index = 0;
    this.question = dataset[index];
    var timeList = [];
    var lastTime = 0;

    this.submit = function() {
      if (index%3 == 0 && index !== 0) {
        console.log("here");
      } else {
        index++;
        this.question = dataset[index];
        var nowTime = performance.now();
        var time = nowTime - lastTime;
        time = time.toFixed(2);
        timeList.push(time);
        lastTime = nowTime;
        console.log(timeList);
      }
    }



  </script>
  <style>
    :scope {
      margin: auto;
      text-align: center;
    }

    .button {
      text-align: center;
    }

  </style>


</app>
