{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<div id="containerWrapper">
		<header id="header">
		    	{* Logo *}
		    	<div id="logo">
		    		<h1><a href="/">{$siteTitle}</a></h1>
		    	</div>

		    	{* Navigation *}
		    	<nav id="navigation">
		    		<h4>{$lblMainNavigation|ucfirst}</h4>
		    		{$var|getnavigation:'page':0:1}
		    	</nav>

		    	{* Top position *}
		    	{iteration:positionTop}
		    		{$positionTop.blockContent}
		    	{/iteration:positionTop}

		</header>
		<div id="contentWrapper" class="content clearfix">
			<div id="main">
			    {* Main position *}
			    {iteration:positionMain}
			        {option:positionMain.blockIsHTML}
			        		<div class="inner">
			        			<div class="bd content">
			        				{$positionMain.blockContent}
			        			</div>
			        		</div>
			        {/option:positionMain.blockIsHTML}
			        {option:!positionMain.blockIsHTML}
			        	{$positionMain.blockContent}
			        {/option:!positionMain.blockIsHTML}
			    {/iteration:positionMain}
			</div>

			<div id="right">
				{* Right position *}
				{iteration:positionRight}
					{option:positionRight.blockIsHTML}
							<div class="inner">
								<div class="bd content">
									{$positionRight.blockContent}
								</div>
							</div>
					{/option:positionRight.blockIsHTML}
					{option:!positionRight.blockIsHTML}
						{$positionRight.blockContent}
					{/option:!positionRight.blockIsHTML}
				{/iteration:positionRight}
			</div>
		</div>
		<noscript>
		    <div class="message notice">
		    	<h4>{$lblEnableJavascript|ucfirst}</h4>
		    	<p>{$msgEnableJavascript}</p>
		    </div>
		</noscript>
		<div id="bottomWrapper">
			<div id="bottom">
				<div id="bottomLeft">
					{* BottomLeft position *}
					{iteration:positionBottomLeft}
						{option:positionBottomLeft.blockIsHTML}
								<div class="inner">
									<div class="bd content">
										{$positionBottomLeft.blockContent}
									</div>
								</div>
						{/option:positionBottomLeft.blockIsHTML}
						{option:!positionBottomLeft.blockIsHTML}
							{$positionBottomLeft.blockContent}
						{/option:!positionBottomLeft.blockIsHTML}
					{/iteration:positionBottomLeft}
				</div>
				<div id="bottomRight">
					{* BottomRight position *}
					{iteration:positionBottomRight}
						{option:positionBottomRight.blockIsHTML}
								<div class="inner">
									<div class="bd content">
										{$positionBottomRight.blockContent}
									</div>
								</div>
						{/option:positionBottomRight.blockIsHTML}
						{option:!positionBottomRight.blockIsHTML}
							{$positionBottomRight.blockContent}
						{/option:!positionBottomRight.blockIsHTML}
					{/iteration:positionBottomRight}
				</div>
			</div>
			{include:core/layout/templates/footer.tpl}
		</div>
	</div>
	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/core/js/divan.js"></script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>