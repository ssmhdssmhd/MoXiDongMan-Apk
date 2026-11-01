package android.support.v4;

/* loaded from: classes3.dex */
public class vg2 {

    /* renamed from: do, reason: not valid java name */
    private String f7210do;

    /* renamed from: for, reason: not valid java name */
    private char f7211for;

    /* renamed from: if, reason: not valid java name */
    private int f7212if;

    /* renamed from: new, reason: not valid java name */
    private StringBuffer f7213new;

    public vg2(String str) {
        this(str, ',');
    }

    public vg2(String str, char c) {
        this.f7213new = new StringBuffer();
        this.f7210do = str;
        this.f7212if = -1;
        this.f7211for = c;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m8857do() {
        return this.f7212if != this.f7210do.length();
    }

    /* renamed from: if, reason: not valid java name */
    public String m8858if() {
        if (this.f7212if == this.f7210do.length()) {
            return null;
        }
        int i = this.f7212if + 1;
        this.f7213new.setLength(0);
        boolean z = false;
        boolean z2 = false;
        while (i != this.f7210do.length()) {
            char cCharAt = this.f7210do.charAt(i);
            if (cCharAt != '\"') {
                if (!z && !z2) {
                    if (cCharAt == '\\') {
                        this.f7213new.append(cCharAt);
                        z = true;
                    } else {
                        if (cCharAt == this.f7211for) {
                            break;
                        }
                        this.f7213new.append(cCharAt);
                    }
                }
                i++;
            } else if (!z) {
                z2 = !z2;
            }
            this.f7213new.append(cCharAt);
            z = false;
            i++;
        }
        this.f7212if = i;
        return this.f7213new.toString();
    }
}
