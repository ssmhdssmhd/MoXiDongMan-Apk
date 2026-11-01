package android.support.v4;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class rk2 implements Cloneable {

    /* renamed from: break, reason: not valid java name */
    private File f5849break;

    /* renamed from: catch, reason: not valid java name */
    private boolean f5851catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f5852class;

    /* renamed from: const, reason: not valid java name */
    private long f5853const;

    /* renamed from: final, reason: not valid java name */
    private long f5856final;

    /* renamed from: goto, reason: not valid java name */
    private boolean f5858goto;

    /* renamed from: do, reason: not valid java name */
    private List<mu0> f5854do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private List<rw> f5859if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private d3 f5857for = new d3();

    /* renamed from: new, reason: not valid java name */
    private wf f5860new = new wf();

    /* renamed from: try, reason: not valid java name */
    private w70 f5862try = new w70();

    /* renamed from: case, reason: not valid java name */
    private nj2 f5850case = new nj2();

    /* renamed from: else, reason: not valid java name */
    private oj2 f5855else = new oj2();

    /* renamed from: this, reason: not valid java name */
    private long f5861this = -1;

    /* renamed from: break, reason: not valid java name */
    public oj2 m7025break() {
        return this.f5855else;
    }

    /* renamed from: case, reason: not valid java name */
    public List<mu0> m7026case() {
        return this.f5854do;
    }

    /* renamed from: catch, reason: not valid java name */
    public File m7027catch() {
        return this.f5849break;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m7028class() {
        return this.f5852class;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m7029const() {
        return this.f5858goto;
    }

    /* renamed from: default, reason: not valid java name */
    public void m7030default(nj2 nj2Var) {
        this.f5850case = nj2Var;
    }

    /* renamed from: do, reason: not valid java name */
    public d3 m7031do() {
        return this.f5857for;
    }

    /* renamed from: else, reason: not valid java name */
    public long m7032else() {
        return this.f5861this;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m7033extends(oj2 oj2Var) {
        this.f5855else = oj2Var;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m7034final() {
        return this.f5851catch;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m7035finally(boolean z) {
        this.f5851catch = z;
    }

    /* renamed from: for, reason: not valid java name */
    public List<rw> m7036for() {
        return this.f5859if;
    }

    /* renamed from: goto, reason: not valid java name */
    public long m7037goto() {
        return this.f5853const;
    }

    /* renamed from: if, reason: not valid java name */
    public wf m7038if() {
        return this.f5860new;
    }

    /* renamed from: import, reason: not valid java name */
    public void m7039import(long j) {
        this.f5856final = j;
    }

    /* renamed from: native, reason: not valid java name */
    public void m7040native(w70 w70Var) {
        this.f5862try = w70Var;
    }

    /* renamed from: new, reason: not valid java name */
    public long m7041new() {
        return this.f5856final;
    }

    /* renamed from: package, reason: not valid java name */
    public void m7042package(File file) {
        this.f5849break = file;
    }

    /* renamed from: public, reason: not valid java name */
    public void m7043public(List<mu0> list) {
        this.f5854do = list;
    }

    /* renamed from: return, reason: not valid java name */
    public void m7044return(boolean z) {
        this.f5852class = z;
    }

    /* renamed from: static, reason: not valid java name */
    public void m7045static(boolean z) {
        this.f5858goto = z;
    }

    /* renamed from: super, reason: not valid java name */
    public void m7046super(d3 d3Var) {
        this.f5857for = d3Var;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m7047switch(long j) {
        this.f5861this = j;
    }

    /* renamed from: this, reason: not valid java name */
    public nj2 m7048this() {
        return this.f5850case;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m7049throw(wf wfVar) {
        this.f5860new = wfVar;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m7050throws(long j) {
        this.f5853const = j;
    }

    /* renamed from: try, reason: not valid java name */
    public w70 m7051try() {
        return this.f5862try;
    }

    /* renamed from: while, reason: not valid java name */
    public void m7052while(List<rw> list) {
        this.f5859if = list;
    }
}
