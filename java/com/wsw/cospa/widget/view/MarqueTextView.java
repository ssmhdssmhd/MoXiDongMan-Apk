package com.wsw.cospa.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes2.dex */
public class MarqueTextView extends AppCompatTextView {
    public MarqueTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }

    public MarqueTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MarqueTextView(Context context) {
        super(context);
    }
}
