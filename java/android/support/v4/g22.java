package android.support.v4;

import java.util.Objects;

/* loaded from: classes2.dex */
public class g22 {

    /* renamed from: do, reason: not valid java name */
    private String f2041do;

    /* renamed from: for, reason: not valid java name */
    private final String f2042for;

    /* renamed from: if, reason: not valid java name */
    private final String f2043if;

    /* renamed from: new, reason: not valid java name */
    private final String f2044new;

    /* renamed from: try, reason: not valid java name */
    private StringBuilder f2045try;

    public g22(CharSequence charSequence) {
        this(charSequence, "", "");
    }

    /* renamed from: if, reason: not valid java name */
    private StringBuilder m2552if() {
        StringBuilder sb = this.f2045try;
        if (sb != null) {
            sb.append(this.f2042for);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f2043if);
            this.f2045try = sb2;
        }
        return this.f2045try;
    }

    /* renamed from: do, reason: not valid java name */
    public g22 m2553do(CharSequence charSequence) {
        m2552if().append(charSequence);
        return this;
    }

    public String toString() {
        if (this.f2045try == null) {
            return this.f2041do;
        }
        if (this.f2044new.equals("")) {
            return this.f2045try.toString();
        }
        int length = this.f2045try.length();
        StringBuilder sb = this.f2045try;
        sb.append(this.f2044new);
        String string = sb.toString();
        this.f2045try.setLength(length);
        return string;
    }

    public g22(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        Objects.requireNonNull(charSequence2, "The prefix must not be null");
        Objects.requireNonNull(charSequence, "The delimiter must not be null");
        Objects.requireNonNull(charSequence3, "The suffix must not be null");
        String string = charSequence2.toString();
        this.f2043if = string;
        this.f2042for = charSequence.toString();
        String string2 = charSequence3.toString();
        this.f2044new = string2;
        this.f2041do = string + string2;
    }
}
