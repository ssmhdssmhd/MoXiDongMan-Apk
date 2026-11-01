package android.support.v4;

/* loaded from: classes3.dex */
public class sk2 {

    /* renamed from: break, reason: not valid java name */
    private long f6180break;

    /* renamed from: case, reason: not valid java name */
    private boolean f6181case;

    /* renamed from: catch, reason: not valid java name */
    private String f6182catch;

    /* renamed from: class, reason: not valid java name */
    private String f6183class;

    /* renamed from: const, reason: not valid java name */
    private long f6184const;

    /* renamed from: do, reason: not valid java name */
    private hq f6185do;

    /* renamed from: else, reason: not valid java name */
    private w0 f6186else;

    /* renamed from: final, reason: not valid java name */
    private long f6187final;

    /* renamed from: for, reason: not valid java name */
    private boolean f6188for;

    /* renamed from: goto, reason: not valid java name */
    private x0 f6189goto;

    /* renamed from: if, reason: not valid java name */
    private fq f6190if;

    /* renamed from: new, reason: not valid java name */
    private t70 f6191new;

    /* renamed from: super, reason: not valid java name */
    private boolean f6192super;

    /* renamed from: this, reason: not valid java name */
    private boolean f6193this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f6194throw;

    /* renamed from: try, reason: not valid java name */
    private boolean f6195try;

    public sk2() {
        this.f6185do = hq.DEFLATE;
        this.f6190if = fq.NORMAL;
        this.f6188for = false;
        this.f6191new = t70.NONE;
        this.f6195try = true;
        this.f6181case = true;
        this.f6186else = w0.KEY_STRENGTH_256;
        this.f6189goto = x0.TWO;
        this.f6193this = true;
        this.f6184const = System.currentTimeMillis();
        this.f6187final = -1L;
        this.f6192super = true;
        this.f6194throw = true;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m7473abstract(boolean z) {
        this.f6195try = z;
    }

    /* renamed from: break, reason: not valid java name */
    public long m7474break() {
        return this.f6184const;
    }

    /* renamed from: case, reason: not valid java name */
    public t70 m7475case() {
        return this.f6191new;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m7476catch() {
        return this.f6188for;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m7477class() {
        return this.f6193this;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m7478const() {
        return this.f6194throw;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m7479continue(boolean z) {
        this.f6181case = z;
    }

    /* renamed from: default, reason: not valid java name */
    public void m7480default(long j) {
        this.f6187final = j;
    }

    /* renamed from: do, reason: not valid java name */
    public w0 m7481do() {
        return this.f6186else;
    }

    /* renamed from: else, reason: not valid java name */
    public long m7482else() {
        return this.f6180break;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m7483extends(String str) {
        this.f6183class = str;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m7484final() {
        return this.f6195try;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m7485finally(boolean z) {
        this.f6193this = z;
    }

    /* renamed from: for, reason: not valid java name */
    public fq m7486for() {
        return this.f6190if;
    }

    /* renamed from: goto, reason: not valid java name */
    public long m7487goto() {
        return this.f6187final;
    }

    /* renamed from: if, reason: not valid java name */
    public x0 m7488if() {
        return this.f6189goto;
    }

    /* renamed from: import, reason: not valid java name */
    public void m7489import(x0 x0Var) {
        this.f6189goto = x0Var;
    }

    /* renamed from: native, reason: not valid java name */
    public void m7490native(fq fqVar) {
        this.f6190if = fqVar;
    }

    /* renamed from: new, reason: not valid java name */
    public hq m7491new() {
        return this.f6185do;
    }

    /* renamed from: package, reason: not valid java name */
    public void m7492package(long j) {
        if (j <= 0) {
            return;
        }
        this.f6184const = j;
    }

    /* renamed from: private, reason: not valid java name */
    public void m7493private(boolean z) {
        this.f6194throw = z;
    }

    /* renamed from: public, reason: not valid java name */
    public void m7494public(hq hqVar) {
        this.f6185do = hqVar;
    }

    /* renamed from: return, reason: not valid java name */
    public void m7495return(String str) {
        this.f6182catch = str;
    }

    /* renamed from: static, reason: not valid java name */
    public void m7496static(boolean z) {
        this.f6188for = z;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m7497strictfp(boolean z) {
        this.f6192super = z;
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m7498super() {
        return this.f6181case;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m7499switch(t70 t70Var) {
        this.f6191new = t70Var;
    }

    /* renamed from: this, reason: not valid java name */
    public String m7500this() {
        return this.f6183class;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m7501throw() {
        return this.f6192super;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m7502throws(long j) {
        this.f6180break = j;
    }

    /* renamed from: try, reason: not valid java name */
    public String m7503try() {
        return this.f6182catch;
    }

    /* renamed from: while, reason: not valid java name */
    public void m7504while(w0 w0Var) {
        this.f6186else = w0Var;
    }

    public sk2(sk2 sk2Var) {
        this.f6185do = hq.DEFLATE;
        this.f6190if = fq.NORMAL;
        this.f6188for = false;
        this.f6191new = t70.NONE;
        this.f6195try = true;
        this.f6181case = true;
        this.f6186else = w0.KEY_STRENGTH_256;
        this.f6189goto = x0.TWO;
        this.f6193this = true;
        this.f6184const = System.currentTimeMillis();
        this.f6187final = -1L;
        this.f6192super = true;
        this.f6194throw = true;
        this.f6185do = sk2Var.m7491new();
        this.f6190if = sk2Var.m7486for();
        this.f6188for = sk2Var.m7476catch();
        this.f6191new = sk2Var.m7475case();
        this.f6195try = sk2Var.m7484final();
        this.f6181case = sk2Var.m7498super();
        this.f6186else = sk2Var.m7481do();
        this.f6189goto = sk2Var.m7488if();
        this.f6193this = sk2Var.m7477class();
        this.f6180break = sk2Var.m7482else();
        this.f6182catch = sk2Var.m7503try();
        this.f6183class = sk2Var.m7500this();
        this.f6184const = sk2Var.m7474break();
        this.f6187final = sk2Var.m7487goto();
        this.f6192super = sk2Var.m7501throw();
        this.f6194throw = sk2Var.m7478const();
    }
}
