package freemarker.template;

import android.support.v4.k52;
import freemarker.template.TemplateHashModelEx2;
import java.util.Iterator;
import java.util.Map;

/* renamed from: freemarker.template.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow implements TemplateHashModelEx2.KeyValuePairIterator {

    /* renamed from: do, reason: not valid java name */
    private final Iterator<Map.Entry<?, ?>> f25120do;

    /* renamed from: if, reason: not valid java name */
    private final ObjectWrapper f25121if;

    /* renamed from: freemarker.template.throw$do, reason: invalid class name */
    public class Cdo implements TemplateHashModelEx2.KeyValuePair {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Map.Entry f25122do;

        public Cdo(Map.Entry entry) {
            this.f25122do = entry;
        }

        @Override // freemarker.template.TemplateHashModelEx2.KeyValuePair
        public TemplateModel getKey() throws k52 {
            return Cthrow.this.m29229if(this.f25122do.getKey());
        }

        @Override // freemarker.template.TemplateHashModelEx2.KeyValuePair
        public TemplateModel getValue() throws k52 {
            return Cthrow.this.m29229if(this.f25122do.getValue());
        }
    }

    public <K, V> Cthrow(Map<?, ?> map, ObjectWrapper objectWrapper) {
        this.f25120do = map.entrySet().iterator();
        this.f25121if = objectWrapper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public TemplateModel m29229if(Object obj) throws k52 {
        return obj instanceof TemplateModel ? (TemplateModel) obj : this.f25121if.wrap(obj);
    }

    @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
    public boolean hasNext() {
        return this.f25120do.hasNext();
    }

    @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
    public TemplateHashModelEx2.KeyValuePair next() {
        return new Cdo(this.f25120do.next());
    }
}
