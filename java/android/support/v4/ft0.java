package android.support.v4;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.progressindicator.LinearProgressIndicator;

/* loaded from: classes.dex */
public final class ft0 extends n7 {

    /* renamed from: else, reason: not valid java name */
    public int f1988else;

    /* renamed from: goto, reason: not valid java name */
    public int f1989goto;

    /* renamed from: this, reason: not valid java name */
    public boolean f1990this;

    public ft0(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    @Override // android.support.v4.n7
    /* renamed from: try, reason: not valid java name */
    public void mo2406try() {
        if (this.f1988else == 0) {
            if (this.f4133if > 0) {
                throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
            }
            if (this.f4132for.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public ft0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, LinearProgressIndicator.f12350default);
    }

    public ft0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, R.styleable.LinearProgressIndicator, R.attr.linearProgressIndicatorStyle, LinearProgressIndicator.f12350default, new int[0]);
        this.f1988else = typedArrayM4267break.getInt(R.styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f1989goto = typedArrayM4267break.getInt(R.styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        typedArrayM4267break.recycle();
        mo2406try();
        this.f1990this = this.f1989goto == 1;
    }
}
