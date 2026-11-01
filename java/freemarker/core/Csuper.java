package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.k52;
import freemarker.core.d0;
import freemarker.core.d0.Cthis;
import freemarker.core.x1;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* renamed from: freemarker.core.super, reason: invalid class name */
/* loaded from: classes.dex */
final class Csuper extends b4 {

    /* renamed from: class, reason: not valid java name */
    private List f24145class;

    /* renamed from: freemarker.core.super$do, reason: invalid class name */
    public class Cdo implements LocalContext {

        /* renamed from: do, reason: not valid java name */
        public x1.Cdo f24146do;

        /* renamed from: if, reason: not valid java name */
        public d0.Cthis f24148if;

        public Cdo(d0 d0Var) throws TemplateException {
            x1.Cdo cdoX1 = d0Var.x1();
            this.f24146do = cdoX1;
            List list = cdoX1.f24279new;
            if (Csuper.this.f24145class != null) {
                for (int i = 0; i < Csuper.this.f24145class.size(); i++) {
                    TemplateModel templateModelM28055throws = ((h0) Csuper.this.f24145class.get(i)).m28055throws(d0Var);
                    if (list != null && i < list.size()) {
                        String str = (String) list.get(i);
                        if (this.f24148if == null) {
                            this.f24148if = d0Var.new Cthis();
                        }
                        this.f24148if.put(str, templateModelM28055throws == null ? Csuper.this.getTemplate().b1().y1() ? null : y2.f24308do : templateModelM28055throws);
                    }
                }
            }
        }

        @Override // freemarker.core.LocalContext
        public TemplateModel getLocalVariable(String str) throws k52 {
            d0.Cthis cthis = this.f24148if;
            if (cthis == null) {
                return null;
            }
            return cthis.get(str);
        }

        @Override // freemarker.core.LocalContext
        public Collection getLocalVariableNames() {
            List list = this.f24146do.f24279new;
            return list == null ? Collections.EMPTY_LIST : list;
        }
    }

    public Csuper(List list) {
        this.f24145class = list;
    }

    private void s(int i) {
        List list = this.f24145class;
        if (list == null || i >= list.size()) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#nested";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        List list = this.f24145class;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        s(i);
        return f3.f23758final;
    }

    @Override // freemarker.core.b4
    public boolean h() {
        return true;
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        d0Var.R2(new Cdo(d0Var));
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        if (this.f24145class != null) {
            for (int i = 0; i < this.f24145class.size(); i++) {
                sb.append(' ');
                sb.append(((h0) this.f24145class.get(i)).mo27815for());
            }
        }
        if (z) {
            sb.append(ca2.f702try);
        }
        return sb.toString();
    }

    public List t() {
        return this.f24145class;
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        s(i);
        return this.f24145class.get(i);
    }
}
