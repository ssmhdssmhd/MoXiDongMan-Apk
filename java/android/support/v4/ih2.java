package android.support.v4;

/* loaded from: classes3.dex */
public class ih2 {

    /* renamed from: do, reason: not valid java name */
    private String f2779do;

    /* renamed from: for, reason: not valid java name */
    private char f2780for;

    /* renamed from: if, reason: not valid java name */
    private int f2781if;

    /* renamed from: new, reason: not valid java name */
    private StringBuffer f2782new;

    public ih2(String str) {
        this(str, ',');
    }

    public ih2(String str, char c) {
        this.f2782new = new StringBuffer();
        this.f2779do = str;
        this.f2781if = -1;
        this.f2780for = c;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m3468do() {
        return this.f2781if != this.f2779do.length();
    }

    /* renamed from: if, reason: not valid java name */
    public String m3469if() {
        if (this.f2781if == this.f2779do.length()) {
            return null;
        }
        int i = this.f2781if + 1;
        this.f2782new.setLength(0);
        boolean z = false;
        boolean z2 = false;
        while (i != this.f2779do.length()) {
            char cCharAt = this.f2779do.charAt(i);
            if (cCharAt != '\"') {
                if (!z && !z2) {
                    if (cCharAt == '\\') {
                        this.f2782new.append(cCharAt);
                        z = true;
                    } else {
                        if (cCharAt == this.f2780for) {
                            break;
                        }
                        this.f2782new.append(cCharAt);
                    }
                }
                i++;
            } else if (!z) {
                z2 = !z2;
            }
            this.f2782new.append(cCharAt);
            z = false;
            i++;
        }
        this.f2781if = i;
        return this.f2782new.toString();
    }
}
