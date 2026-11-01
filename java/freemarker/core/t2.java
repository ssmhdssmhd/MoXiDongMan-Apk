package freemarker.core;

import android.support.v4.vm;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;

/* loaded from: classes.dex */
public class t2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f24196break = {TemplateSequenceModel.class, TemplateCollectionModel.class};

    /* renamed from: catch, reason: not valid java name */
    private static final String f24197catch = "The problematic value is a java.lang.Iterable. Using DefaultObjectWrapper(..., iterableSupport=true) as the object_wrapper setting of the FreeMarker configuration should solve this.";

    public t2(d0 d0Var) {
        super(d0Var, "Expecting sequence or collection value here");
    }

    /* renamed from: break, reason: not valid java name */
    private static Object[] m28290break(TemplateModel templateModel, Object[] objArr) {
        if (!isWrappedIterable(templateModel)) {
            return objArr;
        }
        int length = objArr != null ? objArr.length : 0;
        Object[] objArr2 = new Object[length + 1];
        for (int i = 0; i < length; i++) {
            objArr2[i] = objArr[i];
        }
        objArr2[length] = f24197catch;
        return objArr2;
    }

    public static boolean isWrappedIterable(TemplateModel templateModel) {
        return (templateModel instanceof WrapperTemplateModel) && (((WrapperTemplateModel) templateModel).getWrappedObject() instanceof Iterable);
    }

    public t2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public t2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public t2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        this(h0Var, templateModel, vm.f7294do, d0Var);
    }

    public t2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        this(h0Var, templateModel, new Object[]{str}, d0Var);
    }

    public t2(h0 h0Var, TemplateModel templateModel, Object[] objArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "sequence or collection", f24196break, m28290break(templateModel, objArr), d0Var);
    }
}
