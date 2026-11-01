package com.wsw.cospa.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class BatteryView extends View {
    private int height;
    private int mPower;
    private int orientation;
    private int width;

    public BatteryView(Context context) {
        super(context);
        this.mPower = 100;
    }

    private void drawHorizontalBattery(Canvas canvas) {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        float f = this.width / 20.0f;
        float f2 = f / 2.0f;
        paint.setStrokeWidth(f);
        RectF rectF = new RectF(f2, f2, (this.width - f) - f2, this.height - f2);
        paint.setColor(-1);
        canvas.drawRect(rectF, paint);
        paint.setStrokeWidth(0.0f);
        paint.setStyle(Paint.Style.FILL);
        RectF rectF2 = new RectF(f, f, ((this.width - (2.0f * f)) * this.mPower) / 100.0f, this.height - f);
        if (this.mPower < 20) {
            paint.setColor(-65536);
        } else {
            paint.setColor(-1);
        }
        canvas.drawRect(rectF2, paint);
        int i = this.width;
        float f3 = i - f;
        int i2 = this.height;
        RectF rectF3 = new RectF(f3, i2 * 0.25f, i, i2 * 0.75f);
        paint.setColor(-1);
        canvas.drawRect(rectF3, paint);
    }

    private void drawVerticalBattery(Canvas canvas) {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        float f = this.height / 20.0f;
        float f2 = f / 2.0f;
        paint.setStrokeWidth(f);
        float f3 = (int) (0.5f + f);
        canvas.drawRect(new RectF(f2, f3 + f2, this.width - f2, this.height - f2), paint);
        paint.setStrokeWidth(0.0f);
        RectF rectF = new RectF(f, f3 + f + ((((this.height - r3) - f) * (100 - this.mPower)) / 100.0f), this.width - f, this.height - f);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRect(rectF, paint);
        int i = this.width;
        canvas.drawRect(new RectF(i / 4.0f, 0.0f, i * 0.75f, f3), paint);
    }

    public int getPower() {
        return this.mPower;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.orientation == 0) {
            drawHorizontalBattery(canvas);
        } else {
            drawVerticalBattery(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.width = getMeasuredWidth();
        this.height = getMeasuredHeight();
    }

    public void setPower(int i) {
        this.mPower = i;
        if (i < 0) {
            this.mPower = 100;
        }
        invalidate();
    }

    public BatteryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPower = 100;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Battery);
        this.orientation = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.mPower = typedArrayObtainStyledAttributes.getInt(1, 100);
        this.width = getMeasuredWidth();
        this.height = getMeasuredHeight();
        typedArrayObtainStyledAttributes.recycle();
    }
}
