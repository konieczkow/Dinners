Ext.define('Dinners.controller.NameFormController', {
extend: 'Ext.app.Controller',
views: ['NameFormView'],
init: function() {
    console.log('Init ');

    Ext.create("Ext.tab.Panel", {
            fullscreen: true,

            items: [{
                    iconCls: 'user',
                    xtype: 'formpanel',
                    url: 'contact.php',
                    layout: 'vbox',

                    items: [{
                                xtype: 'fieldset',
                                items: [{
                                        xtype: 'textfield',
                                        label: 'Your name:'
                                    }]
                            },
                            {
                                xtype: 'button',
                                text: 'Send',
                                ui: 'confirm',
                                handler: function() {
                                    this.up('formpanel').submit();
                            }
                    }]
            }]
            
    });

    this.control({
        'button[go]': {
                tap: function(btn) {
                    viewport = Ext.ComponentQuery.query('my-viewport');
                    target = Ext.ComponentQuery.query(btn.go);
                    viewport[0].setActiveItem(target[0]);
                }
            }
    });
}
});
