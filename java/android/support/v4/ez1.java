package android.support.v4;

import freemarker.template.TemplateScalarModel;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class ez1 implements TemplateScalarModel, Serializable {
    private final String value;

    public ez1(String str) {
        this.value = str;
    }

    public static ez1 newInstanceOrNull(String str) {
        if (str != null) {
            return new ez1(str);
        }
        return null;
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        String str = this.value;
        return str == null ? "" : str;
    }

    public String toString() {
        return this.value;
    }
}
