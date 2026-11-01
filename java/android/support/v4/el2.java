package android.support.v4;

import freemarker.template.TemplateException;

/* loaded from: classes.dex */
public class el2 extends al2 {
    public el2(TemplateException templateException) {
        super(templateException);
    }

    @Override // android.support.v4.al2
    /* renamed from: do */
    public String mo273do(Object obj) {
        return ((TemplateException) obj).getMessageWithoutStackTop();
    }
}
