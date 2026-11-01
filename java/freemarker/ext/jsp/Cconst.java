package freemarker.ext.jsp;

import freemarker.core.d0;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.beans.IntrospectionException;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTag;
import javax.servlet.jsp.tagext.Tag;

/* renamed from: freemarker.ext.jsp.const, reason: invalid class name */
/* loaded from: classes3.dex */
class Cconst extends Cbreak implements TemplateDirectiveModel {

    /* renamed from: freemarker.ext.jsp.const$do, reason: invalid class name */
    public class Cdo extends JspFragment {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Celse f24813do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ TemplateDirectiveBody f24815if;

        public Cdo(Celse celse, TemplateDirectiveBody templateDirectiveBody) {
            this.f24813do = celse;
            this.f24815if = templateDirectiveBody;
        }

        /* renamed from: do, reason: not valid java name */
        public JspContext m28917do() {
            return this.f24813do;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.jsp.JspException */
        /* renamed from: if, reason: not valid java name */
        public void m28918if(Writer writer) throws JspException, IOException {
            try {
                TemplateDirectiveBody templateDirectiveBody = this.f24815if;
                if (writer == null) {
                    writer = this.f24813do.mo28953this();
                }
                templateDirectiveBody.render(writer);
            } catch (TemplateException e) {
                throw new Cif(e);
            }
        }
    }

    /* renamed from: freemarker.ext.jsp.const$if, reason: invalid class name */
    public static final class Cif extends JspException {
        public Cif(TemplateException templateException) {
            super("Nested content has thrown template exception", templateException);
        }

        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public TemplateException m28920if() {
            return (TemplateException) super.getCause();
        }
    }

    public Cconst(String str, Class cls) throws IntrospectionException {
        super(str, cls);
        if (SimpleTag.class.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException(cls.getName() + " does not implement either the " + Tag.class.getName() + " interface or the " + SimpleTag.class.getName() + " interface.");
    }

    @Override // freemarker.template.TemplateDirectiveModel
    public void execute(d0 d0Var, Map map, TemplateModel[] templateModelArr, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
        try {
            SimpleTag simpleTag = (SimpleTag) m28884do();
            Celse celseM28915do = Cclass.m28915do();
            celseM28915do.m28946private(new Ccatch(d0Var.c2()));
            try {
                simpleTag.setJspContext(celseM28915do);
                JspTag jspTag = (JspTag) celseM28915do.m28949static(JspTag.class);
                if (jspTag != null) {
                    simpleTag.setParent(jspTag);
                }
                m28885for(simpleTag, map, celseM28915do.m28939goto());
                if (templateDirectiveBody != null) {
                    simpleTag.setJspBody(new Cdo(celseM28915do, templateDirectiveBody));
                    celseM28915do.m28945package(simpleTag);
                    try {
                        simpleTag.doTag();
                        celseM28915do.m28954throws();
                    } catch (Throwable th) {
                        celseM28915do.m28954throws();
                        throw th;
                    }
                } else {
                    simpleTag.doTag();
                }
            } finally {
                celseM28915do.m28932default();
            }
        } catch (TemplateException e) {
            throw e;
        } catch (Exception e2) {
            throw m28886new(e2);
        }
    }
}
