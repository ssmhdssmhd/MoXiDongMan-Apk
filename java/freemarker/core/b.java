package freemarker.core;

import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.ext.dom.Cthrow;
import freemarker.template.Creturn;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateNodeModelEx;
import java.util.List;

/* loaded from: classes.dex */
class b {

    /* renamed from: freemarker.core.b$break, reason: invalid class name */
    public static class Cbreak extends Cpackage {
        @Override // freemarker.core.Cpackage
        public TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52 {
            TemplateNodeModel parentNode = templateNodeModel.getParentNode();
            while (true) {
                TemplateNodeModel templateNodeModel2 = parentNode;
                TemplateNodeModel templateNodeModel3 = templateNodeModel;
                templateNodeModel = templateNodeModel2;
                if (templateNodeModel == null) {
                    return templateNodeModel3;
                }
                parentNode = templateNodeModel.getParentNode();
            }
        }
    }

    /* renamed from: freemarker.core.b$case, reason: invalid class name */
    public static class Ccase extends Cpackage {
        @Override // freemarker.core.Cpackage
        public TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52 {
            String nodeNamespace = templateNodeModel.getNodeNamespace();
            if (nodeNamespace == null) {
                return null;
            }
            return new ez1(nodeNamespace);
        }
    }

    /* renamed from: freemarker.core.b$do, reason: invalid class name */
    public static class Cdo extends Creturn implements TemplateMethodModel {
        private d0 env;

        public Cdo(d0 d0Var) {
            this.env = d0Var;
        }

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            if (list == null || list.isEmpty()) {
                return this;
            }
            Cdo cdo = new Cdo(this.env);
            for (int i = 0; i < size(); i++) {
                TemplateNodeModel templateNodeModel = (TemplateNodeModel) get(i);
                String nodeName = templateNodeModel.getNodeName();
                String nodeNamespace = templateNodeModel.getNodeNamespace();
                if (nodeNamespace != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= list.size()) {
                            break;
                        }
                        if (Cthrow.m28810if((String) list.get(i2), nodeName, nodeNamespace, this.env)) {
                            cdo.add(templateNodeModel);
                            break;
                        }
                        i2++;
                    }
                } else if (list.contains(nodeName)) {
                    cdo.add(templateNodeModel);
                }
            }
            return cdo;
        }
    }

    /* renamed from: freemarker.core.b$else, reason: invalid class name */
    public static class Celse extends Cpackage {
        @Override // freemarker.core.Cpackage
        public TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52 {
            return new ez1(templateNodeModel.getNodeType());
        }
    }

    /* renamed from: freemarker.core.b$for, reason: invalid class name */
    public static class Cfor extends Cpackage {
        @Override // freemarker.core.Cpackage
        public TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52 {
            return templateNodeModel.getChildNodes();
        }
    }

    /* renamed from: freemarker.core.b$goto, reason: invalid class name */
    public static class Cgoto extends Cpackage {
        @Override // freemarker.core.Cpackage
        public TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52 {
            return templateNodeModel.getParentNode();
        }
    }

    /* renamed from: freemarker.core.b$if, reason: invalid class name */
    public static class Cif extends Cpackage {
        @Override // freemarker.core.Cpackage
        public TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52 {
            Cdo cdo = new Cdo(d0Var);
            for (TemplateNodeModel parentNode = templateNodeModel.getParentNode(); parentNode != null; parentNode = parentNode.getParentNode()) {
                cdo.add(parentNode);
            }
            return cdo;
        }
    }

    /* renamed from: freemarker.core.b$new, reason: invalid class name */
    public static class Cnew extends Cprivate {
        @Override // freemarker.core.Cprivate
        public TemplateModel r(TemplateNodeModelEx templateNodeModelEx, d0 d0Var) throws k52 {
            return templateNodeModelEx.getNextSibling();
        }
    }

    /* renamed from: freemarker.core.b$this, reason: invalid class name */
    public static class Cthis extends Cprivate {
        @Override // freemarker.core.Cprivate
        public TemplateModel r(TemplateNodeModelEx templateNodeModelEx, d0 d0Var) throws k52 {
            return templateNodeModelEx.getPreviousSibling();
        }
    }

    /* renamed from: freemarker.core.b$try, reason: invalid class name */
    public static class Ctry extends Cpackage {
        @Override // freemarker.core.Cpackage
        public TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52 {
            return new ez1(templateNodeModel.getNodeName());
        }
    }

    private b() {
    }
}
