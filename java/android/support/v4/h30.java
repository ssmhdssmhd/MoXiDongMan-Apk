package android.support.v4;

import android.R;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.widget.TextView;
import com.qmuiteam.qmui.widget.QMUIProgressBar;

/* loaded from: classes2.dex */
public class h30 {
    private h30() {
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    /* renamed from: break, reason: not valid java name */
    public static StateListDrawable m2921break(Drawable drawable, Drawable drawable2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_enabled, R.attr.state_pressed}, drawable);
        stateListDrawable.addState(new int[]{R.attr.state_enabled}, drawable2);
        stateListDrawable.addState(new int[0], m2930goto(10, QMUIProgressBar.f19441continue));
        return stateListDrawable;
    }

    /* renamed from: case, reason: not valid java name */
    public static StateListDrawable m2922case(int i) {
        return m2934new(i, ym.m9899new(), ym.m9899new());
    }

    /* renamed from: catch, reason: not valid java name */
    public static StateListDrawable m2923catch() {
        return m2925const(10, 4, ym.m9899new(), 0);
    }

    /* renamed from: class, reason: not valid java name */
    public static GradientDrawable m2924class(int i, int i2, int i3, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setStroke(i4, i3);
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(i);
        gradientDrawable.setGradientType(1);
        return gradientDrawable;
    }

    /* renamed from: const, reason: not valid java name */
    public static StateListDrawable m2925const(int i, int i2, int i3, int i4) {
        return m2921break(m2930goto(i, i3), m2924class(i, i4, i3, i2));
    }

    /* renamed from: do, reason: not valid java name */
    public static StateListDrawable m2926do() {
        return m2931if(10);
    }

    /* renamed from: else, reason: not valid java name */
    public static ShapeDrawable m2927else(Context context, int i) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}));
        shapeDrawable.getPaint().setColor(context.getResources().getColor(i));
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        return shapeDrawable;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m2928final(TextView textView) {
        m2936super(textView, 6, 10);
    }

    /* renamed from: for, reason: not valid java name */
    public static StateListDrawable m2929for(int i, int i2) {
        return m2934new(i, ym.m9896do(i2), i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static GradientDrawable m2930goto(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(i);
        gradientDrawable.setColor(i2);
        gradientDrawable.setGradientType(1);
        return gradientDrawable;
    }

    /* renamed from: if, reason: not valid java name */
    public static StateListDrawable m2931if(int i) {
        return m2929for(i, ym.m9899new());
    }

    /* renamed from: import, reason: not valid java name */
    public static void m2932import(TextView textView, int i) {
        m2935public(textView, 6, 10, i);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m2933native(TextView textView, int i, int i2) {
        m2935public(textView, i, i2, ym.m9899new());
    }

    /* renamed from: new, reason: not valid java name */
    public static StateListDrawable m2934new(int i, int i2, int i3) {
        return m2921break(m2930goto(i, i2), m2930goto(i, i3));
    }

    /* renamed from: public, reason: not valid java name */
    public static void m2935public(TextView textView, int i, int i2, int i3) {
        textView.setBackgroundDrawable(m2925const(i2, i, i3, -1));
        textView.setTextColor(ym.m9897for(-1, i3));
        textView.getPaint().setFlags(32);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m2936super(TextView textView, int i, int i2) {
        m2938throw(textView, i, i2, ym.m9899new());
    }

    /* renamed from: this, reason: not valid java name */
    public static StateListDrawable m2937this(int i, int i2, int i3, int i4) {
        return m2921break(m2924class(i, i3, i4, i2), m2930goto(i, i4));
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m2938throw(TextView textView, int i, int i2, int i3) {
        textView.setBackgroundDrawable(m2937this(i2, i, -1, i3));
        textView.setTextColor(ym.m9897for(i3, -1));
        textView.getPaint().setFlags(32);
    }

    /* renamed from: try, reason: not valid java name */
    public static StateListDrawable m2939try() {
        return m2922case(10);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m2940while(TextView textView) {
        m2933native(textView, 6, 10);
    }
}
