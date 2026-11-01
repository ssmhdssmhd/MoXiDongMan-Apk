package freemarker.template;

import android.support.v4.k52;

/* loaded from: classes3.dex */
public interface TemplateNodeModel extends TemplateModel {
    TemplateSequenceModel getChildNodes() throws k52;

    String getNodeName() throws k52;

    String getNodeNamespace() throws k52;

    String getNodeType() throws k52;

    TemplateNodeModel getParentNode() throws k52;
}
