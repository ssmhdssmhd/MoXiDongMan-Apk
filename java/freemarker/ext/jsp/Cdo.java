package freemarker.ext.jsp;

import android.support.v4.k52;
import android.support.v4.mc;
import freemarker.core._UnexpectedTypeErrorExplainerTemplateModel;
import freemarker.core.d0;
import freemarker.ext.beans.c;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.Writer;
import java.util.List;
import java.util.Map;

/* renamed from: freemarker.ext.jsp.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo {

    /* renamed from: freemarker.ext.jsp.do$case, reason: invalid class name */
    public static class Ccase extends Cif implements TemplateTransformModel, TemplateMethodModelEx {

        /* renamed from: do, reason: not valid java name */
        private final TemplateTransformModel f24816do;

        /* renamed from: if, reason: not valid java name */
        private final TemplateMethodModelEx f24817if;

        public Ccase(TemplateTransformModel templateTransformModel, TemplateMethodModelEx templateMethodModelEx) {
            super();
            this.f24816do = templateTransformModel;
            this.f24817if = templateMethodModelEx;
        }

        @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            return this.f24817if.exec(list);
        }

        @Override // freemarker.template.TemplateTransformModel
        public Writer getWriter(Writer writer, Map map) throws k52, IOException {
            return this.f24816do.getWriter(writer, map);
        }
    }

    /* renamed from: freemarker.ext.jsp.do$for, reason: invalid class name */
    public static class Cfor extends Cif implements TemplateDirectiveModel, TemplateMethodModelEx, TemplateSequenceModel, _UnexpectedTypeErrorExplainerTemplateModel {

        /* renamed from: do, reason: not valid java name */
        private final TemplateDirectiveModel f24818do;

        /* renamed from: if, reason: not valid java name */
        private final c f24819if;

        public Cfor(TemplateDirectiveModel templateDirectiveModel, c cVar) {
            super();
            this.f24818do = templateDirectiveModel;
            this.f24819if = cVar;
        }

        @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            return this.f24819if.exec(list);
        }

        @Override // freemarker.template.TemplateDirectiveModel
        public void execute(d0 d0Var, Map map, TemplateModel[] templateModelArr, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
            this.f24818do.execute(d0Var, map, templateModelArr, templateDirectiveBody);
        }

        @Override // freemarker.core._UnexpectedTypeErrorExplainerTemplateModel
        public Object[] explainTypeError(Class[] clsArr) {
            return this.f24819if.explainTypeError(clsArr);
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            return this.f24819if.get(i);
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.f24819if.size();
        }
    }

    /* renamed from: freemarker.ext.jsp.do$if, reason: invalid class name */
    public static class Cif {
        private Cif() {
        }
    }

    /* renamed from: freemarker.ext.jsp.do$new, reason: invalid class name */
    public static class Cnew extends Cif implements TemplateDirectiveModel, TemplateMethodModelEx {

        /* renamed from: do, reason: not valid java name */
        private final TemplateDirectiveModel f24820do;

        /* renamed from: if, reason: not valid java name */
        private final TemplateMethodModelEx f24821if;

        public Cnew(TemplateDirectiveModel templateDirectiveModel, TemplateMethodModelEx templateMethodModelEx) {
            super();
            this.f24820do = templateDirectiveModel;
            this.f24821if = templateMethodModelEx;
        }

        @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            return this.f24821if.exec(list);
        }

        @Override // freemarker.template.TemplateDirectiveModel
        public void execute(d0 d0Var, Map map, TemplateModel[] templateModelArr, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
            this.f24820do.execute(d0Var, map, templateModelArr, templateDirectiveBody);
        }
    }

    /* renamed from: freemarker.ext.jsp.do$try, reason: invalid class name */
    public static class Ctry extends Cif implements TemplateTransformModel, TemplateMethodModelEx, TemplateSequenceModel, _UnexpectedTypeErrorExplainerTemplateModel {

        /* renamed from: do, reason: not valid java name */
        private final TemplateTransformModel f24822do;

        /* renamed from: if, reason: not valid java name */
        private final c f24823if;

        public Ctry(TemplateTransformModel templateTransformModel, c cVar) {
            super();
            this.f24822do = templateTransformModel;
            this.f24823if = cVar;
        }

        @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            return this.f24823if.exec(list);
        }

        @Override // freemarker.core._UnexpectedTypeErrorExplainerTemplateModel
        public Object[] explainTypeError(Class[] clsArr) {
            return this.f24823if.explainTypeError(clsArr);
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            return this.f24823if.get(i);
        }

        @Override // freemarker.template.TemplateTransformModel
        public Writer getWriter(Writer writer, Map map) throws k52, IOException {
            return this.f24822do.getWriter(writer, map);
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.f24823if.size();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m28921do(TemplateModel templateModel) {
        return ((templateModel instanceof TemplateDirectiveModel) || (templateModel instanceof TemplateTransformModel)) && !(templateModel instanceof Cif);
    }

    /* renamed from: for, reason: not valid java name */
    public static TemplateModel m28922for(TemplateModel templateModel, TemplateMethodModelEx templateMethodModelEx) {
        if (templateModel instanceof TemplateDirectiveModel) {
            return templateMethodModelEx instanceof c ? new Cfor((TemplateDirectiveModel) templateModel, (c) templateMethodModelEx) : new Cnew((TemplateDirectiveModel) templateModel, templateMethodModelEx);
        }
        if (templateModel instanceof TemplateTransformModel) {
            return templateMethodModelEx instanceof c ? new Ctry((TemplateTransformModel) templateModel, (c) templateMethodModelEx) : new Ccase((TemplateTransformModel) templateModel, templateMethodModelEx);
        }
        throw new mc("Unexpected custom JSP tag class: " + freemarker.template.utility.Cif.m29273class(templateModel));
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m28923if(TemplateModel templateModel) {
        return (templateModel instanceof TemplateMethodModelEx) && !(templateModel instanceof Cif);
    }
}
