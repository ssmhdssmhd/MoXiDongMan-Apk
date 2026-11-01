package com.facebook.soloader;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StrictMode;
import android.support.v4.y41;
import java.io.File;
import java.io.IOException;
import java.util.Collection;

/* renamed from: com.facebook.soloader.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor extends Cpublic {

    /* renamed from: break, reason: not valid java name */
    private Context f10652break;

    /* renamed from: catch, reason: not valid java name */
    private int f10653catch;

    /* renamed from: class, reason: not valid java name */
    private Cnew f10654class;

    public Cfor(Context context, int i) {
        Context applicationContext = context.getApplicationContext();
        this.f10652break = applicationContext;
        if (applicationContext == null) {
            this.f10652break = context;
        }
        this.f10653catch = i;
        this.f10654class = new Cnew(new File(this.f10652break.getApplicationInfo().nativeLibraryDir), i);
    }

    @Override // com.facebook.soloader.Cpublic
    @y41
    /* renamed from: case */
    public File mo2943case(String str) throws IOException {
        return this.f10654class.mo2943case(str);
    }

    @Override // com.facebook.soloader.Cpublic
    /* renamed from: do, reason: not valid java name */
    public void mo12166do(Collection<String> collection) {
        this.f10654class.mo12166do(collection);
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m12167else() throws PackageManager.NameNotFoundException, IOException {
        try {
            File file = this.f10654class.f10710break;
            Context context = this.f10652break;
            Context contextCreatePackageContext = context.createPackageContext(context.getPackageName(), 0);
            File file2 = new File(contextCreatePackageContext.getApplicationInfo().nativeLibraryDir);
            if (file.equals(file2)) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Native library directory updated from ");
            sb.append(file);
            sb.append(" to ");
            sb.append(file2);
            int i = this.f10653catch | 1;
            this.f10653catch = i;
            Cnew cnew = new Cnew(file2, i);
            this.f10654class = cnew;
            cnew.mo12169try(this.f10653catch);
            this.f10652break = contextCreatePackageContext;
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.facebook.soloader.Cpublic
    @y41
    /* renamed from: if, reason: not valid java name */
    public String mo12168if(String str) throws IOException {
        return this.f10654class.mo12168if(str);
    }

    @Override // com.facebook.soloader.Cpublic
    /* renamed from: new */
    public int mo2944new(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return this.f10654class.mo2944new(str, i, threadPolicy);
    }

    @Override // com.facebook.soloader.Cpublic
    public String toString() {
        return this.f10654class.toString();
    }

    @Override // com.facebook.soloader.Cpublic
    /* renamed from: try, reason: not valid java name */
    public void mo12169try(int i) throws IOException {
        this.f10654class.mo12169try(i);
    }
}
