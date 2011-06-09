var sliderIntervalId = 0;
var sliderHeight = 232;
var sliding = false;
var slideSpeed = 10;

function Slide()
{
    if(sliding)
       return;
    sliding = true;
    if(sliderHeight == 232)
       sliderIntervalId = setInterval('SlideUpRun()', 30);
    else
       sliderIntervalId = setInterval('SlideDownRun()', 30);
}

function SlideUpRun()
{
    slider = document.getElementById('exampleSlider');
    if(sliderHeight <= 0)
    {
       sliding = false;
       sliderHeight = 0;
       slider.style.height = '0px';
       clearInterval(sliderIntervalId);
    }
    else
    {
       sliderHeight -= slideSpeed;
       if(sliderHeight < 0)
          sliderHeight = 0;
       slider.style.height = sliderHeight + 'px';
    }
}

function SlideDownRun()
{
    slider = document.getElementById('exampleSlider');
    if(sliderHeight >= 232)
    {
       sliding = false;
       sliderHeight = 232;
       slider.style.height = '232px';
       clearInterval(sliderIntervalId);
    }
    else
    {
       sliderHeight += slideSpeed;
       if(sliderHeight > 232)
          sliderHeight = 232;
       slider.style.height = sliderHeight + 'px';
    }
}