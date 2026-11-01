package com.wsw.cospa.widget.itemtouch;

import androidx.recyclerview.widget.ItemTouchHelper;

/* loaded from: classes2.dex */
public class YolandaItemTouchHelper extends ItemTouchHelper {
    public ItemTouchHelper.Callback mCallback;

    public YolandaItemTouchHelper(ItemTouchHelper.Callback callback) {
        super(callback);
        this.mCallback = callback;
    }

    public ItemTouchHelper.Callback getCallback() {
        return this.mCallback;
    }
}
