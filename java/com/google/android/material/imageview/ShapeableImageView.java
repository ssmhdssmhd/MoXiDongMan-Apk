package com.google.android.material.imageview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.Shapeable;

/* loaded from: classes.dex */
public class ShapeableImageView extends AppCompatImageView implements Shapeable {

    /* renamed from: native, reason: not valid java name */
    private static final int f12021native = R.style.Widget_MaterialComponents_ShapeableImageView;

    /* renamed from: public, reason: not valid java name */
    private static final int f12022public = Integer.MIN_VALUE;

    /* renamed from: break, reason: not valid java name */
    @Dimension
    private float f12023break;

    /* renamed from: case, reason: not valid java name */
    private final Path f12024case;

    /* renamed from: catch, reason: not valid java name */
    private Path f12025catch;

    /* renamed from: class, reason: not valid java name */
    @Dimension
    private int f12026class;

    /* renamed from: const, reason: not valid java name */
    @Dimension
    private int f12027const;

    /* renamed from: do, reason: not valid java name */
    private final ShapeAppearancePathProvider f12028do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private ColorStateList f12029else;

    /* renamed from: final, reason: not valid java name */
    @Dimension
    private int f12030final;

    /* renamed from: for, reason: not valid java name */
    private final RectF f12031for;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    private MaterialShapeDrawable f12032goto;

    /* renamed from: if, reason: not valid java name */
    private final RectF f12033if;

    /* renamed from: import, reason: not valid java name */
    private boolean f12034import;

    /* renamed from: new, reason: not valid java name */
    private final Paint f12035new;

    /* renamed from: super, reason: not valid java name */
    @Dimension
    private int f12036super;

    /* renamed from: this, reason: not valid java name */
    private ShapeAppearanceModel f12037this;

    /* renamed from: throw, reason: not valid java name */
    @Dimension
    private int f12038throw;

    /* renamed from: try, reason: not valid java name */
    private final Paint f12039try;

    /* renamed from: while, reason: not valid java name */
    @Dimension
    private int f12040while;

    @TargetApi(21)
    /* renamed from: com.google.android.material.imageview.ShapeableImageView$do, reason: invalid class name */
    public class Cdo extends ViewOutlineProvider {

        /* renamed from: do, reason: not valid java name */
        private final Rect f12041do = new Rect();

