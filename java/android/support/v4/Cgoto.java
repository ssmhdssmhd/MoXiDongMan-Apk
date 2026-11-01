package android.support.v4;

/* renamed from: android.support.v4.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends qk2 {

    /* renamed from: case, reason: not valid java name */
    private hq f2182case;

    /* renamed from: for, reason: not valid java name */
    private x0 f2183for;

    /* renamed from: if, reason: not valid java name */
    private int f2184if;

    /* renamed from: new, reason: not valid java name */
    private String f2185new;

    /* renamed from: try, reason: not valid java name */
    private w0 f2186try;

    public Cgoto() {
        m6616if(ej0.AES_EXTRA_DATA_RECORD);
        this.f2184if = 7;
        this.f2183for = x0.TWO;
        this.f2185new = "AE";
        this.f2186try = w0.KEY_STRENGTH_256;
        this.f2182case = hq.DEFLATE;
    }

    /* renamed from: break, reason: not valid java name */
    public void m2753break(hq hqVar) {
        this.f2182case = hqVar;
    }

    /* renamed from: case, reason: not valid java name */
    public int m2754case() {
        return this.f2184if;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m2755catch(int i) {
        this.f2184if = i;
    }

    /* renamed from: class, reason: not valid java name */
    public void m2756class(String str) {
        this.f2185new = str;
    }

    /* renamed from: else, reason: not valid java name */
    public String m2757else() {
        return this.f2185new;
    }

    /* renamed from: for, reason: not valid java name */
    public w0 m2758for() {
        return this.f2186try;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m2759goto(w0 w0Var) {
        this.f2186try = w0Var;
    }

    /* renamed from: new, reason: not valid java name */
    public x0 m2760new() {
        return this.f2183for;
    }

    /* renamed from: this, reason: not valid java name */
    public void m2761this(x0 x0Var) {
        this.f2183for = x0Var;
    }

    /* renamed from: try, reason: not valid java name */
    public hq m2762try() {
        return this.f2182case;
    }
}
