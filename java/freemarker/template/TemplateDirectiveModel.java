package freemarker.template;

import freemarker.core.d0;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes3.dex */
public interface TemplateDirectiveModel extends TemplateModel {
    void execute(d0 d0Var, Map map, TemplateModel[] templateModelArr, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException;
}
