package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.support.v4.xl1;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.callback.OverlayViewChangeListener;

/* loaded from: classes2.dex */
public class OverlayView extends View {

    /* renamed from: abstract, reason: not valid java name */
    public static final boolean f23137abstract = true;

    /* renamed from: continue, reason: not valid java name */
    public static final boolean f23138continue = true;

    /* renamed from: interface, reason: not valid java name */
    public static final boolean f23139interface = false;

    /* renamed from: protected, reason: not valid java name */
    public static final int f23140protected = 2;

    /* renamed from: strictfp, reason: not valid java name */
    public static final boolean f23141strictfp = true;

    /* renamed from: transient, reason: not valid java name */
    public static final int f23142transient = 2;

    /* renamed from: volatile, reason: not valid java name */
    public static final boolean f23143volatile = false;

    /* renamed from: break, reason: not valid java name */
    private boolean f23144break;

    /* renamed from: case, reason: not valid java name */
    private float f23145case;

    /* renamed from: catch, reason: not valid java name */
    private int f23146catch;

    /* renamed from: class, reason: not valid java name */
    private Path f23147class;

    /* renamed from: const, reason: not valid java name */
    private Paint f23148const;

    /* renamed from: default, reason: not valid java name */
    private int f23149default;

    /* renamed from: do, reason: not valid java name */
    private boolean f23150do;

    /* renamed from: else, reason: not valid java name */
    private float[] f23151else;

    /* renamed from: extends, reason: not valid java name */
    private int f23152extends;

    /* renamed from: final, reason: not valid java name */
    private Paint f23153final;

    /* renamed from: finally, reason: not valid java name */
    private int f23154finally;

    /* renamed from: for, reason: not valid java name */
    private final RectF f23155for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f23156goto;

    /* renamed from: if, reason: not valid java name */
    private final RectF f23157if;

    /* renamed from: import, reason: not valid java name */
    public int f23158import;

    /* renamed from: native, reason: not valid java name */
    private boolean f23159native;

    /* renamed from: new, reason: not valid java name */
    private int f23160new;

    /* renamed from: package, reason: not valid java name */
    private OverlayViewChangeListener f23161package;

    /* renamed from: private, reason: not valid java name */
    private boolean f23162private;

    /* renamed from: public, reason: not valid java name */
    public float[] f23163public;

    /* renamed from: return, reason: not valid java name */
    public float[] f23164return;

    /* renamed from: static, reason: not valid java name */
    private float f23165static;

    /* renamed from: super, reason: not valid java name */
    private Paint f23166super;

    /* renamed from: switch, reason: not valid java name */
    private float f23167switch;

    /* renamed from: this, reason: not valid java name */
    private boolean f23168this;

    /* renamed from: throw, reason: not valid java name */
    private Paint f23169throw;

    /* renamed from: throws, reason: not valid java name */
    private int f23170throws;

    /* renamed from: try, reason: not valid java name */
    private int f23171try;

    /* renamed from: while, reason: not valid java name */
    public int f23172while;

