package freemarker.ext.dom;

import android.support.v4.k52;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import org.w3c.dom.DocumentType;
import org.w3c.dom.ProcessingInstruction;

/* renamed from: freemarker.ext.dom.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry extends Cbreak {
    public Ctry(DocumentType documentType) {
        super(documentType);
    }

    @Override // freemarker.ext.dom.Cbreak, freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        throw new k52("accessing properties of a DTD is not currently supported");
    }

    public String getAsString() {
        return ((ProcessingInstruction) this.f24676do).getData();
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeName() {
        return "@document_type$" + ((DocumentType) this.f24676do).getNodeName();
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return true;
    }

    /* renamed from: package, reason: not valid java name */
    public TemplateSequenceModel m28811package() throws k52 {
        throw new k52("entering the child nodes of a DTD node is not currently supported");
    }
}
