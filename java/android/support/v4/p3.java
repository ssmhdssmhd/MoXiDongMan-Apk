package android.support.v4;

import java.util.Arrays;
import okhttp3.HttpUrl;
import org.antlr.v4.runtime.atn.Celse;

/* loaded from: classes3.dex */
public class p3 extends Celse {

    /* renamed from: break, reason: not valid java name */
    public static final /* synthetic */ boolean f4828break = false;

    /* renamed from: goto, reason: not valid java name */
    public final Celse[] f4829goto;

    /* renamed from: this, reason: not valid java name */
    public final int[] f4830this;

    public p3(d02 d02Var) {
        this(new Celse[]{d02Var.f906goto}, new int[]{d02Var.f907this});
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    /* renamed from: break */
    public int mo1094break(int i) {
        return this.f4830this[i];
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    /* renamed from: class, reason: not valid java name */
    public boolean mo5849class() {
        return this.f4830this[0] == Integer.MAX_VALUE;
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p3) || hashCode() != obj.hashCode()) {
            return false;
        }
        p3 p3Var = (p3) obj;
        return Arrays.equals(this.f4830this, p3Var.f4830this) && Arrays.equals(this.f4829goto, p3Var.f4829goto);
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    /* renamed from: this */
    public Celse mo1095this(int i) {
        return this.f4829goto[i];
    }

    public String toString() {
        if (mo5849class()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 0; i < this.f4830this.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            int[] iArr = this.f4830this;
            if (iArr[i] == Integer.MAX_VALUE) {
                sb.append("$");
            } else {
                sb.append(iArr[i]);
                if (this.f4829goto[i] != null) {
                    sb.append(' ');
                    sb.append(this.f4829goto[i].toString());
                } else {
                    sb.append("null");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    /* renamed from: while */
    public int mo1096while() {
        return this.f4830this.length;
    }

    public p3(Celse[] celseArr, int[] iArr) {
        super(Celse.m31876for(celseArr, iArr));
        this.f4829goto = celseArr;
        this.f4830this = iArr;
    }
}
