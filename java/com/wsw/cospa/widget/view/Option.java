package com.wsw.cospa.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class Option extends FrameLayout {
    public TextView mSummaryView;
    public TextView mTitleView;

    public Option(Context context) {
        this(context, null);
    }

    private void initText(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Option);
        String string = typedArrayObtainStyledAttributes.getString(1);
        String string2 = typedArrayObtainStyledAttributes.getString(0);
        this.mTitleView = (TextView) findViewById(R.id.arg_res_0x7f090124);
        this.mSummaryView = (TextView) findViewById(R.id.arg_res_0x7f090123);
        this.mTitleView.setText(string);
        this.mSummaryView.setText(string2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setSummary(CharSequence charSequence) {
        this.mSummaryView.setText(charSequence);
    }

    public Option(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Option(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.arg_res_0x7f0c0064, this);
        initText(context, attributeSet);
    }
}
