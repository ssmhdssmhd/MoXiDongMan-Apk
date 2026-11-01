package freemarker.template;

import android.support.v4.k52;

/* loaded from: classes3.dex */
public interface TemplateHashModelEx2 extends TemplateHashModelEx {

    public interface KeyValuePair {
        TemplateModel getKey() throws k52;

        TemplateModel getValue() throws k52;
    }

    public interface KeyValuePairIterator {
        boolean hasNext() throws k52;

        KeyValuePair next() throws k52;
    }

    KeyValuePairIterator keyValuePairIterator() throws k52;
}
