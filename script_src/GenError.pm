package GenError;


use strict;
use StockUtil;


sub new
{
        my $class = shift();
        my $self = {};
        bless ($self,$class);
}

sub display
{
   my $self = shift(); 
   my $errstr = shift if @_;
   
   my $out_buffer = ();

   print StockUtil::headerHtml();
   $out_buffer = <<"OUT_HTML";
<div id="main">
        <div id="banner">
                   <img src="/~abrooks/DCBANNER_CROP2.jpg">
        </div>
<div>

<div id="app_error">
	<span class="errtext"> <p> $errstr </p> </span>
</div>

OUT_HTML
   print $out_buffer;
   StockUtil::footerHtml();
}










1;
