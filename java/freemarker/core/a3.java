package freemarker.core;

import android.support.v4.ca2;
import freemarker.template.TemplateException;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.Writer;
import java.text.NumberFormat;
import java.util.Locale;

/* loaded from: classes.dex */
final class a3 extends z0 {

    /* renamed from: class, reason: not valid java name */
    private final h0 f23481class;

    /* renamed from: const, reason: not valid java name */
    private final boolean f23482const;

    /* renamed from: final, reason: not valid java name */
    private final int f23483final;

    /* renamed from: super, reason: not valid java name */
    private final int f23484super;

    /* renamed from: throw, reason: not valid java name */
    private final y1 f23485throw;

    /* renamed from: while, reason: not valid java name */
    private volatile Cdo f23486while;

    /* renamed from: freemarker.core.a3$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final NumberFormat f23487do;

        /* renamed from: if, reason: not valid java name */
        public final Locale f23488if;

        public Cdo(NumberFormat numberFormat, Locale locale) {
            this.f23487do = numberFormat;
            this.f23488if = locale;
        }
    }

    public a3(h0 h0Var, y1 y1Var) {
        this.f23481class = h0Var;
        this.f23482const = false;
        this.f23483final = 0;
        this.f23484super = 0;
        this.f23485throw = y1Var;
    }

    @Override // freemarker.core.b4
    public boolean a() {
        return true;
    }

    @Override // freemarker.core.b4
    public boolean b() {
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#{...}";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 3;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23754continue;
        }
        if (i == 1) {
            return f3.f23766interface;
        }
        if (i == 2) {
            return f3.f23771protected;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native, reason: not valid java name */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        String strR = r(d0Var);
        Writer writerC2 = d0Var.c2();
        y1 y1Var = this.f23485throw;
        if (y1Var != null) {
            y1Var.mo28137super(strR, writerC2);
            return null;
        }
        writerC2.write(strR);
        return null;
    }

    @Override // freemarker.core.z0
    public String s(boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder("#{");
        String strMo27815for = this.f23481class.mo27815for();
        if (z2) {
            strMo27815for = Csuper.m29312for(strMo27815for, ca2.f674do);
        }
        sb.append(strMo27815for);
        if (this.f23482const) {
            sb.append(" ; ");
            sb.append("m");
            sb.append(this.f23483final);
            sb.append("M");
            sb.append(this.f23484super);
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23481class;
        }
        if (i == 1) {
            if (this.f23482const) {
                return Integer.valueOf(this.f23483final);
            }
            return null;
        }
        if (i != 2) {
            throw new IndexOutOfBoundsException();
        }
        if (this.f23482const) {
            return Integer.valueOf(this.f23484super);
        }
        return null;
    }

    @Override // freemarker.core.z0
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public String r(d0 d0Var) throws TemplateException {
        Number numberM28051protected = this.f23481class.m28051protected(d0Var);
        Cdo cdo = this.f23486while;
        if (cdo == null || !cdo.f23488if.equals(d0Var.m28268strictfp())) {
            synchronized (this) {
                cdo = this.f23486while;
                if (cdo == null || !cdo.f23488if.equals(d0Var.m28268strictfp())) {
                    NumberFormat numberInstance = NumberFormat.getNumberInstance(d0Var.m28268strictfp());
                    if (this.f23482const) {
                        numberInstance.setMinimumFractionDigits(this.f23483final);
                        numberInstance.setMaximumFractionDigits(this.f23484super);
                    } else {
                        numberInstance.setMinimumFractionDigits(0);
                        numberInstance.setMaximumFractionDigits(50);
                    }
                    numberInstance.setGroupingUsed(false);
                    this.f23486while = new Cdo(numberInstance, d0Var.m28268strictfp());
                    cdo = this.f23486while;
                }
            }
        }
        return cdo.f23487do.format(numberM28051protected);
    }

    public a3(h0 h0Var, int i, int i2, y1 y1Var) {
        this.f23481class = h0Var;
        this.f23482const = true;
        this.f23483final = i;
        this.f23484super = i2;
        this.f23485throw = y1Var;
    }
}
