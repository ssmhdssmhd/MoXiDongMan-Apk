package com.wsw.cospa.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.j10;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.textfield.TextInputEditText;
import com.wsw.cospa.R;
import com.wsw.cospa.utils.Ctry;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class TextInputSpinner extends TextInputEditText {
    public CharSequence[] mEntities;
    public ListPopupWindow mPopup;

    public TextInputSpinner(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        init(context, attributeSet, 0);
    }

    @SuppressLint({"RestrictedApi"})
    private void init(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        setInputType(0);
        setCursorVisible(false);
        Drawable drawable = getResources().getDrawable(R.drawable.arg_res_0x7f0800b5);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        setCompoundDrawablesRelative(null, null, drawable, null);
        Ctry.m27139case(drawable, getResources().getColor(R.color.arg_res_0x7f060102));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TextInputSpinner, i, 0);
        this.mEntities = typedArrayObtainStyledAttributes.getTextArray(0);
        typedArrayObtainStyledAttributes.recycle();
        ListPopupWindow listPopupWindow = new ListPopupWindow(context, attributeSet, i, R.style.arg_res_0x7f120018);
        this.mPopup = listPopupWindow;
        listPopupWindow.setAdapter(new ArrayAdapter(context, R.layout.arg_res_0x7f0c0114, this.mEntities));
        this.mPopup.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v4.f62
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                this.f1708do.lambda$init$0(adapterView, view, i2, j);
            }
        });
        this.mPopup.setAnchorView(this);
        this.mPopup.setVerticalOffset(-((int) j10.m3660new(context, 5.0f)));
        this.mPopup.setHorizontalOffset((int) j10.m3660new(context, 4.0f));
        this.mPopup.setWidth(getResources().getDisplayMetrics().widthPixels - ((int) j10.m3660new(context, 16.0f)));
        this.mPopup.setModal(true);
        setSelection(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(AdapterView adapterView, View view, int i, long j) {
        setSelection(i);
        this.mPopup.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$1() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        requestFocus();
        if (this.mPopup.isShowing()) {
            return;
        }
        this.mPopup.show();
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            j10.m3652do(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 0) {
            post(new Runnable() { // from class: android.support.v4.g62
                @Override // java.lang.Runnable
                public final void run() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                    this.f2067do.lambda$onTouchEvent$1();
                }
            });
        }
        return zOnTouchEvent;
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && hasFocus()) {
            j10.m3652do(this);
        }
    }

    @Override // android.widget.EditText
    public void setSelection(int i) {
        CharSequence[] charSequenceArr = this.mEntities;
        if (charSequenceArr == null || charSequenceArr.length <= 0 || i < 0 || i >= charSequenceArr.length) {
            return;
        }
        setText(charSequenceArr[i]);
    }

    @SuppressLint({"PrivateResource"})
    public TextInputSpinner(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        init(context, attributeSet, i);
    }
}
