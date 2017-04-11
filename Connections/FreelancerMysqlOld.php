<?php // Set up database information

$Freelancer = mysql_pconnect($hostname_Freelancer, $username_Freelancer, $password_Freelancer) or trigger_error(mysql_error(),E_USER_ERROR); 

mysql_select_db($database_Freelancer, $Freelancer);
$query_rs_freelancer = "SELECT * FROM portfolio"; // Get whole Portfolio table
$rs_freelancer = mysql_query($query_rs_freelancer, $Freelancer) or die(mysql_error());
$row_rs_freelancer = mysql_fetch_assoc($rs_freelancer); // Get first row
$totalRows_rs_freelancer = mysql_num_rows($rs_freelancer);

// Miscellaneous functions

// Returns complete modal name 
function appendIndexToModal($modalName, $index) {
	return ($modalName . $index); // Append index to modalName string
}

// Prints the compiled HTML
function displayBlock($thisString) {
	echo $thisString;
}

// Initialization 

$pagetitle = "Freelancer-DB"; // Title for project
$portfolioModal = "#portfolioModal"; /* base string for modal name */

// Breakout database info for first row
$imageFileName = $row_rs_freelancer['FileName']; /* get image name */
$itemName = $row_rs_freelancer['Title'];
$itemDescription = $row_rs_freelancer['Description'];
$itemClient = $row_rs_freelancer['Client'];
$itemDate = $row_rs_freelancer['Date'];
$itemService = $row_rs_freelancer['Service'];

/* These to be filled in */
$thumbString = "";
$modalString = "";

$currentItemIndex = 0;

// Step thru rows til no more
while ($imageFileName != "") {

	/* Create modal name (goes in Thumbs and Modals) */
	$modalNameThumb = appendIndexToModal($portfolioModal, $currentItemIndex);

	$thumbFileName = $imageFileName; /* Not always, but in this case = */

    // Create paths
	$thisThumbFilePath = "img/portfolio/".$thumbFileName;
	$thisImageFilePath = "img/portfolio/".$imageFileName;

	/* This HTML used for each Thumb block */
	$nextThumbString = <<<HERE_DOC_DELIMITER
	<div class="col-sm-4 portfolio-item">
                    <a data-index="$currentItemIndex" href="$modalNameThumb" class="portfolio-link thumbnail" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="$thisThumbFilePath" class="img-responsive" alt="Item Thumb">
                    </a>
                </div>
HERE_DOC_DELIMITER;

	/* Append this to string of thumb HTML blocks */
	$thumbString .= $nextThumbString;

	/* Process the Modal blocks... Remove the preceding '#' */
	$modalNameId = substr($modalNameThumb, 1);

	/* This HTML used for each Modal HTML block */
	$nextModalString = <<<HERE_DOC_DELIMITER
    <div class="portfolio-modal modal fade" id="$modalNameId" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>$itemName</h2>
                            <hr class="star-primary">
                            <img src="$thisImageFilePath" class="img-responsive img-centered" alt="">
                            <p><strong>$itemDescription</strong></p>
                            <ul class="list-inline item-details">
                                <li>Client: $itemClient</li>
                                <li>Date: $itemDate</li>
                                <li>Service: $itemService</li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
HERE_DOC_DELIMITER;

	/* Append to string of modals */
	$modalString .= $nextModalString;

	/* get next item vars if exist */
	$row_rs_freelancer = mysql_fetch_assoc($rs_freelancer);
	$imageFileName = $row_rs_freelancer['FileName'];
	$itemName = $row_rs_freelancer['Title'];
	$itemDescription = $row_rs_freelancer['Description'];
	$itemClient = $row_rs_freelancer['Client'];
	$itemDate = $row_rs_freelancer['Date'];
	$itemService = $row_rs_freelancer['Service'];

	$currentItemIndex++;
} /* end while */?>