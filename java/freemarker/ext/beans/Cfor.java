package freemarker.ext.beans;

import android.support.v4.k52;
import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateSequenceModel;
import java.lang.reflect.Array;

/* renamed from: freemarker.ext.beans.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor extends Cnew implements TemplateCollectionModel, TemplateSequenceModel {

    /* renamed from: goto, reason: not valid java name */
    public static final ModelFactory f24550goto = new Cdo();

    /* renamed from: else, reason: not valid java name */
    private final int f24551else;

    /* renamed from: freemarker.ext.beans.for$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cfor(obj, (Ctry) objectWrapper);
        }
    }

    public Cfor(Object obj, Ctry ctry) {
        super(obj, ctry);
        if (obj.getClass().isArray()) {
            this.f24551else = Array.getLength(obj);
            return;
        }
        throw new IllegalArgumentException("Object is not an array, it's " + obj.getClass().getName());
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        try {
            return m28669this(Array.get(this.f24599do, i));
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    @Override // freemarker.ext.beans.Cnew, freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return this.f24551else == 0;
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() {
        return new Cif(this, null);
    }

    @Override // freemarker.ext.beans.Cnew, freemarker.template.TemplateHashModelEx
    public int size() {
        return this.f24551else;
    }

    /* renamed from: freemarker.ext.beans.for$if, reason: invalid class name */
    public class Cif implements TemplateSequenceModel, TemplateModelIterator {

        /* renamed from: do, reason: not valid java name */
        private int f24552do;

        private Cif() {
            this.f24552do = 0;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            return Cfor.this.get(i);
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() {
            return this.f24552do < Cfor.this.f24551else;
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            if (this.f24552do >= Cfor.this.f24551else) {
                return null;
            }
            int i = this.f24552do;
            this.f24552do = i + 1;
            return get(i);
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() {
            return Cfor.this.size();
        }

        public /* synthetic */ Cif(Cfor cfor, Cdo cdo) {
            this();
        }
    }
}
