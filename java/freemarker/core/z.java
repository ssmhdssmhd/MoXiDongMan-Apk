package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.e91;
import android.support.v4.jl2;
import android.support.v4.vl2;
import freemarker.template.TemplateException;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
final class z extends z0 {

    /* renamed from: class, reason: not valid java name */
    private final h0 f24316class;

    /* renamed from: const, reason: not valid java name */
    private final h0 f24317const;

    /* renamed from: final, reason: not valid java name */
    private final e91 f24318final;

    /* renamed from: super, reason: not valid java name */
    private final y1 f24319super;

    /* renamed from: throw, reason: not valid java name */
    private final boolean f24320throw;

    public z(h0 h0Var, h0 h0Var2, e91 e91Var, boolean z) {
        this.f24316class = h0Var;
        this.f24317const = h0Var2;
        this.f24318final = e91Var;
        this.f24319super = (y1) (e91Var instanceof y1 ? e91Var : null);
        this.f24320throw = z;
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
        return "${...}";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 1;
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
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        Object objR = r(d0Var);
        Writer writerC2 = d0Var.c2();
        if (objR instanceof String) {
            String str = (String) objR;
            if (this.f24320throw) {
                this.f24319super.mo28137super(str, writerC2);
                return null;
            }
            writerC2.write(str);
            return null;
        }
        TemplateMarkupOutputModel templateMarkupOutputModel = (TemplateMarkupOutputModel) objR;
        y1 outputFormat = templateMarkupOutputModel.getOutputFormat();
        e91 e91Var = this.f24318final;
        if (outputFormat == e91Var || e91Var.mo888for()) {
            outputFormat.mo28199final(templateMarkupOutputModel, writerC2);
            return null;
        }
        String strMo28196break = outputFormat.mo28196break(templateMarkupOutputModel);
        if (strMo28196break == null) {
            throw new vl2(this.f24317const, "The value to print is in ", new jl2(outputFormat), " format, which differs from the current output format, ", new jl2(this.f24318final), ". Format conversion wasn't possible.");
        }
        e91 e91Var2 = this.f24318final;
        if (e91Var2 instanceof y1) {
            ((y1) e91Var2).mo28137super(strMo28196break, writerC2);
            return null;
        }
        writerC2.write(strMo28196break);
        return null;
    }

    @Override // freemarker.core.z0
    public Object r(d0 d0Var) throws TemplateException {
        return f0.m28025try(this.f24317const.m28055throws(d0Var), this.f24317const, null, d0Var);
    }

    @Override // freemarker.core.z0
    public String s(boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder();
        int interpolationSyntax = getTemplate().getInterpolationSyntax();
        sb.append(interpolationSyntax != 22 ? "${" : "[=");
        String strMo27815for = this.f24316class.mo27815for();
        if (z2) {
            strMo27815for = Csuper.m29312for(strMo27815for, ca2.f674do);
        }
        sb.append(strMo27815for);
        sb.append(interpolationSyntax != 22 ? "}" : "]");
        if (!z && this.f24316class != this.f24317const) {
            sb.append(" auto-escaped");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24316class;
        }
        throw new IndexOutOfBoundsException();
    }
}
