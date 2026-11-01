package freemarker.template;

import android.support.v4.k52;
import freemarker.ext.beans.Ctry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* renamed from: freemarker.template.return, reason: invalid class name */
/* loaded from: classes3.dex */
public class Creturn extends Cthrows implements TemplateSequenceModel, Serializable {
    public final List list;
    private List unwrappedList;

    /* renamed from: freemarker.template.return$if, reason: invalid class name */
    public class Cif extends Creturn {
        private Cif() {
        }

        @Override // freemarker.template.Creturn
        public void add(Object obj) {
            synchronized (Creturn.this) {
                Creturn.this.add(obj);
            }
        }

        @Override // freemarker.template.Creturn, freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            TemplateModel templateModel;
            synchronized (Creturn.this) {
                templateModel = Creturn.this.get(i);
            }
            return templateModel;
        }

        @Override // freemarker.template.Creturn, freemarker.template.TemplateSequenceModel
        public int size() {
            int size;
            synchronized (Creturn.this) {
                size = Creturn.this.size();
            }
            return size;
        }

        @Override // freemarker.template.Creturn
        public List toList() throws k52 {
            List list;
            synchronized (Creturn.this) {
                list = Creturn.this.toList();
            }
            return list;
        }
    }

    @Deprecated
    public Creturn() {
        this((ObjectWrapper) null);
    }

    public void add(Object obj) {
        this.list.add(obj);
        this.unwrappedList = null;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        try {
            Object obj = this.list.get(i);
            if (obj instanceof TemplateModel) {
                return (TemplateModel) obj;
            }
            TemplateModel templateModelWrap = wrap(obj);
            this.list.set(i, templateModelWrap);
            return templateModelWrap;
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() {
        return this.list.size();
    }

    public Creturn synchronizedWrapper() {
        return new Cif();
    }

    @Deprecated
    public List toList() throws k52 {
        if (this.unwrappedList == null) {
            Class<?> cls = this.list.getClass();
            try {
                List list = (List) cls.newInstance();
                Ctry ctryM28685super = Ctry.m28685super();
                for (int i = 0; i < this.list.size(); i++) {
                    Object objUnwrap = this.list.get(i);
                    if (objUnwrap instanceof TemplateModel) {
                        objUnwrap = ctryM28685super.unwrap((TemplateModel) objUnwrap);
                    }
                    list.add(objUnwrap);
                }
                this.unwrappedList = list;
            } catch (Exception e) {
                throw new k52("Error instantiating an object of type " + cls.getName(), e);
            }
        }
        return this.unwrappedList;
    }

    public String toString() {
        return this.list.toString();
    }

    @Deprecated
    public Creturn(int i) {
        this.list = new ArrayList(i);
    }

    @Deprecated
    public void add(boolean z) {
        add(z ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE);
    }

    @Deprecated
    public Creturn(Collection collection) {
        this(collection, (ObjectWrapper) null);
    }

    public Creturn(TemplateCollectionModel templateCollectionModel) throws k52 {
        ArrayList arrayList = new ArrayList();
        TemplateModelIterator it = templateCollectionModel.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        arrayList.trimToSize();
        this.list = arrayList;
    }

    public Creturn(ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.list = new ArrayList();
    }

    public Creturn(int i, ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.list = new ArrayList(i);
    }

    public Creturn(Collection collection, ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.list = new ArrayList(collection);
    }
}
