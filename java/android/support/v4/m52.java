package android.support.v4;

import java.io.FileNotFoundException;

/* loaded from: classes3.dex */
public final class m52 extends FileNotFoundException {
    private final Object customLookupCondition;
    private final String templateName;

    public m52(String str, Object obj, String str2) {
        super(str2);
        this.templateName = str;
        this.customLookupCondition = obj;
    }

    public Object getCustomLookupCondition() {
        return this.customLookupCondition;
    }

    public String getTemplateName() {
        return this.templateName;
    }
}
