Ext.Loader.setConfig({enabled:true});

Ext.application({
        name: 'Dinners',
        views: ["PlacesContainer"],

        launch: function() {
            var placesContainer = Ext.create("Dinners.view.PlacesContainer");
        	Ext.Viewport.add(placesContainer);

            console.log('launch!');
        }
});