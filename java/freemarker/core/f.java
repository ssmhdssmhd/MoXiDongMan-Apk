package freemarker.core;

import android.support.v4.az1;
import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import java.util.List;
import java.util.StringTokenizer;
import java.util.regex.Matcher;

/* loaded from: classes.dex */
class f {

    /* renamed from: freemarker.core.f$abstract, reason: invalid class name */
    public static class Cabstract extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            int length = str.length();
            int i = 0;
            while (i < length && Character.isWhitespace(str.charAt(i))) {
                i++;
            }
            if (i < length) {
                StringBuilder sb = new StringBuilder(str);
                sb.setCharAt(i, Character.toLowerCase(str.charAt(i)));
                str = sb.toString();
            }
            return new ez1(str);
        }
    }

    /* renamed from: freemarker.core.f$break, reason: invalid class name */
    public static class Cbreak extends freemarker.core.Creturn {

        /* renamed from: final, reason: not valid java name */
        private final boolean f23698final;

        /* renamed from: freemarker.core.f$break$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final String f23699do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int size = list.size();
                Cbreak.this.e(size, 1, 2);
                String strK = Cbreak.this.k(list, 0);
                if (size <= 1) {
                    return new az1(Cbreak.this.f23698final ? this.f23699do.lastIndexOf(strK) : this.f23699do.indexOf(strK));
                }
                int iIntValue = Cbreak.this.h(list, 1).intValue();
                return new az1(Cbreak.this.f23698final ? this.f23699do.lastIndexOf(strK, iIntValue) : this.f23699do.indexOf(strK, iIntValue));
            }

            private Cdo(String str) {
                this.f23699do = str;
            }
        }

        public Cbreak(boolean z) {
            this.f23698final = z;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            return new Cdo(this.f24114goto.m28043abstract(d0Var, "For sequences/collections (lists and such) use \"?seq_index_of\" instead."));
        }
    }

    /* renamed from: freemarker.core.f$case, reason: invalid class name */
    public static class Ccase extends freemarker.core.Creturn {

        /* renamed from: freemarker.core.f$case$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final String f23701do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Ccase.this.f(list, 1);
                return this.f23701do.indexOf(Ccase.this.k(list, 0)) != -1 ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
            }

            private Cdo(String str) {
                this.f23701do = str;
            }
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            return new Cdo(this.f24114goto.m28043abstract(d0Var, "For sequences/collections (lists and such) use \"?seq_contains\" instead."));
        }
    }

    /* renamed from: freemarker.core.f$catch, reason: invalid class name */
    public static class Ccatch extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$catch$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23703do;

            public Cdo(String str) {
                this.f23703do = str;
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int iEnd;
                int size = list.size();
                Ccatch.this.e(size, 1, 2);
                String strK = Ccatch.this.k(list, 0);
                long jM28190case = size > 1 ? o3.m28190case(Ccatch.this.k(list, 1)) : 0L;
                if ((o3.f24027catch & jM28190case) == 0) {
                    o3.m28193if(Ccatch.this.f24115this, jM28190case, true);
                    iEnd = (jM28190case & o3.f24030else) == 0 ? this.f23703do.indexOf(strK) : this.f23703do.toLowerCase().indexOf(strK.toLowerCase());
                    if (iEnd >= 0) {
                        iEnd += strK.length();
                    }
                } else {
                    Matcher matcher = o3.m28192for(strK, (int) jM28190case).matcher(this.f23703do);
                    iEnd = matcher.find() ? matcher.end() : -1;
                }
                return iEnd == -1 ? TemplateScalarModel.EMPTY_STRING : new ez1(this.f23703do.substring(iEnd));
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws k52 {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$class, reason: invalid class name */
    public static class Cclass extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$class$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23705do;

            public Cdo(String str) {
                this.f23705do = str;
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int length;
                int size = list.size();
                Cclass.this.e(size, 1, 2);
                String strK = Cclass.this.k(list, 0);
                long jM28190case = size > 1 ? o3.m28190case(Cclass.this.k(list, 1)) : 0L;
                if ((o3.f24027catch & jM28190case) == 0) {
                    o3.m28193if(Cclass.this.f24115this, jM28190case, true);
                    length = (jM28190case & o3.f24030else) == 0 ? this.f23705do.lastIndexOf(strK) : this.f23705do.toLowerCase().lastIndexOf(strK.toLowerCase());
                    if (length >= 0) {
                        length += strK.length();
                    }
                } else if (strK.length() == 0) {
                    length = this.f23705do.length();
                } else {
                    Matcher matcher = o3.m28192for(strK, (int) jM28190case).matcher(this.f23705do);
                    if (matcher.find()) {
                        int iEnd = matcher.end();
                        while (matcher.find(matcher.start() + 1)) {
                            iEnd = matcher.end();
                        }
                        length = iEnd;
                    } else {
                        length = -1;
                    }
                }
                return length == -1 ? TemplateScalarModel.EMPTY_STRING : new ez1(this.f23705do.substring(length));
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws k52 {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$const, reason: invalid class name */
    public static class Cconst extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$const$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23707do;

            public Cdo(String str) {
                this.f23707do = str;
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int iStart;
                int size = list.size();
                Cconst.this.e(size, 1, 2);
                String strK = Cconst.this.k(list, 0);
                long jM28190case = size > 1 ? o3.m28190case(Cconst.this.k(list, 1)) : 0L;
                if ((o3.f24027catch & jM28190case) == 0) {
                    o3.m28193if(Cconst.this.f24115this, jM28190case, true);
                    iStart = (jM28190case & o3.f24030else) == 0 ? this.f23707do.indexOf(strK) : this.f23707do.toLowerCase().indexOf(strK.toLowerCase());
                } else {
                    Matcher matcher = o3.m28192for(strK, (int) jM28190case).matcher(this.f23707do);
                    iStart = matcher.find() ? matcher.start() : -1;
                }
                return iStart == -1 ? new ez1(this.f23707do) : new ez1(this.f23707do.substring(0, iStart));
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws k52 {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$continue, reason: invalid class name */
    public static class Ccontinue extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(str.toUpperCase(d0Var.m28268strictfp()));
        }
    }

    /* renamed from: freemarker.core.f$default, reason: invalid class name */
    public static class Cdefault extends Cif {
        @Override // freemarker.core.f.Cif
        public boolean t() {
            return false;
        }

        @Override // freemarker.core.f.Cif
        public TemplateModel u(p4 p4Var, String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
            return p4Var.mo28215if(str, i, (TemplateScalarModel) templateModel, num, d0Var);
        }
    }

    /* renamed from: freemarker.core.f$else, reason: invalid class name */
    public static class Celse extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$else$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23709do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Celse.this.f(list, 1);
                return this.f23709do.endsWith(Celse.this.k(list, 0)) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
            }

            private Cdo(String str) {
                this.f23709do = str;
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$extends, reason: invalid class name */
    public static class Cextends extends Cif {
        @Override // freemarker.core.f.Cif
        public boolean t() {
            return true;
        }

        @Override // freemarker.core.f.Cif
        public TemplateModel u(p4 p4Var, String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
            return p4Var.mo28214for(str, i, templateModel, num, d0Var);
        }
    }

    /* renamed from: freemarker.core.f$final, reason: invalid class name */
    public static class Cfinal extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$final$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23711do;

            public Cdo(String str) {
                this.f23711do = str;
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int length;
                int size = list.size();
                Cfinal.this.e(size, 1, 2);
                String strK = Cfinal.this.k(list, 0);
                long jM28190case = size > 1 ? o3.m28190case(Cfinal.this.k(list, 1)) : 0L;
                if ((o3.f24027catch & jM28190case) == 0) {
                    o3.m28193if(Cfinal.this.f24115this, jM28190case, true);
                    length = (jM28190case & o3.f24030else) == 0 ? this.f23711do.lastIndexOf(strK) : this.f23711do.toLowerCase().lastIndexOf(strK.toLowerCase());
                } else if (strK.length() == 0) {
                    length = this.f23711do.length();
                } else {
                    Matcher matcher = o3.m28192for(strK, (int) jM28190case).matcher(this.f23711do);
                    if (matcher.find()) {
                        int iStart = matcher.start();
                        while (matcher.find(iStart + 1)) {
                            iStart = matcher.start();
                        }
                        length = iStart;
                    } else {
                        length = -1;
                    }
                }
                return length == -1 ? new ez1(this.f23711do) : new ez1(this.f23711do.substring(0, length));
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws k52 {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$finally, reason: invalid class name */
    public static class Cfinally extends Cif {
        @Override // freemarker.core.f.Cif
        public boolean t() {
            return true;
        }

        @Override // freemarker.core.f.Cif
        public TemplateModel u(p4 p4Var, String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
            return p4Var.mo28216new(str, i, templateModel, num, d0Var);
        }
    }

    /* renamed from: freemarker.core.f$for, reason: invalid class name */
    public static class Cfor extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            int length = str.length();
            int i = 0;
            while (i < length && Character.isWhitespace(str.charAt(i))) {
                i++;
            }
            if (i < length) {
                StringBuilder sb = new StringBuilder(str);
                sb.setCharAt(i, Character.toUpperCase(str.charAt(i)));
                str = sb.toString();
            }
            return new ez1(str);
        }
    }

    /* renamed from: freemarker.core.f$goto, reason: invalid class name */
    public static class Cgoto extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$goto$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23713do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                String str;
                Cgoto.this.f(list, 1);
                String strK = Cgoto.this.k(list, 0);
                if (this.f23713do.endsWith(strK)) {
                    str = this.f23713do;
                } else {
                    str = this.f23713do + strK;
                }
                return new ez1(str);
            }

            private Cdo(String str) {
                this.f23713do = str;
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$if, reason: invalid class name */
    public static abstract class Cif extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$if$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ d0 f23715do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ String f23717if;

            public Cdo(d0 d0Var, String str) {
                this.f23715do = d0Var;
                this.f23717if = str;
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                TemplateModel templateModel;
                Integer num;
                int size = list.size();
                Cif.this.e(size, 1, 3);
                int iIntValue = Cif.this.h(list, 0).intValue();
                if (iIntValue < 0) {
                    throw new vl2("?", Cif.this.f24115this, "(...) argument #1 can't be negative.");
                }
                if (size > 1) {
                    TemplateModel templateModel2 = (TemplateModel) list.get(1);
                    if (!(templateModel2 instanceof TemplateScalarModel)) {
                        if (!Cif.this.t()) {
                            throw b5.m27868package("?" + Cif.this.f24115this, 1, templateModel2);
                        }
                        if (!(templateModel2 instanceof TemplateMarkupOutputModel)) {
                            throw b5.m27869private("?" + Cif.this.f24115this, 1, templateModel2);
                        }
                    }
                    Number numberI = Cif.this.i(list, 2);
                    Integer numValueOf = numberI != null ? Integer.valueOf(numberI.intValue()) : null;
                    if (numValueOf != null && numValueOf.intValue() < 0) {
                        throw new vl2("?", Cif.this.f24115this, "(...) argument #3 can't be negative.");
                    }
                    templateModel = templateModel2;
                    num = numValueOf;
                } else {
                    templateModel = null;
                    num = null;
                }
                try {
                    return Cif.this.u(this.f23715do.j(), this.f23717if, iIntValue, templateModel, num, this.f23715do);
                } catch (TemplateException e) {
                    throw new vl2(Cif.this, e, this.f23715do, "Truncation failed; see cause exception");
                }
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new Cdo(d0Var, str);
        }

        public abstract boolean t();

        public abstract TemplateModel u(p4 p4Var, String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException;
    }

    /* renamed from: freemarker.core.f$import, reason: invalid class name */
    public static class Cimport extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$import$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23718do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cimport.this.f(list, 1);
                String strK = Cimport.this.k(list, 0);
                return new ez1(this.f23718do.startsWith(strK) ? this.f23718do.substring(strK.length()) : this.f23718do);
            }

            private Cdo(String str) {
                this.f23718do = str;
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$native, reason: invalid class name */
    public static class Cnative extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$native$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23720do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                String strSubstring;
                Cnative.this.f(list, 1);
                String strK = Cnative.this.k(list, 0);
                if (this.f23720do.endsWith(strK)) {
                    String str = this.f23720do;
                    strSubstring = str.substring(0, str.length() - strK.length());
                } else {
                    strSubstring = this.f23720do;
                }
                return new ez1(strSubstring);
            }

            private Cdo(String str) {
                this.f23720do = str;
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$new, reason: invalid class name */
    public static class Cnew extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(freemarker.template.utility.Csuper.m29325return(str));
        }
    }

    /* renamed from: freemarker.core.f$package, reason: invalid class name */
    public static class Cpackage extends Cif {
        @Override // freemarker.core.f.Cif
        public boolean t() {
            return false;
        }

        @Override // freemarker.core.f.Cif
        public TemplateModel u(p4 p4Var, String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
            return p4Var.mo28217try(str, i, (TemplateScalarModel) templateModel, num, d0Var);
        }
    }

    /* renamed from: freemarker.core.f$private, reason: invalid class name */
    public static class Cprivate extends Cif {
        @Override // freemarker.core.f.Cif
        public boolean t() {
            return true;
        }

        @Override // freemarker.core.f.Cif
        public TemplateModel u(p4 p4Var, String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
            return p4Var.mo28212case(str, i, templateModel, num, d0Var);
        }
    }

    /* renamed from: freemarker.core.f$public, reason: invalid class name */
    public static class Cpublic extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$public$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModel {

            /* renamed from: do, reason: not valid java name */
            private String f23722do;

            public Cdo(String str) {
                this.f23722do = str;
            }

            @Override // freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                String[] strArrSplit;
                int size = list.size();
                Cpublic.this.e(size, 1, 2);
                String str = (String) list.get(0);
                long jM28190case = size > 1 ? o3.m28190case((String) list.get(1)) : 0L;
                if ((o3.f24027catch & jM28190case) == 0) {
                    o3.m28191do(Cpublic.this.f24115this, jM28190case);
                    strArrSplit = freemarker.template.utility.Csuper.u(this.f23722do, str, (jM28190case & o3.f24030else) != 0);
                } else {
                    strArrSplit = o3.m28192for(str, (int) jM28190case).split(this.f23722do);
                }
                return ObjectWrapper.DEFAULT_WRAPPER.wrap(strArrSplit);
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws k52 {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$return, reason: invalid class name */
    public static class Creturn extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$return$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23724do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Creturn.this.f(list, 1);
                return this.f23724do.startsWith(Creturn.this.k(list, 0)) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
            }

            private Cdo(String str) {
                this.f23724do = str;
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$static, reason: invalid class name */
    public static class Cstatic extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$static$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ String f23726do;

            public Cdo(String str) {
                this.f23726do = str;
            }

            /* renamed from: do, reason: not valid java name */
            private k52 m28004do(int i, int i2, int i3) throws k52 {
                return b5.m27872static("?" + Cstatic.this.f24115this, i, "The index mustn't be greater than the length of the string, ", Integer.valueOf(i3), ", but it was ", Integer.valueOf(i2), ".");
            }

            /* renamed from: if, reason: not valid java name */
            private k52 m28005if(int i, int i2) throws k52 {
                return b5.m27872static("?" + Cstatic.this.f24115this, i, "The index must be at least 0, but was ", Integer.valueOf(i2), ".");
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int size = list.size();
                Cstatic.this.e(size, 1, 2);
                int iIntValue = Cstatic.this.h(list, 0).intValue();
                int length = this.f23726do.length();
                if (iIntValue < 0) {
                    throw m28005if(0, iIntValue);
                }
                if (iIntValue > length) {
                    throw m28004do(0, iIntValue, length);
                }
                if (size <= 1) {
                    return new ez1(this.f23726do.substring(iIntValue));
                }
                int iIntValue2 = Cstatic.this.h(list, 1).intValue();
                if (iIntValue2 < 0) {
                    throw m28005if(1, iIntValue2);
                }
                if (iIntValue2 > length) {
                    throw m28004do(1, iIntValue2, length);
                }
                if (iIntValue <= iIntValue2) {
                    return new ez1(this.f23726do.substring(iIntValue, iIntValue2));
                }
                throw b5.m27855continue("?" + Cstatic.this.f24115this, "The begin index argument, ", Integer.valueOf(iIntValue), ", shouldn't be greater than the end index argument, ", Integer.valueOf(iIntValue2), ".");
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$strictfp, reason: invalid class name */
    public static class Cstrictfp extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            freemarker.template.Creturn creturn = new freemarker.template.Creturn();
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            while (stringTokenizer.hasMoreTokens()) {
                creturn.add(stringTokenizer.nextToken());
            }
            return creturn;
        }
    }

    /* renamed from: freemarker.core.f$super, reason: invalid class name */
    public static class Csuper extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new az1(str.length());
        }
    }

    /* renamed from: freemarker.core.f$switch, reason: invalid class name */
    public static class Cswitch extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(str.trim());
        }
    }

    /* renamed from: freemarker.core.f$this, reason: invalid class name */
    public static class Cthis extends freemarker.core.Cstrictfp {

        /* renamed from: freemarker.core.f$this$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private String f23728do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                boolean zStartsWith;
                String str;
                Cthis.this.g(list, 1, 3);
                String strK = Cthis.this.k(list, 0);
                if (list.size() > 1) {
                    String strK2 = Cthis.this.k(list, 1);
                    long jM28190case = list.size() > 2 ? o3.m28190case(Cthis.this.k(list, 2)) : 4294967296L;
                    if ((o3.f24027catch & jM28190case) == 0) {
                        o3.m28193if(Cthis.this.f24115this, jM28190case, true);
                        zStartsWith = (o3.f24030else & jM28190case) == 0 ? this.f23728do.startsWith(strK) : this.f23728do.toLowerCase().startsWith(strK.toLowerCase());
                    } else {
                        zStartsWith = o3.m28192for(strK, (int) jM28190case).matcher(this.f23728do).lookingAt();
                    }
                    strK = strK2;
                } else {
                    zStartsWith = this.f23728do.startsWith(strK);
                }
                if (zStartsWith) {
                    str = this.f23728do;
                } else {
                    str = strK + this.f23728do;
                }
                return new ez1(str);
            }

            private Cdo(String str) {
                this.f23728do = str;
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    /* renamed from: freemarker.core.f$throw, reason: invalid class name */
    public static class Cthrow extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(str.toLowerCase(d0Var.m28268strictfp()));
        }
    }

    /* renamed from: freemarker.core.f$throws, reason: invalid class name */
    public static class Cthrows extends Cif {
        @Override // freemarker.core.f.Cif
        public boolean t() {
            return false;
        }

        @Override // freemarker.core.f.Cif
        public TemplateModel u(p4 p4Var, String str, int i, TemplateModel templateModel, Integer num, d0 d0Var) throws TemplateException {
            return p4Var.mo28213do(str, i, (TemplateScalarModel) templateModel, num, d0Var);
        }
    }

    /* renamed from: freemarker.core.f$try, reason: invalid class name */
    public static class Ctry extends freemarker.core.Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) {
            return new ez1(freemarker.template.utility.Csuper.m29326static(str));
        }
    }

    /* renamed from: freemarker.core.f$while, reason: invalid class name */
    public static class Cwhile extends freemarker.core.Cstrictfp {

        /* renamed from: final, reason: not valid java name */
        private final boolean f23730final;

        /* renamed from: freemarker.core.f$while$do, reason: invalid class name */
        public class Cdo implements TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final String f23731do;

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                int size = list.size();
                Cwhile.this.e(size, 1, 2);
                int iIntValue = Cwhile.this.h(list, 0).intValue();
                if (size <= 1) {
                    return new ez1(Cwhile.this.f23730final ? freemarker.template.utility.Csuper.g(this.f23731do, iIntValue) : freemarker.template.utility.Csuper.o(this.f23731do, iIntValue));
                }
                String strK = Cwhile.this.k(list, 1);
                try {
                    return new ez1(Cwhile.this.f23730final ? freemarker.template.utility.Csuper.i(this.f23731do, iIntValue, strK) : freemarker.template.utility.Csuper.q(this.f23731do, iIntValue, strK));
                } catch (IllegalArgumentException e) {
                    if (strK.length() == 0) {
                        throw new vl2("?", Cwhile.this.f24115this, "(...) argument #2 can't be a 0-length string.");
                    }
                    throw new vl2(e, "?", Cwhile.this.f24115this, "(...) failed: ", e);
                }
            }

            private Cdo(String str) {
                this.f23731do = str;
            }
        }

        public Cwhile(boolean z) {
            this.f23730final = z;
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new Cdo(str);
        }
    }

    private f() {
    }
}
