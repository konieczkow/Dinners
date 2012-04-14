Ext.define("Dinners.view.PlacesContainer", {
    extend: "Ext.Container",
    config: {
        items: [{
            xtype: "toolbar",
            docked: "top",
            title: "Places propositions:",
            items: [{
                xtype: "spacer"
             },
             {
                xtype: "button",
                text: "New",
                ui: "action",
                id:"new-note-btn"
            }]
        }]
    }
});