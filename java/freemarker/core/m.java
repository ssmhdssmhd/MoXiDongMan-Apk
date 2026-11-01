package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m implements TemplateCollectionModel, TemplateSequenceModel, Serializable {
    private TemplateCollectionModel collection;
    private ArrayList<TemplateModel> data;
    private TemplateSequenceModel sequence;

    public m(TemplateCollectionModel templateCollectionModel) {
        this.collection = templateCollectionModel;
    }

    /* renamed from: do, reason: not valid java name */
    private void m28180do() throws k52 {
        if (this.data == null) {
            this.data = new ArrayList<>();
            TemplateModelIterator it = this.collection.iterator();
            while (it.hasNext()) {
                this.data.add(it.next());
            }
        }
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        TemplateSequenceModel templateSequenceModel = this.sequence;
        if (templateSequenceModel != null) {
            return templateSequenceModel.get(i);
        }
        m28180do();
        return this.data.get(i);
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        TemplateCollectionModel templateCollectionModel = this.collection;
        return templateCollectionModel != null ? templateCollectionModel.iterator() : new s3(this.sequence);
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() throws k52 {
        TemplateSequenceModel templateSequenceModel = this.sequence;
        if (templateSequenceModel != null) {
            return templateSequenceModel.size();
        }
        TemplateCollectionModel templateCollectionModel = this.collection;
        if (templateCollectionModel instanceof TemplateCollectionModelEx) {
            return ((TemplateCollectionModelEx) templateCollectionModel).size();
        }
        m28180do();
        return this.data.size();
    }

    public m(TemplateSequenceModel templateSequenceModel) {
        this.sequence = templateSequenceModel;
    }
}
