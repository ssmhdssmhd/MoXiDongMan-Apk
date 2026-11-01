package com.qmuiteam.qmui.widget.textview;

import android.content.Context;
import android.support.v4.mh1;
import android.text.Spannable;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes2.dex */
public class QMUISpanTouchFixTextView extends AppCompatTextView implements ISpanTouchFix {

    /* renamed from: do, reason: not valid java name */
    public boolean f20009do;

    /* renamed from: for, reason: not valid java name */
    private boolean f20010for;

    /* renamed from: if, reason: not valid java name */
    private boolean f20011if;

    public QMUISpanTouchFixTextView(Context context) {
        this(context, null);
    }

    /* renamed from: do */
    public void mo23440do(boolean z) {
        super.setPressed(z);
    }

    /* renamed from: if, reason: not valid java name */
    public void m24248if() {
        setMovementMethodCompat(mh1.getInstance());
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!(getText() instanceof Spannable)) {
            return super.onTouchEvent(motionEvent);
        }
        this.f20009do = true;
        return this.f20010for ? this.f20009do : super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f20009do || this.f20010for) {
            return false;
        }
        return super.performClick();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean performLongClick() {
        if (this.f20009do || this.f20010for) {
            return false;
        }
        return super.performLongClick();
    }

    public void setMovementMethodCompat(MovementMethod movementMethod) {
        setMovementMethod(movementMethod);
        if (this.f20010for) {
            setNeedForceEventToParent(true);
        }
    }

    public void setNeedForceEventToParent(boolean z) {
        this.f20010for = z;
        setFocusable(!z);
        setClickable(!z);
        setLongClickable(!z);
    }

    @Override // android.view.View
    public final void setPressed(boolean z) {
        this.f20011if = z;
        if (this.f20009do) {
            return;
        }
        mo23440do(z);
    }

    @Override // com.qmuiteam.qmui.widget.textview.ISpanTouchFix
    public void setTouchSpanHit(boolean z) {
        if (this.f20009do != z) {
            this.f20009do = z;
            setPressed(this.f20011if);
        }
    }

    public QMUISpanTouchFixTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUISpanTouchFixTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20011if = false;
        this.f20010for = false;
        setHighlightColor(0);
    }
}
