package com.yalantis.ucrop.view.widget;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.model.AspectRatio;
import java.util.Locale;

/* loaded from: classes2.dex */
public class AspectRatioTextView extends TextView {

    /* renamed from: case, reason: not valid java name */
    private float f23197case;

    /* renamed from: do, reason: not valid java name */
    private final Rect f23198do;

    /* renamed from: else, reason: not valid java name */
    private float f23199else;

    /* renamed from: for, reason: not valid java name */
    private int f23200for;

    /* renamed from: if, reason: not valid java name */
    private Paint f23201if;

    /* renamed from: new, reason: not valid java name */
    private float f23202new;

    /* renamed from: try, reason: not valid java name */
    private String f23203try;

    public AspectRatioTextView(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m27554do(@ColorInt int i) {
        Paint paint = this.f23201if;
        if (paint != null) {
            paint.setColor(i);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[]{0}}, new int[]{i, ContextCompat.getColor(getContext(), com.yalantis.ucrop.R.color.ucrop_color_widget)}));
    }

    /* renamed from: for, reason: not valid java name */
    private void m27555for(@NonNull TypedArray typedArray) {
        setGravity(1);
        this.f23203try = typedArray.getString(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_title);
        this.f23197case = typedArray.getFloat(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_x, 0.0f);
        float f = typedArray.getFloat(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_y, 0.0f);
        this.f23199else = f;
        float f2 = this.f23197case;
        if (f2 == 0.0f || f == 0.0f) {
            this.f23202new = 0.0f;
        } else {
            this.f23202new = f2 / f;
        }
        this.f23200for = getContext().getResources().getDimensionPixelSize(com.yalantis.ucrop.R.dimen.ucrop_size_dot_scale_text_view);
        Paint paint = new Paint(1);
        this.f23201if = paint;
        paint.setStyle(Paint.Style.FILL);
        m27556new();
        m27554do(getResources().getColor(com.yalantis.ucrop.R.color.ucrop_color_widget_active));
        typedArray.recycle();
    }

    /* renamed from: new, reason: not valid java name */
    private void m27556new() {
        if (TextUtils.isEmpty(this.f23203try)) {
            setText(String.format(Locale.US, "%d:%d", Integer.valueOf((int) this.f23197case), Integer.valueOf((int) this.f23199else)));
        } else {
            setText(this.f23203try);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m27557try() {
        if (this.f23202new != 0.0f) {
            float f = this.f23197case;
            float f2 = this.f23199else;
            this.f23197case = f2;
            this.f23199else = f;
            this.f23202new = f2 / f;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public float m27558if(boolean z) {
        if (z) {
            m27557try();
            m27556new();
        }
        return this.f23202new;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.f23198do);
            float f = (r0.right - r0.left) / 2.0f;
            int i = this.f23198do.bottom;
            int i2 = this.f23200for;
            canvas.drawCircle(f, i - i2, i2 / 2, this.f23201if);
        }
    }

    public void setActiveColor(@ColorInt int i) {
        m27554do(i);
        invalidate();
    }

    public void setAspectRatio(@NonNull AspectRatio aspectRatio) {
        this.f23203try = aspectRatio.m27470do();
        this.f23197case = aspectRatio.m27472if();
        float fM27471for = aspectRatio.m27471for();
        this.f23199else = fM27471for;
        float f = this.f23197case;
        if (f == 0.0f || fM27471for == 0.0f) {
            this.f23202new = 0.0f;
        } else {
            this.f23202new = f / fM27471for;
        }
        m27556new();
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f23198do = new Rect();
        m27555for(context.obtainStyledAttributes(attributeSet, com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView));
    }

    @TargetApi(21)
    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f23198do = new Rect();
        m27555for(context.obtainStyledAttributes(attributeSet, com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView));
    }
}
