package android.support.v4;

import java.io.Serializable;

/* loaded from: classes.dex */
public class hc implements Serializable, Comparable {
    private static final long serialVersionUID = 1;
    private final int line;
    private final String templateName;

    public hc(String str, int i) {
        this.templateName = str;
        this.line = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        hc hcVar = (hc) obj;
        int iCompareTo = this.templateName.compareTo(hcVar.templateName);
        return iCompareTo == 0 ? this.line - hcVar.line : iCompareTo;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hc)) {
            return false;
        }
        hc hcVar = (hc) obj;
        return hcVar.templateName.equals(this.templateName) && hcVar.line == this.line;
    }

    public int getLine() {
        return this.line;
    }

    public String getLocationString() {
        return this.templateName + ":" + this.line;
    }

    public String getTemplateName() {
        return this.templateName;
    }

    public int hashCode() {
        return this.templateName.hashCode() + (this.line * 31);
    }
}
