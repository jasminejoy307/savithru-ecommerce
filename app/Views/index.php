<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Ajax Load More Data on Page Scroll in Codeigniter 4</title>
	<style>
		body {
			height: 1000px;
		}
	</style>
</head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>
    <div class="container">
        <?php if($clients): ?>
            <?php foreach($clients as $data): ?>
                <div class="card mb-3">
                   <h3><?php echo $data['client_name']; ?></h3>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>
        <div id="loadMoreBlock"></div>
    </div>
</body>


<script>
    
    var baseURL = "<?php echo base_url(); ?>";
var page = 1;
var isLoading = false;
var allDataLoaded = false;

$(window).scroll(function () {
    if ($(window).scrollTop() + $(window).height() >= $(document).height() - 555) {
        if (!isLoading && !allDataLoaded) {
            isLoading = true;
            page++; // Increment page number
            initLoadMore(page);
        }
    }
});

function initLoadMore(page) {
    $.ajax({
        url: baseURL + "/onScrollLoadMore?page=" + page,
        type: "GET",
        dataType: "html",
    }).done(function (data) {
        isLoading = false;
        if (data.trim() == '') {
            allDataLoaded = true;
            $('#loader').hide();
            console.log('All data loaded');
            return;
        }
        $('#loader').hide();
        $('#loadMoreBlock').append(data).show('slow');
    }).fail(function (jqXHR, ajaxOptions, thrownError) {
        console.log('Failed to load more data');
    });
}



</script>

</html>