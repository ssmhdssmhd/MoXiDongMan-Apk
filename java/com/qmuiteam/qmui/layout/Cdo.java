package com.qmuiteam.qmui.layout;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.sh1;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.R;
import java.lang.ref.WeakReference;

/* renamed from: com.qmuiteam.qmui.layout.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo implements IQMUILayout {

    /* renamed from: abstract, reason: not valid java name */
    private int f19032abstract;
    private float b;

    /* renamed from: case, reason: not valid java name */
    private int f19034case;

    /* renamed from: catch, reason: not valid java name */
    private int f19035catch;

    /* renamed from: class, reason: not valid java name */
    private int f19036class;

    /* renamed from: const, reason: not valid java name */
    private int f19037const;

    /* renamed from: continue, reason: not valid java name */
    private float[] f19038continue;
    private int d;

    /* renamed from: do, reason: not valid java name */
    private Context f19040do;
    private int e;

    /* renamed from: else, reason: not valid java name */
    private int f19041else;

    /* renamed from: extends, reason: not valid java name */
    private Paint f19042extends;
    private int f;

    /* renamed from: final, reason: not valid java name */
    private int f19043final;

    /* renamed from: finally, reason: not valid java name */
    private Paint f19044finally;

    /* renamed from: for, reason: not valid java name */
    private int f19045for;
    private int g;

    /* renamed from: goto, reason: not valid java name */
    private int f19046goto;

    /* renamed from: if, reason: not valid java name */
    private int f19047if;

    /* renamed from: implements, reason: not valid java name */
    private boolean f19048implements;

    /* renamed from: import, reason: not valid java name */
    private int f19049import;

    /* renamed from: interface, reason: not valid java name */
    private int f19051interface;

    /* renamed from: native, reason: not valid java name */
    private int f19052native;

    /* renamed from: new, reason: not valid java name */
    private int f19053new;

    /* renamed from: package, reason: not valid java name */
    private PorterDuffXfermode f19054package;

    /* renamed from: private, reason: not valid java name */
    private int f19055private;

    /* renamed from: protected, reason: not valid java name */
    private int f19056protected;

    /* renamed from: return, reason: not valid java name */
    private int f19058return;

    /* renamed from: static, reason: not valid java name */
    private int f19059static;

    /* renamed from: strictfp, reason: not valid java name */
    private RectF f19060strictfp;

    /* renamed from: switch, reason: not valid java name */
    private int f19062switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f19063synchronized;

    /* renamed from: this, reason: not valid java name */
    private int f19064this;

    /* renamed from: throw, reason: not valid java name */
    private int f19065throw;

    /* renamed from: throws, reason: not valid java name */
    private int f19066throws;

    /* renamed from: transient, reason: not valid java name */
    private WeakReference<View> f19067transient;

    /* renamed from: try, reason: not valid java name */
    private int f19068try;

    /* renamed from: volatile, reason: not valid java name */
    private int f19069volatile;

    /* renamed from: while, reason: not valid java name */
    private int f19070while;

    /* renamed from: break, reason: not valid java name */
    private int f19033break = 255;

    /* renamed from: super, reason: not valid java name */
    private int f19061super = 255;

    /* renamed from: public, reason: not valid java name */
    private int f19057public = 255;

    /* renamed from: default, reason: not valid java name */
    private int f19039default = 255;

    /* renamed from: instanceof, reason: not valid java name */
    private Path f19050instanceof = new Path();
    private int a = 0;
    private int c = -16777216;

    /* renamed from: com.qmuiteam.qmui.layout.do$do, reason: invalid class name and collision with other inner class name */
    public class C0184do extends ViewOutlineProvider {
        public C0184do() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            int i;
            int i2;
            int i3;
            int i4;
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                return;
            }
            if (Cdo.this.m23470import()) {
                if (Cdo.this.f19032abstract == 4) {
                    i3 = 0 - Cdo.this.f19055private;
                    i = width;
                    i2 = height;
                } else {
                    if (Cdo.this.f19032abstract == 1) {
                        i4 = 0 - Cdo.this.f19055private;
                        i = width;
                        i2 = height;
                        i3 = 0;
                        outline.setRoundRect(i3, i4, i, i2, Cdo.this.f19055private);
                        return;
                    }
                    if (Cdo.this.f19032abstract == 2) {
                        width += Cdo.this.f19055private;
                    } else if (Cdo.this.f19032abstract == 3) {
                        height += Cdo.this.f19055private;
                    }
                    i = width;
                    i2 = height;
                    i3 = 0;
                }
                i4 = 0;
                outline.setRoundRect(i3, i4, i, i2, Cdo.this.f19055private);
                return;
            }
            int paddingTop = Cdo.this.f;
            int iMax = Math.max(paddingTop + 1, height - Cdo.this.g);
            int paddingLeft = Cdo.this.d;
            int iMax2 = width - Cdo.this.e;
            if (Cdo.this.f19048implements) {
                paddingLeft += view.getPaddingLeft();
                paddingTop += view.getPaddingTop();
                iMax2 = Math.max(paddingLeft + 1, iMax2 - view.getPaddingRight());
                iMax = Math.max(paddingTop + 1, iMax - view.getPaddingBottom());
            }
            int i5 = iMax2;
            int i6 = iMax;
            int i7 = paddingTop;
            int i8 = paddingLeft;
            float f = Cdo.this.b;
            if (Cdo.this.a == 0) {
                f = 1.0f;
            }
            outline.setAlpha(f);
            if (Cdo.this.f19055private <= 0) {
                outline.setRect(i8, i7, i5, i6);
            } else {
                outline.setRoundRect(i8, i7, i5, i6, Cdo.this.f19055private);
            }
        }
    }

    public Cdo(Context context, AttributeSet attributeSet, int i, View view) {
        boolean z;
        int dimensionPixelSize;
        int iM7405new = 0;
        this.f19047if = 0;
        this.f19045for = 0;
        this.f19053new = 0;
        this.f19068try = 0;
        this.f19034case = 0;
        this.f19041else = 0;
        this.f19046goto = 0;
        this.f19035catch = 0;
        this.f19036class = 0;
        this.f19037const = 0;
        this.f19065throw = 0;
        this.f19070while = 0;
        this.f19049import = 0;
        this.f19058return = 0;
        this.f19059static = 0;
        this.f19062switch = 0;
        this.f19032abstract = 0;
        this.f19069volatile = 0;
        this.f19051interface = 1;
        this.f19056protected = 0;
        this.f19048implements = false;
        this.f19063synchronized = true;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.f19040do = context;
        this.f19067transient = new WeakReference<>(view);
        int color = ContextCompat.getColor(context, R.color.qmui_config_color_separator);
        this.f19064this = color;
        this.f19043final = color;
        this.f19054package = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        Paint paint = new Paint();
        this.f19044finally = paint;
        paint.setAntiAlias(true);
        this.b = sh1.m7402else(context, R.attr.qmui_general_shadow_alpha);
        this.f19060strictfp = new RectF();
        if (attributeSet == null && i == 0) {
            z = false;
            dimensionPixelSize = 0;
        } else {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUILayout, i, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            int dimensionPixelSize2 = 0;
            z = false;
            dimensionPixelSize = 0;
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.QMUILayout_android_maxWidth) {
                    this.f19047if = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19047if);
                } else if (index == R.styleable.QMUILayout_android_maxHeight) {
                    this.f19045for = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19045for);
                } else if (index == R.styleable.QMUILayout_android_minWidth) {
                    this.f19053new = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19053new);
                } else if (index == R.styleable.QMUILayout_android_minHeight) {
                    this.f19068try = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19068try);
                } else if (index == R.styleable.QMUILayout_qmui_topDividerColor) {
                    this.f19064this = typedArrayObtainStyledAttributes.getColor(index, this.f19064this);
                } else if (index == R.styleable.QMUILayout_qmui_topDividerHeight) {
                    this.f19034case = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19034case);
                } else if (index == R.styleable.QMUILayout_qmui_topDividerInsetLeft) {
                    this.f19041else = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19041else);
                } else if (index == R.styleable.QMUILayout_qmui_topDividerInsetRight) {
                    this.f19046goto = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19046goto);
                } else if (index == R.styleable.QMUILayout_qmui_bottomDividerColor) {
                    this.f19043final = typedArrayObtainStyledAttributes.getColor(index, this.f19043final);
                } else if (index == R.styleable.QMUILayout_qmui_bottomDividerHeight) {
                    this.f19035catch = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19035catch);
                } else if (index == R.styleable.QMUILayout_qmui_bottomDividerInsetLeft) {
                    this.f19036class = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19036class);
                } else if (index == R.styleable.QMUILayout_qmui_bottomDividerInsetRight) {
                    this.f19037const = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19037const);
                } else if (index == R.styleable.QMUILayout_qmui_leftDividerColor) {
                    this.f19052native = typedArrayObtainStyledAttributes.getColor(index, this.f19052native);
                } else if (index == R.styleable.QMUILayout_qmui_leftDividerWidth) {
                    this.f19065throw = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19035catch);
                } else if (index == R.styleable.QMUILayout_qmui_leftDividerInsetTop) {
                    this.f19070while = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19070while);
                } else if (index == R.styleable.QMUILayout_qmui_leftDividerInsetBottom) {
                    this.f19049import = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19049import);
                } else if (index == R.styleable.QMUILayout_qmui_rightDividerColor) {
                    this.f19066throws = typedArrayObtainStyledAttributes.getColor(index, this.f19066throws);
                } else if (index == R.styleable.QMUILayout_qmui_rightDividerWidth) {
                    this.f19058return = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19058return);
                } else if (index == R.styleable.QMUILayout_qmui_rightDividerInsetTop) {
                    this.f19059static = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19059static);
                } else if (index == R.styleable.QMUILayout_qmui_rightDividerInsetBottom) {
                    this.f19062switch = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19062switch);
                } else if (index == R.styleable.QMUILayout_qmui_borderColor) {
                    this.f19069volatile = typedArrayObtainStyledAttributes.getColor(index, this.f19069volatile);
                } else if (index == R.styleable.QMUILayout_qmui_borderWidth) {
                    this.f19051interface = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f19051interface);
                } else if (index == R.styleable.QMUILayout_qmui_radius) {
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUILayout_qmui_outerNormalColor) {
                    this.f19056protected = typedArrayObtainStyledAttributes.getColor(index, this.f19056protected);
                } else if (index == R.styleable.QMUILayout_qmui_hideRadiusSide) {
                    this.f19032abstract = typedArrayObtainStyledAttributes.getColor(index, this.f19032abstract);
                } else if (index == R.styleable.QMUILayout_qmui_showBorderOnlyBeforeL) {
                    this.f19063synchronized = typedArrayObtainStyledAttributes.getBoolean(index, this.f19063synchronized);
                } else if (index == R.styleable.QMUILayout_qmui_shadowElevation) {
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize2);
                } else if (index == R.styleable.QMUILayout_qmui_shadowAlpha) {
                    this.b = typedArrayObtainStyledAttributes.getFloat(index, this.b);
                } else if (index == R.styleable.QMUILayout_qmui_useThemeGeneralShadowElevation) {
                    z = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.QMUILayout_qmui_outlineInsetLeft) {
                    this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUILayout_qmui_outlineInsetRight) {
                    this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUILayout_qmui_outlineInsetTop) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUILayout_qmui_outlineInsetBottom) {
                    this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUILayout_qmui_outlineExcludePadding) {
                    this.f19048implements = typedArrayObtainStyledAttributes.getBoolean(index, false);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            iM7405new = dimensionPixelSize2;
        }
        if (iM7405new == 0 && z) {
            iM7405new = sh1.m7405new(context, R.attr.qmui_general_shadow_elevation);
        }
        setRadiusAndShadow(dimensionPixelSize, this.f19032abstract, iM7405new, this.b);
    }

    /* renamed from: class, reason: not valid java name */
    private void m23454class(Canvas canvas, RectF rectF, float[] fArr, Paint paint) {
        this.f19050instanceof.reset();
        this.f19050instanceof.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(this.f19050instanceof, paint);
    }

    /* renamed from: native, reason: not valid java name */
    private void m23460native(int i) {
        View view;
        if (Build.VERSION.SDK_INT < 28 || (view = this.f19067transient.get()) == null) {
            return;
        }
        view.setOutlineAmbientShadowColor(i);
        view.setOutlineSpotShadowColor(i);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m23462public() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: while, reason: not valid java name */
    private void m23465while() {
        View view;
        if (!m23462public() || (view = this.f19067transient.get()) == null) {
            return;
        }
        int i = this.a;
        if (i == 0) {
            view.setElevation(0.0f);
        } else {
            view.setElevation(i);
        }
        view.invalidateOutline();
    }

    /* renamed from: break, reason: not valid java name */
    public void m23466break(Canvas canvas) {
        if (this.f19067transient.get() == null) {
            return;
        }
        boolean z = (this.f19055private <= 0 || m23462public() || this.f19056protected == 0) ? false : true;
        boolean z2 = this.f19051interface > 0 && this.f19069volatile != 0;
        if (z || z2) {
            if (this.f19063synchronized && m23462public() && this.a != 0) {
                return;
            }
            int width = canvas.getWidth();
            int height = canvas.getHeight();
            if (this.f19048implements) {
                this.f19060strictfp.set(r0.getPaddingLeft(), r0.getPaddingTop(), width - r0.getPaddingRight(), height - r0.getPaddingBottom());
            } else {
                this.f19060strictfp.set(0.0f, 0.0f, width, height);
            }
            if (z) {
                int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, width, height, null, 31);
                canvas.drawColor(this.f19056protected);
                this.f19044finally.setColor(this.f19056protected);
                this.f19044finally.setStyle(Paint.Style.FILL);
                this.f19044finally.setXfermode(this.f19054package);
                float[] fArr = this.f19038continue;
                if (fArr == null) {
                    RectF rectF = this.f19060strictfp;
                    int i = this.f19055private;
                    canvas.drawRoundRect(rectF, i, i, this.f19044finally);
                } else {
                    m23454class(canvas, this.f19060strictfp, fArr, this.f19044finally);
                }
                this.f19044finally.setXfermode(null);
                canvas.restoreToCount(iSaveLayer);
            }
            if (z2) {
                this.f19044finally.setColor(this.f19069volatile);
                this.f19044finally.setStrokeWidth(this.f19051interface);
                this.f19044finally.setStyle(Paint.Style.STROKE);
                float[] fArr2 = this.f19038continue;
                if (fArr2 != null) {
                    m23454class(canvas, this.f19060strictfp, fArr2, this.f19044finally);
                    return;
                }
                int i2 = this.f19055private;
                if (i2 <= 0) {
                    canvas.drawRect(this.f19060strictfp, this.f19044finally);
                } else {
                    canvas.drawRoundRect(this.f19060strictfp, i2, i2, this.f19044finally);
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m23467catch(Canvas canvas, int i, int i2) {
        if (this.f19042extends == null && (this.f19034case > 0 || this.f19035catch > 0 || this.f19065throw > 0 || this.f19058return > 0)) {
            this.f19042extends = new Paint();
        }
        int i3 = this.f19034case;
        if (i3 > 0) {
            this.f19042extends.setStrokeWidth(i3);
            this.f19042extends.setColor(this.f19064this);
            int i4 = this.f19033break;
            if (i4 < 255) {
                this.f19042extends.setAlpha(i4);
            }
            float f = (this.f19034case * 1.0f) / 2.0f;
            canvas.drawLine(this.f19041else, f, i - this.f19046goto, f, this.f19042extends);
        }
        int i5 = this.f19035catch;
        if (i5 > 0) {
            this.f19042extends.setStrokeWidth(i5);
            this.f19042extends.setColor(this.f19043final);
            int i6 = this.f19061super;
            if (i6 < 255) {
                this.f19042extends.setAlpha(i6);
            }
            float fFloor = (float) Math.floor(i2 - ((this.f19035catch * 1.0f) / 2.0f));
            canvas.drawLine(this.f19036class, fFloor, i - this.f19037const, fFloor, this.f19042extends);
        }
        int i7 = this.f19065throw;
        if (i7 > 0) {
            this.f19042extends.setStrokeWidth(i7);
            this.f19042extends.setColor(this.f19052native);
            int i8 = this.f19057public;
            if (i8 < 255) {
                this.f19042extends.setAlpha(i8);
            }
            canvas.drawLine(0.0f, this.f19070while, 0.0f, i2 - this.f19049import, this.f19042extends);
        }
        int i9 = this.f19058return;
        if (i9 > 0) {
            this.f19042extends.setStrokeWidth(i9);
            this.f19042extends.setColor(this.f19066throws);
            int i10 = this.f19039default;
            if (i10 < 255) {
                this.f19042extends.setAlpha(i10);
            }
            float f2 = i;
            canvas.drawLine(f2, this.f19059static, f2, i2 - this.f19062switch, this.f19042extends);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public int m23468const(int i) {
        return (this.f19045for <= 0 || View.MeasureSpec.getSize(i) <= this.f19045for) ? i : View.MeasureSpec.getMode(i) == Integer.MIN_VALUE ? View.MeasureSpec.makeMeasureSpec(this.f19047if, Integer.MIN_VALUE) : View.MeasureSpec.makeMeasureSpec(this.f19047if, 1073741824);
    }

    /* renamed from: final, reason: not valid java name */
    public int m23469final(int i) {
        return (this.f19047if <= 0 || View.MeasureSpec.getSize(i) <= this.f19047if) ? i : View.MeasureSpec.getMode(i) == Integer.MIN_VALUE ? View.MeasureSpec.makeMeasureSpec(this.f19047if, Integer.MIN_VALUE) : View.MeasureSpec.makeMeasureSpec(this.f19047if, 1073741824);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getHideRadiusSide() {
        return this.f19032abstract;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getRadius() {
        return this.f19055private;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public float getShadowAlpha() {
        return this.b;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getShadowColor() {
        return this.c;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getShadowElevation() {
        return this.a;
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m23470import() {
        return this.f19055private > 0 && this.f19032abstract != 0;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowBottomDivider(int i, int i2, int i3, int i4) {
        updateBottomDivider(i, i2, i3, i4);
        this.f19065throw = 0;
        this.f19058return = 0;
        this.f19034case = 0;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowLeftDivider(int i, int i2, int i3, int i4) {
        updateLeftDivider(i, i2, i3, i4);
        this.f19058return = 0;
        this.f19034case = 0;
        this.f19035catch = 0;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowRightDivider(int i, int i2, int i3, int i4) {
        updateRightDivider(i, i2, i3, i4);
        this.f19065throw = 0;
        this.f19034case = 0;
        this.f19035catch = 0;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowTopDivider(int i, int i2, int i3, int i4) {
        updateTopDivider(i, i2, i3, i4);
        this.f19065throw = 0;
        this.f19058return = 0;
        this.f19035catch = 0;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBorderColor(@ColorInt int i) {
        this.f19069volatile = i;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBorderWidth(int i) {
        this.f19051interface = i;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBottomDividerAlpha(int i) {
        this.f19061super = i;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public boolean setHeightLimit(int i) {
        if (this.f19045for == i) {
            return false;
        }
        this.f19045for = i;
        return true;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setHideRadiusSide(int i) {
        if (this.f19032abstract == i) {
            return;
        }
        setRadiusAndShadow(this.f19055private, i, this.a, this.b);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setLeftDividerAlpha(int i) {
        this.f19057public = i;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOuterNormalColor(int i) {
        this.f19056protected = i;
        View view = this.f19067transient.get();
        if (view != null) {
            view.invalidate();
        }
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOutlineExcludePadding(boolean z) {
        View view;
        if (!m23462public() || (view = this.f19067transient.get()) == null) {
            return;
        }
        this.f19048implements = z;
        view.invalidateOutline();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOutlineInset(int i, int i2, int i3, int i4) {
        View view;
        if (!m23462public() || (view = this.f19067transient.get()) == null) {
            return;
        }
        this.d = i;
        this.e = i3;
        this.f = i2;
        this.g = i4;
        view.invalidateOutline();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadius(int i) {
        if (this.f19055private != i) {
            setRadiusAndShadow(i, this.a, this.b);
        }
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, float f) {
        setRadiusAndShadow(i, this.f19032abstract, i2, f);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRightDividerAlpha(int i) {
        this.f19039default = i;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowAlpha(float f) {
        if (this.b == f) {
            return;
        }
        this.b = f;
        m23465while();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowColor(int i) {
        if (this.c == i) {
            return;
        }
        this.c = i;
        m23460native(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowElevation(int i) {
        if (this.a == i) {
            return;
        }
        this.a = i;
        m23465while();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShowBorderOnlyBeforeL(boolean z) {
        this.f19063synchronized = z;
        m23465while();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setTopDividerAlpha(int i) {
        this.f19033break = i;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setUseThemeGeneralShadowElevation() {
        int iM7405new = sh1.m7405new(this.f19040do, R.attr.qmui_general_shadow_elevation);
        this.a = iM7405new;
        setRadiusAndShadow(this.f19055private, this.f19032abstract, iM7405new, this.b);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public boolean setWidthLimit(int i) {
        if (this.f19047if == i) {
            return false;
        }
        this.f19047if = i;
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    public int m23471super(int i, int i2) {
        int i3;
        return (View.MeasureSpec.getMode(i) == 1073741824 || i2 >= (i3 = this.f19068try)) ? i : View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
    }

    /* renamed from: throw, reason: not valid java name */
    public int m23472throw(int i, int i2) {
        int i3;
        return (View.MeasureSpec.getMode(i) == 1073741824 || i2 >= (i3 = this.f19053new)) ? i : View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateBottomDivider(int i, int i2, int i3, int i4) {
        this.f19036class = i;
        this.f19037const = i2;
        this.f19043final = i4;
        this.f19035catch = i3;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateLeftDivider(int i, int i2, int i3, int i4) {
        this.f19070while = i;
        this.f19049import = i2;
        this.f19065throw = i3;
        this.f19052native = i4;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateRightDivider(int i, int i2, int i3, int i4) {
        this.f19059static = i;
        this.f19062switch = i2;
        this.f19058return = i3;
        this.f19066throws = i4;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateTopDivider(int i, int i2, int i3, int i4) {
        this.f19041else = i;
        this.f19046goto = i2;
        this.f19034case = i3;
        this.f19064this = i4;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, int i3, float f) {
        setRadiusAndShadow(i, i2, i3, this.c, f);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadius(int i, int i2) {
        if (this.f19055private == i && i2 == this.f19032abstract) {
            return;
        }
        setRadiusAndShadow(i, i2, this.a, this.b);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, int i3, int i4, float f) {
        View view = this.f19067transient.get();
        if (view == null) {
            return;
        }
        this.f19055private = i;
        this.f19032abstract = i2;
        if (i > 0) {
            if (i2 == 1) {
                this.f19038continue = new float[]{0.0f, 0.0f, 0.0f, 0.0f, i, i, i, i};
            } else if (i2 == 2) {
                this.f19038continue = new float[]{i, i, 0.0f, 0.0f, 0.0f, 0.0f, i, i};
            } else if (i2 == 3) {
                this.f19038continue = new float[]{i, i, i, i, 0.0f, 0.0f, 0.0f, 0.0f};
            } else if (i2 == 4) {
                this.f19038continue = new float[]{0.0f, 0.0f, i, i, i, i, 0.0f, 0.0f};
            } else {
                this.f19038continue = null;
            }
        }
        this.a = i3;
        this.b = f;
        this.c = i4;
        if (m23462public()) {
            if (this.a != 0 && !m23470import()) {
                view.setElevation(this.a);
            } else {
                view.setElevation(0.0f);
            }
            m23460native(this.c);
            view.setOutlineProvider(new C0184do());
            view.setClipToOutline(this.f19055private > 0);
        }
        view.invalidate();
    }
}
