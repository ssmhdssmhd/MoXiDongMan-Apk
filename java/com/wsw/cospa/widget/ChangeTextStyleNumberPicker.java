package com.wsw.cospa.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.NumberPicker;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class ChangeTextStyleNumberPicker extends NumberPicker {
    public ChangeTextStyleNumberPicker(Context context) {
        super(context);
    }

    private void updateView(View view) {
        if (view instanceof EditText) {
            EditText editText = (EditText) view;
            editText.setTextColor(getResources().getColor(R.color.arg_res_0x7f060114));
            editText.setTextSize(16.0f);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        updateView(view);
    }

    public ChangeTextStyleNumberPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChangeTextStyleNumberPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        updateView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        updateView(view);
    }
}
