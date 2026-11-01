package com.getbase.floatingactionbutton;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class FloatingActionButton extends ImageButton {

    /* renamed from: const, reason: not valid java name */
    public static final int f10969const = 0;

    /* renamed from: final, reason: not valid java name */
    public static final int f10970final = 1;

    /* renamed from: break, reason: not valid java name */
    private float f10971break;

    /* renamed from: case, reason: not valid java name */
    private Drawable f10972case;

    /* renamed from: catch, reason: not valid java name */
    private int f10973catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f10974class;

    /* renamed from: do, reason: not valid java name */
    public int f10975do;

    /* renamed from: else, reason: not valid java name */
    private int f10976else;

    /* renamed from: for, reason: not valid java name */
    public int f10977for;

    /* renamed from: goto, reason: not valid java name */
    private float f10978goto;

    /* renamed from: if, reason: not valid java name */
    public int f10979if;

    /* renamed from: new, reason: not valid java name */
    public String f10980new;

    /* renamed from: this, reason: not valid java name */
    private float f10981this;

    /* renamed from: try, reason: not valid java name */
    @DrawableRes
    private int f10982try;

    /* renamed from: com.getbase.floatingactionbutton.FloatingActionButton$do, reason: invalid class name */
    public class Cdo extends ShapeDrawable.ShaderFactory {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f10984do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f10985for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f10986if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ int f10987new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ int f10988try;

        public Cdo(int i, int i2, int i3, int i4, int i5) {
            this.f10984do = i;
            this.f10986if = i2;
            this.f10985for = i3;
            this.f10987new = i4;
            this.f10988try = i5;
        }

        @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
        public Shader resize(int i, int i2) {
            float f = i / 2;
            return new LinearGradient(f, 0.0f, f, i2, new int[]{this.f10984do, this.f10986if, this.f10985for, this.f10987new, this.f10988try}, new float[]{0.0f, 0.2f, 0.5f, 0.8f, 1.0f}, Shader.TileMode.CLAMP);
        }
    }

    /* renamed from: com.getbase.floatingactionbutton.FloatingActionButton$for, reason: invalid class name */
    public static class Cfor extends LayerDrawable {

        /* renamed from: do, reason: not valid java name */
        private final int f10989do;

        public Cfor(int i, Drawable... drawableArr) {
            super(drawableArr);
            this.f10989do = i;
        }

        @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f10989do, 31);
            super.draw(canvas);
            canvas.restore();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.getbase.floatingactionbutton.FloatingActionButton$if, reason: invalid class name */
    public @interface Cif {
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private int m12381case(int i) {
        return m12384do(i, 0.9f);
    }

    /* renamed from: class, reason: not valid java name */
    private int m12382class(int i) {
        return m12384do(i, 1.1f);
    }

    /* renamed from: const, reason: not valid java name */
    private int m12383const(float f) {
        return (int) (f * 255.0f);
    }

    /* renamed from: do, reason: not valid java name */
    private int m12384do(int i, float f) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = Math.min(fArr[2] * f, 1.0f);
        return Color.HSVToColor(Color.alpha(i), fArr);
    }

    /* renamed from: final, reason: not valid java name */
    private int m12385final(int i) {
        return Color.rgb(Color.red(i), Color.green(i), Color.blue(i));
    }

    /* renamed from: for, reason: not valid java name */
    private StateListDrawable m12386for(float f) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, m12387if(this.f10977for, f));
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, m12387if(this.f10979if, f));
        stateListDrawable.addState(new int[0], m12387if(this.f10975do, f));
        return stateListDrawable;
    }

    /* renamed from: if, reason: not valid java name */
    private Drawable m12387if(int i, float f) {
        int iAlpha = Color.alpha(i);
        int iM12385final = m12385final(i);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setAntiAlias(true);
        paint.setColor(iM12385final);
        Drawable[] drawableArr = {shapeDrawable, m12388new(iM12385final, f)};
        LayerDrawable layerDrawable = (iAlpha == 255 || !this.f10974class) ? new LayerDrawable(drawableArr) : new Cfor(iAlpha, drawableArr);
        int i2 = (int) (f / 2.0f);
        layerDrawable.setLayerInset(1, i2, i2, i2, i2);
        return layerDrawable;
    }

    /* renamed from: new, reason: not valid java name */
    private Drawable m12388new(int i, float f) {
        if (!this.f10974class) {
            return new ColorDrawable(0);
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        int iM12381case = m12381case(i);
        int iM12389this = m12389this(iM12381case);
        int iM12382class = m12382class(i);
        int iM12389this2 = m12389this(iM12382class);
        Paint paint = shapeDrawable.getPaint();
        paint.setAntiAlias(true);
        paint.setStrokeWidth(f);
        paint.setStyle(Paint.Style.STROKE);
        shapeDrawable.setShaderFactory(new Cdo(iM12382class, iM12389this2, i, iM12389this, iM12381case));
        return shapeDrawable;
    }

    @SuppressLint({"NewApi"})
    private void setBackgroundCompat(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private int m12389this(int i) {
        return Color.argb(Color.alpha(i) / 2, Color.red(i), Color.green(i), Color.blue(i));
    }

    /* renamed from: throw, reason: not valid java name */
    private void m12390throw() {
        this.f10978goto = m12395goto(this.f10976else == 0 ? R.dimen.fab_size_normal : R.dimen.fab_size_mini);
    }

    /* renamed from: try, reason: not valid java name */
    private Drawable m12391try(float f) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setAntiAlias(true);
        paint.setStrokeWidth(f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(-16777216);
        paint.setAlpha(m12383const(0.02f));
        return shapeDrawable;
    }

    /* renamed from: while, reason: not valid java name */
    private void m12392while() {
        this.f10973catch = (int) (this.f10978goto + (this.f10981this * 2.0f));
    }

    /* renamed from: break */
    public void mo12380break(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton, 0, 0);
        this.f10975do = typedArrayObtainStyledAttributes.getColor(R.styleable.FloatingActionButton_fab_colorNormal, m12394else(android.R.color.holo_blue_dark));
        this.f10979if = typedArrayObtainStyledAttributes.getColor(R.styleable.FloatingActionButton_fab_colorPressed, m12394else(android.R.color.holo_blue_light));
        this.f10977for = typedArrayObtainStyledAttributes.getColor(R.styleable.FloatingActionButton_fab_colorDisabled, m12394else(android.R.color.darker_gray));
        this.f10976else = typedArrayObtainStyledAttributes.getInt(R.styleable.FloatingActionButton_fab_size, 0);
        this.f10982try = typedArrayObtainStyledAttributes.getResourceId(R.styleable.FloatingActionButton_fab_icon, 0);
        this.f10980new = typedArrayObtainStyledAttributes.getString(R.styleable.FloatingActionButton_fab_title);
        this.f10974class = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_fab_stroke_visible, true);
        typedArrayObtainStyledAttributes.recycle();
        m12390throw();
        this.f10981this = m12395goto(R.dimen.fab_shadow_radius);
        this.f10971break = m12395goto(R.dimen.fab_shadow_offset);
        m12392while();
        mo12396super();
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m12393catch() {
        return this.f10974class;
    }

    /* renamed from: else, reason: not valid java name */
    public int m12394else(@ColorRes int i) {
        return getResources().getColor(i);
    }

    public int getColorDisabled() {
        return this.f10977for;
    }

    public int getColorNormal() {
        return this.f10975do;
    }

    public int getColorPressed() {
        return this.f10979if;
    }

    public Drawable getIconDrawable() {
        Drawable drawable = this.f10972case;
        return drawable != null ? drawable : this.f10982try != 0 ? getResources().getDrawable(this.f10982try) : new ColorDrawable(0);
    }

    public TextView getLabelView() {
        return (TextView) getTag(R.id.fab_label);
    }

    public int getSize() {
        return this.f10976else;
    }

    public String getTitle() {
        return this.f10980new;
    }

    /* renamed from: goto, reason: not valid java name */
    public float m12395goto(@DimenRes int i) {
        return getResources().getDimension(i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.f10973catch;
        setMeasuredDimension(i3, i3);
    }

    public void setColorDisabled(int i) {
        if (this.f10977for != i) {
            this.f10977for = i;
            mo12396super();
        }
    }

    public void setColorDisabledResId(@ColorRes int i) {
        setColorDisabled(m12394else(i));
    }

    public void setColorNormal(int i) {
        if (this.f10975do != i) {
            this.f10975do = i;
            mo12396super();
        }
    }

    public void setColorNormalResId(@ColorRes int i) {
        setColorNormal(m12394else(i));
    }

    public void setColorPressed(int i) {
        if (this.f10979if != i) {
            this.f10979if = i;
            mo12396super();
        }
    }

    public void setColorPressedResId(@ColorRes int i) {
        setColorPressed(m12394else(i));
    }

    public void setIcon(@DrawableRes int i) {
        if (this.f10982try != i) {
            this.f10982try = i;
            this.f10972case = null;
            mo12396super();
        }
    }

    public void setIconDrawable(@NonNull Drawable drawable) {
        if (this.f10972case != drawable) {
            this.f10982try = 0;
            this.f10972case = drawable;
            mo12396super();
        }
    }

    public void setSize(int i) {
        if (i != 1 && i != 0) {
            throw new IllegalArgumentException("Use @FAB_SIZE constants only!");
        }
        if (this.f10976else != i) {
            this.f10976else = i;
            m12390throw();
            m12392while();
            mo12396super();
        }
    }

    public void setStrokeVisible(boolean z) {
        if (this.f10974class != z) {
            this.f10974class = z;
            mo12396super();
        }
    }

    public void setTitle(String str) {
        this.f10980new = str;
        TextView labelView = getLabelView();
        if (labelView != null) {
            labelView.setText(str);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        TextView labelView = getLabelView();
        if (labelView != null) {
            labelView.setVisibility(i);
        }
        super.setVisibility(i);
    }

    /* renamed from: super, reason: not valid java name */
    public void mo12396super() {
        float fM12395goto = m12395goto(R.dimen.fab_stroke_width);
        float f = fM12395goto / 2.0f;
        Drawable[] drawableArr = new Drawable[4];
        drawableArr[0] = getResources().getDrawable(this.f10976else == 0 ? R.drawable.fab_bg_normal : R.drawable.fab_bg_mini);
        drawableArr[1] = m12386for(fM12395goto);
        drawableArr[2] = m12391try(fM12395goto);
        drawableArr[3] = getIconDrawable();
        LayerDrawable layerDrawable = new LayerDrawable(drawableArr);
        int iM12395goto = ((int) (this.f10978goto - m12395goto(R.dimen.fab_icon_size))) / 2;
        float f2 = this.f10981this;
        int i = (int) f2;
        float f3 = this.f10971break;
        int i2 = (int) (f2 - f3);
        int i3 = (int) (f2 + f3);
        layerDrawable.setLayerInset(1, i, i2, i, i3);
        int i4 = (int) (i - f);
        layerDrawable.setLayerInset(2, i4, (int) (i2 - f), i4, (int) (i3 - f));
        int i5 = i + iM12395goto;
        layerDrawable.setLayerInset(3, i5, i2 + iM12395goto, i5, i3 + iM12395goto);
        setBackgroundCompat(layerDrawable);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mo12380break(context, attributeSet);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mo12380break(context, attributeSet);
    }
}
