package freemarker.template;

import freemarker.core.d0;
import freemarker.log.Cif;

/* renamed from: freemarker.template.super, reason: invalid class name */
/* loaded from: classes3.dex */
class Csuper implements AttemptExceptionReporter {

    /* renamed from: if, reason: not valid java name */
    private static final Cif f25110if = Cif.m29193break("freemarker.runtime");

    /* renamed from: do, reason: not valid java name */
    private final boolean f25111do;

    public Csuper(boolean z) {
        this.f25111do = z;
    }

    @Override // freemarker.template.AttemptExceptionReporter
    public void report(TemplateException templateException, d0 d0Var) {
        if (this.f25111do) {
            f25110if.mo29188private("Error executing FreeMarker template part in the #attempt block", templateException);
        } else {
            f25110if.mo29181else("Error executing FreeMarker template part in the #attempt block", templateException);
        }
    }
}
