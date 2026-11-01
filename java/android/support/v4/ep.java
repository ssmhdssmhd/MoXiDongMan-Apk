package android.support.v4;

import android.support.v4.ep;
import freemarker.core.TemplateMarkupOutputModel;

/* loaded from: classes.dex */
public abstract class ep<MO extends ep<MO>> implements TemplateMarkupOutputModel<MO> {

    /* renamed from: do, reason: not valid java name */
    private final String f1547do;

    /* renamed from: if, reason: not valid java name */
    private String f1548if;

    public ep(String str, String str2) {
        this.f1547do = str;
        this.f1548if = str2;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m1968do() {
        return this.f1548if;
    }

    /* renamed from: for, reason: not valid java name */
    public final String m1969for() {
        return this.f1547do;
    }

    @Override // freemarker.core.TemplateMarkupOutputModel
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract freemarker.core.p<MO> getOutputFormat();

    /* renamed from: new, reason: not valid java name */
    public final void m1971new(String str) {
        this.f1548if = str;
    }

    public String toString() {
        StringBuilder sb;
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("markupOutput(format=");
        sb2.append(getOutputFormat().mo889if());
        sb2.append(", ");
        if (this.f1547do != null) {
            sb = new StringBuilder();
            sb.append("plainText=");
            str = this.f1547do;
        } else {
            sb = new StringBuilder();
            sb.append("markup=");
            str = this.f1548if;
        }
        sb.append(str);
        sb2.append(sb.toString());
        sb2.append(")");
        return sb2.toString();
    }
}
