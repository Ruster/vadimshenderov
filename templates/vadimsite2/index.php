<?php
defined('_JEXEC') or die;

require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . 'functions.php';

// Create alias for $this object reference:
$document = $this;

// Shortcut for template base url:
$templateUrl = $document->baseurl . '/templates/' . $document->template;

Artx::load("Artx_Page");

// Initialize $view:
$view = $this->artx = new ArtxPage($this);

// Decorate component with style:
$view->componentWrapper();

JHtml::_('behavior.framework', true);
?>
<!DOCTYPE html>
<html dir="ltr" lang="<?php echo $document->language; ?>">
<head>
    <jdoc:include type="head" />
    <link rel="stylesheet" href="<?php echo $document->baseurl; ?>/templates/system/css/system.css" />
    <link rel="stylesheet" href="<?php echo $document->baseurl; ?>/templates/system/css/general.css" />

    <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="<?php echo $templateUrl; ?>/css/template.ie7.css" media="screen" /><![endif]-->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lobster|Cabin&amp;subset=latin">

    <script>if ('undefined' != typeof jQuery) document._artxJQueryBackup = jQuery;</script>
    <script src="<?php echo $templateUrl; ?>/jquery.js"></script>
    <script>jQuery.noConflict();</script>

    <script src="<?php echo $templateUrl; ?>/script.js"></script>
    <script>if (document._artxJQueryBackup) jQuery = document._artxJQueryBackup;</script>
	
	<script type="text/javascript" src="../vadimshenderov.com/templates/vadimsite2/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.rollover-vk,.rollover-od,.rollover-fb').append('<span class="hover"></span>').each(function () {
	  		var $span = $('> span.hover', this).css('opacity', 0);
	  		$(this).hover(function () {
	    		$span.stop().fadeTo(500, 1);
	 		}, function () {
	   	$span.stop().fadeTo(500, 0);
	  		});
		});
	});
</script>
</head>
<body>
<?php 
$app = JFactory::getApplication();
$menu = $app->getMenu();
if ($menu->getActive() == $menu->getDefault()) { ?>
   <body class="bg_home"></body>
<?php } else { ?>
    <body class="bg_other"></body>
<?php } ?>
 
<div id="main">
<?php if ($view->containsModules('position-1', 'position-28', 'position-29')) : ?>
<nav class="nav clearfix">
<?php if ($view->containsModules('position-28')) : ?>
<div class="hmenu-extra1"><?php echo $view->position('position-28'); ?></div>
<?php endif; ?>
<?php if ($view->containsModules('position-29')) : ?>
<div class="hmenu-extra2"><?php echo $view->position('position-29'); ?></div>
<?php endif; ?>
<?php echo $view->position('position-1'); ?>
     </nav>
<?php endif; ?>
<header class="header clearfix"><?php echo $view->position('position-30', 'nostyle'); ?>
    <div class="shapes">
<div class="object1677896991" data-left="46.11%"></div>
<?php
$app = JFactory::getApplication();
$menu = $app->getMenu();
  if ($menu->getActive() !== $menu->getDefault()) {
  echo 
  '<div class="object791978894" data-left="96.59%"></div>';
}else{
 }
 ?>
            </div>           
</header>
<div class="sheet clearfix">     
<?php echo $view->positions(array('position-16' => 3, 'position-17' => 33, 'position-18' => 34), 'block'); ?>
<div class="layout-wrapper clearfix">
                <div class="content-layout">
                    <div class="content-layout-row"> 
                        <div class="layout-cell content clearfix">											
<?php
  $app = JFactory::getApplication();
  $menu = $app->getMenu();
  if ($menu->getActive() !== $menu->getDefault()) {
  echo '<jdoc:include type="component" />';
  }else{
 }
?>
                        </div>
                        <?php if ($view->containsModules('position-6', 'position-8', 'position-3')) : ?>
<div class="layout-cell sidebar2 clearfix">
<?php echo $view->position('position-6', 'block'); ?>
<?php echo $view->position('position-8', 'block'); ?>
<?php echo $view->position('position-3', 'block'); ?>
                        </div>
<?php endif; ?>
                    </div>
                </div>
            </div>
<div class="footer-space"></div>
    </div>
<div class="footer-picture">Нижняя часть</div>
<footer class="footer clearfix"><?php echo $view->position('position-27', 'nostyle'); ?></footer>
</div>
<div class="share42init" data-url="http://vadimshenderov.com/" data-title="Художник Вадим Шендеров" data-top1="150" data-top2="20" data-margin="0"></div>
<script type="text/javascript" src="http://vadimshenderov.com/share42/share42.js"></script>
</body>
</html>