        public Cdo() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f12037this == null) {
                return;
            }
            if (ShapeableImageView.this.f12032goto == null) {
                ShapeableImageView.this.f12032goto = new MaterialShapeDrawable(ShapeableImageView.this.f12037this);
            }
            ShapeableImageView.this.f12033if.round(this.f12041do);
            ShapeableImageView.this.f12032goto.setBounds(this.f12041do);
            ShapeableImageView.this.f12032goto.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    /* renamed from: break, reason: not valid java name */
    private void m13524break(int i, int i2) {
        this.f12033if.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.f12028do.m14041new(this.f12037this, 1.0f, this.f12033if, this.f12024case);
        this.f12025catch.rewind();
        this.f12025catch.addPath(this.f12024case);
        this.f12031for.set(0.0f, 0.0f, i, i2);
        this.f12025catch.addRect(this.f12031for, Path.Direction.CCW);
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m13525case() {
        return (this.f12038throw == Integer.MIN_VALUE && this.f12040while == Integer.MIN_VALUE) ? false : true;
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m13527else() {
        return Build.VERSION.SDK_INT >= 17 && getLayoutDirection() == 1;
    }

    /* renamed from: try, reason: not valid java name */
    private void m13531try(Canvas canvas) {
        if (this.f12029else == null) {
            return;
        }
        this.f12035new.setStrokeWidth(this.f12023break);
        int colorForState = this.f12029else.getColorForState(getDrawableState(), this.f12029else.getDefaultColor());
        if (this.f12023break <= 0.0f || colorForState == 0) {
            return;
        }
        this.f12035new.setColor(colorForState);
        canvas.drawPath(this.f12024case, this.f12035new);
    }

    @Dimension
    public int getContentPaddingBottom() {
        return this.f12036super;
    }

    @Dimension
    public final int getContentPaddingEnd() {
        int i = this.f12040while;
        return i != Integer.MIN_VALUE ? i : m13527else() ? this.f12026class : this.f12030final;
    }

    @Dimension
    public int getContentPaddingLeft() {
        int i;
        int i2;
        if (m13525case()) {
            if (m13527else() && (i2 = this.f12040while) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m13527else() && (i = this.f12038throw) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f12026class;
    }

    @Dimension
    public int getContentPaddingRight() {
        int i;
        int i2;
        if (m13525case()) {
            if (m13527else() && (i2 = this.f12038throw) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!m13527else() && (i = this.f12040while) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.f12030final;
    }

    @Dimension
    public final int getContentPaddingStart() {
        int i = this.f12038throw;
        return i != Integer.MIN_VALUE ? i : m13527else() ? this.f12030final : this.f12026class;
    }

    @Dimension
    public int getContentPaddingTop() {
        return this.f12027const;
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    @Dimension
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f12037this;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f12029else;
    }

    @Dimension
    public float getStrokeWidth() {
        return this.f12023break;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m13532goto(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        this.f12038throw = Integer.MIN_VALUE;
        this.f12040while = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.f12026class) + i, (super.getPaddingTop() - this.f12027const) + i2, (super.getPaddingRight() - this.f12030final) + i3, (super.getPaddingBottom() - this.f12036super) + i4);
        this.f12026class = i;
        this.f12027const = i2;
        this.f12030final = i3;
        this.f12036super = i4;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f12025catch, this.f12039try);
        m13531try(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f12034import) {
            return;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 <= 19 || isLayoutDirectionResolved()) {
            this.f12034import = true;
            if (i3 < 21 || !(isPaddingRelative() || m13525case())) {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            } else {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m13524break(i, i2);
    }

    @Override // android.view.View
    public void setPadding(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPadding(i + getContentPaddingLeft(), i2 + getContentPaddingTop(), i3 + getContentPaddingRight(), i4 + getContentPaddingBottom());
    }

    @Override // android.view.View
    public void setPaddingRelative(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPaddingRelative(i + getContentPaddingStart(), i2 + getContentPaddingTop(), i3 + getContentPaddingEnd(), i4 + getContentPaddingBottom());
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f12037this = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f12032goto;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        m13524break(getWidth(), getHeight());
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f12029else = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(@ColorRes int i) {
        setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setStrokeWidth(@Dimension float f) {
        if (this.f12023break != f) {
            this.f12023break = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    @RequiresApi(17)
    /* renamed from: this, reason: not valid java name */
    public void m13533this(@Dimension int i, @Dimension int i2, @Dimension int i3, @Dimension int i4) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i, (super.getPaddingTop() - this.f12027const) + i2, (super.getPaddingEnd() - getContentPaddingEnd()) + i3, (super.getPaddingBottom() - this.f12036super) + i4);
        this.f12026class = m13527else() ? i3 : i;
        this.f12027const = i2;
        if (!m13527else()) {
            i = i3;
        }
        this.f12030final = i;
        this.f12036super = i4;
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f12021native;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f12028do = ShapeAppearancePathProvider.m14030catch();
        this.f12024case = new Path();
        this.f12034import = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f12039try = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f12033if = new RectF();
        this.f12031for = new RectF();
        this.f12025catch = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.ShapeableImageView, i, i2);
        this.f12029else = sx0.m7649do(context2, typedArrayObtainStyledAttributes, R.styleable.ShapeableImageView_strokeColor);
        this.f12023break = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_strokeWidth, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPadding, 0);
        this.f12026class = dimensionPixelSize;
        this.f12027const = dimensionPixelSize;
        this.f12030final = dimensionPixelSize;
        this.f12036super = dimensionPixelSize;
        this.f12026class = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingLeft, dimensionPixelSize);
        this.f12027const = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingTop, dimensionPixelSize);
        this.f12030final = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingRight, dimensionPixelSize);
        this.f12036super = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingBottom, dimensionPixelSize);
        this.f12038throw = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingStart, Integer.MIN_VALUE);
        this.f12040while = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShapeableImageView_contentPaddingEnd, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f12035new = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f12037this = ShapeAppearanceModel.m13971try(context2, attributeSet, i, i2).m14003const();
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new Cdo());
        }
    }
}
