package freemarker.ext.dom;

import freemarker.template.TemplateScalarModel;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Comment;

/* renamed from: freemarker.ext.dom.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor extends Cbreak implements TemplateScalarModel {
    public Cfor(CharacterData characterData) {
        super(characterData);
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        return ((CharacterData) this.f24676do).getData();
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeName() {
        return this.f24676do instanceof Comment ? "@comment" : "@text";
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return true;
    }
}
