package com.scwang.smartrefresh.header.material;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.widget.ImageView;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class CircleImageView extends ImageView {

    /* renamed from: case, reason: not valid java name */
    public static final float f20417case = 3.5f;

    /* renamed from: else, reason: not valid java name */
    public static final int f20418else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f20419for = 1023410176;

    /* renamed from: if, reason: not valid java name */
    public static final int f20420if = 503316480;

    /* renamed from: new, reason: not valid java name */
    public static final float f20421new = 0.0f;

    /* renamed from: try, reason: not valid java name */
    public static final float f20422try = 1.75f;

    /* renamed from: do, reason: not valid java name */
    public int f20423do;

    /* renamed from: com.scwang.smartrefresh.header.material.CircleImageView$do, reason: invalid class name */
    public class Cdo extends OvalShape {

        /* renamed from: do, reason: not valid java name */
        private RadialGradient f20424do;

        /* renamed from: if, reason: not valid java name */
        private Paint f20426if = new Paint();

        public Cdo(int i) {
            CircleImageView.this.f20423do = i;
            m24399do((int) super.rect().width());
        }

        /* renamed from: do, reason: not valid java name */
        private void m24399do(int i) {
            float f = i / 2.0f;
            RadialGradient radialGradient = new RadialGradient(f, f, CircleImageView.this.f20423do, new int[]{CircleImageView.f20419for, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.f20424do = radialGradient;
            this.f20426if.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            CircleImageView circleImageView = CircleImageView.this;
            float width = circleImageView.getWidth() / 2.0f;
            float height = circleImageView.getHeight() / 2.0f;
            canvas.drawCircle(width, height, width, this.f20426if);
            canvas.drawCircle(width, height, width - CircleImageView.this.f20423do, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void onResize(float f, float f2) {
            super.onResize(f, f2);
            m24399do((int) f);
        }
    }

    public CircleImageView(Context context, int i) {
        ShapeDrawable shapeDrawable;
        super(context);
        float f = getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.f20423do = (int) (3.5f * f);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            setElevation(f * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new Cdo(this.f20423do));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f20423do, i3, i2, f20420if);
            int i5 = this.f20423do;
            setPadding(i5, i5, i5, i5);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(i);
        if (i4 >= 16) {
            setBackground(shapeDrawable);
        } else {
            setBackgroundDrawable(shapeDrawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (Build.VERSION.SDK_INT < 21) {
            super.setMeasuredDimension(getMeasuredWidth() + (this.f20423do * 2), getMeasuredHeight() + (this.f20423do * 2));
        }
    }
}
