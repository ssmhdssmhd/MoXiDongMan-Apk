package freemarker.core;

import android.support.v4.az1;
import android.support.v4.ez1;
import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.mc;
import android.support.v4.nl2;
import android.support.v4.p52;
import android.support.v4.ul2;
import android.support.v4.vl2;
import android.support.v4.wy1;
import freemarker.ext.beans.Cstrictfp;
import freemarker.ext.beans._BeansAPI;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateModelWithAPISupport;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.TemplateTransformModel;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
class a {

    /* renamed from: freemarker.core.a$break, reason: invalid class name */
    public static class Cbreak extends freemarker.core.Creturn {

        /* renamed from: final, reason: not valid java name */
        private final int f23450final;

        public Cbreak(int i) {
            this.f23450final = i;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return ((templateModelM28055throws instanceof TemplateDateModel) && ((TemplateDateModel) templateModelM28055throws).getDateType() == this.f23450final) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$case, reason: invalid class name */
    public static class Ccase extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateBooleanModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$catch, reason: invalid class name */
    public static class Ccatch extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return ((templateModelM28055throws instanceof TemplateTransformModel) || (templateModelM28055throws instanceof x1) || (templateModelM28055throws instanceof TemplateDirectiveModel)) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$class, reason: invalid class name */
    public static class Cclass extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return (((templateModelM28055throws instanceof TemplateSequenceModel) || (templateModelM28055throws instanceof TemplateCollectionModel)) && (ul2.m8514super(this) < ul2.f6937new || !((templateModelM28055throws instanceof freemarker.ext.beans.c) || (templateModelM28055throws instanceof Cstrictfp)))) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$const, reason: invalid class name */
    public static class Cconst extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateHashModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$default, reason: invalid class name */
    public static class Cdefault extends freemarker.core.Creturn {

        /* renamed from: final, reason: not valid java name */
        private int f23451final;

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            int size;
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (this.f23451final == 1 && (templateModelM28055throws instanceof TemplateCollectionModelEx)) {
                size = !((TemplateCollectionModelEx) templateModelM28055throws).isEmpty() ? 1 : 0;
            } else if (templateModelM28055throws instanceof TemplateSequenceModel) {
                size = ((TemplateSequenceModel) templateModelM28055throws).size();
            } else if (templateModelM28055throws instanceof TemplateCollectionModelEx) {
                size = ((TemplateCollectionModelEx) templateModelM28055throws).size();
            } else {
                if (!(templateModelM28055throws instanceof TemplateHashModelEx)) {
                    int i = 0;
                    if (templateModelM28055throws instanceof i1) {
                        i1 i1Var = (i1) templateModelM28055throws;
                        if (i1Var.m28081if()) {
                            TemplateModelIterator it = i1Var.iterator();
                            while (it.hasNext() && (i = i + 1) != this.f23451final) {
                                it.next();
                            }
                            size = i;
                        }
                    }
                    throw new r4(this.f24114goto, templateModelM28055throws, "extended-hash or sequence or extended collection", new Class[]{TemplateHashModelEx.class, TemplateSequenceModel.class, TemplateCollectionModelEx.class}, d0Var);
                }
                size = ((TemplateHashModelEx) templateModelM28055throws).size();
            }
            return new az1(size);
        }

        @Override // freemarker.core.Creturn
        public void q(h0 h0Var) {
            super.q(h0Var);
            h0Var.mo27808switch();
        }

        public void r(int i, z2 z2Var) {
            try {
                int iM29252else = freemarker.template.utility.Ccatch.m29252else(z2Var.getAsNumber());
                switch (i) {
                    case 1:
                        this.f23451final = iM29252else + 1;
                        return;
                    case 2:
                        this.f23451final = iM29252else + 1;
                        return;
                    case 3:
                        this.f23451final = iM29252else;
                        return;
                    case 4:
                        this.f23451final = iM29252else + 1;
                        return;
                    case 5:
                        this.f23451final = iM29252else + 1;
                        return;
                    case 6:
                        this.f23451final = iM29252else;
                        return;
                    default:
                        throw new mc("Unsupported comparator operator code: " + i);
                }
            } catch (ArithmeticException unused) {
            }
        }
    }

    /* renamed from: freemarker.core.a$do, reason: invalid class name */
    public static abstract class Cdo extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (templateModelM28055throws instanceof TemplateNumberModel) {
                return r(d0Var, templateModelM28055throws);
            }
            if (templateModelM28055throws instanceof TemplateBooleanModel) {
                return new ez1(((TemplateBooleanModel) templateModelM28055throws).getAsBoolean() ? b2.f23511if : b2.f23510do);
            }
            throw new r4(this.f24114goto, templateModelM28055throws, "number or boolean", new Class[]{TemplateNumberModel.class, TemplateBooleanModel.class}, d0Var);
        }

