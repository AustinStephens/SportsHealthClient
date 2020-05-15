function thumbnailView(value) {
		return "<a href=\"./index.jsp?view=article&id="+ value.articleID +"\"><div class=\"inner\" style=\"background-image: url('uploads/images/"+value.articleThumbnail+"')\">"+value.articleTitle+"</div></a>";
}

function olListView(value) {
	return "<a href=\"index.jsp?view=article&id="+value.articleID+"\">"+value.articleTitle+"</a>";
}