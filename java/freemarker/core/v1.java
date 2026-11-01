package freemarker.core;

/* loaded from: classes.dex */
final class v1 {

    /* renamed from: do, reason: not valid java name */
    private LocalContext[] f24249do = new LocalContext[8];

    /* renamed from: if, reason: not valid java name */
    private int f24250if;

    /* renamed from: do, reason: not valid java name */
    public LocalContext m28336do(int i) {
        return this.f24249do[i];
    }

    /* renamed from: for, reason: not valid java name */
    public void m28337for(LocalContext localContext) {
        int i = this.f24250if + 1;
        this.f24250if = i;
        LocalContext[] localContextArr = this.f24249do;
        if (localContextArr.length < i) {
            LocalContext[] localContextArr2 = new LocalContext[i * 2];
            for (int i2 = 0; i2 < localContextArr.length; i2++) {
                localContextArr2[i2] = localContextArr[i2];
            }
            this.f24249do = localContextArr2;
            localContextArr = localContextArr2;
        }
        localContextArr[i - 1] = localContext;
    }

    /* renamed from: if, reason: not valid java name */
    public void m28338if() {
        LocalContext[] localContextArr = this.f24249do;
        int i = this.f24250if - 1;
        this.f24250if = i;
        localContextArr[i] = null;
    }

    /* renamed from: new, reason: not valid java name */
    public int m28339new() {
        return this.f24250if;
    }
}
