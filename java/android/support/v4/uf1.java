package android.support.v4;

/* loaded from: classes3.dex */
public class uf1 {

    /* renamed from: break, reason: not valid java name */
    private boolean f6868break;

    /* renamed from: case, reason: not valid java name */
    private String f6869case;

    /* renamed from: do, reason: not valid java name */
    private Cif f6870do;

    /* renamed from: else, reason: not valid java name */
    private Cdo f6871else;

    /* renamed from: for, reason: not valid java name */
    private long f6872for;

    /* renamed from: goto, reason: not valid java name */
    private Exception f6873goto;

    /* renamed from: if, reason: not valid java name */
    private long f6874if;

    /* renamed from: new, reason: not valid java name */
    private int f6875new;

    /* renamed from: this, reason: not valid java name */
    private boolean f6876this;

    /* renamed from: try, reason: not valid java name */
    private Cfor f6877try;

    /* renamed from: android.support.v4.uf1$do, reason: invalid class name */
    public enum Cdo {
        SUCCESS,
        WORK_IN_PROGRESS,
        ERROR,
        CANCELLED
    }

    /* renamed from: android.support.v4.uf1$for, reason: invalid class name */
    public enum Cfor {
        NONE,
        ADD_ENTRY,
        REMOVE_ENTRY,
        CALCULATE_CRC,
        EXTRACT_ENTRY,
        MERGE_ZIP_FILES,
        SET_COMMENT
    }

    /* renamed from: android.support.v4.uf1$if, reason: invalid class name */
    public enum Cif {
        READY,
        BUSY
    }

    public uf1() {
        m8406final();
    }

    /* renamed from: final, reason: not valid java name */
    private void m8406final() {
        this.f6877try = Cfor.NONE;
        this.f6870do = Cif.READY;
    }

    /* renamed from: break, reason: not valid java name */
    public long m8407break() {
        return this.f6874if;
    }

    /* renamed from: case, reason: not valid java name */
    public String m8408case() {
        return this.f6869case;
    }

    /* renamed from: catch, reason: not valid java name */
    public long m8409catch() {
        return this.f6872for;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m8410class() {
        return this.f6876this;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m8411const() {
        return this.f6868break;
    }

    /* renamed from: do, reason: not valid java name */
    public void m8412do() {
        this.f6871else = Cdo.SUCCESS;
        this.f6875new = 100;
        m8406final();
    }

    /* renamed from: else, reason: not valid java name */
    public int m8413else() {
        return this.f6875new;
    }

    /* renamed from: for, reason: not valid java name */
    public void m8414for() {
        m8406final();
        this.f6869case = null;
        this.f6874if = 0L;
        this.f6872for = 0L;
        this.f6875new = 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdo m8415goto() {
        return this.f6871else;
    }

    /* renamed from: if, reason: not valid java name */
    public void m8416if(Exception exc) {
        this.f6871else = Cdo.ERROR;
        this.f6873goto = exc;
        m8406final();
    }

    /* renamed from: import, reason: not valid java name */
    public void m8417import(String str) {
        this.f6869case = str;
    }

    /* renamed from: native, reason: not valid java name */
    public void m8418native(boolean z) {
        this.f6868break = z;
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m8419new() {
        return this.f6877try;
    }

    /* renamed from: public, reason: not valid java name */
    public void m8420public(int i) {
        this.f6875new = i;
    }

    /* renamed from: return, reason: not valid java name */
    public void m8421return(Cdo cdo) {
        this.f6871else = cdo;
    }

    /* renamed from: static, reason: not valid java name */
    public void m8422static(Cif cif) {
        this.f6870do = cif;
    }

    /* renamed from: super, reason: not valid java name */
    public void m8423super(boolean z) {
        this.f6876this = z;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m8424switch(long j) {
        this.f6874if = j;
    }

    /* renamed from: this, reason: not valid java name */
    public Cif m8425this() {
        return this.f6870do;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m8426throw(Cfor cfor) {
        this.f6877try = cfor;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m8427throws(long j) throws InterruptedException {
        long j2 = this.f6872for + j;
        this.f6872for = j2;
        long j3 = this.f6874if;
        if (j3 > 0) {
            int i = (int) ((j2 * 100) / j3);
            this.f6875new = i;
            if (i > 100) {
                this.f6875new = 100;
            }
        }
        while (this.f6868break) {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException unused) {
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Exception m8428try() {
        return this.f6873goto;
    }

    /* renamed from: while, reason: not valid java name */
    public void m8429while(Exception exc) {
        this.f6873goto = exc;
    }
}
