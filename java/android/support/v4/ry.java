package android.support.v4;

import freemarker.ext.beans.Celse;
import freemarker.template.Cthis;

/* loaded from: classes3.dex */
public abstract class ry extends Celse {

    /* renamed from: break, reason: not valid java name */
    private boolean f5959break;

    /* renamed from: catch, reason: not valid java name */
    private boolean f5960catch;

    /* renamed from: this, reason: not valid java name */
    private boolean f5961this;

    public ry(we2 we2Var) {
        super(Cthis.c(we2Var), true);
        this.f5961this = m28583case().intValue() >= ul2.f6939try;
        this.f5959break = true;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m7194abstract(boolean z) {
        this.f5960catch = z;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m7195continue(boolean z) {
        this.f5961this = z;
    }

    @Override // freemarker.ext.beans.Celse
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        ry ryVar = (ry) obj;
        return this.f5961this == ryVar.m7198package() && this.f5959break == ryVar.f5959break && this.f5960catch == ryVar.f5960catch;
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m7196extends() {
        return this.f5959break;
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m7197finally() {
        return this.f5960catch;
    }

    @Override // freemarker.ext.beans.Celse
    public int hashCode() {
        return (((((super.hashCode() * 31) + (this.f5961this ? 1231 : 1237)) * 31) + (this.f5959break ? 1231 : 1237)) * 31) + (this.f5960catch ? 1231 : 1237);
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m7198package() {
        return this.f5961this;
    }

    /* renamed from: private, reason: not valid java name */
    public void m7199private(boolean z) {
        this.f5959break = z;
    }
}
