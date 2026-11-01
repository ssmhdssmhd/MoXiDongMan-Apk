package android.support.v4;

/* loaded from: classes3.dex */
public class pj2 extends qk2 {

    /* renamed from: if, reason: not valid java name */
    private int f5033if;

    /* renamed from: for, reason: not valid java name */
    private long f5032for = -1;

    /* renamed from: new, reason: not valid java name */
    private long f5034new = -1;

    /* renamed from: try, reason: not valid java name */
    private long f5035try = -1;

    /* renamed from: case, reason: not valid java name */
    private int f5031case = -1;

    /* renamed from: break, reason: not valid java name */
    public void m6085break(long j) {
        this.f5035try = j;
    }

    /* renamed from: case, reason: not valid java name */
    public int m6086case() {
        return this.f5033if;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m6087catch(int i) {
        this.f5033if = i;
    }

    /* renamed from: class, reason: not valid java name */
    public void m6088class(long j) {
        this.f5034new = j;
    }

    /* renamed from: else, reason: not valid java name */
    public long m6089else() {
        return this.f5034new;
    }

    /* renamed from: for, reason: not valid java name */
    public long m6090for() {
        return this.f5032for;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m6091goto(long j) {
        this.f5032for = j;
    }

    /* renamed from: new, reason: not valid java name */
    public int m6092new() {
        return this.f5031case;
    }

    /* renamed from: this, reason: not valid java name */
    public void m6093this(int i) {
        this.f5031case = i;
    }

    /* renamed from: try, reason: not valid java name */
    public long m6094try() {
        return this.f5035try;
    }
}
