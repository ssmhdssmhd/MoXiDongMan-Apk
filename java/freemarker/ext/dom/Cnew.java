package freemarker.ext.dom;

import android.support.v4.k52;
import freemarker.core.d0;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import org.w3c.dom.Document;

/* renamed from: freemarker.ext.dom.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew extends Cbreak implements TemplateHashModel {

    /* renamed from: catch, reason: not valid java name */
    private Celse f24704catch;

    public Cnew(Document document) {
        super(document);
    }

    @Override // freemarker.ext.dom.Cbreak, freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        if (str.equals("*")) {
            return m28801package();
        }
        if (str.equals("**")) {
            return new Cthis(((Document) this.f24676do).getElementsByTagName("*"), this);
        }
        if (!Ccase.m28765do(str)) {
            return super.get(str);
        }
        Celse celse = (Celse) Cbreak.m28746finally(((Document) this.f24676do).getDocumentElement());
        return celse.m28786strictfp(str, d0.w1()) ? celse : new Cthis(this);
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeName() {
        return "@document";
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return false;
    }

    /* renamed from: package, reason: not valid java name */
    public Celse m28801package() {
        if (this.f24704catch == null) {
            this.f24704catch = (Celse) Cbreak.m28746finally(((Document) this.f24676do).getDocumentElement());
        }
        return this.f24704catch;
    }
}
