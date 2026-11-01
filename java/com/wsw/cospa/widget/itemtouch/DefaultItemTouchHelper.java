package com.wsw.cospa.widget.itemtouch;

import com.wsw.cospa.widget.itemtouch.DefaultItemTouchHelpCallback;

/* loaded from: classes2.dex */
public class DefaultItemTouchHelper extends YolandaItemTouchHelper {
    private DefaultItemTouchHelpCallback itemTouchHelpCallback;

    public DefaultItemTouchHelper(DefaultItemTouchHelpCallback.OnItemTouchCallbackListener onItemTouchCallbackListener) {
        super(new DefaultItemTouchHelpCallback(onItemTouchCallbackListener));
        this.itemTouchHelpCallback = (DefaultItemTouchHelpCallback) getCallback();
    }

    public void setDragEnable(boolean z) {
        this.itemTouchHelpCallback.setDragEnable(z);
    }

    public void setSwipeEnable(boolean z) {
        this.itemTouchHelpCallback.setSwipeEnable(z);
    }
}
