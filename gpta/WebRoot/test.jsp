<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>jQuery适合移动设备触摸屏的响应式幻灯片插件|DEMO_jQuery之家-自由分享jQuery、html5、css3的插件库</title>
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/default.css">
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
	<link rel="stylesheet" href="./css/flickity-docs.css" media="screen" />
	<!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="container">
		<header class="htmleaf-header">
			<h1>jQuery适合移动设备触摸屏的响应式幻灯片插件 <span>A Touch, responsive, flickable galleries</span></h1>
			<div class="htmleaf-links">
				<a class="htmleaf-icon icon-home" href="http://www.htmleaf.com/" title="jQuery之家" target="_blank"><span> jQuery之家</span></a>
				<a class="htmleaf-icon icon-arrow-right3" href="http://www.htmleaf.com/jQuery/Slideshow-Scroller/201501291294.html" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
			</div>
		</header>
		
		<div class="hero-gallery js-flickity">
		  <div class="hero-gallery__cell hero-gallery__cell--1">
		    <div class="content-wrap">
		      <h1>Flickity beta</h1>
		      <p class="tagline">Touch, responsive, flickable galleries</p>
		    </div>
		  </div>
		  <div class="hero-gallery__cell hero-gallery__cell--2">
		    <div class="content-wrap">
		      <p class="slogan slogan--easy">Easy to use.</p>
		      <p class="slogan slogan--fun">Fun to flick.</p>
		      <p class="slogan slogan--tagline">Flickity makes galleries, sliders, &amp; carousels that feel lively and effortless.</p>
		    </div>
		  </div>
		  <div class="hero-gallery__cell hero-gallery__cell--3">
		    <div class="content-wrap">
		      <ul class="feature-list">
		        <li>Physics-based animation</li>
		        <li>Touch enable</li>
		        <li>Responsive styling</li>
		        <li>Full-feature API</li>
		      </ul>
		    </div>
		  </div>
		  <div class="hero-gallery__cell hero-gallery__cell--4">
		    <div class="content-wrap">
		      <p class="by-line by-line--made">Made by <b>Metafizzy</b>.</p>
		      <p class="by-line by-line--you">You make the things that matter.</p>
		      <p class="by-line by-line--we">We make the widgets.</p>
		    </div>
		  </div>
		</div>
		<div class="main">
		<div class="content-wrap">
		<h2>Cell style</h2>

		<p>All sizing and styling of the cells are handled by your own CSS.</p>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* cells will take up entire width of container */</span>
		<span class="class">.gallery-cell</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">100%</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">140px</span></span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* half-width cells with margin */</span>
		<span class="class">.gallery-cell</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">50%</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">140px</span></span></span>;
		  <span class="rule"><span class="attribute">margin-right</span>:<span class="value"> <span class="number">10px</span></span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery half-width-margin js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<p>Cells can be different sizes. You can use any unit you like: percent, pixels, etc.</p>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="class">.gallery-cell</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">33%</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">140px</span></span></span>;
		  <span class="rule"><span class="attribute">margin-right</span>:<span class="value"> <span class="number">10px</span></span></span>;
		<span class="rule">}</span></span>
		<span class="class">.gallery-cell</span><span class="class">.size-180</span> <span class="rules">{ <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">180px</span></span></span>; <span class="rule">}</span></span>
		<span class="class">.gallery-cell</span><span class="class">.size-large</span> <span class="rules">{ <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">75%</span></span></span>; <span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery various-size js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell size-180"></div>
		      <div class="gallery-cell size-large"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell size-large"></div>
		    </div>
		  </div>
		</div>

		<p>You can use media queries to show different number of cells for different breakpoints.</p>
		<pre><code class="css"><span class="class">.gallery-cell</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">100%</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">140px</span></span></span>;
		  <span class="rule"><span class="attribute">margin-right</span>:<span class="value"> <span class="number">2%</span></span></span>;
		<span class="rule">}</span></span>

		<span class="at_rule">@<span class="keyword">media</span> screen and ( min-width: <span class="number">768px</span></span>; ) <span class="rules">{
		  <span class="comment">/* show 2 cells for larger devices */</span>
		  <span class="rule"><span class="attribute">.gallery-cell { width</span>:<span class="value"> <span class="number">49%</span></span></span>; <span class="rule">}</span></span>
		}
		</code></pre>

		<div class="gallery media-queried js-flickity">
		  <div class="gallery-cell"></div>
		  <div class="gallery-cell"></div>
		  <div class="gallery-cell"></div>
		  <div class="gallery-cell"></div>
		  <div class="gallery-cell"></div>
		</div>

		<h2>Previous &amp; next buttons</h2>

		<p>Style and position previous &amp; next buttons with CSS.</p>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* big buttons, no circle */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">100px</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">100px</span></span></span>;
		  <span class="rule"><span class="attribute">background</span>:<span class="value"> transparent</span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* arrow color */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="class">.arrow</span> <span class="rules">{
		  <span class="rule"><span class="attribute">fill</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.no-svg</span> <span class="rules">{
		  <span class="rule"><span class="attribute">color</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* hide disabled button */</span>
		<span class="class">.flickity-prev-next-button</span><span class="pseudo">:disabled</span> <span class="rules">{
		  <span class="rule"><span class="attribute">display</span>:<span class="value"> none</span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--margin gallery--prev-next-big-arrow js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* smaller, dark, rounded square */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">30px</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">30px</span></span></span>;
		  <span class="rule"><span class="attribute">border-radius</span>:<span class="value"> <span class="number">5px</span></span></span>;
		  <span class="rule"><span class="attribute">background</span>:<span class="value"> <span class="hexcolor">#333</span></span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* arrow color */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="class">.arrow</span> <span class="rules">{
		  <span class="rule"><span class="attribute">fill</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.no-svg</span> <span class="rules">{
		  <span class="rule"><span class="attribute">color</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* position outside */</span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.previous</span> <span class="rules">{
		  <span class="rule"><span class="attribute">left</span>:<span class="value"> -<span class="number">40px</span></span></span>;
		<span class="rule">}</span></span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.next</span> <span class="rules">{
		  <span class="rule"><span class="attribute">right</span>:<span class="value"> -<span class="number">40px</span></span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--margin gallery--prev-next-small-outside js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>


		<h2>Options</h2>

		<h3>cellAlign</h3>

		<p>Align cells within the gallery element.</p>

		<ul>
		  <li>Values: <code>'center'</code>, <code>'left'</code>, <code>'right'</code></li>
		  <li>Default: <code>'center'</code></li>
		</ul>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">cellAlign: <span class="string">'left'</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery show-neighbors js-flickity"
		      data-flickity-options='{ "cellAlign": "left" }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js"><span class="comment">// default 'center'</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery show-neighbors js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">cellAlign: <span class="string">'right'</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery show-neighbors js-flickity"
		      data-flickity-options='{ "cellAlign": "right" }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<h3>wrapAround</h3>

		<p>At the end of cells, wrap-around to the other end for infinite scrolling.</p>

		<ul>
		  <li>Values: <code>true</code>, <code>false</code></li>
		  <li>Default: <code>false</code></li>
		</ul>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">wrapAround: <span class="literal">true</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery show-neighbors js-flickity"
		      data-flickity-options='{ "wrapAround": true }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<h3>contain</h3>

		<p>Contains cells to gallery element to prevent excess scroll at beginning or end. Has no effect if <code>wrapAround: true</code>.</p>

		<ul>
		  <li>Values: <code>true</code>, <code>false</code></li>
		  <li>Default: <code>false</code></li>
		</ul>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">contain: <span class="literal">true</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--contain-demo js-flickity"
		      data-flickity-options='{ "contain": true }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<h3>freeScroll</h3>

		<p>Enables content to be freely scrolled and flicked without aligning cells to an end position.</p>

		<ul>
		  <li>Values: <code>true</code>, <code>false</code></li>
		  <li>Default: <code>false</code></li>
		</ul>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">freeScroll: <span class="literal">true</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery show-neighbors js-flickity"
		      data-flickity-options='{ "freeScroll": true }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<p>Enable <code>freeScroll</code> and <code>contain</code> for a simple horizontal scroller.</p>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">freeScroll: <span class="literal">true</span>,
		contain: <span class="literal">true</span>,
		<span class="comment">// disable previous &amp; next buttons and dots</span>
		prevNextButtons: <span class="literal">false</span>,
		pageDots: <span class="literal">false</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery show-neighbors js-flickity"
		      data-flickity-options='{ "freeScroll": true, "contain": true, "prevNextButtons": false, "pageDots": false }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<p>Enable <code>freeScroll</code> and <code>wrapAround</code> and you can flick forever, man.</p>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">freeScroll: <span class="literal">true</span>,
		wrapAround: <span class="literal">true</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery show-neighbors js-flickity"
		      data-flickity-options='{ "freeScroll": true, "wrapAround": true }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<h3>autoPlay</h3>

		<p>Automatically advances to the next cell. Delay is 3 seconds if <code>autoPlay: true</code>. Set delay time in milliseconds, for example <code>autoPlay: 1500</code> will advance every 1.5 seconds.</p>

		<p>Auto-playing will pause when mouse is hovered over, and resume when mouse is hovered off. Auto-playing will stop when the gallery is clicked or a cell is selected.</p>

		<ul>
		  <li>Values: <code>true</code>, <code>false</code>, <i>Integer</i></li>
		  <li>Default: <code>false</code></li>
		</ul>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">autoPlay: <span class="literal">true</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--auto-play-demo js-flickity"
		      data-flickity-options='{ "autoPlay": true }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<h3>watchCSS</h3>

		<p>You can enable and disable Flickity with CSS. <code>watchCSS</code> option watches the content of <code>:after</code> of the gallery element. Flickity is enabled if <code>:after</code> <code>content</code> is <code>'flickity'</code>.</p>

		<p>IE8 and Android 2.3 do not support watching <code>:after</code>. Flickity will be disabled when <code>watchCSS: true</code>. Set <code>watchCSS: 'fallbackOn'</code> to enable Flickity for these browsers.</p>

		<ul>
		  <li>Values: <code>true</code>, <code>false</code>, <code>'fallbackOn'</code></li>
		  <li>Default: <code>false</code></li>
		</ul>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">watchCSS: <span class="literal">true</span>
		</code></pre>

		<pre><code class="css"><span class="comment">/* enable Flickity by default */</span>
		<span class="class">.gallery</span><span class="pseudo">:after</span> <span class="rules">{
		  <span class="rule"><span class="attribute">content</span>:<span class="value"> <span class="string">'flickity'</span></span></span>;
		  <span class="rule"><span class="attribute">display</span>:<span class="value"> none</span></span>; <span class="comment">/* hide :after */</span>
		<span class="rule">}</span></span>

		<span class="at_rule">@<span class="keyword">media</span> screen and ( min-width: <span class="number">768px</span> ) </span>{
		  <span class="comment">/* disable Flickity for large devices */</span>
		  <span class="class">.gallery</span><span class="pseudo">:after</span> <span class="rules">{
		    <span class="rule"><span class="attribute">content</span>:<span class="value"> <span class="string">''</span></span></span>;
		  <span class="rule">}</span></span>
		}
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--watch-demo js-flickity"
		      data-flickity-options='{ "watchCSS": true }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<h2>Images</h2>

		<p>Flickity makes beautiful image galleries.</p>

		<pre><code class="html"><span class="tag">&lt;<span class="title">div</span> <span class="attribute">class</span>=<span class="value">"gallery js-flickity"</span>
		  <span class="attribute">data-flickity-options</span>=<span class="value">'{ "imagesLoaded": true, "percentPosition": false }'</span>&gt;</span>
		  <span class="tag">&lt;<span class="title">img</span> <span class="attribute">src</span>=<span class="value">"orange-tree.jpg"</span> <span class="attribute">alt</span>=<span class="value">"orange tree"</span> /&gt;</span>
		  <span class="tag">&lt;<span class="title">img</span> <span class="attribute">src</span>=<span class="value">"submerged.jpg"</span> <span class="attribute">alt</span>=<span class="value">"submerged"</span> /&gt;</span>
		  <span class="tag">&lt;<span class="title">img</span> <span class="attribute">src</span>=<span class="value">"look-out.jpg"</span> <span class="attribute">alt</span>=<span class="value">"look-out"</span> /&gt;</span>
		  ...
		<span class="tag">&lt;/<span class="title">div</span>&gt;</span>
		</code></pre>

		<div class="gallery gallery--images-demo js-flickity"
		  data-flickity-options='{ "imagesLoaded": true, "percentPosition": false }'>
		    <!-- images from unsplash.com -->
		    <img src="img/sample-01.jpg" alt="orange tree" />
		    <img src="img/sample-02.jpg" alt="submerged" />
		    <img src="img/sample-03.jpg" alt="look-out" />
		    <img src="img/sample-04.jpg" alt="freedom tower" />
		    <img src="img/sample-05.jpg" alt="drizzle" />
		    <img src="img/sample-01.jpg" alt="cat nose" />
		    <!-- <img src="http://i.imgur.com/r8p3Xgq.jpg" />
		    <img src="http://i.imgur.com/hODreXI.jpg" />
		    <img src="http://i.imgur.com/UORFJ3w.jpg" /> -->
		</div>

		<h3>imagesLoaded</h3>

		<p>Unloaded images have no size, which can throw off cell positions. To fix this, the <code>imagesLoaded</code> option re-positions cells once their images have loaded.</p>

		<ul>
		  <li>Values: <code>true</code>, <code>false</code></li>
		  <li>Default: <code>false</code></li>
		</ul>

		<div class="example">
		  <div class="example__code">
		<pre><code class="js">imagesLoaded: <span class="literal">true</span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--images-loaded-demo js-flickity"
		      data-flickity-options='{ "imagesLoaded": true }'>
		        <!-- images from unsplash.com -->
		        <img src="img/sample-01.jpg" alt="orange tree" />
		    <img src="img/sample-02.jpg" alt="submerged" />
		    <img src="img/sample-03.jpg" alt="look-out" />
		    <img src="img/sample-04.jpg" alt="freedom tower" />
		    <img src="img/sample-05.jpg" alt="drizzle" />
		    <img src="img/sample-01.jpg" alt="cat nose" />
		    </div>
		  </div>
		</div>

		<div class="call-out">
		  <p>This option requires you to include <a href="http://imagesloaded.desandro.com">imagesLoaded</a> on your site.</p>

		<pre><code class="html"><span class="tag">&lt;<span class="title">script</span> <span class="attribute">src</span>=<span class="value">"/path/to/imagesloaded.pkgd.js"</span>&gt;</span><span class="javascript"></span><span class="tag">&lt;/<span class="title">script</span>&gt;</span>
		</code></pre>
		  <p>This option may not work with RequireJS or Browserify for Flickity beta.</p>
		</div>

		<h2>Other options</h2>

		<p>Defaults shown.</p>

		<pre><code class="js">accessibility: <span class="literal">true</span>,
		<span class="comment">// enable keyboard navigation, pressing left &amp; right keys</span>

		cellSelector: <span class="literal">undefined</span>,
		<span class="comment">// specify selector for cell elements</span>

		draggable: <span class="literal">true</span>,
		<span class="comment">// enables dragging &amp; flicking</span>

		initialIndex: <span class="number">0</span>,
		<span class="comment">// zero-based index of the initial selected cell</span>

		percentPosition: <span class="literal">true</span>,
		<span class="comment">// sets positioning in percent values, rather than pixels</span>
		<span class="comment">// Enable if items have percent widths</span>
		<span class="comment">// Disable if items have pixel widths, like images</span>

		pageDots: <span class="literal">true</span>,
		<span class="comment">// enables page dots</span>

		prevNextButtons: <span class="literal">true</span>,
		<span class="comment">// creates and enables buttons to click to previous &amp; next cells</span>

		resizeBound: <span class="literal">true</span>,
		<span class="comment">// listens to window resize events to adjust size &amp; positions</span>

		rightToLeft: <span class="literal">false</span>
		<span class="comment">// enables right-to-left ordering for right-to-left languages</span>
		</code></pre>

		<h2>Previous &amp; next buttons</h2>

		<p>Style and position previous &amp; next buttons with CSS.</p>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* big buttons, no circle */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">100px</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">100px</span></span></span>;
		  <span class="rule"><span class="attribute">background</span>:<span class="value"> transparent</span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* arrow color */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="class">.arrow</span> <span class="rules">{
		  <span class="rule"><span class="attribute">fill</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.no-svg</span> <span class="rules">{
		  <span class="rule"><span class="attribute">color</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* hide disabled button */</span>
		<span class="class">.flickity-prev-next-button</span><span class="pseudo">:disabled</span> <span class="rules">{
		  <span class="rule"><span class="attribute">display</span>:<span class="value"> none</span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--margin gallery--prev-next-big-arrow js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* smaller, dark, rounded square */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">30px</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">30px</span></span></span>;
		  <span class="rule"><span class="attribute">border-radius</span>:<span class="value"> <span class="number">5px</span></span></span>;
		  <span class="rule"><span class="attribute">background</span>:<span class="value"> <span class="hexcolor">#333</span></span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* arrow color */</span>
		<span class="class">.flickity-prev-next-button</span> <span class="class">.arrow</span> <span class="rules">{
		  <span class="rule"><span class="attribute">fill</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.no-svg</span> <span class="rules">{
		  <span class="rule"><span class="attribute">color</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* position outside */</span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.previous</span> <span class="rules">{
		  <span class="rule"><span class="attribute">left</span>:<span class="value"> -<span class="number">40px</span></span></span>;
		<span class="rule">}</span></span>
		<span class="class">.flickity-prev-next-button</span><span class="class">.next</span> <span class="rules">{
		  <span class="rule"><span class="attribute">right</span>:<span class="value"> -<span class="number">40px</span></span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--margin gallery--prev-next-small-outside js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>


		<h2>Page dots</h2>

		<p>Style and position page dots with CSS.</p>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* position dots in gallery */</span>
		<span class="class">.flickity-page-dots</span> <span class="rules">{
		  <span class="rule"><span class="attribute">bottom</span>:<span class="value"> <span class="number">0px</span></span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* white circles */</span>
		<span class="class">.flickity-page-dots</span> <span class="class">.dot</span> <span class="rules">{
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">12px</span></span></span>;
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">12px</span></span></span>;
		  <span class="rule"><span class="attribute">opacity</span>:<span class="value"> <span class="number">1</span></span></span>;
		  <span class="rule"><span class="attribute">background</span>:<span class="value"> transparent</span></span>;
		  <span class="rule"><span class="attribute">border</span>:<span class="value"> <span class="number">2px</span> solid white</span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* fill-in selected dot */</span>
		<span class="class">.flickity-page-dots</span> <span class="class">.dot</span><span class="class">.is-selected</span> <span class="rules">{
		  <span class="rule"><span class="attribute">background</span>:<span class="value"> white</span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--margin gallery--o-dots js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>

		<div class="example">
		  <div class="example__code">
		<pre><code class="css"><span class="comment">/* position dots up a bit */</span>
		<span class="class">.flickity-page-dots</span> <span class="rules">{
		  <span class="rule"><span class="attribute">bottom</span>:<span class="value"> -<span class="number">22px</span></span></span>;
		<span class="rule">}</span></span>
		<span class="comment">/* dots are lines */</span>
		<span class="class">.flickity-page-dots</span> <span class="class">.dot</span> <span class="rules">{
		  <span class="rule"><span class="attribute">height</span>:<span class="value"> <span class="number">4px</span></span></span>;
		  <span class="rule"><span class="attribute">width</span>:<span class="value"> <span class="number">40px</span></span></span>;
		  <span class="rule"><span class="attribute">margin</span>:<span class="value"> <span class="number">0</span></span></span>;
		  <span class="rule"><span class="attribute">border-radius</span>:<span class="value"> <span class="number">0</span></span></span>;
		<span class="rule">}</span></span>
		</code></pre>
		  </div>
		  <div class="example__demo">
		    <div class="gallery gallery--margin gallery--line-dots js-flickity">
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		</div>
		</div>
		</div>
	</div>
	
	
	<div data-role="page">
		<div data-role="header" data-position="fixed">
			<h1>幻灯图片</h1>
			<div data-role="navbar">
				<ul>
					<li><a href="#">ss</a></li>
					<li><a href="#">ss</a></li>
					<li><a href="#">ss</a></li>
				</ul>
			</div>
		</div>
		<div data-role="content">
			
		  
		  <div class="example__demo">
		    <div class="gallery gallery--auto-play-demo js-flickity"
		      data-flickity-options='{ "autoPlay": true }'>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		      <div class="gallery-cell"></div>
		    </div>
		  </div>
		
		</div>
		
		
	<table data-role="table" data-mode="reflow"  class="ui-responsive table-stroke">
     <thead>
       <tr>
         <th data-priority="2">Rank</th>
         <th>Movie Title</th>
         <th data-priority="3">Year</th>
         <th data-priority="1"><abbr title="Rotten Tomato Rating">Rating</abbr></th>
         <th data-priority="5">Reviews</th>
       </tr>
     </thead>
     <tbody>
       <tr>
         <th>1</th>
         <td><a href="#" data-rel="external">Citizen Kane</a></td>
         <td>1941</td>
         <td>100%</td>
         <td>74</td>
       </tr>
       <tr>
         <th>2</th>
         <td><a href="#" data-rel="external">Casablanca</a></td>
         <td>1942</td>
         <td>97%</td>
         <td>64</td>
       </tr>
       </tbody>
	</table>
<!-- 		折叠组标记 -->
		<div data-role="collapsible-set">
		<div data-role="collapsible" data-collapsed="false">
			<h1>热门景点推荐</h1>
			
		
		</div>
		<div data-role="collapsible">
			<h1>first</h1>
			<p><a href="#">aa</a></p>
			<p><a href="#">aa</a></p>
		</div>
		</div>
		
<!-- 		列表 -->
		<ul data-role="listview">
				<li><a href="#">ss</a></li>
				<li><a href="#">ss</a></li>
				<li><a href="#">ss</a></li>
				<li><a href="#">ss</a></li>
				<li><a href="#">ss</a></li>
			
		</ul>
		
		<div data-role="footer">
			<div data-role="navbar">
				<ul>
					<li><a href="#">xx</a></li>
					<li><a href="#">xd</a></li>
					<li><a href="#">ds</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<script src="./js/flickity-docs.min.js"></script>
	
</body>
</html>