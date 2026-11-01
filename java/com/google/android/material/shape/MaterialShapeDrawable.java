package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.support.v4.mx1;
import android.support.v4.nx1;
import android.support.v4.qx0;
import android.support.v4.r60;
import android.support.v4.s0;
import android.support.v4.um1;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import com.google.android.material.R;
import com.google.android.material.shape.Cif;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;

/* loaded from: classes.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, Shapeable {

    /* renamed from: default, reason: not valid java name */
    private static final float f12490default = 0.25f;

    /* renamed from: extends, reason: not valid java name */
    public static final int f12491extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f12492finally = 1;

    /* renamed from: package, reason: not valid java name */
    public static final int f12493package = 2;

    /* renamed from: throws, reason: not valid java name */
    private static final float f12496throws = 0.75f;

    /* renamed from: break, reason: not valid java name */
    private final RectF f12497break;

    /* renamed from: case, reason: not valid java name */
    private final Matrix f12498case;

    /* renamed from: catch, reason: not valid java name */
    private final Region f12499catch;

    /* renamed from: class, reason: not valid java name */
    private final Region f12500class;

    /* renamed from: const, reason: not valid java name */
    private ShapeAppearanceModel f12501const;

    /* renamed from: do, reason: not valid java name */
    private Cnew f12502do;

    /* renamed from: else, reason: not valid java name */
    private final Path f12503else;

    /* renamed from: final, reason: not valid java name */
    private final Paint f12504final;

    /* renamed from: for, reason: not valid java name */
    private final Cif.Cthis[] f12505for;

    /* renamed from: goto, reason: not valid java name */
    private final Path f12506goto;

    /* renamed from: if, reason: not valid java name */
    private final Cif.Cthis[] f12507if;

    /* renamed from: import, reason: not valid java name */
    private final ShapeAppearancePathProvider f12508import;

    /* renamed from: native, reason: not valid java name */
    @Nullable
    private PorterDuffColorFilter f12509native;

    /* renamed from: new, reason: not valid java name */
    private final BitSet f12510new;

    /* renamed from: public, reason: not valid java name */
    @Nullable
    private PorterDuffColorFilter f12511public;

    /* renamed from: return, reason: not valid java name */
    @NonNull
    private final RectF f12512return;

    /* renamed from: static, reason: not valid java name */
    private boolean f12513static;

    /* renamed from: super, reason: not valid java name */
    private final Paint f12514super;

    /* renamed from: this, reason: not valid java name */
    private final RectF f12515this;

    /* renamed from: throw, reason: not valid java name */
    private final mx1 f12516throw;

    /* renamed from: try, reason: not valid java name */
    private boolean f12517try;

    /* renamed from: while, reason: not valid java name */
    @NonNull
    private final ShapeAppearancePathProvider.PathListener f12518while;

    /* renamed from: switch, reason: not valid java name */
    private static final String f12495switch = MaterialShapeDrawable.class.getSimpleName();

    /* renamed from: private, reason: not valid java name */
    private static final Paint f12494private = new Paint(1);

    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$do, reason: invalid class name */
    public class Cdo implements ShapeAppearancePathProvider.PathListener {
        public Cdo() {
        }

        @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
        public void onCornerPathCreated(@NonNull com.google.android.material.shape.Cif cif, Matrix matrix, int i) {
            MaterialShapeDrawable.this.f12510new.set(i, cif.m14069try());
            MaterialShapeDrawable.this.f12507if[i] = cif.m14059case(matrix);
        }

        @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
        public void onEdgePathCreated(@NonNull com.google.android.material.shape.Cif cif, Matrix matrix, int i) {
            MaterialShapeDrawable.this.f12510new.set(i + 4, cif.m14069try());
            MaterialShapeDrawable.this.f12505for[i] = cif.m14059case(matrix);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$for, reason: invalid class name */
    public @interface Cfor {
    }

    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$if, reason: invalid class name */
    public class Cif implements ShapeAppearanceModel.CornerSizeUnaryOperator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ float f12520do;

        public Cif(float f) {
            this.f12520do = f;
        }

        @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
        @NonNull
        public CornerSize apply(@NonNull CornerSize cornerSize) {
            return cornerSize instanceof um1 ? cornerSize : new s0(this.f12520do, cornerSize);
        }
    }

    public /* synthetic */ MaterialShapeDrawable(Cnew cnew, Cdo cdo) {
        this(cnew);
    }

    private boolean X(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f12502do.f12535new == null || color2 == (colorForState2 = this.f12502do.f12535new.getColorForState(iArr, (color2 = this.f12504final.getColor())))) {
            z = false;
        } else {
            this.f12504final.setColor(colorForState2);
            z = true;
        }
        if (this.f12502do.f12542try == null || color == (colorForState = this.f12502do.f12542try.getColorForState(iArr, (color = this.f12514super.getColor())))) {
            return z;
        }
        this.f12514super.setColor(colorForState);
        return true;
    }

    private boolean Y() {
        PorterDuffColorFilter porterDuffColorFilter = this.f12509native;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f12511public;
        Cnew cnew = this.f12502do;
        this.f12509native = m13925break(cnew.f12528else, cnew.f12531goto, this.f12504final, true);
        Cnew cnew2 = this.f12502do;
        this.f12511public = m13925break(cnew2.f12523case, cnew2.f12531goto, this.f12514super, false);
        Cnew cnew3 = this.f12502do;
        if (cnew3.f12537return) {
            this.f12516throw.m5053new(cnew3.f12528else.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.f12509native) && ObjectsCompat.equals(porterDuffColorFilter2, this.f12511public)) ? false : true;
    }

    private void Z() {
        float fG = g();
        this.f12502do.f12533import = (int) Math.ceil(0.75f * fG);
        this.f12502do.f12534native = (int) Math.ceil(fG * 0.25f);
        Y();
        l();
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    private PorterDuffColorFilter m13925break(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? m13940try(paint, z) : m13939this(colorStateList, mode, z);
    }

    /* renamed from: case, reason: not valid java name */
    private void m13926case(@NonNull RectF rectF, @NonNull Path path) {
        m13946else(rectF, path);
        if (this.f12502do.f12522break != 1.0f) {
            this.f12498case.reset();
            Matrix matrix = this.f12498case;
            float f = this.f12502do.f12522break;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f12498case);
        }
        path.computeBounds(this.f12512return, true);
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    public static MaterialShapeDrawable m13927class(Context context) {
        return m13928const(context, 0.0f);
    }

    @NonNull
    /* renamed from: const, reason: not valid java name */
    public static MaterialShapeDrawable m13928const(Context context, float f) {
        int iM6676for = qx0.m6676for(context, R.attr.colorSurface, MaterialShapeDrawable.class.getSimpleName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.k(context);
        materialShapeDrawable.z(ColorStateList.valueOf(iM6676for));
        materialShapeDrawable.y(f);
        return materialShapeDrawable;
    }

    /* renamed from: final, reason: not valid java name */
    private void m13930final(@NonNull Canvas canvas) {
        this.f12510new.cardinality();
        if (this.f12502do.f12534native != 0) {
            canvas.drawPath(this.f12503else, this.f12516throw.m5051for());
        }
        for (int i = 0; i < 4; i++) {
            this.f12507if[i].m14110if(this.f12516throw, this.f12502do.f12533import, canvas);
            this.f12505for[i].m14110if(this.f12516throw, this.f12502do.f12533import, canvas);
        }
        if (this.f12513static) {
            int iM13963volatile = m13963volatile();
            int iM13951interface = m13951interface();
            canvas.translate(-iM13963volatile, -iM13951interface);
            canvas.drawPath(this.f12503else, f12494private);
            canvas.translate(iM13963volatile, iM13951interface);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m13932goto() {
        ShapeAppearanceModel shapeAppearanceModelM13975default = getShapeAppearanceModel().m13975default(new Cif(-m13938synchronized()));
        this.f12501const = shapeAppearanceModelM13975default;
        this.f12508import.m14041new(shapeAppearanceModelM13975default, this.f12502do.f12524catch, m13936static(), this.f12506goto);
    }

    private boolean h() {
        Cnew cnew = this.f12502do;
        int i = cnew.f12543while;
        return i != 1 && cnew.f12533import > 0 && (i == 2 || u());
    }

    private boolean i() {
        Paint.Style style = this.f12502do.f12538static;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    /* renamed from: import, reason: not valid java name */
    private void m13934import(@NonNull Canvas canvas) {
        m13941while(canvas, this.f12514super, this.f12506goto, this.f12501const, m13936static());
    }

    private boolean j() {
        Paint.Style style = this.f12502do.f12538static;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f12514super.getStrokeWidth() > 0.0f;
    }

    private void l() {
        super.invalidateSelf();
    }

    private void r(@NonNull Canvas canvas) {
        if (h()) {
            canvas.save();
            t(canvas);
            if (!this.f12513static) {
                m13930final(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.f12512return.width() - getBounds().width());
            int iHeight = (int) (this.f12512return.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.f12512return.width()) + (this.f12502do.f12533import * 2) + iWidth, ((int) this.f12512return.height()) + (this.f12502do.f12533import * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f = (getBounds().left - this.f12502do.f12533import) - iWidth;
            float f2 = (getBounds().top - this.f12502do.f12533import) - iHeight;
            canvas2.translate(-f, -f2);
            m13930final(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f, f2, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private static int s(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    @NonNull
    /* renamed from: static, reason: not valid java name */
    private RectF m13936static() {
        this.f12497break.set(m13957return());
        float fM13938synchronized = m13938synchronized();
        this.f12497break.inset(fM13938synchronized, fM13938synchronized);
        return this.f12497break;
    }

    /* renamed from: super, reason: not valid java name */
    private void m13937super(@NonNull Canvas canvas) {
        m13941while(canvas, this.f12504final, this.f12503else, this.f12502do.f12527do, m13957return());
    }

    /* renamed from: synchronized, reason: not valid java name */
    private float m13938synchronized() {
        if (j()) {
            return this.f12514super.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private void t(@NonNull Canvas canvas) {
        int iM13963volatile = m13963volatile();
        int iM13951interface = m13951interface();
        if (Build.VERSION.SDK_INT < 21 && this.f12513static) {
            Rect clipBounds = canvas.getClipBounds();
            int i = this.f12502do.f12533import;
            clipBounds.inset(-i, -i);
            clipBounds.offset(iM13963volatile, iM13951interface);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(iM13963volatile, iM13951interface);
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    private PorterDuffColorFilter m13939this(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = m13943catch(colorForState);
        }
        return new PorterDuffColorFilter(colorForState, mode);
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    private PorterDuffColorFilter m13940try(@NonNull Paint paint, boolean z) {
        int color;
        int iM13943catch;
        if (!z || (iM13943catch = m13943catch((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(iM13943catch, PorterDuff.Mode.SRC_IN);
    }

    /* renamed from: while, reason: not valid java name */
    private void m13941while(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull ShapeAppearanceModel shapeAppearanceModel, @NonNull RectF rectF) {
        if (!shapeAppearanceModel.m13981return(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float cornerSize = shapeAppearanceModel.m13980public().getCornerSize(rectF) * this.f12502do.f12524catch;
            canvas.drawRoundRect(rectF, cornerSize, cornerSize, paint);
        }
    }

    public void A(float f) {
        Cnew cnew = this.f12502do;
        if (cnew.f12524catch != f) {
            cnew.f12524catch = f;
            this.f12517try = true;
            invalidateSelf();
        }
    }

    public void B(int i, int i2, int i3, int i4) {
        Cnew cnew = this.f12502do;
        if (cnew.f12540this == null) {
            cnew.f12540this = new Rect();
        }
        this.f12502do.f12540this.set(i, i2, i3, i4);
        invalidateSelf();
    }

    public void C(Paint.Style style) {
        this.f12502do.f12538static = style;
        l();
    }

    public void D(float f) {
        Cnew cnew = this.f12502do;
        if (cnew.f12529final != f) {
            cnew.f12529final = f;
            Z();
        }
    }

    public void E(float f) {
        Cnew cnew = this.f12502do;
        if (cnew.f12522break != f) {
            cnew.f12522break = f;
            invalidateSelf();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void F(boolean z) {
        this.f12513static = z;
    }

    public void G(int i) {
        this.f12516throw.m5053new(i);
        this.f12502do.f12537return = false;
        l();
    }

    public void H(int i) {
        Cnew cnew = this.f12502do;
        if (cnew.f12536public != i) {
            cnew.f12536public = i;
            l();
        }
    }

    public void I(int i) {
        Cnew cnew = this.f12502do;
        if (cnew.f12543while != i) {
            cnew.f12543while = i;
            l();
        }
    }

    @Deprecated
    public void J(int i) {
        y(i);
    }

    @Deprecated
    public void K(boolean z) {
        I(!z ? 1 : 0);
    }

    @Deprecated
    public void L(int i) {
        this.f12502do.f12533import = i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void M(int i) {
        Cnew cnew = this.f12502do;
        if (cnew.f12534native != i) {
            cnew.f12534native = i;
            l();
        }
    }

    @Deprecated
    public void N(@NonNull nx1 nx1Var) {
        setShapeAppearanceModel(nx1Var);
    }

    public void O(float f, @ColorInt int i) {
        T(f);
        Q(ColorStateList.valueOf(i));
    }

    public void P(float f, @Nullable ColorStateList colorStateList) {
        T(f);
        Q(colorStateList);
    }

    public void Q(@Nullable ColorStateList colorStateList) {
        Cnew cnew = this.f12502do;
        if (cnew.f12542try != colorStateList) {
            cnew.f12542try = colorStateList;
            onStateChange(getState());
        }
    }

    public void R(@ColorInt int i) {
        S(ColorStateList.valueOf(i));
    }

    public void S(ColorStateList colorStateList) {
        this.f12502do.f12523case = colorStateList;
        Y();
        l();
    }

    public void T(float f) {
        this.f12502do.f12525class = f;
        invalidateSelf();
    }

    public void U(float f) {
        Cnew cnew = this.f12502do;
        if (cnew.f12541throw != f) {
            cnew.f12541throw = f;
            Z();
        }
    }

    public void V(boolean z) {
        Cnew cnew = this.f12502do;
        if (cnew.f12537return != z) {
            cnew.f12537return = z;
            invalidateSelf();
        }
    }

    public void W(float f) {
        U(f - m13959switch());
    }

    @Nullable
    public ColorStateList a() {
        return this.f12502do.f12523case;
    }

    /* renamed from: abstract, reason: not valid java name */
    public int m13942abstract() {
        return this.f12502do.f12536public;
    }

    public float b() {
        return this.f12502do.f12525class;
    }

    @Nullable
    public ColorStateList c() {
        return this.f12502do.f12528else;
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: catch, reason: not valid java name */
    public int m13943catch(@ColorInt int i) {
        float fG = g() + m13948finally();
        r60 r60Var = this.f12502do.f12532if;
        return r60Var != null ? r60Var.m6792try(i, fG) : i;
    }

    /* renamed from: continue, reason: not valid java name */
    public int m13944continue() {
        return this.f12502do.f12543while;
    }

    public float d() {
        return this.f12502do.f12527do.m13978import().getCornerSize(m13957return());
    }

    /* renamed from: default, reason: not valid java name */
    public float m13945default() {
        return this.f12502do.f12524catch;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f12504final.setColorFilter(this.f12509native);
        int alpha = this.f12504final.getAlpha();
        this.f12504final.setAlpha(s(alpha, this.f12502do.f12526const));
        this.f12514super.setColorFilter(this.f12511public);
        this.f12514super.setStrokeWidth(this.f12502do.f12525class);
        int alpha2 = this.f12514super.getAlpha();
        this.f12514super.setAlpha(s(alpha2, this.f12502do.f12526const));
        if (this.f12517try) {
            m13932goto();
            m13926case(m13957return(), this.f12503else);
            this.f12517try = false;
        }
        r(canvas);
        if (i()) {
            m13937super(canvas);
        }
        if (j()) {
            m13934import(canvas);
        }
        this.f12504final.setAlpha(alpha);
        this.f12514super.setAlpha(alpha2);
    }

    public float e() {
        return this.f12502do.f12527do.m13980public().getCornerSize(m13957return());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: else, reason: not valid java name */
    public final void m13946else(@NonNull RectF rectF, @NonNull Path path) {
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.f12508import;
        Cnew cnew = this.f12502do;
        shapeAppearancePathProvider.m14042try(cnew.f12527do, cnew.f12524catch, rectF, this.f12518while, path);
    }

    /* renamed from: extends, reason: not valid java name */
    public Paint.Style m13947extends() {
        return this.f12502do.f12538static;
    }

    public float f() {
        return this.f12502do.f12541throw;
    }

    /* renamed from: finally, reason: not valid java name */
    public float m13948finally() {
        return this.f12502do.f12529final;
    }

    public float g() {
        return m13959switch() + f();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f12502do;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f12502do.f12543while == 2) {
            return;
        }
        if (p()) {
            outline.setRoundRect(getBounds(), d() * this.f12502do.f12524catch);
            return;
        }
        m13926case(m13957return(), this.f12503else);
        if (this.f12503else.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(this.f12503else);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.f12502do.f12540this;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f12502do.f12527do;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f12499catch.set(getBounds());
        m13926case(m13957return(), this.f12503else);
        this.f12500class.setPath(this.f12503else, this.f12499catch);
        this.f12499catch.op(this.f12500class, Region.Op.DIFFERENCE);
        return this.f12499catch;
    }

    @Nullable
    @Deprecated
    /* renamed from: implements, reason: not valid java name */
    public nx1 m13949implements() {
        ShapeAppearanceModel shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof nx1) {
            return (nx1) shapeAppearanceModel;
        }
        return null;
    }

    @Nullable
    /* renamed from: instanceof, reason: not valid java name */
    public ColorStateList m13950instanceof() {
        return this.f12502do.f12542try;
    }

    /* renamed from: interface, reason: not valid java name */
    public int m13951interface() {
        double d = this.f12502do.f12534native;
        double dCos = Math.cos(Math.toRadians(r0.f12536public));
        Double.isNaN(d);
        return (int) (d * dCos);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f12517try = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f12502do.f12528else) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f12502do.f12523case) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f12502do.f12542try) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f12502do.f12535new) != null && colorStateList4.isStateful())));
    }

    public void k(Context context) {
        this.f12502do.f12532if = new r60(context);
        Z();
    }

    public boolean m() {
        r60 r60Var = this.f12502do.f12532if;
        return r60Var != null && r60Var.m6784class();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.f12502do = new Cnew(this.f12502do);
        return this;
    }

    public boolean n() {
        return this.f12502do.f12532if != null;
    }

    /* renamed from: native, reason: not valid java name */
    public float m13952native() {
        return this.f12502do.f12527do.m13972break().getCornerSize(m13957return());
    }

    public boolean o(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f12517try = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        boolean z = X(iArr) || Y();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean p() {
        return this.f12502do.f12527do.m13981return(m13957return());
    }

    @Deprecated
    /* renamed from: package, reason: not valid java name */
    public void m13953package(int i, int i2, @NonNull Path path) {
        m13946else(new RectF(0.0f, 0.0f, i, i2), path);
    }

    /* renamed from: private, reason: not valid java name */
    public float m13954private() {
        return this.f12502do.f12522break;
    }

    /* renamed from: protected, reason: not valid java name */
    public int m13955protected() {
        return this.f12502do.f12533import;
    }

    /* renamed from: public, reason: not valid java name */
    public float m13956public() {
        return this.f12502do.f12527do.m13974class().getCornerSize(m13957return());
    }

    @Deprecated
    public boolean q() {
        int i = this.f12502do.f12543while;
        return i == 0 || i == 2;
    }

    @NonNull
    /* renamed from: return, reason: not valid java name */
    public RectF m13957return() {
        this.f12515this.set(getBounds());
        return this.f12515this;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        Cnew cnew = this.f12502do;
        if (cnew.f12526const != i) {
            cnew.f12526const = i;
            l();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f12502do.f12530for = colorFilter;
        l();
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f12502do.f12527do = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f12502do.f12528else = colorStateList;
        Y();
        l();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        Cnew cnew = this.f12502do;
        if (cnew.f12531goto != mode) {
            cnew.f12531goto = mode;
            Y();
            l();
        }
    }

    @Deprecated
    /* renamed from: strictfp, reason: not valid java name */
    public int m13958strictfp() {
        return (int) m13959switch();
    }

    /* renamed from: switch, reason: not valid java name */
    public float m13959switch() {
        return this.f12502do.f12539super;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: throw, reason: not valid java name */
    public void m13960throw(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        m13941while(canvas, paint, path, this.f12502do.f12527do, rectF);
    }

    @Nullable
    /* renamed from: throws, reason: not valid java name */
    public ColorStateList m13961throws() {
        return this.f12502do.f12535new;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: transient, reason: not valid java name */
    public int m13962transient() {
        return this.f12502do.f12534native;
    }

    public boolean u() {
        int i = Build.VERSION.SDK_INT;
        return i < 21 || !(p() || this.f12503else.isConvex() || i >= 29);
    }

    public void v(float f) {
        setShapeAppearanceModel(this.f12502do.f12527do.m13984switch(f));
    }

    /* renamed from: volatile, reason: not valid java name */
    public int m13963volatile() {
        double d = this.f12502do.f12534native;
        double dSin = Math.sin(Math.toRadians(r0.f12536public));
        Double.isNaN(d);
        return (int) (d * dSin);
    }

    public void w(@NonNull CornerSize cornerSize) {
        setShapeAppearanceModel(this.f12502do.f12527do.m13987throws(cornerSize));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void x(boolean z) {
        this.f12508import.m14040final(z);
    }

    public void y(float f) {
        Cnew cnew = this.f12502do;
        if (cnew.f12539super != f) {
            cnew.f12539super = f;
            Z();
        }
    }

    public void z(@Nullable ColorStateList colorStateList) {
        Cnew cnew = this.f12502do;
        if (cnew.f12535new != colorStateList) {
            cnew.f12535new = colorStateList;
            onStateChange(getState());
        }
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }

    public MaterialShapeDrawable(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this(ShapeAppearanceModel.m13971try(context, attributeSet, i, i2).m14003const());
    }

    @Deprecated
    public MaterialShapeDrawable(@NonNull nx1 nx1Var) {
        this((ShapeAppearanceModel) nx1Var);
    }

    public MaterialShapeDrawable(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this(new Cnew(shapeAppearanceModel, null));
    }

    private MaterialShapeDrawable(@NonNull Cnew cnew) {
        this.f12507if = new Cif.Cthis[4];
        this.f12505for = new Cif.Cthis[4];
        this.f12510new = new BitSet(8);
        this.f12498case = new Matrix();
        this.f12503else = new Path();
        this.f12506goto = new Path();
        this.f12515this = new RectF();
        this.f12497break = new RectF();
        this.f12499catch = new Region();
        this.f12500class = new Region();
        Paint paint = new Paint(1);
        this.f12504final = paint;
        Paint paint2 = new Paint(1);
        this.f12514super = paint2;
        this.f12516throw = new mx1();
        this.f12508import = Looper.getMainLooper().getThread() == Thread.currentThread() ? ShapeAppearancePathProvider.m14030catch() : new ShapeAppearancePathProvider();
        this.f12512return = new RectF();
        this.f12513static = true;
        this.f12502do = cnew;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = f12494private;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        Y();
        X(getState());
        this.f12518while = new Cdo();
    }

    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$new, reason: invalid class name */
    public static final class Cnew extends Drawable.ConstantState {

        /* renamed from: break, reason: not valid java name */
        public float f12522break;

        /* renamed from: case, reason: not valid java name */
        @Nullable
        public ColorStateList f12523case;

        /* renamed from: catch, reason: not valid java name */
        public float f12524catch;

        /* renamed from: class, reason: not valid java name */
        public float f12525class;

        /* renamed from: const, reason: not valid java name */
        public int f12526const;

        /* renamed from: do, reason: not valid java name */
        @NonNull
        public ShapeAppearanceModel f12527do;

        /* renamed from: else, reason: not valid java name */
        @Nullable
        public ColorStateList f12528else;

        /* renamed from: final, reason: not valid java name */
        public float f12529final;

        /* renamed from: for, reason: not valid java name */
        @Nullable
        public ColorFilter f12530for;

        /* renamed from: goto, reason: not valid java name */
        @Nullable
        public PorterDuff.Mode f12531goto;

        /* renamed from: if, reason: not valid java name */
        @Nullable
        public r60 f12532if;

        /* renamed from: import, reason: not valid java name */
        public int f12533import;

        /* renamed from: native, reason: not valid java name */
        public int f12534native;

        /* renamed from: new, reason: not valid java name */
        @Nullable
        public ColorStateList f12535new;

        /* renamed from: public, reason: not valid java name */
        public int f12536public;

        /* renamed from: return, reason: not valid java name */
        public boolean f12537return;

        /* renamed from: static, reason: not valid java name */
        public Paint.Style f12538static;

        /* renamed from: super, reason: not valid java name */
        public float f12539super;

        /* renamed from: this, reason: not valid java name */
        @Nullable
        public Rect f12540this;

        /* renamed from: throw, reason: not valid java name */
        public float f12541throw;

        /* renamed from: try, reason: not valid java name */
        @Nullable
        public ColorStateList f12542try;

        /* renamed from: while, reason: not valid java name */
        public int f12543while;

        public Cnew(ShapeAppearanceModel shapeAppearanceModel, r60 r60Var) {
            this.f12535new = null;
            this.f12542try = null;
            this.f12523case = null;
            this.f12528else = null;
            this.f12531goto = PorterDuff.Mode.SRC_IN;
            this.f12540this = null;
            this.f12522break = 1.0f;
            this.f12524catch = 1.0f;
            this.f12526const = 255;
            this.f12529final = 0.0f;
            this.f12539super = 0.0f;
            this.f12541throw = 0.0f;
            this.f12543while = 0;
            this.f12533import = 0;
            this.f12534native = 0;
            this.f12536public = 0;
            this.f12537return = false;
            this.f12538static = Paint.Style.FILL_AND_STROKE;
            this.f12527do = shapeAppearanceModel;
            this.f12532if = r60Var;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this, null);
            materialShapeDrawable.f12517try = true;
            return materialShapeDrawable;
        }

        public Cnew(@NonNull Cnew cnew) {
            this.f12535new = null;
            this.f12542try = null;
            this.f12523case = null;
            this.f12528else = null;
            this.f12531goto = PorterDuff.Mode.SRC_IN;
            this.f12540this = null;
            this.f12522break = 1.0f;
            this.f12524catch = 1.0f;
            this.f12526const = 255;
            this.f12529final = 0.0f;
            this.f12539super = 0.0f;
            this.f12541throw = 0.0f;
            this.f12543while = 0;
            this.f12533import = 0;
            this.f12534native = 0;
            this.f12536public = 0;
            this.f12537return = false;
            this.f12538static = Paint.Style.FILL_AND_STROKE;
            this.f12527do = cnew.f12527do;
            this.f12532if = cnew.f12532if;
            this.f12525class = cnew.f12525class;
            this.f12530for = cnew.f12530for;
            this.f12535new = cnew.f12535new;
            this.f12542try = cnew.f12542try;
            this.f12531goto = cnew.f12531goto;
            this.f12528else = cnew.f12528else;
            this.f12526const = cnew.f12526const;
            this.f12522break = cnew.f12522break;
            this.f12534native = cnew.f12534native;
            this.f12543while = cnew.f12543while;
            this.f12537return = cnew.f12537return;
            this.f12524catch = cnew.f12524catch;
            this.f12529final = cnew.f12529final;
            this.f12539super = cnew.f12539super;
            this.f12541throw = cnew.f12541throw;
            this.f12533import = cnew.f12533import;
            this.f12536public = cnew.f12536public;
            this.f12523case = cnew.f12523case;
            this.f12538static = cnew.f12538static;
            if (cnew.f12540this != null) {
                this.f12540this = new Rect(cnew.f12540this);
            }
        }
    }
}
