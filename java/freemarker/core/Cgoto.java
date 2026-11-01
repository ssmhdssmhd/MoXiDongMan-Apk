package freemarker.core;

import android.support.v4.az1;
import android.support.v4.hy1;
import android.support.v4.nl2;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import org.jsoup.nodes.Attributes;

/* renamed from: freemarker.core.goto, reason: invalid class name */
/* loaded from: classes.dex */
final class Cgoto extends h0 {

    /* renamed from: catch, reason: not valid java name */
    public static final int f23799catch = 0;

    /* renamed from: class, reason: not valid java name */
    public static final int f23800class = 1;

    /* renamed from: const, reason: not valid java name */
    public static final int f23801const = 2;

    /* renamed from: final, reason: not valid java name */
    public static final int f23802final = 3;

    /* renamed from: super, reason: not valid java name */
    private static final char[] f23803super = {hy1.f2561for, '*', Attributes.InternalPrefix, '%'};

    /* renamed from: break, reason: not valid java name */
    private final int f23804break;

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23805goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f23806this;

    public Cgoto(h0 h0Var, h0 h0Var2, int i) {
        this.f23805goto = h0Var;
        this.f23806this = h0Var2;
        this.f23804break = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String[]] */
    public static TemplateModel d(d0 d0Var, h4 h4Var, Number number, int i, Number number2) throws TemplateException {
        Celse celseM28022super = f0.m28022super(d0Var, h4Var);
        try {
            if (i == 0) {
                return new az1(celseM28022super.mo27991catch(number, number2));
            }
            if (i == 1) {
                return new az1(celseM28022super.mo27992else(number, number2));
            }
            if (i == 2) {
                return new az1(celseM28022super.mo27998try(number, number2));
            }
            if (i == 3) {
                return new az1(celseM28022super.mo27990case(number, number2));
            }
            if (h4Var instanceof h0) {
                throw new nl2((h0) h4Var, "Unknown operation: ", Integer.valueOf(i));
            }
            throw new nl2("Unknown operation: ", Integer.valueOf(i));
        } catch (ArithmeticException e) {
            Object[] objArr = new Object[2];
            objArr[0] = "Arithmetic operation failed";
            objArr[1] = e.getMessage() != null ? new String[]{": ", e.getMessage()} : " (see cause exception)";
            throw new nl2(e, d0Var, objArr);
        }
    }

    public static char e(int i) {
        return f23803super[i];
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return String.valueOf(e(this.f23804break));
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 3;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f23805goto.mo27815for() + ' ' + e(this.f23804break) + ' ' + this.f23806this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23760for;
        }
        if (i == 1) {
            return f3.f23768new;
        }
        if (i == 2) {
            return f3.f23784while;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23810else != null || (this.f23805goto.mo27817instanceof() && this.f23806this.mo27817instanceof());
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        return d(d0Var, this, this.f23805goto.m28051protected(d0Var), this.f23804break, this.f23806this.m28051protected(d0Var));
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new Cgoto(this.f23805goto.m28053return(str, h0Var, cdo), this.f23806this.m28053return(str, h0Var, cdo), this.f23804break);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23805goto;
        }
        if (i == 1) {
            return this.f23806this;
        }
        if (i == 2) {
            return Integer.valueOf(this.f23804break);
        }
        throw new IndexOutOfBoundsException();
    }
}
