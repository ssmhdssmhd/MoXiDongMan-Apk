package freemarker.core;

import android.support.v4.az1;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;

/* loaded from: classes.dex */
final class q4 extends h0 {

    /* renamed from: break, reason: not valid java name */
    private static final int f24089break = 0;

    /* renamed from: catch, reason: not valid java name */
    private static final int f24090catch = 1;

    /* renamed from: class, reason: not valid java name */
    private static final Integer f24091class = -1;

    /* renamed from: goto, reason: not valid java name */
    private final h0 f24092goto;

    /* renamed from: this, reason: not valid java name */
    private final boolean f24093this;

    public q4(h0 h0Var, boolean z) {
        this.f24092goto = h0Var;
        this.f24093this = z;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return this.f24093this ? "-..." : "+...";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return (this.f24093this ? "-" : "+") + this.f24092goto.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23768new;
        }
        if (i == 1) {
            return f3.f23784while;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f24092goto.mo27817instanceof();
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24092goto.m28055throws(d0Var);
        try {
            TemplateNumberModel templateNumberModel = (TemplateNumberModel) templateModelM28055throws;
            if (!this.f24093this) {
                return templateNumberModel;
            }
            this.f24092goto.m28052public(templateNumberModel, d0Var);
            return new az1(Celse.f23686try.mo27992else(f24091class, templateNumberModel.getAsNumber()));
        } catch (ClassCastException unused) {
            throw new r2(this.f24092goto, templateModelM28055throws, d0Var);
        }
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new q4(this.f24092goto.m28053return(str, h0Var, cdo), this.f24093this);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24092goto;
        }
        if (i == 1) {
            return Integer.valueOf(!this.f24093this ? 1 : 0);
        }
        throw new IndexOutOfBoundsException();
    }
}
