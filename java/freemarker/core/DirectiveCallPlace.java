package freemarker.core;

import android.support.v4.ef;
import freemarker.template.Cstatic;
import freemarker.template.utility.ObjectFactory;

/* loaded from: classes.dex */
public interface DirectiveCallPlace {
    int getBeginColumn();

    int getBeginLine();

    int getEndColumn();

    int getEndLine();

    Object getOrCreateCustomData(Object obj, ObjectFactory objectFactory) throws ef;

    Cstatic getTemplate();

    boolean isNestedOutputCacheable();
}
