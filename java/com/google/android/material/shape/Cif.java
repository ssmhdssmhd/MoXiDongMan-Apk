package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.v4.mx1;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.android.material.shape.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif {

    /* renamed from: break, reason: not valid java name */
    private static final float f12594break = 270.0f;

    /* renamed from: catch, reason: not valid java name */
    public static final float f12595catch = 180.0f;

    /* renamed from: case, reason: not valid java name */
    @Deprecated
    public float f12596case;

    /* renamed from: do, reason: not valid java name */
    @Deprecated
    public float f12597do;

    /* renamed from: for, reason: not valid java name */
    @Deprecated
    public float f12599for;

    /* renamed from: if, reason: not valid java name */
    @Deprecated
    public float f12601if;

    /* renamed from: new, reason: not valid java name */
    @Deprecated
    public float f12602new;

    /* renamed from: this, reason: not valid java name */
    private boolean f12603this;

    /* renamed from: try, reason: not valid java name */
    @Deprecated
    public float f12604try;

    /* renamed from: else, reason: not valid java name */
    private final List<Celse> f12598else = new ArrayList();

    /* renamed from: goto, reason: not valid java name */
    private final List<Cthis> f12600goto = new ArrayList();

    /* renamed from: com.google.android.material.shape.if$case, reason: invalid class name */
    public static class Ccase extends Celse {

        /* renamed from: for, reason: not valid java name */
        private float f12605for;

        /* renamed from: if, reason: not valid java name */
        private float f12606if;

        @Override // com.google.android.material.shape.Cif.Celse
        /* renamed from: do, reason: not valid java name */
        public void mo14075do(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f12610do;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f12606if, this.f12605for);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.shape.if$do, reason: invalid class name */
    public class Cdo extends Cthis {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Matrix f12607for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ List f12608if;

        public Cdo(List list, Matrix matrix) {
            this.f12608if = list;
            this.f12607for = matrix;
        }

        @Override // com.google.android.material.shape.Cif.Cthis
        /* renamed from: do, reason: not valid java name */
        public void mo14076do(Matrix matrix, mx1 mx1Var, int i, Canvas canvas) {
            Iterator it = this.f12608if.iterator();
            while (it.hasNext()) {
                ((Cthis) it.next()).mo14076do(this.f12607for, mx1Var, i, canvas);
            }
        }
    }

    /* renamed from: com.google.android.material.shape.if$else, reason: invalid class name */
    public static abstract class Celse {

        /* renamed from: do, reason: not valid java name */
        public final Matrix f12610do = new Matrix();

        /* renamed from: do */
        public abstract void mo14075do(Matrix matrix, Path path);
    }

    /* renamed from: com.google.android.material.shape.if$for, reason: invalid class name */
    public static class Cfor extends Cthis {

        /* renamed from: for, reason: not valid java name */
        private final float f12611for;

        /* renamed from: if, reason: not valid java name */
        private final Ccase f12612if;

        /* renamed from: new, reason: not valid java name */
        private final float f12613new;

        public Cfor(Ccase ccase, float f, float f2) {
            this.f12612if = ccase;
            this.f12611for = f;
            this.f12613new = f2;
        }

        @Override // com.google.android.material.shape.Cif.Cthis
        /* renamed from: do */
        public void mo14076do(Matrix matrix, @NonNull mx1 mx1Var, int i, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f12612if.f12605for - this.f12613new, this.f12612if.f12606if - this.f12611for), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f12611for, this.f12613new);
            matrix2.preRotate(m14077for());
            mx1Var.m5052if(canvas, matrix2, rectF, i);
        }

        /* renamed from: for, reason: not valid java name */
        public float m14077for() {
            return (float) Math.toDegrees(Math.atan((this.f12612if.f12605for - this.f12613new) / (this.f12612if.f12606if - this.f12611for)));
        }
    }

    /* renamed from: com.google.android.material.shape.if$goto, reason: invalid class name */
    public static class Cgoto extends Celse {

        /* renamed from: for, reason: not valid java name */
        @Deprecated
        public float f12614for;

        /* renamed from: if, reason: not valid java name */
        @Deprecated
        public float f12615if;

        /* renamed from: new, reason: not valid java name */
        @Deprecated
        public float f12616new;

        /* renamed from: try, reason: not valid java name */
        @Deprecated
        public float f12617try;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public void m14078break(float f) {
            this.f12615if = f;
        }

        /* renamed from: case, reason: not valid java name */
        private float m14079case() {
            return this.f12615if;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public void m14080catch(float f) {
            this.f12614for = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public void m14081class(float f) {
            this.f12616new = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: const, reason: not valid java name */
        public void m14082const(float f) {
            this.f12617try = f;
        }

        /* renamed from: else, reason: not valid java name */
        private float m14083else() {
            return this.f12614for;
        }

        /* renamed from: goto, reason: not valid java name */
        private float m14085goto() {
            return this.f12616new;
        }

        /* renamed from: this, reason: not valid java name */
        private float m14088this() {
            return this.f12617try;
        }

        @Override // com.google.android.material.shape.Cif.Celse
        /* renamed from: do */
        public void mo14075do(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f12610do;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(m14079case(), m14083else(), m14085goto(), m14088this());
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.shape.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0065if extends Cthis {

        /* renamed from: if, reason: not valid java name */
        private final Cnew f12618if;

        public C0065if(Cnew cnew) {
            this.f12618if = cnew;
        }

        @Override // com.google.android.material.shape.Cif.Cthis
        /* renamed from: do */
        public void mo14076do(Matrix matrix, @NonNull mx1 mx1Var, int i, @NonNull Canvas canvas) {
            mx1Var.m5050do(canvas, matrix, new RectF(this.f12618if.m14092catch(), this.f12618if.m14105super(), this.f12618if.m14093class(), this.f12618if.m14090break()), i, this.f12618if.m14094const(), this.f12618if.m14096final());
        }
    }

    /* renamed from: com.google.android.material.shape.if$new, reason: invalid class name */
    public static class Cnew extends Celse {

        /* renamed from: goto, reason: not valid java name */
        private static final RectF f12619goto = new RectF();

        /* renamed from: case, reason: not valid java name */
        @Deprecated
        public float f12620case;

        /* renamed from: else, reason: not valid java name */
        @Deprecated
        public float f12621else;

        /* renamed from: for, reason: not valid java name */
        @Deprecated
        public float f12622for;

        /* renamed from: if, reason: not valid java name */
        @Deprecated
        public float f12623if;

        /* renamed from: new, reason: not valid java name */
        @Deprecated
        public float f12624new;

        /* renamed from: try, reason: not valid java name */
        @Deprecated
        public float f12625try;

        public Cnew(float f, float f2, float f3, float f4) {
            m14109while(f);
            m14104return(f2);
            m14100import(f3);
            m14107throw(f4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public float m14090break() {
            return this.f12625try;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public float m14092catch() {
            return this.f12623if;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public float m14093class() {
            return this.f12624new;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: const, reason: not valid java name */
        public float m14094const() {
            return this.f12620case;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public float m14096final() {
            return this.f12621else;
        }

        /* renamed from: import, reason: not valid java name */
        private void m14100import(float f) {
            this.f12624new = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: native, reason: not valid java name */
        public void m14101native(float f) {
            this.f12620case = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: public, reason: not valid java name */
        public void m14103public(float f) {
            this.f12621else = f;
        }

        /* renamed from: return, reason: not valid java name */
        private void m14104return(float f) {
            this.f12622for = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public float m14105super() {
            return this.f12622for;
        }

        /* renamed from: throw, reason: not valid java name */
        private void m14107throw(float f) {
            this.f12625try = f;
        }

        /* renamed from: while, reason: not valid java name */
        private void m14109while(float f) {
            this.f12623if = f;
        }

        @Override // com.google.android.material.shape.Cif.Celse
        /* renamed from: do */
        public void mo14075do(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f12610do;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f12619goto;
            rectF.set(m14092catch(), m14105super(), m14093class(), m14090break());
            path.arcTo(rectF, m14094const(), m14096final(), false);
            path.transform(matrix);
        }
    }

    /* renamed from: com.google.android.material.shape.if$this, reason: invalid class name */
    public static abstract class Cthis {

        /* renamed from: do, reason: not valid java name */
        public static final Matrix f12626do = new Matrix();

        /* renamed from: do */
        public abstract void mo14076do(Matrix matrix, mx1 mx1Var, int i, Canvas canvas);

        /* renamed from: if, reason: not valid java name */
        public final void m14110if(mx1 mx1Var, int i, Canvas canvas) {
            mo14076do(f12626do, mx1Var, i, canvas);
        }
    }

    /* renamed from: com.google.android.material.shape.if$try, reason: invalid class name */
    public static class Ctry extends Celse {

        /* renamed from: case, reason: not valid java name */
        private float f12627case;

        /* renamed from: else, reason: not valid java name */
        private float f12628else;

        /* renamed from: for, reason: not valid java name */
        private float f12629for;

        /* renamed from: if, reason: not valid java name */
        private float f12630if;

        /* renamed from: new, reason: not valid java name */
        private float f12631new;

        /* renamed from: try, reason: not valid java name */
        private float f12632try;

        public Ctry(float f, float f2, float f3, float f4, float f5, float f6) {
            m14118goto(f);
            m14111break(f2);
            m14121this(f3);
            m14113catch(f4);
            m14114class(f5);
            m14115const(f6);
        }

        /* renamed from: break, reason: not valid java name */
        private void m14111break(float f) {
            this.f12629for = f;
        }

        /* renamed from: case, reason: not valid java name */
        private float m14112case() {
            return this.f12627case;
        }

        /* renamed from: catch, reason: not valid java name */
        private void m14113catch(float f) {
            this.f12632try = f;
        }

        /* renamed from: class, reason: not valid java name */
        private void m14114class(float f) {
            this.f12627case = f;
        }

        /* renamed from: const, reason: not valid java name */
        private void m14115const(float f) {
            this.f12628else = f;
        }

        /* renamed from: else, reason: not valid java name */
        private float m14116else() {
            return this.f12628else;
        }

        /* renamed from: for, reason: not valid java name */
        private float m14117for() {
            return this.f12631new;
        }

        /* renamed from: goto, reason: not valid java name */
        private void m14118goto(float f) {
            this.f12630if = f;
        }

        /* renamed from: if, reason: not valid java name */
        private float m14119if() {
            return this.f12630if;
        }

        /* renamed from: new, reason: not valid java name */
        private float m14120new() {
            return this.f12629for;
        }

        /* renamed from: this, reason: not valid java name */
        private void m14121this(float f) {
            this.f12631new = f;
        }

        /* renamed from: try, reason: not valid java name */
        private float m14122try() {
            return this.f12629for;
        }

        @Override // com.google.android.material.shape.Cif.Celse
        /* renamed from: do */
        public void mo14075do(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f12610do;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(this.f12630if, this.f12629for, this.f12631new, this.f12632try, this.f12627case, this.f12628else);
            path.transform(matrix);
        }
    }

    public Cif() {
        m14068throw(0.0f, 0.0f);
    }

    /* renamed from: for, reason: not valid java name */
    private void m14048for(Cthis cthis, float f, float f2) {
        m14050if(f);
        this.f12600goto.add(cthis);
        m14051import(f2);
    }

    /* renamed from: goto, reason: not valid java name */
    private float m14049goto() {
        return this.f12604try;
    }

    /* renamed from: if, reason: not valid java name */
    private void m14050if(float f) {
        if (m14049goto() == f) {
            return;
        }
        float fM14049goto = ((f - m14049goto()) + 360.0f) % 360.0f;
        if (fM14049goto > 180.0f) {
            return;
        }
        Cnew cnew = new Cnew(m14058break(), m14060catch(), m14058break(), m14060catch());
        cnew.m14101native(m14049goto());
        cnew.m14103public(fM14049goto);
        this.f12600goto.add(new C0065if(cnew));
        m14051import(f);
    }

    /* renamed from: import, reason: not valid java name */
    private void m14051import(float f) {
        this.f12604try = f;
    }

    /* renamed from: native, reason: not valid java name */
    private void m14052native(float f) {
        this.f12596case = f;
    }

    /* renamed from: public, reason: not valid java name */
    private void m14053public(float f) {
        this.f12599for = f;
    }

    /* renamed from: return, reason: not valid java name */
    private void m14054return(float f) {
        this.f12602new = f;
    }

    /* renamed from: static, reason: not valid java name */
    private void m14055static(float f) {
        this.f12597do = f;
    }

    /* renamed from: switch, reason: not valid java name */
    private void m14056switch(float f) {
        this.f12601if = f;
    }

    /* renamed from: this, reason: not valid java name */
    private float m14057this() {
        return this.f12596case;
    }

    /* renamed from: break, reason: not valid java name */
    public float m14058break() {
        return this.f12599for;
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public Cthis m14059case(Matrix matrix) {
        m14050if(m14057this());
        return new Cdo(new ArrayList(this.f12600goto), new Matrix(matrix));
    }

    /* renamed from: catch, reason: not valid java name */
    public float m14060catch() {
        return this.f12602new;
    }

    /* renamed from: class, reason: not valid java name */
    public float m14061class() {
        return this.f12597do;
    }

    /* renamed from: const, reason: not valid java name */
    public float m14062const() {
        return this.f12601if;
    }

    /* renamed from: do, reason: not valid java name */
    public void m14063do(float f, float f2, float f3, float f4, float f5, float f6) {
        Cnew cnew = new Cnew(f, f2, f3, f4);
        cnew.m14101native(f5);
        cnew.m14103public(f6);
        this.f12598else.add(cnew);
        C0065if c0065if = new C0065if(cnew);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        if (z) {
            f5 = (f5 + 180.0f) % 360.0f;
        }
        m14048for(c0065if, f5, z ? (180.0f + f7) % 360.0f : f7);
        double d = f7;
        m14053public(((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))));
        m14054return(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))));
    }

    @RequiresApi(21)
    /* renamed from: else, reason: not valid java name */
    public void m14064else(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f12598else.add(new Ctry(f, f2, f3, f4, f5, f6));
        this.f12603this = true;
        m14053public(f5);
        m14054return(f6);
    }

    /* renamed from: final, reason: not valid java name */
    public void m14065final(float f, float f2) {
        Ccase ccase = new Ccase();
        ccase.f12606if = f;
        ccase.f12605for = f2;
        this.f12598else.add(ccase);
        Cfor cfor = new Cfor(ccase, m14058break(), m14060catch());
        m14048for(cfor, cfor.m14077for() + f12594break, cfor.m14077for() + f12594break);
        m14053public(f);
        m14054return(f2);
    }

    /* renamed from: new, reason: not valid java name */
    public void m14066new(Matrix matrix, Path path) {
        int size = this.f12598else.size();
        for (int i = 0; i < size; i++) {
            this.f12598else.get(i).mo14075do(matrix, path);
        }
    }

    @RequiresApi(21)
    /* renamed from: super, reason: not valid java name */
    public void m14067super(float f, float f2, float f3, float f4) {
        Cgoto cgoto = new Cgoto();
        cgoto.m14078break(f);
        cgoto.m14080catch(f2);
        cgoto.m14081class(f3);
        cgoto.m14082const(f4);
        this.f12598else.add(cgoto);
        this.f12603this = true;
        m14053public(f3);
        m14054return(f4);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m14068throw(float f, float f2) {
        m14070while(f, f2, f12594break, 0.0f);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m14069try() {
        return this.f12603this;
    }

    /* renamed from: while, reason: not valid java name */
    public void m14070while(float f, float f2, float f3, float f4) {
        m14055static(f);
        m14056switch(f2);
        m14053public(f);
        m14054return(f2);
        m14051import(f3);
        m14052native((f3 + f4) % 360.0f);
        this.f12598else.clear();
        this.f12600goto.clear();
        this.f12603this = false;
    }

    public Cif(float f, float f2) {
        m14068throw(f, f2);
    }
}
