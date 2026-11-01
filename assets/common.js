//window.location="http://www.baidu.com";
//var doc;
var html;

function init(defaluthtml){
	html = defaluthtml;
    //var result = parseHtml(defaluthtml);
    //doc = jQuery(result);
}

function getElements(selector){
	return doc.find(selector);
}

function parseHtml(html) {
	// Create an iFrame object that will be used to render the HTML in order to
	// get the DOM objects
	// created - this is a far quicker way of achieving the HTML to DOM
	// conversion than trying
	// to transform the HTML objects one-by-one
	var oIframe = window.document.createElement('iframe');
	// Hide the iFrame from view
	oIframe.style.display = 'none';
	if (window.document.body)
		window.document.body.appendChild(oIframe);
	else
		window.document.documentElement.appendChild(oIframe);

	// Open the iFrame DOM object and write in our HTML
	oIframe.contentDocument.open();
	oIframe.contentDocument.write(html);
	oIframe.contentDocument.close();

	// Return the document body object containing the HTML that was just
	// added to the iFrame as DOM objects
	var oBody = oIframe.contentDocument.body;

	// TODO: Remove the iFrame object created to cleanup the DOM

	return oBody;
}

function getAttibutes(element) {
	var attr = [];
	var i=0;
	for ( var key in element) {
		try {
			if (typeof (element[key]) == 'string') {
			//	s += key + "=" + element[key] + "\r\n";
				attr[i++] = key;
			}

		} catch (e) {
	
		}
	}
	return attr;
}
