package freemarker.template.utility;

import android.support.v4.k52;
import android.support.v4.w41;
import freemarker.core.b5;
import freemarker.core.m;
import freemarker.template.Creturn;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateScalarModel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: freemarker.template.utility.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrow {

    /* renamed from: freemarker.template.utility.throw$for, reason: invalid class name */
    public static final class Cfor extends Cif<TemplateHashModelEx> implements TemplateHashModelEx {

        /* renamed from: for, reason: not valid java name */
        private m f25246for;

        /* renamed from: if, reason: not valid java name */
        private m f25247if;

        /* renamed from: do, reason: not valid java name */
        private static void m29342do(Set<String> set, Creturn creturn, TemplateHashModelEx templateHashModelEx) throws k52 {
            TemplateModelIterator it = templateHashModelEx.keys().iterator();
            while (it.hasNext()) {
                TemplateScalarModel templateScalarModel = (TemplateScalarModel) it.next();
                if (set.add(templateScalarModel.getAsString())) {
                    creturn.add(templateScalarModel);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        private void m29343for() throws k52 {
            if (this.f25246for == null) {
                Creturn creturn = new Creturn(size(), (ObjectWrapper) null);
                int size = this.f25247if.size();
                for (int i = 0; i < size; i++) {
                    creturn.add(get(((TemplateScalarModel) this.f25247if.get(i)).getAsString()));
                }
                this.f25246for = new m(creturn);
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m29344if() throws k52 {
            if (this.f25247if == null) {
                HashSet hashSet = new HashSet();
                Creturn creturn = new Creturn((ObjectWrapper) null);
                Iterator it = this.f25248do.iterator();
                while (it.hasNext()) {
                    m29342do(hashSet, creturn, (TemplateHashModelEx) it.next());
                }
                this.f25247if = new m(creturn);
            }
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() throws k52 {
            m29344if();
            return this.f25247if;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public int size() throws k52 {
            m29344if();
            return this.f25247if.size();
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() throws k52 {
            m29343for();
            return this.f25246for;
        }

        private Cfor(List<? extends TemplateHashModelEx> list) {
            super(list);
        }
    }

    /* renamed from: freemarker.template.utility.throw$if, reason: invalid class name */
    public static abstract class Cif<T extends TemplateHashModel> implements TemplateHashModel {

        /* renamed from: do, reason: not valid java name */
        public final List<? extends T> f25248do;

        public Cif(List<? extends T> list) {
            this.f25248do = list;
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            for (int size = this.f25248do.size() - 1; size >= 0; size--) {
                TemplateModel templateModel = this.f25248do.get(size).get(str);
                if (templateModel != null) {
                    return templateModel;
                }
            }
            return null;
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() throws k52 {
            Iterator<? extends T> it = this.f25248do.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: freemarker.template.utility.throw$new, reason: invalid class name */
    public static class Cnew extends Cif<TemplateHashModel> {
        public Cnew(List<? extends TemplateHashModel> list) {
            super(list);
        }
    }

    /* renamed from: freemarker.template.utility.throw$try, reason: invalid class name */
    public static class Ctry implements TemplateHashModelEx2.KeyValuePairIterator {

        /* renamed from: do, reason: not valid java name */
        private final TemplateHashModelEx f25249do;

        /* renamed from: if, reason: not valid java name */
        private final TemplateModelIterator f25250if;

        /* renamed from: freemarker.template.utility.throw$try$do, reason: invalid class name */
        public class Cdo implements TemplateHashModelEx2.KeyValuePair {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ TemplateModel f25251do;

            public Cdo(TemplateModel templateModel) {
                this.f25251do = templateModel;
            }

            @Override // freemarker.template.TemplateHashModelEx2.KeyValuePair
            public TemplateModel getKey() throws k52 {
                return this.f25251do;
            }

            @Override // freemarker.template.TemplateHashModelEx2.KeyValuePair
            public TemplateModel getValue() throws k52 {
                return Ctry.this.f25249do.get(((TemplateScalarModel) this.f25251do).getAsString());
            }
        }

        @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
        public boolean hasNext() throws k52 {
            return this.f25250if.hasNext();
        }

        @Override // freemarker.template.TemplateHashModelEx2.KeyValuePairIterator
        public TemplateHashModelEx2.KeyValuePair next() throws k52 {
            TemplateModel next = this.f25250if.next();
            if (next instanceof TemplateScalarModel) {
                return new Cdo(next);
            }
            throw b5.m27870public(next, this.f25249do);
        }

        private Ctry(TemplateHashModelEx templateHashModelEx) throws k52 {
            this.f25249do = templateHashModelEx;
            this.f25250if = templateHashModelEx.keys().iterator();
        }
    }

    private Cthrow() {
    }

    /* renamed from: do, reason: not valid java name */
    public static final TemplateHashModelEx2.KeyValuePairIterator m29339do(TemplateHashModelEx templateHashModelEx) throws k52 {
        return templateHashModelEx instanceof TemplateHashModelEx2 ? ((TemplateHashModelEx2) templateHashModelEx).keyValuePairIterator() : new Ctry(templateHashModelEx);
    }

    /* renamed from: for, reason: not valid java name */
    public static TemplateHashModel m29340for(ObjectWrapper objectWrapper, Object... objArr) throws k52 {
        return m29341if(objectWrapper, Arrays.asList(objArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static TemplateHashModel m29341if(ObjectWrapper objectWrapper, List<?> list) throws k52 {
        w41.check("hashLikeObjects", list);
        ArrayList arrayList = new ArrayList(list.size());
        boolean z = true;
        for (Object obj : list) {
            if (obj != null) {
                TemplateModel templateModelWrap = obj instanceof TemplateModel ? (TemplateModel) obj : objectWrapper.wrap(obj);
                if (!(templateModelWrap instanceof TemplateHashModelEx)) {
                    if (!(templateModelWrap instanceof TemplateHashModel)) {
                        throw new k52("One of the objects of the hash union is not hash-like: " + freemarker.template.utility.Cif.m29271case(templateModelWrap));
                    }
                    z = false;
                }
                arrayList.add((TemplateHashModel) templateModelWrap);
            }
        }
        return arrayList.isEmpty() ? freemarker.template.utility.Cfor.f25204break : arrayList.size() == 1 ? (TemplateHashModel) arrayList.get(0) : z ? new Cfor(arrayList) : new Cnew(arrayList);
    }
}