        public abstract TemplateModel r(d0 d0Var, TemplateModel templateModel) throws k52;
    }

    /* renamed from: freemarker.core.a$else, reason: invalid class name */
    public static class Celse extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateCollectionModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$extends, reason: invalid class name */
    public static class Cextends extends freemarker.core.Creturn {

        /* renamed from: freemarker.core.a$extends$do, reason: invalid class name */
        public class Cdo implements TemplateScalarModel, TemplateMethodModel {

            /* renamed from: do, reason: not valid java name */
            private final TemplateBooleanModel f23452do;

            /* renamed from: if, reason: not valid java name */
            private final d0 f23454if;

            public Cdo(TemplateBooleanModel templateBooleanModel, d0 d0Var) {
                this.f23452do = templateBooleanModel;
                this.f23454if = d0Var;
            }

            @Override // freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cextends.this.f(list, 2);
                return new ez1((String) list.get(!this.f23452do.getAsBoolean() ? 1 : 0));
            }

            @Override // freemarker.template.TemplateScalarModel
            public String getAsString() throws k52 {
                TemplateBooleanModel templateBooleanModel = this.f23452do;
                if (templateBooleanModel instanceof TemplateScalarModel) {
                    return ((TemplateScalarModel) templateBooleanModel).getAsString();
                }
                try {
                    return this.f23454if.m28252else(templateBooleanModel.getAsBoolean(), true);
                } catch (TemplateException e) {
                    throw new k52((Exception) e);
                }
            }
        }

        /* renamed from: freemarker.core.a$extends$for, reason: invalid class name */
        public class Cfor implements TemplateScalarModel, TemplateHashModel, TemplateMethodModel {

            /* renamed from: do, reason: not valid java name */
            private final TemplateNumberModel f23456do;

            /* renamed from: for, reason: not valid java name */
            private final d0 f23457for;

            /* renamed from: if, reason: not valid java name */
            private final Number f23458if;

            /* renamed from: new, reason: not valid java name */
            private final f4 f23459new;

            /* renamed from: try, reason: not valid java name */
            private String f23460try;

            public Cfor(TemplateNumberModel templateNumberModel, d0 d0Var) throws TemplateException {
                this.f23457for = d0Var;
                this.f23456do = templateNumberModel;
                this.f23458if = f0.m28017import(templateNumberModel, Cextends.this.f24114goto);
                try {
                    this.f23459new = d0Var.w2(Cextends.this, true);
                } catch (TemplateException e) {
                    throw y4.m28379else("Failed to get default number format", e);
                }
            }

            @Override // freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cextends.this.f(list, 1);
                return get((String) list.get(0));
            }

            @Override // freemarker.template.TemplateHashModel
            public TemplateModel get(String str) throws k52 {
                try {
                    f4 f4VarY2 = this.f23457for.y2(str, Cextends.this, true);
                    try {
                        return new ez1(f4VarY2 instanceof freemarker.core.Cconst ? this.f23457for.r1(this.f23458if, (freemarker.core.Cconst) f4VarY2, Cextends.this.f24114goto) : this.f23457for.q1(this.f23456do, f4VarY2, Cextends.this.f24114goto, true));
                    } catch (TemplateException e) {
                        throw y4.m28379else("Failed to format number", e);
                    }
                } catch (TemplateException e2) {
                    throw y4.m28379else("Failed to get number format", e2);
                }
            }

            @Override // freemarker.template.TemplateScalarModel
            public String getAsString() throws k52 {
                if (this.f23460try == null) {
                    try {
                        f4 f4Var = this.f23459new;
                        if (f4Var instanceof freemarker.core.Cconst) {
                            this.f23460try = this.f23457for.r1(this.f23458if, (freemarker.core.Cconst) f4Var, Cextends.this.f24114goto);
                        } else {
                            this.f23460try = this.f23457for.q1(this.f23456do, f4Var, Cextends.this.f24114goto, true);
                        }
                    } catch (TemplateException e) {
                        throw y4.m28379else("Failed to format number", e);
                    }
                }
                return this.f23460try;
            }

            @Override // freemarker.template.TemplateHashModel
            public boolean isEmpty() {
                return false;
            }
        }

        /* renamed from: freemarker.core.a$extends$if, reason: invalid class name */
        public class Cif implements TemplateScalarModel, TemplateHashModel, TemplateMethodModel {

            /* renamed from: do, reason: not valid java name */
            private final TemplateDateModel f23461do;

            /* renamed from: for, reason: not valid java name */
            private final z3 f23462for;

            /* renamed from: if, reason: not valid java name */
            private final d0 f23463if;

            /* renamed from: new, reason: not valid java name */
            private String f23464new;

            /* JADX WARN: Multi-variable type inference failed */
            public Cif(TemplateDateModel templateDateModel, d0 d0Var) throws TemplateException {
                this.f23461do = templateDateModel;
                this.f23463if = d0Var;
                int dateType = templateDateModel.getDateType();
                this.f23462for = dateType == 0 ? null : d0Var.h2(dateType, f0.m28026while(templateDateModel, Cextends.this.f24114goto).getClass(), Cextends.this.f24114goto, true);
            }

            /* renamed from: do, reason: not valid java name */
            private TemplateModel m27809do(String str) throws k52 {
                try {
                    d0 d0Var = this.f23463if;
                    TemplateDateModel templateDateModel = this.f23461do;
                    Cextends cextends = Cextends.this;
                    return new ez1(d0Var.o1(templateDateModel, str, cextends.f24114goto, cextends, true));
                } catch (TemplateException e) {
                    throw y4.m28379else("Failed to format value", e);
                }
            }

            @Override // freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cextends.this.f(list, 1);
                return m27809do((String) list.get(0));
            }

            @Override // freemarker.template.TemplateHashModel
            public TemplateModel get(String str) throws k52 {
                return m27809do(str);
            }

            @Override // freemarker.template.TemplateScalarModel
            public String getAsString() throws TemplateException {
                if (this.f23464new == null) {
                    z3 z3Var = this.f23462for;
                    if (z3Var == null) {
                        if (this.f23461do.getDateType() == 0) {
                            throw b5.m27865import(Cextends.this.f24114goto, null);
                        }
                        throw new mc();
                    }
                    try {
                        this.f23464new = f0.m28016if(z3Var.mo27979for(this.f23461do));
                    } catch (p52 e) {
                        try {
                            throw b5.m27877throw(this.f23462for, Cextends.this.f24114goto, e, true);
                        } catch (TemplateException e2) {
                            throw y4.m28379else("Failed to format date/time/datetime", e2);
                        }
                    }
                }
                return this.f23464new;
            }

            @Override // freemarker.template.TemplateHashModel
            public boolean isEmpty() {
                return false;
            }
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (templateModelM28055throws instanceof TemplateNumberModel) {
                return new Cfor((TemplateNumberModel) templateModelM28055throws, d0Var);
            }
            if (templateModelM28055throws instanceof TemplateDateModel) {
                return new Cif((TemplateDateModel) templateModelM28055throws, d0Var);
            }
            if (templateModelM28055throws instanceof ez1) {
                return templateModelM28055throws;
            }
            if (templateModelM28055throws instanceof TemplateBooleanModel) {
                return new Cdo((TemplateBooleanModel) templateModelM28055throws, d0Var);
            }
            if (templateModelM28055throws instanceof TemplateScalarModel) {
                return new ez1(((TemplateScalarModel) templateModelM28055throws).getAsString());
            }
            if (d0Var.y() && (templateModelM28055throws instanceof freemarker.ext.beans.Cnew)) {
                return new ez1(_BeansAPI.m28485if((freemarker.ext.beans.Cnew) templateModelM28055throws));
            }
            throw new r4(this.f24114goto, templateModelM28055throws, "number, date, boolean or string", new Class[]{TemplateNumberModel.class, TemplateDateModel.class, TemplateBooleanModel.class, TemplateScalarModel.class}, d0Var);
        }
    }

    /* renamed from: freemarker.core.a$final, reason: invalid class name */
    public static class Cfinal extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateHashModelEx ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$for, reason: invalid class name */
    public static class Cfor extends Cdo implements ICIChainMember {

        /* renamed from: final, reason: not valid java name */
        private final Cdo f23466final = new Cdo();

        /* renamed from: freemarker.core.a$for$do, reason: invalid class name */
        public static class Cdo extends Cdo {
            @Override // freemarker.core.a.Cdo
            public TemplateModel r(d0 d0Var, TemplateModel templateModel) throws k52 {
                Number numberM28017import = f0.m28017import((TemplateNumberModel) templateModel, this.f24114goto);
                return ((numberM28017import instanceof Integer) || (numberM28017import instanceof Long)) ? new ez1(numberM28017import.toString()) : new ez1(d0Var.s1().format(numberM28017import));
            }
        }

        @Override // freemarker.core.ICIChainMember
        public int getMinimumICIVersion() {
            return ul2.f6937new;
        }

        @Override // freemarker.core.ICIChainMember
        public Object getPreviousICIChainMember() {
            return this.f23466final;
        }

        @Override // freemarker.core.a.Cdo, freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (templateModelM28055throws instanceof TemplateNumberModel) {
                return r(d0Var, templateModelM28055throws);
            }
            if (templateModelM28055throws instanceof TemplateBooleanModel) {
                return new ez1(((TemplateBooleanModel) templateModelM28055throws).getAsBoolean() ? b2.f23511if : b2.f23510do);
            }
            throw new r4(this.f24114goto, templateModelM28055throws, "number or boolean", new Class[]{TemplateNumberModel.class, TemplateBooleanModel.class}, d0Var);
        }

        @Override // freemarker.core.a.Cdo
        public TemplateModel r(d0 d0Var, TemplateModel templateModel) throws k52 {
            Number numberM28017import = f0.m28017import((TemplateNumberModel) templateModel, this.f24114goto);
            if ((numberM28017import instanceof Integer) || (numberM28017import instanceof Long)) {
                return new ez1(numberM28017import.toString());
            }
            if (numberM28017import instanceof Double) {
                double dDoubleValue = numberM28017import.doubleValue();
                if (dDoubleValue == Double.POSITIVE_INFINITY) {
                    return new ez1("INF");
                }
                if (dDoubleValue == Double.NEGATIVE_INFINITY) {
                    return new ez1("-INF");
                }
                if (Double.isNaN(dDoubleValue)) {
                    return new ez1("NaN");
                }
            } else if (numberM28017import instanceof Float) {
                float fFloatValue = numberM28017import.floatValue();
                if (fFloatValue == Float.POSITIVE_INFINITY) {
                    return new ez1("INF");
                }
                if (fFloatValue == Float.NEGATIVE_INFINITY) {
                    return new ez1("-INF");
                }
                if (Float.isNaN(fFloatValue)) {
                    return new ez1("NaN");
                }
            }
            return new ez1(d0Var.s1().format(numberM28017import));
        }
    }

    /* renamed from: freemarker.core.a$goto, reason: invalid class name */
    public static class Cgoto extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateCollectionModelEx ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$if, reason: invalid class name */
    public static class Cif extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            if (!d0Var.q()) {
                throw new nl2(this, "Can't use ?api, because the \"", "api_builtin_enabled", "\" configuration setting is false. Think twice before you set it to true though. Especially, it shouldn't abused for modifying Map-s and Collection-s.");
            }
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (templateModelM28055throws instanceof TemplateModelWithAPISupport) {
                return ((TemplateModelWithAPISupport) templateModelM28055throws).getAPI();
            }
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            throw new freemarker.core.Cdo(d0Var, this.f24114goto, templateModelM28055throws);
        }
    }

    /* renamed from: freemarker.core.a$import, reason: invalid class name */
    public static class Cimport extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateMethodModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$native, reason: invalid class name */
    public static class Cnative extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateNodeModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$new, reason: invalid class name */
    public static class Cnew extends freemarker.core.Creturn {

        /* renamed from: final, reason: not valid java name */
        private final int f23467final;

        /* renamed from: freemarker.core.a$new$do, reason: invalid class name */
        public class Cdo implements TemplateDateModel, TemplateMethodModel, TemplateHashModel {

            /* renamed from: do, reason: not valid java name */
            private final String f23468do;

            /* renamed from: for, reason: not valid java name */
            private final z3 f23469for;

            /* renamed from: if, reason: not valid java name */
            private final d0 f23470if;

            /* renamed from: new, reason: not valid java name */
            private TemplateDateModel f23471new;

            public Cdo(String str, d0 d0Var) throws TemplateException {
                this.f23468do = str;
                this.f23470if = d0Var;
                this.f23469for = d0Var.h2(Cnew.this.f23467final, Date.class, Cnew.this.f24114goto, false);
            }

            /* renamed from: do, reason: not valid java name */
            private TemplateDateModel m27810do() throws k52 {
                if (this.f23471new == null) {
                    this.f23471new = m27811for(m27812if(this.f23469for));
                }
                return this.f23471new;
            }

            /* renamed from: for, reason: not valid java name */
            private TemplateDateModel m27811for(Object obj) throws vl2 {
                if (obj instanceof Date) {
                    return new wy1((Date) obj, Cnew.this.f23467final);
                }
                TemplateDateModel templateDateModel = (TemplateDateModel) obj;
                if (templateDateModel.getDateType() == Cnew.this.f23467final) {
                    return templateDateModel;
                }
                throw new vl2("The result of the parsing was of the wrong date type.");
            }

            /* renamed from: if, reason: not valid java name */
            private Object m27812if(z3 z3Var) throws k52 {
                try {
                    return z3Var.mo27977case(this.f23468do, Cnew.this.f23467final);
                } catch (p52 e) {
                    Object[] objArr = new Object[8];
                    objArr[0] = "The string doesn't match the expected date/time/date-time format. The string to parse was: ";
                    objArr[1] = new fl2(this.f23468do);
                    objArr[2] = ". ";
                    objArr[3] = "The expected format was: ";
                    objArr[4] = new fl2(z3Var.mo5485do());
                    objArr[5] = ".";
                    objArr[6] = e.getMessage() != null ? "\nThe nested reason given follows:\n" : "";
                    objArr[7] = e.getMessage() != null ? e.getMessage() : "";
                    throw new vl2(e, objArr);
                }
            }

            @Override // freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cnew.this.g(list, 0, 1);
                return list.size() == 0 ? m27810do() : get((String) list.get(0));
            }

            @Override // freemarker.template.TemplateHashModel
            public TemplateModel get(String str) throws k52 {
                try {
                    d0 d0Var = this.f23470if;
                    int i = Cnew.this.f23467final;
                    Cnew cnew = Cnew.this;
                    return m27811for(m27812if(d0Var.l2(str, i, Date.class, cnew.f24114goto, cnew, true)));
                } catch (TemplateException e) {
                    throw y4.m28379else("Failed to get format", e);
                }
            }

            @Override // freemarker.template.TemplateDateModel
            public Date getAsDate() throws k52 {
                return m27810do().getAsDate();
            }

            @Override // freemarker.template.TemplateDateModel
            public int getDateType() {
                return Cnew.this.f23467final;
            }

            @Override // freemarker.template.TemplateHashModel
            public boolean isEmpty() {
                return false;
            }
        }

        public Cnew(int i) {
            this.f23467final = i;
        }

        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (!(templateModelM28055throws instanceof TemplateDateModel)) {
                return new Cdo(this.f24114goto.mo28045default(d0Var), d0Var);
            }
            TemplateDateModel templateDateModel = (TemplateDateModel) templateModelM28055throws;
            int dateType = templateDateModel.getDateType();
            if (this.f23467final == dateType) {
                return templateModelM28055throws;
            }
            if (dateType == 0 || dateType == 3) {
                return new wy1(templateDateModel.getAsDate(), this.f23467final);
            }
            List list = TemplateDateModel.TYPE_NAMES;
            throw new nl2(this, "Cannot convert ", list.get(dateType), " to ", list.get(this.f23467final));
        }
    }

    /* renamed from: freemarker.core.a$public, reason: invalid class name */
    public static class Cpublic extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateNumberModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$return, reason: invalid class name */
    public static class Creturn extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return (!(templateModelM28055throws instanceof TemplateSequenceModel) || (((templateModelM28055throws instanceof Cstrictfp) || (templateModelM28055throws instanceof freemarker.ext.beans.c)) && d0Var.U2())) ? TemplateBooleanModel.FALSE : TemplateBooleanModel.TRUE;
        }
    }

    /* renamed from: freemarker.core.a$static, reason: invalid class name */
    public static class Cstatic extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateScalarModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$super, reason: invalid class name */
    public static class Csuper extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateSequenceModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$switch, reason: invalid class name */
    public static class Cswitch extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateTransformModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$this, reason: invalid class name */
    public static class Cthis extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateDateModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$throw, reason: invalid class name */
    public static class Cthrow extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof x1 ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$throws, reason: invalid class name */
    public static class Cthrows extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            if (templateModelM28055throws instanceof x1) {
                return d0Var.T1((x1) templateModelM28055throws);
            }
            throw new r4(this.f24114goto, templateModelM28055throws, "macro or function", new Class[]{x1.class}, d0Var);
        }
    }

    /* renamed from: freemarker.core.a$try, reason: invalid class name */
    public static class Ctry extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateModelWithAPISupport ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.a$while, reason: invalid class name */
    public static class Cwhile extends freemarker.core.Creturn {
        @Override // freemarker.core.h0
        /* renamed from: native */
        public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
            TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
            this.f24114goto.m28052public(templateModelM28055throws, d0Var);
            return templateModelM28055throws instanceof TemplateMarkupOutputModel ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    private a() {
    }
}
