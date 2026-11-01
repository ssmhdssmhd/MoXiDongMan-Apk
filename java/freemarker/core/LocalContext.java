package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import java.util.Collection;

/* loaded from: classes.dex */
public interface LocalContext {
    TemplateModel getLocalVariable(String str) throws k52;

    Collection getLocalVariableNames() throws k52;
}
