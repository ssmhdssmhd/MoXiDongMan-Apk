package freemarker.ext.dom;

import freemarker.core.d0;
import freemarker.template.Cstatic;
import freemarker.template.TemplateScalarModel;
import org.w3c.dom.Attr;

/* renamed from: freemarker.ext.dom.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif extends Cbreak implements TemplateScalarModel {
    public Cif(Attr attr) {
        super(attr);
    }

    @Override // freemarker.ext.dom.Cbreak
    /* renamed from: case */
    public String mo28760case() {
        String namespaceURI = this.f24676do.getNamespaceURI();
        if (namespaceURI == null || namespaceURI.equals("")) {
            return this.f24676do.getNodeName();
        }
        d0 d0VarW1 = d0.w1();
        String strD2 = namespaceURI.equals(d0VarW1.E1()) ? Cstatic.m1 : d0VarW1.d2(namespaceURI);
        if (strD2 == null) {
            return null;
        }
        return strD2 + ":" + this.f24676do.getLocalName();
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        return ((Attr) this.f24676do).getValue();
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeName() {
        String localName = this.f24676do.getLocalName();
        return (localName == null || localName.equals("")) ? this.f24676do.getNodeName() : localName;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return true;
    }
}
