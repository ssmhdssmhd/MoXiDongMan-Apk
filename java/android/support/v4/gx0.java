package android.support.v4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.bumptech.glide.module.GlideModule;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public final class gx0 {

    /* renamed from: for, reason: not valid java name */
    private static final String f2263for = "GlideModule";

    /* renamed from: if, reason: not valid java name */
    private static final String f2264if = "ManifestParser";

    /* renamed from: do, reason: not valid java name */
    private final Context f2265do;

    public gx0(Context context) {
        this.f2265do = context;
    }

    /* renamed from: for, reason: not valid java name */
    private static void m2821for(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    /* renamed from: if, reason: not valid java name */
    private static GlideModule m2822if(String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName(str);
            Object objNewInstance = null;
            try {
                objNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException e) {
                m2821for(cls, e);
            } catch (InstantiationException e2) {
                m2821for(cls, e2);
            } catch (NoSuchMethodException e3) {
                m2821for(cls, e3);
            } catch (InvocationTargetException e4) {
                m2821for(cls, e4);
            }
            if (objNewInstance instanceof GlideModule) {
                return (GlideModule) objNewInstance;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + objNewInstance);
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public List<GlideModule> m2823do() {
        Log.isLoggable(f2264if, 3);
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f2265do.getPackageManager().getApplicationInfo(this.f2265do.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                Log.isLoggable(f2264if, 3);
                return arrayList;
            }
            if (Log.isLoggable(f2264if, 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Got app info metadata: ");
                sb.append(applicationInfo.metaData);
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if (f2263for.equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(m2822if(str));
                    if (Log.isLoggable(f2264if, 3)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Loaded Glide module: ");
                        sb2.append(str);
                    }
                }
            }
            Log.isLoggable(f2264if, 3);
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }
}
