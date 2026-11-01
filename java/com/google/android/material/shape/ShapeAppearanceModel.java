package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.support.v4.Cprivate;
import android.support.v4.a60;
import android.support.v4.it;
import android.support.v4.ro1;
import android.support.v4.tx0;
import android.support.v4.um1;
import android.support.v4.yr;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class ShapeAppearanceModel {

    /* renamed from: const, reason: not valid java name */
    public static final CornerSize f12544const = new um1(0.5f);

    /* renamed from: break, reason: not valid java name */
    public a60 f12545break;

    /* renamed from: case, reason: not valid java name */
    public CornerSize f12546case;

    /* renamed from: catch, reason: not valid java name */
    public a60 f12547catch;

    /* renamed from: class, reason: not valid java name */
    public a60 f12548class;

    /* renamed from: do, reason: not valid java name */
    public yr f12549do;

    /* renamed from: else, reason: not valid java name */
    public CornerSize f12550else;

    /* renamed from: for, reason: not valid java name */
    public yr f12551for;

    /* renamed from: goto, reason: not valid java name */
    public CornerSize f12552goto;

    /* renamed from: if, reason: not valid java name */
    public yr f12553if;

    /* renamed from: new, reason: not valid java name */
    public yr f12554new;

    /* renamed from: this, reason: not valid java name */
    public a60 f12555this;

    /* renamed from: try, reason: not valid java name */
    public CornerSize f12556try;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface CornerSizeUnaryOperator {
        @NonNull
        CornerSize apply(@NonNull CornerSize cornerSize);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static Cif m13964case(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, int i3) {
        return m13967else(context, attributeSet, i, i2, new Cprivate(i3));
    }

    @NonNull
    /* renamed from: const, reason: not valid java name */
    private static CornerSize m13965const(TypedArray typedArray, int i, @NonNull CornerSize cornerSize) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue == null) {
            return cornerSize;
        }
        int i2 = typedValuePeekValue.type;
        return i2 == 5 ? new Cprivate(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new um1(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cornerSize;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static Cif m13966do() {
        return new Cif();
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public static Cif m13967else(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, @NonNull CornerSize cornerSize) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return m13970new(context, resourceId, resourceId2, cornerSize);
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private static Cif m13968for(Context context, @StyleRes int i, @StyleRes int i2, int i3) {
        return m13970new(context, i, i2, new Cprivate(i3));
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static Cif m13969if(Context context, @StyleRes int i, @StyleRes int i2) {
        return m13968for(context, i, i2, 0);
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    private static Cif m13970new(Context context, @StyleRes int i, @StyleRes int i2, @NonNull CornerSize cornerSize) throws Resources.NotFoundException {
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
            i = i2;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.ShapeAppearance);
        try {
            int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamily, 0);
            int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopLeft, i3);
            int i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopRight, i3);
            int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomRight, i3);
            int i7 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i3);
            CornerSize cornerSizeM13965const = m13965const(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, cornerSize);
            CornerSize cornerSizeM13965const2 = m13965const(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopLeft, cornerSizeM13965const);
            CornerSize cornerSizeM13965const3 = m13965const(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopRight, cornerSizeM13965const);
            CornerSize cornerSizeM13965const4 = m13965const(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomRight, cornerSizeM13965const);
            return new Cif().m14015protected(i4, cornerSizeM13965const2).a(i5, cornerSizeM13965const3).m14007finally(i6, cornerSizeM13965const4).m14018static(i7, m13965const(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomLeft, cornerSizeM13965const));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public static Cif m13971try(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        return m13964case(context, attributeSet, i, i2, 0);
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public CornerSize m13972break() {
        return this.f12552goto;
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public yr m13973catch() {
        return this.f12551for;
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    public CornerSize m13974class() {
        return this.f12550else;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: default, reason: not valid java name */
    public ShapeAppearanceModel m13975default(@NonNull CornerSizeUnaryOperator cornerSizeUnaryOperator) {
        return m13982static().m14010instanceof(cornerSizeUnaryOperator.apply(m13978import())).d(cornerSizeUnaryOperator.apply(m13980public())).m14005default(cornerSizeUnaryOperator.apply(m13972break())).m14002abstract(cornerSizeUnaryOperator.apply(m13974class())).m14003const();
    }

    @NonNull
    /* renamed from: final, reason: not valid java name */
    public a60 m13976final() {
        return this.f12548class;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public a60 m13977goto() {
        return this.f12547catch;
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public CornerSize m13978import() {
        return this.f12556try;
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    public yr m13979native() {
        return this.f12553if;
    }

    @NonNull
    /* renamed from: public, reason: not valid java name */
    public CornerSize m13980public() {
        return this.f12546case;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: return, reason: not valid java name */
    public boolean m13981return(@NonNull RectF rectF) {
        boolean z = this.f12548class.getClass().equals(a60.class) && this.f12545break.getClass().equals(a60.class) && this.f12555this.getClass().equals(a60.class) && this.f12547catch.getClass().equals(a60.class);
        float cornerSize = this.f12556try.getCornerSize(rectF);
        return z && ((this.f12546case.getCornerSize(rectF) > cornerSize ? 1 : (this.f12546case.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.f12552goto.getCornerSize(rectF) > cornerSize ? 1 : (this.f12552goto.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.f12550else.getCornerSize(rectF) > cornerSize ? 1 : (this.f12550else.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0) && ((this.f12553if instanceof ro1) && (this.f12549do instanceof ro1) && (this.f12551for instanceof ro1) && (this.f12554new instanceof ro1));
    }

    @NonNull
    /* renamed from: static, reason: not valid java name */
    public Cif m13982static() {
        return new Cif(this);
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    public a60 m13983super() {
        return this.f12545break;
    }

    @NonNull
    /* renamed from: switch, reason: not valid java name */
    public ShapeAppearanceModel m13984switch(float f) {
        return m13982static().m14020super(f).m14003const();
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public yr m13985this() {
        return this.f12554new;
    }

    @NonNull
    /* renamed from: throw, reason: not valid java name */
    public a60 m13986throw() {
        return this.f12555this;
    }

    @NonNull
    /* renamed from: throws, reason: not valid java name */
    public ShapeAppearanceModel m13987throws(@NonNull CornerSize cornerSize) {
        return m13982static().m14023throw(cornerSize).m14003const();
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    public yr m13988while() {
        return this.f12549do;
    }

    private ShapeAppearanceModel(@NonNull Cif cif) {
        this.f12549do = cif.f12561do;
        this.f12553if = cif.f12565if;
        this.f12551for = cif.f12563for;
        this.f12554new = cif.f12566new;
        this.f12556try = cif.f12568try;
        this.f12546case = cif.f12558case;
        this.f12550else = cif.f12562else;
        this.f12552goto = cif.f12564goto;
        this.f12555this = cif.f12567this;
        this.f12545break = cif.f12557break;
        this.f12547catch = cif.f12559catch;
        this.f12548class = cif.f12560class;
    }

    /* renamed from: com.google.android.material.shape.ShapeAppearanceModel$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: break, reason: not valid java name */
        @NonNull
        private a60 f12557break;

        /* renamed from: case, reason: not valid java name */
        @NonNull
        private CornerSize f12558case;

        /* renamed from: catch, reason: not valid java name */
        @NonNull
        private a60 f12559catch;

        /* renamed from: class, reason: not valid java name */
        @NonNull
        private a60 f12560class;

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private yr f12561do;

        /* renamed from: else, reason: not valid java name */
        @NonNull
        private CornerSize f12562else;

        /* renamed from: for, reason: not valid java name */
        @NonNull
        private yr f12563for;

        /* renamed from: goto, reason: not valid java name */
        @NonNull
        private CornerSize f12564goto;

        /* renamed from: if, reason: not valid java name */
        @NonNull
        private yr f12565if;

        /* renamed from: new, reason: not valid java name */
        @NonNull
        private yr f12566new;

        /* renamed from: this, reason: not valid java name */
        @NonNull
        private a60 f12567this;

        /* renamed from: try, reason: not valid java name */
        @NonNull
        private CornerSize f12568try;

        public Cif() {
            this.f12561do = tx0.m8143if();
            this.f12565if = tx0.m8143if();
            this.f12563for = tx0.m8143if();
            this.f12566new = tx0.m8143if();
            this.f12568try = new Cprivate(0.0f);
            this.f12558case = new Cprivate(0.0f);
            this.f12562else = new Cprivate(0.0f);
            this.f12564goto = new Cprivate(0.0f);
            this.f12567this = tx0.m8142for();
            this.f12557break = tx0.m8142for();
            this.f12559catch = tx0.m8142for();
            this.f12560class = tx0.m8142for();
        }

        /* renamed from: final, reason: not valid java name */
        private static float m13995final(yr yrVar) {
            if (yrVar instanceof ro1) {
                return ((ro1) yrVar).f5895do;
            }
            if (yrVar instanceof it) {
                return ((it) yrVar).f2875do;
            }
            return -1.0f;
        }

        @NonNull
        public Cif a(int i, @NonNull CornerSize cornerSize) {
            return b(tx0.m8141do(i)).d(cornerSize);
        }

        @NonNull
        /* renamed from: abstract, reason: not valid java name */
        public Cif m14002abstract(@NonNull CornerSize cornerSize) {
            this.f12562else = cornerSize;
            return this;
        }

        @NonNull
        public Cif b(@NonNull yr yrVar) {
            this.f12565if = yrVar;
            float fM13995final = m13995final(yrVar);
            if (fM13995final != -1.0f) {
                c(fM13995final);
            }
            return this;
        }

        @NonNull
        public Cif c(@Dimension float f) {
            this.f12558case = new Cprivate(f);
            return this;
        }

        @NonNull
        /* renamed from: const, reason: not valid java name */
        public ShapeAppearanceModel m14003const() {
            return new ShapeAppearanceModel(this);
        }

        @NonNull
        /* renamed from: continue, reason: not valid java name */
        public Cif m14004continue(@NonNull a60 a60Var) {
            this.f12560class = a60Var;
            return this;
        }

        @NonNull
        public Cif d(@NonNull CornerSize cornerSize) {
            this.f12558case = cornerSize;
            return this;
        }

        @NonNull
        /* renamed from: default, reason: not valid java name */
        public Cif m14005default(@NonNull CornerSize cornerSize) {
            this.f12564goto = cornerSize;
            return this;
        }

        @NonNull
        /* renamed from: extends, reason: not valid java name */
        public Cif m14006extends(int i, @Dimension float f) {
            return m14013package(tx0.m8141do(i)).m14014private(f);
        }

        @NonNull
        /* renamed from: finally, reason: not valid java name */
        public Cif m14007finally(int i, @NonNull CornerSize cornerSize) {
            return m14013package(tx0.m8141do(i)).m14002abstract(cornerSize);
        }

        @NonNull
        /* renamed from: implements, reason: not valid java name */
        public Cif m14008implements(@Dimension float f) {
            this.f12568try = new Cprivate(f);
            return this;
        }

        @NonNull
        /* renamed from: import, reason: not valid java name */
        public Cif m14009import(@NonNull yr yrVar) {
            return m14025transient(yrVar).b(yrVar).m14013package(yrVar).m14021switch(yrVar);
        }

        @NonNull
        /* renamed from: instanceof, reason: not valid java name */
        public Cif m14010instanceof(@NonNull CornerSize cornerSize) {
            this.f12568try = cornerSize;
            return this;
        }

        @NonNull
        /* renamed from: interface, reason: not valid java name */
        public Cif m14011interface(int i, @Dimension float f) {
            return m14025transient(tx0.m8141do(i)).m14008implements(f);
        }

        @NonNull
        /* renamed from: native, reason: not valid java name */
        public Cif m14012native(@NonNull a60 a60Var) {
            return m14004continue(a60Var).m14026volatile(a60Var).m14019strictfp(a60Var).m14016public(a60Var);
        }

        @NonNull
        /* renamed from: package, reason: not valid java name */
        public Cif m14013package(@NonNull yr yrVar) {
            this.f12563for = yrVar;
            float fM13995final = m13995final(yrVar);
            if (fM13995final != -1.0f) {
                m14014private(fM13995final);
            }
            return this;
        }

        @NonNull
        /* renamed from: private, reason: not valid java name */
        public Cif m14014private(@Dimension float f) {
            this.f12562else = new Cprivate(f);
            return this;
        }

        @NonNull
        /* renamed from: protected, reason: not valid java name */
        public Cif m14015protected(int i, @NonNull CornerSize cornerSize) {
            return m14025transient(tx0.m8141do(i)).m14010instanceof(cornerSize);
        }

        @NonNull
        /* renamed from: public, reason: not valid java name */
        public Cif m14016public(@NonNull a60 a60Var) {
            this.f12559catch = a60Var;
            return this;
        }

        @NonNull
        /* renamed from: return, reason: not valid java name */
        public Cif m14017return(int i, @Dimension float f) {
            return m14021switch(tx0.m8141do(i)).m14024throws(f);
        }

        @NonNull
        /* renamed from: static, reason: not valid java name */
        public Cif m14018static(int i, @NonNull CornerSize cornerSize) {
            return m14021switch(tx0.m8141do(i)).m14005default(cornerSize);
        }

        @NonNull
        /* renamed from: strictfp, reason: not valid java name */
        public Cif m14019strictfp(@NonNull a60 a60Var) {
            this.f12557break = a60Var;
            return this;
        }

        @NonNull
        /* renamed from: super, reason: not valid java name */
        public Cif m14020super(@Dimension float f) {
            return m14008implements(f).c(f).m14014private(f).m14024throws(f);
        }

        @NonNull
        /* renamed from: switch, reason: not valid java name */
        public Cif m14021switch(@NonNull yr yrVar) {
            this.f12566new = yrVar;
            float fM13995final = m13995final(yrVar);
            if (fM13995final != -1.0f) {
                m14024throws(fM13995final);
            }
            return this;
        }

        @NonNull
        /* renamed from: synchronized, reason: not valid java name */
        public Cif m14022synchronized(int i, @Dimension float f) {
            return b(tx0.m8141do(i)).c(f);
        }

        @NonNull
        /* renamed from: throw, reason: not valid java name */
        public Cif m14023throw(@NonNull CornerSize cornerSize) {
            return m14010instanceof(cornerSize).d(cornerSize).m14002abstract(cornerSize).m14005default(cornerSize);
        }

        @NonNull
        /* renamed from: throws, reason: not valid java name */
        public Cif m14024throws(@Dimension float f) {
            this.f12564goto = new Cprivate(f);
            return this;
        }

        @NonNull
        /* renamed from: transient, reason: not valid java name */
        public Cif m14025transient(@NonNull yr yrVar) {
            this.f12561do = yrVar;
            float fM13995final = m13995final(yrVar);
            if (fM13995final != -1.0f) {
                m14008implements(fM13995final);
            }
            return this;
        }

        @NonNull
        /* renamed from: volatile, reason: not valid java name */
        public Cif m14026volatile(@NonNull a60 a60Var) {
            this.f12567this = a60Var;
            return this;
        }

        @NonNull
        /* renamed from: while, reason: not valid java name */
        public Cif m14027while(int i, @Dimension float f) {
            return m14009import(tx0.m8141do(i)).m14020super(f);
        }

        public Cif(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
            this.f12561do = tx0.m8143if();
            this.f12565if = tx0.m8143if();
            this.f12563for = tx0.m8143if();
            this.f12566new = tx0.m8143if();
            this.f12568try = new Cprivate(0.0f);
            this.f12558case = new Cprivate(0.0f);
            this.f12562else = new Cprivate(0.0f);
            this.f12564goto = new Cprivate(0.0f);
            this.f12567this = tx0.m8142for();
            this.f12557break = tx0.m8142for();
            this.f12559catch = tx0.m8142for();
            this.f12560class = tx0.m8142for();
            this.f12561do = shapeAppearanceModel.f12549do;
            this.f12565if = shapeAppearanceModel.f12553if;
            this.f12563for = shapeAppearanceModel.f12551for;
            this.f12566new = shapeAppearanceModel.f12554new;
            this.f12568try = shapeAppearanceModel.f12556try;
            this.f12558case = shapeAppearanceModel.f12546case;
            this.f12562else = shapeAppearanceModel.f12550else;
            this.f12564goto = shapeAppearanceModel.f12552goto;
            this.f12567this = shapeAppearanceModel.f12555this;
            this.f12557break = shapeAppearanceModel.f12545break;
            this.f12559catch = shapeAppearanceModel.f12547catch;
            this.f12560class = shapeAppearanceModel.f12548class;
        }
    }

    public ShapeAppearanceModel() {
        this.f12549do = tx0.m8143if();
        this.f12553if = tx0.m8143if();
        this.f12551for = tx0.m8143if();
        this.f12554new = tx0.m8143if();
        this.f12556try = new Cprivate(0.0f);
        this.f12546case = new Cprivate(0.0f);
        this.f12550else = new Cprivate(0.0f);
        this.f12552goto = new Cprivate(0.0f);
        this.f12555this = tx0.m8142for();
        this.f12545break = tx0.m8142for();
        this.f12547catch = tx0.m8142for();
        this.f12548class = tx0.m8142for();
    }
}