    public OverlayView(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m27529case(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.ucrop_UCropView_ucrop_grid_stroke_size, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width));
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_grid_color, getResources().getColor(R.color.ucrop_color_default_crop_grid));
        this.f23153final.setStrokeWidth(dimensionPixelSize);
        this.f23153final.setColor(color);
        this.f23160new = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_row_count, 2);
        this.f23171try = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_column_count, 2);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m27530catch(float f, float f2) {
        this.f23155for.set(this.f23157if);
        int i = this.f23170throws;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            this.f23155for.offset(f - this.f23165static, f2 - this.f23167switch);
                            if (this.f23155for.left <= getLeft() || this.f23155for.top <= getTop() || this.f23155for.right >= getRight() || this.f23155for.bottom >= getBottom()) {
                                return;
                            }
                            this.f23157if.set(this.f23155for);
                            m27531class();
                            postInvalidate();
                            return;
                        }
                    } else if (this.f23150do) {
                        RectF rectF = this.f23155for;
                        RectF rectF2 = this.f23157if;
                        rectF.set(f, rectF2.top, rectF2.right, f2);
                    }
                } else if (this.f23150do) {
                    RectF rectF3 = this.f23155for;
                    RectF rectF4 = this.f23157if;
                    rectF3.set(rectF4.left, rectF4.top, f, f2);
                }
            } else if (this.f23150do) {
                RectF rectF5 = this.f23155for;
                RectF rectF6 = this.f23157if;
                rectF5.set(rectF6.left, f2, f, rectF6.bottom);
            }
        } else if (this.f23150do) {
            RectF rectF7 = this.f23155for;
            RectF rectF8 = this.f23157if;
            rectF7.set(f, f2, rectF8.right, rectF8.bottom);
        }
        boolean z = this.f23155for.height() >= ((float) this.f23152extends);
        boolean z2 = this.f23155for.width() >= ((float) this.f23152extends);
        RectF rectF9 = this.f23157if;
        rectF9.set(z2 ? this.f23155for.left : rectF9.left, z ? this.f23155for.top : rectF9.top, z2 ? this.f23155for.right : rectF9.right, z ? this.f23155for.bottom : rectF9.bottom);
        if (z || z2) {
            m27531class();
            postInvalidate();
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m27531class() {
        this.f23163public = xl1.m9537if(this.f23157if);
        this.f23164return = xl1.m9535do(this.f23157if);
        this.f23151else = null;
        this.f23147class.reset();
        this.f23147class.addCircle(this.f23157if.centerX(), this.f23157if.centerY(), Math.min(this.f23157if.width(), this.f23157if.height()) / 2.0f, Path.Direction.CW);
    }

    /* renamed from: for, reason: not valid java name */
    private int m27532for(float f, float f2) {
        double d = this.f23149default;
        int i = -1;
        for (int i2 = 0; i2 < 8; i2 += 2) {
            double dSqrt = Math.sqrt(Math.pow(f - this.f23163public[i2], 2.0d) + Math.pow(f2 - this.f23163public[i2 + 1], 2.0d));
            if (dSqrt < d) {
                i = i2 / 2;
                d = dSqrt;
            }
        }
        if (i >= 0 || !this.f23157if.contains(f, f2)) {
            return i;
        }
        return 4;
    }

    /* renamed from: try, reason: not valid java name */
    private void m27533try(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.ucrop_UCropView_ucrop_frame_stroke_size, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width));
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_frame_color, getResources().getColor(R.color.ucrop_color_default_crop_frame));
        this.f23166super.setStrokeWidth(dimensionPixelSize);
        this.f23166super.setColor(color);
        this.f23166super.setStyle(Paint.Style.STROKE);
        this.f23169throw.setStrokeWidth(dimensionPixelSize * 3);
        this.f23169throw.setColor(color);
        this.f23169throw.setStyle(Paint.Style.STROKE);
    }

    /* renamed from: break, reason: not valid java name */
    public void m27534break() {
        int i = this.f23172while;
        float f = this.f23145case;
        int i2 = (int) (i / f);
        int i3 = this.f23158import;
        if (i2 > i3) {
            int i4 = (i - ((int) (i3 * f))) / 2;
            this.f23157if.set(getPaddingLeft() + i4, getPaddingTop(), getPaddingLeft() + r1 + i4, getPaddingTop() + this.f23158import);
        } else {
            int i5 = (i3 - i2) / 2;
            this.f23157if.set(getPaddingLeft(), getPaddingTop() + i5, getPaddingLeft() + this.f23172while, getPaddingTop() + i2 + i5);
        }
        OverlayViewChangeListener overlayViewChangeListener = this.f23161package;
        if (overlayViewChangeListener != null) {
            overlayViewChangeListener.onCropRectUpdated(this.f23157if);
        }
        m27531class();
    }

    /* renamed from: do, reason: not valid java name */
    public void m27535do(@NonNull Canvas canvas) {
        if (this.f23168this) {
            if (this.f23151else == null && !this.f23157if.isEmpty()) {
                this.f23151else = new float[(this.f23160new * 4) + (this.f23171try * 4)];
                int i = 0;
                for (int i2 = 0; i2 < this.f23160new; i2++) {
                    float[] fArr = this.f23151else;
                    int i3 = i + 1;
                    RectF rectF = this.f23157if;
                    fArr[i] = rectF.left;
                    int i4 = i3 + 1;
                    float f = i2 + 1.0f;
                    float fHeight = rectF.height() * (f / (this.f23160new + 1));
                    RectF rectF2 = this.f23157if;
                    fArr[i3] = fHeight + rectF2.top;
                    float[] fArr2 = this.f23151else;
                    int i5 = i4 + 1;
                    fArr2[i4] = rectF2.right;
                    i = i5 + 1;
                    fArr2[i5] = (rectF2.height() * (f / (this.f23160new + 1))) + this.f23157if.top;
                }
                for (int i6 = 0; i6 < this.f23171try; i6++) {
                    float[] fArr3 = this.f23151else;
                    int i7 = i + 1;
                    float f2 = i6 + 1.0f;
                    float fWidth = this.f23157if.width() * (f2 / (this.f23171try + 1));
                    RectF rectF3 = this.f23157if;
                    fArr3[i] = fWidth + rectF3.left;
                    float[] fArr4 = this.f23151else;
                    int i8 = i7 + 1;
                    fArr4[i7] = rectF3.top;
                    int i9 = i8 + 1;
                    float fWidth2 = rectF3.width() * (f2 / (this.f23171try + 1));
                    RectF rectF4 = this.f23157if;
                    fArr4[i8] = fWidth2 + rectF4.left;
                    i = i9 + 1;
                    this.f23151else[i9] = rectF4.bottom;
                }
            }
            float[] fArr5 = this.f23151else;
            if (fArr5 != null) {
                canvas.drawLines(fArr5, this.f23153final);
            }
        }
        if (this.f23156goto) {
            canvas.drawRect(this.f23157if, this.f23166super);
        }
        if (this.f23159native) {
            canvas.save();
            this.f23155for.set(this.f23157if);
            this.f23155for.inset(this.f23154finally, -r1);
            canvas.clipRect(this.f23155for, Region.Op.DIFFERENCE);
            this.f23155for.set(this.f23157if);
            this.f23155for.inset(-r1, this.f23154finally);
            canvas.clipRect(this.f23155for, Region.Op.DIFFERENCE);
            canvas.drawRect(this.f23157if, this.f23169throw);
            canvas.restore();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m27536else() {
        return this.f23159native;
    }

    @NonNull
    public RectF getCropViewRect() {
        return this.f23157if;
    }

    public OverlayViewChangeListener getOverlayViewChangeListener() {
        return this.f23161package;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m27537goto() {
        return this.f23150do;
    }

    /* renamed from: if, reason: not valid java name */
    public void m27538if(@NonNull Canvas canvas) {
        canvas.save();
        if (this.f23144break) {
            canvas.clipPath(this.f23147class, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.f23157if, Region.Op.DIFFERENCE);
        }
        canvas.drawColor(this.f23146catch);
        canvas.restore();
        if (this.f23144break) {
            canvas.drawCircle(this.f23157if.centerX(), this.f23157if.centerY(), Math.min(this.f23157if.width(), this.f23157if.height()) / 2.0f, this.f23148const);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m27539new() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18 || i < 11) {
            return;
        }
        setLayerType(1, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m27538if(canvas);
        m27535do(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            this.f23172while = width - paddingLeft;
            this.f23158import = height - paddingTop;
            if (this.f23162private) {
                this.f23162private = false;
                setTargetAspectRatio(this.f23145case);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f23157if.isEmpty() && this.f23159native) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if ((motionEvent.getAction() & 255) == 0) {
                if (this.f23165static < 0.0f) {
                    this.f23165static = x;
                    this.f23167switch = y;
                }
                int iM27532for = m27532for(x, y);
                this.f23170throws = iM27532for;
                return iM27532for != -1;
            }
            if ((motionEvent.getAction() & 255) == 2 && motionEvent.getPointerCount() == 1 && this.f23170throws != -1) {
                float fMin = Math.min(Math.max(x, getPaddingLeft()), getWidth() - getPaddingRight());
                float fMin2 = Math.min(Math.max(y, getPaddingTop()), getHeight() - getPaddingBottom());
                m27530catch(fMin, fMin2);
                this.f23165static = fMin;
                this.f23167switch = fMin2;
                return true;
            }
            if ((motionEvent.getAction() & 255) == 1) {
                this.f23165static = -1.0f;
                this.f23167switch = -1.0f;
                this.f23170throws = -1;
                OverlayViewChangeListener overlayViewChangeListener = this.f23161package;
                if (overlayViewChangeListener != null) {
                    overlayViewChangeListener.onCropRectUpdated(this.f23157if);
                }
            }
        }
        return false;
    }

    public void setCircleDimmedLayer(boolean z) {
        this.f23144break = z;
    }

    public void setCropFrameColor(@ColorInt int i) {
        this.f23166super.setColor(i);
    }

    public void setCropFrameStrokeWidth(@IntRange(from = 0) int i) {
        this.f23166super.setStrokeWidth(i);
    }

    public void setCropGridColor(@ColorInt int i) {
        this.f23153final.setColor(i);
    }

    public void setCropGridColumnCount(@IntRange(from = 0) int i) {
        this.f23171try = i;
        this.f23151else = null;
    }

    public void setCropGridRowCount(@IntRange(from = 0) int i) {
        this.f23160new = i;
        this.f23151else = null;
    }

    public void setCropGridStrokeWidth(@IntRange(from = 0) int i) {
        this.f23153final.setStrokeWidth(i);
    }

    public void setDimmedColor(@ColorInt int i) {
        this.f23146catch = i;
    }

    public void setDragFrame(boolean z) {
        this.f23150do = z;
    }

    public void setFreestyleCropEnabled(boolean z) {
        this.f23159native = z;
    }

    public void setOverlayViewChangeListener(OverlayViewChangeListener overlayViewChangeListener) {
        this.f23161package = overlayViewChangeListener;
    }

    public void setShowCropFrame(boolean z) {
        this.f23156goto = z;
    }

    public void setShowCropGrid(boolean z) {
        this.f23168this = z;
    }

    public void setTargetAspectRatio(float f) {
        this.f23145case = f;
        if (this.f23172while <= 0) {
            this.f23162private = true;
        } else {
            m27534break();
            postInvalidate();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m27540this(@NonNull TypedArray typedArray) {
        this.f23144break = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_circle_dimmed_layer, false);
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_dimmed_color, getResources().getColor(R.color.ucrop_color_default_dimmed));
        this.f23146catch = color;
        this.f23148const.setColor(color);
        this.f23148const.setStyle(Paint.Style.STROKE);
        this.f23148const.setStrokeWidth(1.0f);
        m27533try(typedArray);
        this.f23156goto = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_frame, true);
        m27529case(typedArray);
        this.f23168this = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_grid, true);
    }

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f23150do = true;
        this.f23157if = new RectF();
        this.f23155for = new RectF();
        this.f23151else = null;
        this.f23147class = new Path();
        this.f23148const = new Paint(1);
        this.f23153final = new Paint(1);
        this.f23166super = new Paint(1);
        this.f23169throw = new Paint(1);
        this.f23159native = false;
        this.f23165static = -1.0f;
        this.f23167switch = -1.0f;
        this.f23170throws = -1;
        this.f23149default = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_threshold);
        this.f23152extends = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_min_size);
        this.f23154finally = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_area_line_length);
        m27539new();
    }
}
