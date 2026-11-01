package android.support.v4;

import freemarker.template.utility.Csuper;
import java.io.IOException;

/* loaded from: classes3.dex */
public class fx0 extends IOException {
    private final String malformednessDescription;
    private final String templateName;

    public fx0(String str, String str2) {
        super("Malformed template name, " + Csuper.m29330synchronized(str) + ": " + str2);
        this.templateName = str;
        this.malformednessDescription = str2;
    }

    public String getMalformednessDescription() {
        return this.malformednessDescription;
    }

    public String getTemplateName() {
        return this.templateName;
    }
}
