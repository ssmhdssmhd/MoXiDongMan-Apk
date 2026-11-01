package freemarker.core;

import android.support.v4.az1;
import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.core.h0;
import freemarker.template.Creturn;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.util.HashSet;
import java.util.Set;

/* renamed from: freemarker.core.if, reason: invalid class name */
/* loaded from: classes.dex */
final class Cif extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23854goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f23855this;

    /* renamed from: freemarker.core.if$do, reason: invalid class name */
    public static class Cdo implements TemplateHashModel {

        /* renamed from: do, reason: not valid java name */
        public final TemplateHashModel f23856do;

        /* renamed from: if, reason: not valid java name */
        public final TemplateHashModel f23857if;

        public Cdo(TemplateHashModel templateHashModel, TemplateHashModel templateHashModel2) {
            this.f23856do = templateHashModel;
            this.f23857if = templateHashModel2;
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            TemplateModel templateModel = this.f23857if.get(str);
            return templateModel != null ? templateModel : this.f23856do.get(str);
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() throws k52 {
            return this.f23856do.isEmpty() && this.f23857if.isEmpty();
        }
    }

    /* renamed from: freemarker.core.if$for, reason: invalid class name */
    public static final class Cfor implements TemplateSequenceModel {

        /* renamed from: do, reason: not valid java name */
        private final TemplateSequenceModel f23858do;

        /* renamed from: if, reason: not valid java name */
        private final TemplateSequenceModel f23859if;

        public Cfor(TemplateSequenceModel templateSequenceModel, TemplateSequenceModel templateSequenceModel2) {
            this.f23858do = templateSequenceModel;
            this.f23859if = templateSequenceModel2;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            int size = this.f23858do.size();
            return i < size ? this.f23858do.get(i) : this.f23859if.get(i - size);
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.f23858do.size() + this.f23859if.size();
        }
    }

    /* renamed from: freemarker.core.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0243if extends Cdo implements TemplateHashModelEx {

        /* renamed from: for, reason: not valid java name */
        private m f23860for;

        /* renamed from: new, reason: not valid java name */
        private m f23861new;

        public C0243if(TemplateHashModelEx templateHashModelEx, TemplateHashModelEx templateHashModelEx2) {
            super(templateHashModelEx, templateHashModelEx2);
        }

        /* renamed from: do, reason: not valid java name */
        private static void m28084do(Set set, Creturn creturn, TemplateHashModelEx templateHashModelEx) throws k52 {
            TemplateModelIterator it = templateHashModelEx.keys().iterator();
            while (it.hasNext()) {
                TemplateScalarModel templateScalarModel = (TemplateScalarModel) it.next();
                if (set.add(templateScalarModel.getAsString())) {
                    creturn.add(templateScalarModel);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        private void m28085for() throws k52 {
            if (this.f23861new == null) {
                Creturn creturn = new Creturn(size());
                int size = this.f23860for.size();
                for (int i = 0; i < size; i++) {
                    creturn.add(get(((TemplateScalarModel) this.f23860for.get(i)).getAsString()));
                }
                this.f23861new = new m(creturn);
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m28086if() throws k52 {
            if (this.f23860for == null) {
                HashSet hashSet = new HashSet();
                Creturn creturn = new Creturn(32);
                m28084do(hashSet, creturn, (TemplateHashModelEx) this.f23856do);
                m28084do(hashSet, creturn, (TemplateHashModelEx) this.f23857if);
                this.f23860for = new m(creturn);
            }
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() throws k52 {
            m28086if();
            return this.f23860for;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public int size() throws k52 {
            m28086if();
            return this.f23860for.size();
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() throws k52 {
            m28085for();
            return this.f23861new;
        }
    }

    public Cif(h0 h0Var, h0 h0Var2) {
        this.f23854goto = h0Var;
        this.f23855this = h0Var2;
    }

    public static TemplateModel d(d0 d0Var, h4 h4Var, h0 h0Var, TemplateModel templateModel, h0 h0Var2, TemplateModel templateModel2) throws TemplateException {
        if ((templateModel instanceof TemplateNumberModel) && (templateModel2 instanceof TemplateNumberModel)) {
            return e(d0Var, h4Var, f0.m28017import((TemplateNumberModel) templateModel, h0Var), f0.m28017import((TemplateNumberModel) templateModel2, h0Var2));
        }
        if ((templateModel instanceof TemplateSequenceModel) && (templateModel2 instanceof TemplateSequenceModel)) {
            return new Cfor((TemplateSequenceModel) templateModel, (TemplateSequenceModel) templateModel2);
        }
        boolean z = (templateModel instanceof TemplateHashModel) && (templateModel2 instanceof TemplateHashModel);
        try {
            Object objM28007case = f0.m28007case(templateModel, h0Var, z, null, d0Var);
            if (objM28007case == null) {
                return f(templateModel, templateModel2);
            }
            Object objM28007case2 = f0.m28007case(templateModel2, h0Var2, z, null, d0Var);
            if (objM28007case2 == null) {
                return f(templateModel, templateModel2);
            }
            if (!(objM28007case instanceof String)) {
                TemplateMarkupOutputModel templateMarkupOutputModel = (TemplateMarkupOutputModel) objM28007case;
                return objM28007case2 instanceof String ? f0.m28010const(h4Var, templateMarkupOutputModel, templateMarkupOutputModel.getOutputFormat().mo28200goto((String) objM28007case2)) : f0.m28010const(h4Var, templateMarkupOutputModel, (TemplateMarkupOutputModel) objM28007case2);
            }
            if (objM28007case2 instanceof String) {
                return new ez1(((String) objM28007case).concat((String) objM28007case2));
            }
            TemplateMarkupOutputModel templateMarkupOutputModel2 = (TemplateMarkupOutputModel) objM28007case2;
            return f0.m28010const(h4Var, templateMarkupOutputModel2.getOutputFormat().mo28200goto((String) objM28007case), templateMarkupOutputModel2);
        } catch (v2 e) {
            if (z) {
                return f(templateModel, templateModel2);
            }
            throw e;
        }
    }

    public static TemplateModel e(d0 d0Var, h4 h4Var, Number number, Number number2) throws TemplateException {
        return new az1(f0.m28022super(d0Var, h4Var).mo27994for(number, number2));
    }

    private static TemplateModel f(TemplateModel templateModel, TemplateModel templateModel2) throws k52 {
        if (!(templateModel instanceof TemplateHashModelEx) || !(templateModel2 instanceof TemplateHashModelEx)) {
            return new Cdo((TemplateHashModel) templateModel, (TemplateHashModel) templateModel2);
        }
        TemplateHashModelEx templateHashModelEx = (TemplateHashModelEx) templateModel;
        TemplateHashModelEx templateHashModelEx2 = (TemplateHashModelEx) templateModel2;
        return templateHashModelEx.size() == 0 ? templateHashModelEx2 : templateHashModelEx2.size() == 0 ? templateHashModelEx : new C0243if(templateHashModelEx, templateHashModelEx2);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "+";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f23854goto.mo27815for() + " + " + this.f23855this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23810else != null || (this.f23854goto.mo27817instanceof() && this.f23855this.mo27817instanceof());
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        h0 h0Var = this.f23854goto;
        TemplateModel templateModelM28055throws = h0Var.m28055throws(d0Var);
        h0 h0Var2 = this.f23855this;
        return d(d0Var, this, h0Var, templateModelM28055throws, h0Var2, h0Var2.m28055throws(d0Var));
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new Cif(this.f23854goto.m28053return(str, h0Var, cdo), this.f23855this.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        return i == 0 ? this.f23854goto : this.f23855this;
    }
}
