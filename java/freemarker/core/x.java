package freemarker.core;

import android.support.v4.k52;
import freemarker.core.h0;
import freemarker.template.Cimport;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.utility.Cfor;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
class x extends h0 {

    /* renamed from: break, reason: not valid java name */
    private static final TemplateCollectionModel f24262break = new Cimport((Collection) new ArrayList(0));

    /* renamed from: catch, reason: not valid java name */
    public static final TemplateModel f24263catch = new Cif();

    /* renamed from: goto, reason: not valid java name */
    private final h0 f24264goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f24265this;

    /* renamed from: freemarker.core.x$if, reason: invalid class name */
    public static class Cif implements TemplateScalarModel, TemplateSequenceModel, TemplateHashModelEx2 {
        private Cif() {
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) {
            return null;
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) {
            return null;
        }

        @Override // freemarker.template.TemplateScalarModel
        public String getAsString() {
            return "";
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            return true;
        }

        @Override // freemarker.template.TemplateHashModelEx2
        public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() throws k52 {
            return Cfor.f25206catch;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() {
            return x.f24262break;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() {
            return 0;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() {
            return x.f24262break;
        }
    }

    public x(h0 h0Var, h0 h0Var2) {
        this.f24264goto = h0Var;
        this.f24265this = h0Var2;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "...!...";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        if (this.f24265this == null) {
            return this.f24264goto.mo27815for() + '!';
        }
        return this.f24264goto.mo27815for() + '!' + this.f24265this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return false;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws;
        h0 h0Var = this.f24264goto;
        if (h0Var instanceof g3) {
            boolean zO3 = d0Var.o3(true);
            try {
                templateModelM28055throws = this.f24264goto.m28055throws(d0Var);
            } catch (b1 unused) {
                templateModelM28055throws = null;
            } catch (Throwable th) {
                d0Var.o3(zO3);
                throw th;
            }
            d0Var.o3(zO3);
        } else {
            templateModelM28055throws = h0Var.m28055throws(d0Var);
        }
        if (templateModelM28055throws != null) {
            return templateModelM28055throws;
        }
        h0 h0Var2 = this.f24265this;
        return h0Var2 == null ? f24263catch : h0Var2.m28055throws(d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        h0 h0VarM28053return = this.f24264goto.m28053return(str, h0Var, cdo);
        h0 h0Var2 = this.f24265this;
        return new x(h0VarM28053return, h0Var2 != null ? h0Var2.m28053return(str, h0Var, cdo) : null);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24264goto;
        }
        if (i == 1) {
            return this.f24265this;
        }
        throw new IndexOutOfBoundsException();
    }
}
