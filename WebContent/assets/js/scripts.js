$(document).ready(function(){
	
	// Select all tabs
	$('.nav-tabs a').click(function(){
	  $(this).tab('show');
	})

	// Select tab by name
	$('.nav-tabs a[href="#popular"]').tab('show')
	$('.nav-tabs a[href="#new"]').tab('show')
	
	console.log("print");
	
	//listNavigations();

	view = getQueryStringVariable('view');
	if(view == 'article') {
		articleID = getQueryStringVariable('id');
		getArticle(articleID);
	} else if(view == 'articlelistpop') {
		listPopArticles();
	} else if(view == 'articlelistnew') {
		listNewArticles();
	}else {
		listPopThumbnails();
		listNewThumbnails();
		listNewThumbnailsWO();
		listPopThumbnailsWO();
	}
});

var getQueryStringVariable = function (field, url) {
	var href = url? url : window.location.href;
	var reg = new RegExp( '[?&]' + field + '=([^&#]*)', 'i');
	var string = reg.exec(href);
	return string ? string[1] : null;
}

function listNewThumbnails(){

	$.ajax({
		url: "../SportsHealthAPI/rest/articles/thumbnailnew/",
		type: 'GET',
		dataType : "json",
        contentType: "application/json",
	}).fail(function(response) {

    }).done(function(response) {
    	
    	var i = 1;
    	
    	$.each(response, function(key, value) {

    		var thumbnailHTML = thumbnailView(value);
    	
    		$("#newArticle" + i).append(thumbnailHTML);
    		
    		i++;
    	});
	});
}

function listPopThumbnails(){

	$.ajax({
		url: "../SportsHealthAPI/rest/articles/thumbnailpop/",
		type: 'GET',
		dataType : "json",
        contentType: "application/json",
	}).fail(function(response) {

    }).done(function(response) {
    	
    	var i = 1;
    	
    	$.each(response, function(key, value) {

    		var thumbnailHTML = thumbnailView(value);
    	
    		$("#popArticle" + i).append(thumbnailHTML);
    		
    		i++;
    	});
	});
}

function listNewThumbnailsWO(){

	$.ajax({
		url: "../SportsHealthAPI/rest/articles/thumbnailnew/",
		type: 'GET',
		dataType : "json",
        contentType: "application/json",
	}).fail(function(response) {

    }).done(function(response) {
    	
    	var i = 1;
    	
    	$.each(response, function(key, value) {

    		var thumbnailHTML = thumbnailView(value);
    	
    		$("#newWorkout" + i).append(thumbnailHTML);
    		
    		i++;
    	});
	});
}

function listPopThumbnailsWO(){

	$.ajax({
		url: "../SportsHealthAPI/rest/articles/thumbnailpop/",
		type: 'GET',
		dataType : "json",
        contentType: "application/json",
	}).fail(function(response) {

    }).done(function(response) {
    	
    	var i = 1;
    	
    	$.each(response, function(key, value) {

    		var thumbnailHTML = thumbnailView(value);
    	
    		$("#popWorkout" + i).append(thumbnailHTML);
    		
    		i++;
    	});
	});
}

function listPopArticles(){

	$.ajax({
		url: "../SportsHealthAPI/rest/articles/listpop/",
		type: 'GET',
		dataType : "json",
        contentType: "application/json",
	}).fail(function(response) {

    }).done(function(response) {
    	
    	var i = 1;
    	
    	$.each(response, function(key, value) {

    		var thumbnailHTML = olListView(value);
    	
    		$("#pop" + i).append(thumbnailHTML);
    		
    		i++;
    	});
	});
}

function listNewArticles(){

	$.ajax({
		url: "../SportsHealthAPI/rest/articles/listnew/",
		type: 'GET',
		dataType : "json",
        contentType: "application/json",
	}).fail(function(response) {

    }).done(function(response) {
    	
    	var i = 1;
    	
    	$.each(response, function(key, value) {

    		var thumbnailHTML = olListView(value);
    	
    		$("#pop" + i).append(thumbnailHTML);
    		
    		i++;
    	});
	});
}

function getArticle(articleID){
	
	$.ajax({
		url: "../SportsHealthAPI/rest/articles/"+articleID,
		type: 'GET',
		dataType : "html",
        contentType: "text/html",
	}).fail(function(response) {
		console.log(JSON.stringify(response));

    }).done(function(response){
    	
    	$("#article").append(response);
	});
}