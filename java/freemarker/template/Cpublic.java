package freemarker.template;

import android.support.v4.k52;
import android.support.v4.we2;

/* renamed from: freemarker.template.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic extends Cthis {

    /* renamed from: interface, reason: not valid java name */
    public static final Cpublic f25103interface = new Cpublic();

    @Deprecated
    public Cpublic() {
    }

    @Override // freemarker.template.Cthis
    public TemplateModel D(Object obj) throws k52 {
        throw new k52("SimpleObjectWrapper deliberately won't wrap this type: " + obj.getClass().getName());
    }

    @Override // freemarker.ext.beans.Ctry, freemarker.template.utility.ObjectWrapperWithAPISupport
    public TemplateHashModel wrapAsAPI(Object obj) throws k52 {
        throw new k52("SimpleObjectWrapper deliberately doesn't allow ?api.");
    }

    public Cpublic(we2 we2Var) {
        super(we2Var);
    }
}
