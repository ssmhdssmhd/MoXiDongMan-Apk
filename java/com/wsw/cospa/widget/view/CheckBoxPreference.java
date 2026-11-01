package com.wsw.cospa.widget.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.support.v4.v02;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class CheckBoxPreference extends FrameLayout implements View.OnClickListener {
    private AppCompatCheckBox mCheckBox;
    private String mPreferenceKey;

    public CheckBoxPreference(Context context) {
        this(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Option);
        String string = typedArrayObtainStyledAttributes.getString(1);
        String string2 = typedArrayObtainStyledAttributes.getString(0);
        this.mCheckBox = (AppCompatCheckBox) findViewById(R.id.arg_res_0x7f090122);
        TextView textView = (TextView) findViewById(R.id.arg_res_0x7f090124);
        TextView textView2 = (TextView) findViewById(R.id.arg_res_0x7f090123);
        textView.setText(string);
        textView2.setText(string2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void bindPreference(String str, boolean z) {
        this.mPreferenceKey = str;
        this.mCheckBox.setChecked(v02.m8711if(CartoonApplication.m24690do()).m8713do(str, z));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mPreferenceKey != null) {
            boolean z = !this.mCheckBox.isChecked();
            this.mCheckBox.setChecked(z);
            v02.m8711if(CartoonApplication.m24690do()).m8712case(this.mPreferenceKey, z);
        }
    }

    public void setColorStateList(ColorStateList colorStateList) throws NoSuchFieldException {
        this.mCheckBox.setSupportButtonTintList(colorStateList);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.arg_res_0x7f0c0065, this);
        init(context, attributeSet);
        setOnClickListener(this);
    }
}
