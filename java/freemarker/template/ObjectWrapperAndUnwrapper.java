package freemarker.template;

import android.support.v4.k52;

/* loaded from: classes3.dex */
public interface ObjectWrapperAndUnwrapper extends ObjectWrapper {
    public static final Object CANT_UNWRAP_TO_TARGET_CLASS = new Object();

    Object tryUnwrapTo(TemplateModel templateModel, Class<?> cls) throws k52;

    Object unwrap(TemplateModel templateModel) throws k52;
}
