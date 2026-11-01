package android.support.v4;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;

/* loaded from: classes.dex */
public abstract class n7 {

    /* renamed from: case, reason: not valid java name */
    public int f4130case;

    /* renamed from: do, reason: not valid java name */
    @Px
    public int f4131do;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    public int[] f4132for = new int[0];

    /* renamed from: if, reason: not valid java name */
    @Px
    public int f4133if;

    /* renamed from: new, reason: not valid java name */
    @ColorInt
    public int f4134new;

    /* renamed from: try, reason: not valid java name */
    public int f4135try;

    public n7(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) throws Resources.NotFoundException {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, R.styleable.BaseProgressIndicator, i, i2, new int[0]);
        this.f4131do = sx0.m7651for(context, typedArrayM4267break, R.styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f4133if = Math.min(sx0.m7651for(context, typedArrayM4267break, R.styleable.BaseProgressIndicator_trackCornerRadius, 0), this.f4131do / 2);
        this.f4135try = typedArrayM4267break.getInt(R.styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f4130case = typedArrayM4267break.getInt(R.styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        m5114for(context, typedArrayM4267break);
        m5115new(context, typedArrayM4267break);
        typedArrayM4267break.recycle();
    }

    /* renamed from: for, reason: not valid java name */
    private void m5114for(@NonNull Context context, @NonNull TypedArray typedArray) throws Resources.NotFoundException {
        int i = R.styleable.BaseProgressIndicator_indicatorColor;
        if (!typedArray.hasValue(i)) {
            this.f4132for = new int[]{qx0.m6678if(context, R.attr.colorPrimary, -1)};
            return;
        }
        if (typedArray.peekValue(i).type != 1) {
            this.f4132for = new int[]{typedArray.getColor(i, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(i, -1));
        this.f4132for = intArray;
        if (intArray.length == 0) {
            throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m5115new(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i = R.styleable.BaseProgressIndicator_trackColor;
        if (typedArray.hasValue(i)) {
            this.f4134new = typedArray.getColor(i, -1);
            return;
        }
        this.f4134new = this.f4132for[0];
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
        float f = typedArrayObtainStyledAttributes.getFloat(0, 0.2f);
        typedArrayObtainStyledAttributes.recycle();
        this.f4134new = qx0.m6674do(this.f4134new, (int) (f * 255.0f));
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m5116do() {
        return this.f4130case != 0;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m5117if() {
        return this.f4135try != 0;
    }

    /* renamed from: try */
    public abstract void mo2406try();
}
