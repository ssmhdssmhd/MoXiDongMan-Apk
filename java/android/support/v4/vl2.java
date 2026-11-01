package android.support.v4;

import freemarker.template.TemplateModel;
import freemarker.template.utility.Cif;

/* loaded from: classes.dex */
public class vl2 extends k52 {
    public vl2(String str) {
        super(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object[] modelHasStoredNullDescription(Class cls, TemplateModel templateModel) {
        Object[] objArr = new Object[5];
        objArr[0] = "The FreeMarker value exists, but has nothing inside it; the TemplateModel object (class: ";
        objArr[1] = templateModel.getClass().getName();
        objArr[2] = ") has returned a null";
        objArr[3] = cls != null ? new Object[]{" instead of a ", Cif.m29270break(cls)} : "";
        objArr[4] = ". This is possibly a bug in the non-FreeMarker code that builds the data-model.";
        return objArr;
    }

    public vl2(Throwable th, String str) {
        this(th, (freemarker.core.d0) null, str);
    }

    public vl2(freemarker.core.d0 d0Var, String str) {
        this((Throwable) null, d0Var, str);
    }

    public vl2(Throwable th, freemarker.core.d0 d0Var) {
        this(th, d0Var, (String) null);
    }

    public vl2(Throwable th) {
        this(th, (freemarker.core.d0) null, (String) null);
    }

    public vl2(Throwable th, freemarker.core.d0 d0Var, String str) {
        super(th, d0Var, str, true);
    }

    public vl2(freemarker.core.z4 z4Var) {
        this((freemarker.core.d0) null, z4Var);
    }

    public vl2(freemarker.core.d0 d0Var, freemarker.core.z4 z4Var) {
        this((Throwable) null, d0Var, z4Var);
    }

    public vl2(Throwable th, freemarker.core.d0 d0Var, freemarker.core.z4 z4Var) {
        super(th, d0Var, z4Var, true);
    }

    public vl2(Object... objArr) {
        this((freemarker.core.d0) null, objArr);
    }

    public vl2(freemarker.core.d0 d0Var, Object... objArr) {
        this((Throwable) null, d0Var, objArr);
    }

    public vl2(Throwable th, Object... objArr) {
        this(th, (freemarker.core.d0) null, objArr);
    }

    public vl2(Throwable th, freemarker.core.d0 d0Var, Object... objArr) {
        super(th, d0Var, new freemarker.core.z4(objArr), true);
    }

    public vl2(freemarker.core.h0 h0Var, Object... objArr) {
        this(h0Var, (freemarker.core.d0) null, objArr);
    }

    public vl2(freemarker.core.h0 h0Var, freemarker.core.d0 d0Var, Object... objArr) {
        this(h0Var, (Throwable) null, d0Var, objArr);
    }

    public vl2(freemarker.core.h0 h0Var, Throwable th, freemarker.core.d0 d0Var, Object... objArr) {
        super(th, d0Var, new freemarker.core.z4(objArr).m28401if(h0Var), true);
    }

    public vl2(freemarker.core.h0 h0Var, String str) {
        this(h0Var, (freemarker.core.d0) null, str);
    }

    public vl2(freemarker.core.h0 h0Var, freemarker.core.d0 d0Var, String str) {
        this(h0Var, (Throwable) null, d0Var, str);
    }

    public vl2(freemarker.core.h0 h0Var, Throwable th, freemarker.core.d0 d0Var, String str) {
        super(th, d0Var, new freemarker.core.z4(str).m28401if(h0Var), true);
    }
}
