package android.support.v4;

import android.content.Context;
import java.io.File;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes2.dex */
public class j2 extends aa {
    @Override // android.support.v4.aa
    /* renamed from: break */
    public int mo92break() {
        return mo100goto();
    }

    @Override // android.support.v4.aa
    /* renamed from: catch */
    public int mo93catch() {
        return -1;
    }

    @Override // android.support.v4.aa
    /* renamed from: class */
    public String mo94class() {
        return "unknown";
    }

    @Override // android.support.v4.aa
    /* renamed from: const */
    public String mo95const() {
        return "/blockcanary/";
    }

    @Override // android.support.v4.aa
    /* renamed from: do */
    public List<String> mo96do() {
        return null;
    }

    @Override // android.support.v4.aa
    /* renamed from: else */
    public void mo97else(Context context, da daVar) {
    }

    @Override // android.support.v4.aa
    /* renamed from: final */
    public String mo98final() {
        return "unknown";
    }

    @Override // android.support.v4.aa
    /* renamed from: for */
    public boolean mo99for() {
        return true;
    }

    @Override // android.support.v4.aa
    /* renamed from: goto */
    public int mo100goto() {
        return 1000;
    }

    @Override // android.support.v4.aa
    /* renamed from: if */
    public boolean mo101if() {
        return true;
    }

    @Override // android.support.v4.aa
    /* renamed from: import */
    public void mo102import(File file) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.aa
    /* renamed from: native */
    public boolean mo103native(File[] fileArr, File file) {
        return false;
    }

    @Override // android.support.v4.aa
    /* renamed from: new */
    public boolean mo104new() {
        return false;
    }

    @Override // android.support.v4.aa
    /* renamed from: super */
    public String mo105super() {
        return "uid";
    }

    @Override // android.support.v4.aa
    /* renamed from: throw */
    public List<String> mo107throw() {
        LinkedList linkedList = new LinkedList();
        linkedList.add("org.chromium");
        return linkedList;
    }
}
