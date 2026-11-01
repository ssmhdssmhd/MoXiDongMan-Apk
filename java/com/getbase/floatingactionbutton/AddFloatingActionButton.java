package com.getbase.floatingactionbutton;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;

/* loaded from: classes.dex */
public class AddFloatingActionButton extends FloatingActionButton {

    /* renamed from: super, reason: not valid java name */
    public int f10963super;

    /* renamed from: com.getbase.floatingactionbutton.AddFloatingActionButton$do, reason: invalid class name */
    public class Cdo extends Shape {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ float f10964do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f10965for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f10966if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f10967new;

        public Cdo(float f, float f2, float f3, float f4) {
            this.f10964do = f;
            this.f10966if = f2;
            this.f10965for = f3;
            this.f10967new = f4;
        }

        @Override // android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float f = this.f10964do;
            float f2 = this.f10966if;
            float f3 = this.f10965for;
            canvas.drawRect(f, f2 - f3, this.f10967new - f, f2 + f3, paint);
            float f4 = this.f10966if;
            float f5 = this.f10965for;
            float f6 = this.f10964do;
            canvas.drawRect(f4 - f5, f6, f4 + f5, this.f10967new - f6, paint);
        }
    }

    public AddFloatingActionButton(Context context) {
        this(context, null);
    }

    @Override // com.getbase.floatingactionbutton.FloatingActionButton
    /* renamed from: break, reason: not valid java name */
    public void mo12380break(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AddFloatingActionButton, 0, 0);
        this.f10963super = typedArrayObtainStyledAttributes.getColor(R.styleable.AddFloatingActionButton_fab_plusIconColor, m12394else(android.R.color.white));
        typedArrayObtainStyledAttributes.recycle();
        super.mo12380break(context, attributeSet);
    }

    @Override // com.getbase.floatingactionbutton.FloatingActionButton
    public Drawable getIconDrawable() {
        float fM12395goto = m12395goto(R.dimen.fab_icon_size);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new Cdo((fM12395goto - m12395goto(R.dimen.fab_plus_icon_size)) / 2.0f, fM12395goto / 2.0f, m12395goto(R.dimen.fab_plus_icon_stroke) / 2.0f, fM12395goto));
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(this.f10963super);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        return shapeDrawable;
    }

    public int getPlusColor() {
        return this.f10963super;
    }

    @Override // com.getbase.floatingactionbutton.FloatingActionButton
    public void setIcon(@DrawableRes int i) {
        throw new UnsupportedOperationException("Use FloatingActionButton if you want to use custom icon");
    }

    public void setPlusColor(int i) {
        if (this.f10963super != i) {
            this.f10963super = i;
            mo12396super();
        }
    }

    public void setPlusColorResId(@ColorRes int i) {
        setPlusColor(m12394else(i));
    }

    public AddFloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AddFloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
