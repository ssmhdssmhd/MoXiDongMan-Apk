package android.support.v4;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.progressindicator.CircularProgressIndicator;

/* loaded from: classes.dex */
public final class zl extends n7 {

    /* renamed from: else, reason: not valid java name */
    @Px
    public int f8593else;

    /* renamed from: goto, reason: not valid java name */
    @Px
    public int f8594goto;

    /* renamed from: this, reason: not valid java name */
    public int f8595this;

    public zl(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    @Override // android.support.v4.n7
    /* renamed from: try */
    public void mo2406try() {
    }

    public zl(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, CircularProgressIndicator.f12335default);
    }

    public zl(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) throws Resources.NotFoundException {
        super(context, attributeSet, i, i2);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_inset_medium);
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, R.styleable.CircularProgressIndicator, i, i2, new int[0]);
        this.f8593else = Math.max(sx0.m7651for(context, typedArrayM4267break, R.styleable.CircularProgressIndicator_indicatorSize, dimensionPixelSize), this.f4131do * 2);
        this.f8594goto = sx0.m7651for(context, typedArrayM4267break, R.styleable.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f8595this = typedArrayM4267break.getInt(R.styleable.CircularProgressIndicator_indicatorDirectionCircular, 0);
        typedArrayM4267break.recycle();
        mo2406try();
    }
}
