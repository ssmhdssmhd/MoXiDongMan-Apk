package freemarker.core;

import android.support.v4.k52;
import android.support.v4.o52;
import android.support.v4.p52;
import android.support.v4.rc1;
import freemarker.template.TemplateNumberModel;

/* loaded from: classes.dex */
public abstract class f4 extends o52 {
    /* renamed from: for, reason: not valid java name */
    public abstract String mo28033for(TemplateNumberModel templateNumberModel) throws k52, p52;

    /* renamed from: if, reason: not valid java name */
    public Object m28034if(TemplateNumberModel templateNumberModel) throws k52, p52 {
        return mo28033for(templateNumberModel);
    }

    /* renamed from: new, reason: not valid java name */
    public abstract boolean mo28035new();

    /* renamed from: try, reason: not valid java name */
    public final Object m28036try(String str) throws p52 {
        throw new rc1("Number formats currenly don't support parsing");
    }
}
