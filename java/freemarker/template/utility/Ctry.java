package freemarker.template.utility;

import android.support.v4.k52;
import freemarker.core.d0;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* renamed from: freemarker.template.utility.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final Class f25253do = Object.class;

    /* renamed from: do, reason: not valid java name */
    public static Object m29346do(TemplateModel templateModel) throws k52 {
        return m29350try(templateModel, true);
    }

    /* renamed from: for, reason: not valid java name */
    public static Object m29347for(TemplateModel templateModel) throws k52 {
        return m29350try(templateModel, false);
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static Object m29348if(TemplateModel templateModel) throws k52 {
        return m29350try(templateModel, true);
    }

    /* renamed from: new, reason: not valid java name */
    private static Object m29349new(TemplateModel templateModel, TemplateModel templateModel2, boolean z) throws k52 {
        if (templateModel instanceof AdapterTemplateModel) {
            return ((AdapterTemplateModel) templateModel).getAdaptedObject(f25253do);
        }
        if (templateModel instanceof WrapperTemplateModel) {
            return ((WrapperTemplateModel) templateModel).getWrappedObject();
        }
        if (templateModel == templateModel2) {
            return null;
        }
        if (templateModel instanceof TemplateScalarModel) {
            return ((TemplateScalarModel) templateModel).getAsString();
        }
        if (templateModel instanceof TemplateNumberModel) {
            return ((TemplateNumberModel) templateModel).getAsNumber();
        }
        if (templateModel instanceof TemplateDateModel) {
            return ((TemplateDateModel) templateModel).getAsDate();
        }
        if (templateModel instanceof TemplateBooleanModel) {
            return Boolean.valueOf(((TemplateBooleanModel) templateModel).getAsBoolean());
        }
        if (templateModel instanceof TemplateSequenceModel) {
            TemplateSequenceModel templateSequenceModel = (TemplateSequenceModel) templateModel;
            int size = templateSequenceModel.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(m29349new(templateSequenceModel.get(i), templateModel2, z));
            }
            return arrayList;
        }
        if (templateModel instanceof TemplateCollectionModel) {
            ArrayList arrayList2 = new ArrayList();
            TemplateModelIterator it = ((TemplateCollectionModel) templateModel).iterator();
            while (it.hasNext()) {
                arrayList2.add(m29349new(it.next(), templateModel2, z));
            }
            return arrayList2;
        }
        if (!(templateModel instanceof TemplateHashModelEx)) {
            if (z) {
                return templateModel;
            }
            throw new k52("Cannot deep-unwrap model of type " + templateModel.getClass().getName());
        }
        TemplateHashModelEx templateHashModelEx = (TemplateHashModelEx) templateModel;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (templateModel instanceof TemplateHashModelEx2) {
            TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator = ((TemplateHashModelEx2) templateModel).keyValuePairIterator();
            while (keyValuePairIterator.hasNext()) {
                TemplateHashModelEx2.KeyValuePair next = keyValuePairIterator.next();
                linkedHashMap.put(m29349new(next.getKey(), templateModel2, z), m29349new(next.getValue(), templateModel2, z));
            }
        } else {
            TemplateModelIterator it2 = templateHashModelEx.keys().iterator();
            while (it2.hasNext()) {
                String str = (String) m29349new(it2.next(), templateModel2, z);
                linkedHashMap.put(str, m29349new(templateHashModelEx.get(str), templateModel2, z));
            }
        }
        return linkedHashMap;
    }

    /* renamed from: try, reason: not valid java name */
    private static Object m29350try(TemplateModel templateModel, boolean z) throws k52 {
        ObjectWrapper objectWrapperM28258implements;
        d0 d0VarW1 = d0.w1();
        TemplateModel templateModelWrap = null;
        if (d0VarW1 != null && (objectWrapperM28258implements = d0VarW1.m28258implements()) != null) {
            templateModelWrap = objectWrapperM28258implements.wrap(null);
        }
        return m29349new(templateModel, templateModelWrap, z);
    }
}
