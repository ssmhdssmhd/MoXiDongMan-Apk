package com.wsw.cospa.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public class EditTextWithScrollView extends TextInputEditText {
    private boolean mBottomFlag;
    private boolean mCanVerticalScroll;
    private int mOffsetHeight;

    public EditTextWithScrollView(Context context) {
        super(context);
        this.mBottomFlag = false;
        init();
    }

    private boolean canVerticalScroll() {
        int scrollY = getScrollY();
        int height = getLayout().getHeight() - ((getHeight() - getCompoundPaddingTop()) - getCompoundPaddingBottom());
        this.mOffsetHeight = height;
        if (height == 0) {
            return false;
        }
        return scrollY > 0 || scrollY < height - 1;
    }

    private CharSequence getSuperHintHack() throws IllegalAccessException, NoSuchFieldException {
        Field declaredField = TextView.class.getDeclaredField("mHint");
        declaredField.setAccessible(true);
        return (CharSequence) declaredField.get(this);
    }

    private void init() {
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mBottomFlag = false;
        }
        if (this.mBottomFlag) {
            motionEvent.setAction(3);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.material.textfield.TextInputEditText, android.widget.TextView
    public CharSequence getHint() {
        if (!Build.MANUFACTURER.toUpperCase().contains("MEIZU") || Build.VERSION.SDK_INT >= 28) {
            return super.getHint();
        }
        try {
            return getSuperHintHack();
        } catch (Exception unused) {
            return super.getHint();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.mCanVerticalScroll = canVerticalScroll();
    }

    @Override // android.widget.TextView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (i2 == this.mOffsetHeight || i2 == 0) {
            getParent().requestDisallowInterceptTouchEvent(false);
            this.mBottomFlag = true;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (!this.mCanVerticalScroll) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (!this.mBottomFlag) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return zOnTouchEvent;
    }

    public EditTextWithScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBottomFlag = false;
        init();
    }

    public EditTextWithScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBottomFlag = false;
        init();
    }
}
