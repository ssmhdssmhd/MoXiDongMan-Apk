package com.jcodecraeer.xrecyclerview.progressindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.b7;
import android.support.v4.g12;
import android.support.v4.qw1;
import android.support.v4.x82;
import android.util.AttributeSet;
import android.view.View;
import com.jcodecraeer.xrecyclerview.R;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cbreak;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Ccase;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Ccatch;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cclass;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cconst;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cdefault;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Celse;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cfinal;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cfor;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cgoto;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cif;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cnative;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cnew;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cpublic;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Creturn;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cstatic;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Csuper;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cswitch;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cthis;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cthrow;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cthrows;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Ctry;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cwhile;

/* loaded from: classes2.dex */
public class AVLoadingIndicatorView extends View {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f18272abstract = 24;

    /* renamed from: break, reason: not valid java name */
    public static final int f18273break = 4;

    /* renamed from: case, reason: not valid java name */
    public static final int f18274case = 0;

    /* renamed from: catch, reason: not valid java name */
    public static final int f18275catch = 5;

    /* renamed from: class, reason: not valid java name */
    public static final int f18276class = 6;

    /* renamed from: const, reason: not valid java name */
    public static final int f18277const = 7;

    /* renamed from: continue, reason: not valid java name */
    public static final int f18278continue = 25;

    /* renamed from: default, reason: not valid java name */
    public static final int f18279default = 19;

    /* renamed from: else, reason: not valid java name */
    public static final int f18280else = 1;

    /* renamed from: extends, reason: not valid java name */
    public static final int f18281extends = 20;

    /* renamed from: final, reason: not valid java name */
    public static final int f18282final = 8;

    /* renamed from: finally, reason: not valid java name */
    public static final int f18283finally = 21;

    /* renamed from: goto, reason: not valid java name */
    public static final int f18284goto = 2;

    /* renamed from: import, reason: not valid java name */
    public static final int f18285import = 12;

    /* renamed from: interface, reason: not valid java name */
    public static final int f18286interface = 30;

    /* renamed from: native, reason: not valid java name */
    public static final int f18287native = 13;

    /* renamed from: package, reason: not valid java name */
    public static final int f18288package = 22;

    /* renamed from: private, reason: not valid java name */
    public static final int f18289private = 23;

    /* renamed from: public, reason: not valid java name */
    public static final int f18290public = 14;

    /* renamed from: return, reason: not valid java name */
    public static final int f18291return = 15;

    /* renamed from: static, reason: not valid java name */
    public static final int f18292static = 16;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f18293strictfp = 26;

    /* renamed from: super, reason: not valid java name */
    public static final int f18294super = 9;

    /* renamed from: switch, reason: not valid java name */
    public static final int f18295switch = 17;

    /* renamed from: this, reason: not valid java name */
    public static final int f18296this = 3;

    /* renamed from: throw, reason: not valid java name */
    public static final int f18297throw = 10;

    /* renamed from: throws, reason: not valid java name */
    public static final int f18298throws = 18;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f18299volatile = 27;

    /* renamed from: while, reason: not valid java name */
    public static final int f18300while = 11;

    /* renamed from: do, reason: not valid java name */
    public int f18301do;

    /* renamed from: for, reason: not valid java name */
    public Paint f18302for;

    /* renamed from: if, reason: not valid java name */
    public int f18303if;

    /* renamed from: new, reason: not valid java name */
    public Cimport f18304new;

    /* renamed from: try, reason: not valid java name */
    private boolean f18305try;

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.AVLoadingIndicatorView$do, reason: invalid class name */
    public @interface Cdo {
    }

