package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;

/* renamed from: freemarker.core.implements, reason: invalid class name */
/* loaded from: classes.dex */
class Cimplements {

    /* renamed from: freemarker.core.implements$do, reason: invalid class name */
    public static class Cdo extends Cthrows {
        @Override // freemarker.core.Cthrows
        public TemplateModel r(TemplateHashModelEx templateHashModelEx, d0 d0Var) throws k52, b1 {
            TemplateCollectionModel templateCollectionModelKeys = templateHashModelEx.keys();
            if (templateCollectionModelKeys != null) {
                return templateCollectionModelKeys instanceof TemplateSequenceModel ? templateCollectionModelKeys : new m(templateCollectionModelKeys);
            }
            throw s("keys", templateHashModelEx, d0Var);
        }
    }

    /* renamed from: freemarker.core.implements$if, reason: invalid class name */
    public static class Cif extends Cthrows {
        @Override // freemarker.core.Cthrows
        public TemplateModel r(TemplateHashModelEx templateHashModelEx, d0 d0Var) throws k52, b1 {
            TemplateCollectionModel templateCollectionModelValues = templateHashModelEx.values();
            if (templateCollectionModelValues != null) {
                return templateCollectionModelValues instanceof TemplateSequenceModel ? templateCollectionModelValues : new m(templateCollectionModelValues);
            }
            throw s("values", templateHashModelEx, d0Var);
        }
    }

    private Cimplements() {
    }
}
