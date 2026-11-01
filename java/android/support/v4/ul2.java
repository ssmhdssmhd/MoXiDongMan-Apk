package android.support.v4;

import freemarker.cache.CacheStorage;
import freemarker.cache.Cswitch;
import freemarker.cache.Cthrows;
import freemarker.cache.TemplateLoader;
import freemarker.template.AttemptExceptionReporter;
import freemarker.template.Cbreak;
import freemarker.template.Cdo;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public class ul2 {

    /* renamed from: do, reason: not valid java name */
    public static final int f6932do = Cdo.h3.intValue();

    /* renamed from: if, reason: not valid java name */
    public static final int f6936if = Cdo.i3.intValue();

    /* renamed from: for, reason: not valid java name */
    public static final int f6934for = Cdo.j3.intValue();

    /* renamed from: new, reason: not valid java name */
    public static final int f6937new = Cdo.k3.intValue();

    /* renamed from: try, reason: not valid java name */
    public static final int f6939try = Cdo.l3.intValue();

    /* renamed from: case, reason: not valid java name */
    public static final int f6928case = Cdo.m3.intValue();

    /* renamed from: else, reason: not valid java name */
    public static final int f6933else = Cdo.n3.intValue();

    /* renamed from: goto, reason: not valid java name */
    public static final int f6935goto = Cdo.o3.intValue();

    /* renamed from: this, reason: not valid java name */
    public static final int f6938this = Cdo.p3.intValue();

    /* renamed from: break, reason: not valid java name */
    public static final int f6927break = Cdo.q3.intValue();

    /* renamed from: catch, reason: not valid java name */
    public static final int f6929catch = Cdo.r3.intValue();

    /* renamed from: class, reason: not valid java name */
    public static final int f6930class = Cdo.s3.intValue();

    /* renamed from: const, reason: not valid java name */
    public static final int f6931const = we2.intValueFor(2, 4, 0);

    /* renamed from: break, reason: not valid java name */
    public static TemplateExceptionHandler m8497break(we2 we2Var) {
        return Cdo.o1(we2Var);
    }

    /* renamed from: case, reason: not valid java name */
    public static Set m8498case(Cdo cdo, boolean z) {
        return cdo.c(z);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cswitch m8499catch(we2 we2Var) {
        return Cdo.r1(we2Var);
    }

    /* renamed from: class, reason: not valid java name */
    public static Cthrows m8500class(we2 we2Var) {
        return Cdo.t1(we2Var);
    }

    /* renamed from: const, reason: not valid java name */
    public static TimeZone m8501const() {
        return Cdo.u1();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8502do() {
        Cbreak.m29216volatile();
    }

    /* renamed from: else, reason: not valid java name */
    public static AttemptExceptionReporter m8503else(we2 we2Var) {
        return Cdo.d1(we2Var);
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m8504final(we2 we2Var) {
        return Cdo.w1(we2Var);
    }

    /* renamed from: for, reason: not valid java name */
    public static CacheStorage m8505for(we2 we2Var) {
        return Cdo.T0(we2Var);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Locale m8506goto() {
        return Cdo.i1();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8507if(we2 we2Var) {
        w41.check("incompatibleImprovements", we2Var);
        int iIntValue = we2Var.intValue();
        if (iIntValue <= Cdo.a2().intValue()) {
            if (iIntValue < f6932do) {
                throw new IllegalArgumentException("\"incompatibleImprovements\" must be at least 2.3.0.");
            }
            return;
        }
        throw new IllegalArgumentException("The FreeMarker version requested by \"incompatibleImprovements\" was " + we2Var + ", but the installed FreeMarker version is only " + Cdo.a2() + ". You may need to upgrade FreeMarker in your project.");
    }

    /* renamed from: import, reason: not valid java name */
    public static void m8508import(Cstatic cstatic, e91 e91Var) {
        cstatic.z1(e91Var);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m8509native(Cdo cdo, boolean z) {
        cdo.T2(z);
    }

    /* renamed from: new, reason: not valid java name */
    public static TemplateLoader m8510new(we2 we2Var) {
        return Cdo.V0(we2Var);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m8511public(int i) {
        if (i != 21 && i != 22 && i != 20) {
            throw new IllegalArgumentException("\"auto_escaping\" can only be set to one of these: Configuration.ENABLE_AUTO_ESCAPING_IF_DEFAULT, or Configuration.ENABLE_AUTO_ESCAPING_IF_SUPPORTEDor Configuration.DISABLE_AUTO_ESCAPING");
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m8512return(int i) {
        if (i != 10 && i != 11 && i != 12) {
            throw new IllegalArgumentException("\"naming_convention\" can only be set to one of these: Configuration.AUTO_DETECT_NAMING_CONVENTION, or Configuration.LEGACY_NAMING_CONVENTIONor Configuration.CAMEL_CASE_NAMING_CONVENTION");
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m8513static(int i) {
        if (i != 20 && i != 21 && i != 22) {
            throw new IllegalArgumentException("\"interpolation_syntax\" can only be set to one of these: Configuration.LEGACY_INTERPOLATION_SYNTAX, Configuration.DOLLAR_INTERPOLATION_SYNTAX, or Configuration.SQUARE_BRACKET_INTERPOLATION_SYNTAX");
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static int m8514super(freemarker.core.h4 h4Var) {
        return m8517throw(h4Var.getTemplate());
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m8515switch(int i) {
        if (i != 0 && i != 2 && i != 1) {
            throw new IllegalArgumentException("\"tag_syntax\" can only be set to one of these: Configuration.AUTO_DETECT_TAG_SYNTAX, Configuration.ANGLE_BRACKET_TAG_SYNTAX, or Configuration.SQUARE_BRACKET_TAG_SYNTAX");
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m8516this(we2 we2Var) {
        return Cdo.k1(we2Var);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m8517throw(Cstatic cstatic) {
        return cstatic.r1().intValue();
    }

    /* renamed from: try, reason: not valid java name */
    public static freemarker.core.h0 m8518try(TemplateException templateException) {
        return templateException.getBlamedExpression();
    }

    /* renamed from: while, reason: not valid java name */
    public static void m8519while(Cstatic cstatic, boolean z) {
        cstatic.w1(z);
    }
}