    public AVLoadingIndicatorView(Context context) {
        super(context);
        m22827case(null, 0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m22827case(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AVLoadingIndicatorView);
        this.f18301do = typedArrayObtainStyledAttributes.getInt(R.styleable.AVLoadingIndicatorView_indicator, 0);
        this.f18303if = typedArrayObtainStyledAttributes.getColor(R.styleable.AVLoadingIndicatorView_indicator_color, -1);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f18302for = paint;
        paint.setColor(this.f18303if);
        this.f18302for.setStyle(Paint.Style.FILL);
        this.f18302for.setAntiAlias(true);
        m22829if();
    }

    /* renamed from: else, reason: not valid java name */
    private int m22828else(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        return mode == 1073741824 ? size : mode == Integer.MIN_VALUE ? Math.min(i, size) : i;
    }

    /* renamed from: if, reason: not valid java name */
    private void m22829if() {
        switch (this.f18301do) {
            case 0:
                this.f18304new = new Celse();
                break;
            case 1:
                this.f18304new = new Ccase();
                break;
            case 2:
                this.f18304new = new Cif();
                break;
            case 3:
                this.f18304new = new Cnew();
                break;
            case 4:
                this.f18304new = new g12();
                break;
            case 5:
                this.f18304new = new Cfor();
                break;
            case 6:
                this.f18304new = new b7();
                break;
            case 7:
                this.f18304new = new Cthis();
                break;
            case 8:
                this.f18304new = new Cnative();
                break;
            case 9:
                this.f18304new = new Cwhile();
                break;
            case 10:
                this.f18304new = new Cthrow();
                break;
            case 11:
                this.f18304new = new Csuper();
                break;
            case 12:
                this.f18304new = new Cbreak();
                break;
            case 13:
                this.f18304new = new Cpublic();
                break;
            case 14:
                this.f18304new = new Creturn();
                break;
            case 15:
                this.f18304new = new Ccatch();
                break;
            case 16:
                this.f18304new = new Cgoto();
                break;
            case 17:
                this.f18304new = new com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cdo();
                break;
            case 18:
                this.f18304new = new Cstatic();
                break;
            case 19:
                this.f18304new = new Cswitch();
                break;
            case 20:
                this.f18304new = new Cclass();
                break;
            case 21:
                this.f18304new = new Cconst();
                break;
            case 22:
                this.f18304new = new Cfinal();
                break;
            case 23:
                this.f18304new = new Cthrows();
                break;
            case 24:
                this.f18304new = new x82();
                break;
            case 25:
                this.f18304new = new Cdefault();
                break;
            case 26:
                this.f18304new = new Ctry();
                break;
            case 27:
                this.f18304new = new qw1();
                break;
        }
        this.f18304new.m22846catch(this);
    }

    /* renamed from: new, reason: not valid java name */
    private int m22830new(int i) {
        return ((int) getContext().getResources().getDisplayMetrics().density) * i;
    }

    /* renamed from: do, reason: not valid java name */
    public void m22831do() {
        Cimport cimport = this.f18304new;
        if (cimport == null) {
            return;
        }
        cimport.m22847else();
    }

    /* renamed from: for, reason: not valid java name */
    public void m22832for() {
        this.f18305try = true;
        Cimport cimport = this.f18304new;
        if (cimport != null) {
            cimport.m22849if();
            this.f18304new = null;
        }
        this.f18302for = null;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Cimport cimport = this.f18304new;
        if (cimport == null) {
            return;
        }
        cimport.m22844break(Cimport.Cif.START);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cimport cimport = this.f18304new;
        if (cimport == null) {
            return;
        }
        cimport.m22844break(Cimport.Cif.CANCEL);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m22833try(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f18305try) {
            return;
        }
        this.f18305try = true;
        m22831do();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(m22828else(m22830new(30), i), m22828else(m22830new(30), i2));
    }

    public void setIndicatorColor(int i) {
        this.f18303if = i;
        this.f18302for.setColor(i);
        invalidate();
    }

    public void setIndicatorId(int i) {
        this.f18301do = i;
        m22829if();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i) {
            super.setVisibility(i);
            Cimport cimport = this.f18304new;
            if (cimport == null) {
                return;
            }
            if (i == 8 || i == 4) {
                cimport.m22844break(Cimport.Cif.END);
            } else {
                cimport.m22844break(Cimport.Cif.START);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m22833try(Canvas canvas) {
        Cimport cimport = this.f18304new;
        if (cimport == null) {
            return;
        }
        cimport.mo458for(canvas, this.f18302for);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m22827case(attributeSet, 0);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m22827case(attributeSet, i);
    }

    @TargetApi(21)
    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m22827case(attributeSet, i);
    }
}
