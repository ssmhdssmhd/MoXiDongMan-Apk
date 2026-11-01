package android.support.v4;

/* loaded from: classes3.dex */
public abstract class bm {

    /* renamed from: do, reason: not valid java name */
    public final int f480do;

    /* renamed from: if, reason: not valid java name */
    public bm f481if;

    public bm(int i) {
        this(i, null);
    }

    public bm(int i, bm bmVar) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.f480do = i;
        this.f481if = bmVar;
    }

    /* renamed from: break, reason: not valid java name */
    public d2 mo568break(int i, p92 p92Var, String str, boolean z) {
        if (this.f480do < 327680) {
            throw new RuntimeException();
        }
        bm bmVar = this.f481if;
        if (bmVar != null) {
            return bmVar.mo568break(i, p92Var, str, z);
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public void mo569case(String str, String str2, String str3, int i) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            bmVar.mo569case(str, str2, str3, i);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void mo570do(int i, int i2, String str, String str2, String str3, String[] strArr) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            bmVar.mo570do(i, i2, str, str2, str3, strArr);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public xz0 mo571else(int i, String str, String str2, String str3, String[] strArr) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            return bmVar.mo571else(i, str, str2, str3, strArr);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public void mo572for(o4 o4Var) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            bmVar.mo572for(o4Var);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void mo573goto(String str, String str2, String str3) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            bmVar.mo573goto(str, str2, str3);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public d2 mo574if(String str, boolean z) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            return bmVar.mo574if(str, z);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public void mo575new() {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            bmVar.mo575new();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void mo576this(String str, String str2) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            bmVar.mo576this(str, str2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public la0 mo577try(int i, String str, String str2, String str3, Object obj) {
        bm bmVar = this.f481if;
        if (bmVar != null) {
            return bmVar.mo577try(i, str, str2, str3, obj);
        }
        return null;
    }
}
