package android.support.v4;

import java.util.List;

/* renamed from: android.support.v4.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctransient extends qk2 {

    /* renamed from: break, reason: not valid java name */
    private int f6650break;

    /* renamed from: catch, reason: not valid java name */
    private int f6652catch;

    /* renamed from: class, reason: not valid java name */
    private String f6653class;

    /* renamed from: const, reason: not valid java name */
    private boolean f6654const;

    /* renamed from: else, reason: not valid java name */
    private byte[] f6655else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f6657for;

    /* renamed from: if, reason: not valid java name */
    private int f6659if;

    /* renamed from: import, reason: not valid java name */
    private boolean f6660import;

    /* renamed from: native, reason: not valid java name */
    private List<aa0> f6661native;

    /* renamed from: new, reason: not valid java name */
    private hq f6662new;

    /* renamed from: public, reason: not valid java name */
    private boolean f6663public;

    /* renamed from: super, reason: not valid java name */
    private boolean f6664super;

    /* renamed from: throw, reason: not valid java name */
    private pj2 f6666throw;

    /* renamed from: try, reason: not valid java name */
    private long f6667try;

    /* renamed from: while, reason: not valid java name */
    private Cgoto f6668while;

    /* renamed from: case, reason: not valid java name */
    private long f6651case = 0;

    /* renamed from: goto, reason: not valid java name */
    private long f6658goto = 0;

    /* renamed from: this, reason: not valid java name */
    private long f6665this = 0;

    /* renamed from: final, reason: not valid java name */
    private t70 f6656final = t70.NONE;

    public void a(pj2 pj2Var) {
        this.f6666throw = pj2Var;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m8066abstract(t70 t70Var) {
        this.f6656final = t70Var;
    }

    /* renamed from: break, reason: not valid java name */
    public int m8067break() {
        return this.f6652catch;
    }

    /* renamed from: case, reason: not valid java name */
    public long m8068case() {
        return this.f6651case;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m8069catch() {
        return this.f6653class;
    }

    /* renamed from: class, reason: not valid java name */
    public int m8070class() {
        return this.f6650break;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m8071const() {
        return this.f6657for;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m8072continue(List<aa0> list) {
        this.f6661native = list;
    }

    /* renamed from: default, reason: not valid java name */
    public void m8073default(long j) {
        this.f6651case = j;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m8074else() {
        return this.f6655else;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m8075extends(byte[] bArr) {
        this.f6655else = bArr;
    }

    /* renamed from: final, reason: not valid java name */
    public long m8076final() {
        return this.f6667try;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m8077finally(boolean z) {
        this.f6664super = z;
    }

    /* renamed from: for, reason: not valid java name */
    public Cgoto m8078for() {
        return this.f6668while;
    }

    /* renamed from: goto, reason: not valid java name */
    public t70 m8079goto() {
        return this.f6656final;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m8080implements(long j) {
        this.f6667try = j;
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m8081import() {
        return this.f6664super;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m8082instanceof(long j) {
        this.f6665this = j;
    }

    /* renamed from: interface, reason: not valid java name */
    public void m8083interface(int i) {
        this.f6650break = i;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m8084native() {
        return this.f6663public;
    }

    /* renamed from: new, reason: not valid java name */
    public long m8085new() {
        return this.f6658goto;
    }

    /* renamed from: package, reason: not valid java name */
    public void m8086package(boolean z) {
        this.f6663public = z;
    }

    /* renamed from: private, reason: not valid java name */
    public void m8087private(boolean z) {
        this.f6654const = z;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m8088protected(boolean z) {
        this.f6660import = z;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m8089public() {
        return this.f6654const;
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m8090return() {
        return this.f6660import;
    }

    /* renamed from: static, reason: not valid java name */
    public void m8091static(Cgoto cgoto) {
        this.f6668while = cgoto;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m8092strictfp(int i) {
        this.f6652catch = i;
    }

    /* renamed from: super, reason: not valid java name */
    public long m8093super() {
        return this.f6665this;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m8094switch(long j) {
        this.f6658goto = j;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m8095synchronized(int i) {
        this.f6659if = i;
    }

    /* renamed from: this, reason: not valid java name */
    public List<aa0> m8096this() {
        return this.f6661native;
    }

    /* renamed from: throw, reason: not valid java name */
    public int m8097throw() {
        return this.f6659if;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m8098throws(hq hqVar) {
        this.f6662new = hqVar;
    }

    /* renamed from: transient, reason: not valid java name */
    public void m8099transient(byte[] bArr) {
        this.f6657for = bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public hq m8100try() {
        return this.f6662new;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m8101volatile(String str) {
        this.f6653class = str;
    }

    /* renamed from: while, reason: not valid java name */
    public pj2 m8102while() {
        return this.f6666throw;
    }
}
