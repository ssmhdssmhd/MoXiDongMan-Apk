package freemarker.core;

import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.ul2;
import android.support.v4.vl2;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* loaded from: classes.dex */
class g {

    /* renamed from: freemarker.core.g$break, reason: invalid class name */
    public static class Cbreak extends Cdefault {
        @Override // freemarker.core.Cdefault
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(Csuper.m29304const(str));
        }
    }

    /* renamed from: freemarker.core.g$case, reason: invalid class name */
    public static class Ccase extends Cdefault {
        @Override // freemarker.core.Cdefault
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(Csuper.m29301case(str));
        }
    }

    /* renamed from: freemarker.core.g$do, reason: invalid class name */
    public static abstract class Cdo implements TemplateScalarModel, TemplateMethodModel {

        /* renamed from: do, reason: not valid java name */
        public final Creturn f23790do;

        /* renamed from: for, reason: not valid java name */
        private final d0 f23791for;

        /* renamed from: if, reason: not valid java name */
        public final String f23792if;

        /* renamed from: new, reason: not valid java name */
        private String f23793new;

        public Cdo(Creturn creturn, String str, d0 d0Var) {
            this.f23790do = creturn;
            this.f23792if = str;
            this.f23791for = d0Var;
        }

        /* renamed from: do, reason: not valid java name */
        public abstract String mo28037do(String str) throws UnsupportedEncodingException;

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            this.f23790do.d(list.size(), 1);
            try {
                return new ez1(mo28037do((String) list.get(0)));
            } catch (UnsupportedEncodingException e) {
                throw new vl2(e, "Failed to execute URL encoding.");
            }
        }

        @Override // freemarker.template.TemplateScalarModel
        public String getAsString() throws k52 {
            if (this.f23793new == null) {
                String strF1 = this.f23791for.F1();
                if (strF1 == null) {
                    throw new vl2("To do URL encoding, the framework that encloses FreeMarker must specify the \"", "output_encoding", "\" setting or the \"", "url_escaping_charset", "\" setting, so ask the programmers to set them. Or, as a last chance, you can set the url_encoding_charset setting in the template, e.g. <#setting ", "url_escaping_charset", "='ISO-8859-1'>, or give the charset explicitly to the built-in, e.g. foo?url('ISO-8859-1').");
                }
                try {
                    this.f23793new = mo28037do(strF1);
                } catch (UnsupportedEncodingException e) {
                    throw new vl2(e, "Failed to execute URL encoding.");
                }
            }
            return this.f23793new;
        }
    }

    /* renamed from: freemarker.core.g$else, reason: invalid class name */
    public static class Celse extends Cstrictfp {

        /* renamed from: freemarker.core.g$else$do, reason: invalid class name */
        public static class Cdo extends Cdo {
            public Cdo(Creturn creturn, String str, d0 d0Var) {
                super(creturn, str, d0Var);
            }

            @Override // freemarker.core.g.Cdo
            /* renamed from: do */
            public String mo28037do(String str) throws UnsupportedEncodingException {
                return Csuper.m29313goto(this.f23792if, str);
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new Cdo(this, str, d0Var);
        }
    }

    /* renamed from: freemarker.core.g$for, reason: invalid class name */
    public static class Cfor extends Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(Csuper.d(str));
        }
    }

    /* renamed from: freemarker.core.g$goto, reason: invalid class name */
    public static class Cgoto extends Cstrictfp {

        /* renamed from: freemarker.core.g$goto$do, reason: invalid class name */
        public static class Cdo extends Cdo {
            public Cdo(Creturn creturn, String str, d0 d0Var) {
                super(creturn, str, d0Var);
            }

            @Override // freemarker.core.g.Cdo
            /* renamed from: do */
            public String mo28037do(String str) throws UnsupportedEncodingException {
                return Csuper.m29300break(this.f23792if, str);
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new Cdo(this, str, d0Var);
        }
    }

    /* renamed from: freemarker.core.g$if, reason: invalid class name */
    public static class Cif extends Cdefault implements ICIChainMember {

        /* renamed from: final, reason: not valid java name */
        private final Cdo f23794final = new Cdo();

        /* renamed from: freemarker.core.g$if$do, reason: invalid class name */
        public static class Cdo extends Cdefault {
            @Override // freemarker.core.Cdefault
            public TemplateModel r(String str, d0 d0Var) {
                return new ez1(Csuper.m29335try(str));
            }
        }

        @Override // freemarker.core.ICIChainMember
        public int getMinimumICIVersion() {
            return ul2.f6934for;
        }

        @Override // freemarker.core.ICIChainMember
        public Object getPreviousICIChainMember() {
            return this.f23794final;
        }

        @Override // freemarker.core.Cdefault
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(Csuper.m29302catch(str));
        }
    }

    /* renamed from: freemarker.core.g$new, reason: invalid class name */
    public static class Cnew extends Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(Csuper.c(str));
        }
    }

    /* renamed from: freemarker.core.g$this, reason: invalid class name */
    public static class Cthis extends Cdefault {
        @Override // freemarker.core.Cdefault
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(Csuper.m29302catch(str));
        }
    }

    /* renamed from: freemarker.core.g$try, reason: invalid class name */
    public static class Ctry extends Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(Csuper.f(str));
        }
    }

    private g() {
    }
}
