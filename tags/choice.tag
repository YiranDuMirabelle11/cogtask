<choice>
  <div class="">
    <span onclick= {textClick} > {choice.text} </span>
    <img if={choice.url} src={ choice.url } onclick={ surveyclick } alt={ choice.text }>
  </div>


<script>
  console.log("choice");
  var tag = this;
  this.surveyclick = function(event) {
    console.log(event.currentTarget.alt);
    this.opts.surveypage++;
    this.parent.update();
    console.log(this.opts.surveypage)
  }

  this.textClick = function(event) {
    console.log(event.currentTarget.innerText);
    console.log(this.opts.surveypage)
    tag.opts.surveypage++;
  };

</script>


</choice>
