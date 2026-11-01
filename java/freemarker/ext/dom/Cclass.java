package freemarker.ext.dom;

import freemarker.template.TemplateScalarModel;
import org.w3c.dom.ProcessingInstruction;

/* renamed from: freemarker.ext.dom.class, reason: invalid class name */
/* loaded from: classes.dex */
class Cclass extends Cbreak implements TemplateScalarModel {
    public Cclass(ProcessingInstruction processingInstruction) {
        super(processingInstruction);
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        return ((ProcessingInstruction) this.f24676do).getData();
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeName() {
        return "@pi$" + ((ProcessingInstruction) this.f24676do).getTarget();
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return true;
    }
}
