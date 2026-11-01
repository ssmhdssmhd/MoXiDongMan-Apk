package android.support.v4;

import java.io.UnsupportedEncodingException;

/* loaded from: classes3.dex */
public class sg {

    /* renamed from: new, reason: not valid java name */
    private static final String f6142new = "ISO-8859-1";

    /* renamed from: do, reason: not valid java name */
    private String f6143do;

    /* renamed from: for, reason: not valid java name */
    private String f6144for;

    /* renamed from: if, reason: not valid java name */
    private String f6145if;

    public sg(String str, String str2, String str3) {
        this.f6143do = str;
        this.f6145if = str2;
        this.f6144for = str3;
    }

    public sg(byte[] bArr) {
        try {
            String str = new String(bArr, "ISO-8859-1");
            this.f6143do = str.substring(0, 2);
            this.f6145if = str.substring(2, str.length() - 5);
            this.f6144for = str.substring(str.length() - 5);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e.toString());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public String m7395do() {
        return this.f6143do;
    }

    /* renamed from: for, reason: not valid java name */
    public String m7396for() {
        return this.f6145if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m7397if() {
        try {
            return (this.f6143do + this.f6145if + this.f6144for).getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e.toString());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public String m7398new() {
        return this.f6144for;
    }
}
