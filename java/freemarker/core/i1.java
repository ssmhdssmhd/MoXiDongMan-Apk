package freemarker.core;

import freemarker.template.TemplateModelIterator;

/* loaded from: classes.dex */
abstract class i1 extends u3 {

    /* renamed from: if, reason: not valid java name */
    private final boolean f23849if;

    public i1(TemplateModelIterator templateModelIterator, boolean z) {
        super(templateModelIterator);
        this.f23849if = z;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract i1 mo28080for();

    /* renamed from: if, reason: not valid java name */
    public final boolean m28081if() {
        return this.f23849if;
    }

    /* renamed from: new, reason: not valid java name */
    public final i1 m28082new() {
        return m28081if() ? this : mo28080for();
    }
}
