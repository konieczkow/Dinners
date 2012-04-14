Ext.define('Dinners.view.NameFormViewport', {
	extend: 'Ext.Container',
	xtype: 'my-viewport',
	config: {
	    layout: {
	        type: 'card',
	        animation: {
	            type: 'slide',
	            direction: 'left'
	        	}
	    	},
	    	fullscreen: true,
	    	items: [{xtype: 'my-list'}, {xtype: 'my-detail'}]
		}
});