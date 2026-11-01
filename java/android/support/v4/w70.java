package android.support.v4;

/* loaded from: classes3.dex */
public class w70 extends qk2 {

    /* renamed from: case, reason: not valid java name */
    private int f7404case;

    /* renamed from: else, reason: not valid java name */
    private long f7405else;

    /* renamed from: for, reason: not valid java name */
    private int f7406for;

    /* renamed from: goto, reason: not valid java name */
    private String f7407goto = "";

    /* renamed from: if, reason: not valid java name */
    private int f7408if;

    /* renamed from: new, reason: not valid java name */
    private int f7409new;

    /* renamed from: try, reason: not valid java name */
    private int f7410try;

    public w70() {
        m6616if(ej0.END_OF_CENTRAL_DIRECTORY);
    }

    /* renamed from: break, reason: not valid java name */
    public void m9059break(String str) {
        if (str != null) {
            this.f7407goto = str;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public long m9060case() {
        return this.f7405else;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m9061catch(int i) {
        this.f7408if = i;
    }

    /* renamed from: class, reason: not valid java name */
    public void m9062class(int i) {
        this.f7406for = i;
    }

    /* renamed from: const, reason: not valid java name */
    public void m9063const(long j) {
        this.f7405else = j;
    }

    /* renamed from: else, reason: not valid java name */
    public int m9064else() {
        return this.f7404case;
    }

    /* renamed from: final, reason: not valid java name */
    public void m9065final(int i) {
        this.f7404case = i;
    }

    /* renamed from: for, reason: not valid java name */
    public String m9066for() {
        return this.f7407goto;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m9067goto() {
        return this.f7410try;
    }

    /* renamed from: new, reason: not valid java name */
    public int m9068new() {
        return this.f7408if;
    }

    /* renamed from: super, reason: not valid java name */
    public void m9069super(int i) {
        this.f7410try = i;
    }

    /* renamed from: this, reason: not valid java name */
    public int m9070this() {
        return this.f7409new;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m9071throw(int i) {
        this.f7409new = i;
    }

    /* renamed from: try, reason: not valid java name */
    public int m9072try() {
        return this.f7406for;
    }
}
