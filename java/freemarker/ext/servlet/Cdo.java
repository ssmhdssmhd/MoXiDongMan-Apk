package freemarker.ext.servlet;

import android.support.v4.k52;
import freemarker.template.Cnative;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/* renamed from: freemarker.ext.servlet.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cnative {
    private final ServletContext context;
    private final HttpServletRequest request;
    private final Map unlistedModels = new HashMap();

    public Cdo(ObjectWrapper objectWrapper, ServletContext servletContext, HttpServletRequest httpServletRequest) {
        setObjectWrapper(objectWrapper);
        this.context = servletContext;
        this.request = httpServletRequest;
    }

    @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        Object attribute;
        TemplateModel templateModel = super.get(str);
        if (templateModel != null) {
            return templateModel;
        }
        TemplateModel templateModel2 = (TemplateModel) this.unlistedModels.get(str);
        if (templateModel2 != null) {
            return templateModel2;
        }
        Object attribute2 = this.request.getAttribute(str);
        if (attribute2 != null) {
            return wrap(attribute2);
        }
        HttpSession session = this.request.getSession(false);
        if (session != null && (attribute = session.getAttribute(str)) != null) {
            return wrap(attribute);
        }
        Object attribute3 = this.context.getAttribute(str);
        return attribute3 != null ? wrap(attribute3) : wrap(null);
    }

    public void putUnlistedModel(String str, TemplateModel templateModel) {
        this.unlistedModels.put(str, templateModel);
    }
}
