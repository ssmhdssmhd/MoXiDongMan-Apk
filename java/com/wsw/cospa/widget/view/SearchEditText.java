package com.wsw.cospa.widget.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class SearchEditText extends AppCompatEditText implements View.OnFocusChangeListener, TextWatcher {
    private boolean hasFoucs;
    private Drawable mClearDrawable;
    private onClearTextListener onClearTextListener;

    public interface onClearTextListener {
        void onClearText();
    }

    public SearchEditText(Context context) {
        this(context, null);
    }

    private void init() {
        Drawable drawable = getCompoundDrawables()[2];
        this.mClearDrawable = drawable;
        if (drawable == null) {
            this.mClearDrawable = getResources().getDrawable(R.drawable.arg_res_0x7f0800c5);
        }
        Drawable drawable2 = this.mClearDrawable;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.mClearDrawable.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.hasFoucs = z;
        setClearIconVisible(getText().length() > 0);
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.hasFoucs) {
            setClearIconVisible(charSequence.length() > 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && getCompoundDrawables()[2] != null) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int iHeight = getCompoundDrawables()[2].getBounds().height();
            int height = (getHeight() - iHeight) / 2;
            boolean z = x > getWidth() - getTotalPaddingRight() && x < getWidth() - getPaddingRight();
            boolean z2 = y > height && y < height + iHeight;
            if (z && z2) {
                setText("");
                onClearTextListener oncleartextlistener = this.onClearTextListener;
                if (oncleartextlistener != null) {
                    oncleartextlistener.onClearText();
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setClearIconVisible(boolean z) {
        setCompoundDrawables(null, getCompoundDrawables()[1], z ? this.mClearDrawable : null, getCompoundDrawables()[3]);
    }

    public void setOnClearTextListener(onClearTextListener oncleartextlistener) {
        this.onClearTextListener = oncleartextlistener;
    }

    public SearchEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.editTextStyle);
    }

    public SearchEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }
}
