package android.support.v4;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.link.ITouchableSpan;

/* loaded from: classes2.dex */
public abstract class yh1 extends ClickableSpan implements ITouchableSpan {

    /* renamed from: case, reason: not valid java name */
    private boolean f8226case = false;

    /* renamed from: do, reason: not valid java name */
    private boolean f8227do;

    /* renamed from: for, reason: not valid java name */
    @ColorInt
    private int f8228for;

    /* renamed from: if, reason: not valid java name */
    @ColorInt
    private int f8229if;

    /* renamed from: new, reason: not valid java name */
    @ColorInt
    private int f8230new;

    /* renamed from: try, reason: not valid java name */
    @ColorInt
    private int f8231try;

    public yh1(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        this.f8230new = i;
        this.f8231try = i2;
        this.f8229if = i3;
        this.f8228for = i4;
    }

    /* renamed from: case, reason: not valid java name */
    public abstract void m9861case(View view);

    /* renamed from: do, reason: not valid java name */
    public int m9862do() {
        return this.f8229if;
    }

    /* renamed from: else, reason: not valid java name */
    public void m9863else(boolean z) {
        this.f8226case = z;
    }

    /* renamed from: for, reason: not valid java name */
    public int m9864for() {
        return this.f8228for;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m9865goto(int i) {
        this.f8230new = i;
    }

    /* renamed from: if, reason: not valid java name */
    public int m9866if() {
        return this.f8230new;
    }

    /* renamed from: new, reason: not valid java name */
    public int m9867new() {
        return this.f8231try;
    }

    @Override // android.text.style.ClickableSpan, com.qmuiteam.qmui.link.ITouchableSpan
    public final void onClick(View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            m9861case(view);
        }
    }

    @Override // com.qmuiteam.qmui.link.ITouchableSpan
    public void setPressed(boolean z) {
        this.f8227do = z;
    }

    /* renamed from: this, reason: not valid java name */
    public void m9868this(int i) {
        this.f8231try = i;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m9869try() {
        return this.f8227do;
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setColor(this.f8227do ? this.f8231try : this.f8230new);
        textPaint.bgColor = this.f8227do ? this.f8228for : this.f8229if;
        textPaint.setUnderlineText(this.f8226case);
    }
}
