package org.chromium.net;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.chromium.net.Cfor;

/* renamed from: org.chromium.net.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew {

    /* renamed from: case, reason: not valid java name */
    private static final String f33700case = "org.chromium.net.impl.JavaCronetProvider";

    /* renamed from: else, reason: not valid java name */
    private static final String f33701else = "org.chromium.net.impl.NativeCronetProvider";

    /* renamed from: for, reason: not valid java name */
    public static final String f33702for = "Fallback-Cronet-Provider";

    /* renamed from: goto, reason: not valid java name */
    private static final String f33703goto = "com.google.android.gms.net.PlayServicesCronetProvider";

    /* renamed from: if, reason: not valid java name */
    public static final String f33704if = "App-Packaged-Cronet-Provider";

    /* renamed from: new, reason: not valid java name */
    private static final String f33705new = "CronetProviderClassName";

    /* renamed from: this, reason: not valid java name */
    private static final String f33706this = "com.google.android.gms.net.GmsCoreCronetProvider";

    /* renamed from: try, reason: not valid java name */
    private static final String f33707try = "new";

    /* renamed from: do, reason: not valid java name */
    public final Context f33708do;

    public Cnew(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        this.f33708do = context;
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m37711do(Context context, Set<Cnew> set) throws Resources.NotFoundException {
        int identifier = context.getResources().getIdentifier(f33705new, TypedValues.Custom.S_STRING, context.getPackageName());
        boolean z = false;
        if (identifier == 0) {
            return false;
        }
        String string = context.getResources().getString(identifier);
        if (string != null && !string.equals(f33703goto) && !string.equals(f33706this) && !string.equals(f33700case) && !string.equals(f33701else)) {
            z = true;
            if (!m37713if(context, string, set, true)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to instantiate Cronet implementation class ");
                sb.append(string);
                sb.append(" that is listed as in the app string resource file under ");
                sb.append(f33705new);
                sb.append(" key");
            }
        }
        return z;
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m37712goto(String str, boolean z, Exception exc) {
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to load provider class: ");
            sb.append(str);
        } else if (Log.isLoggable(f33707try, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Tried to load ");
            sb2.append(str);
            sb2.append(" provider class but it wasn't included in the app classpath");
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m37713if(Context context, String str, Set<Cnew> set, boolean z) {
        try {
            set.add((Cnew) context.getClassLoader().loadClass(str).asSubclass(Cnew.class).getConstructor(Context.class).newInstance(context));
            return true;
        } catch (ClassNotFoundException e) {
            m37712goto(str, z, e);
            return false;
        } catch (IllegalAccessException e2) {
            m37712goto(str, z, e2);
            return false;
        } catch (InstantiationException e3) {
            m37712goto(str, z, e3);
            return false;
        } catch (NoSuchMethodException e4) {
            m37712goto(str, z, e4);
            return false;
        } catch (InvocationTargetException e5) {
            m37712goto(str, z, e5);
            return false;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static List<Cnew> m37714new(Context context) throws Resources.NotFoundException {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m37711do(context, linkedHashSet);
        m37713if(context, f33703goto, linkedHashSet, false);
        m37713if(context, f33706this, linkedHashSet, false);
        m37713if(context, f33701else, linkedHashSet, false);
        m37713if(context, f33700case, linkedHashSet, false);
        return Collections.unmodifiableList(new ArrayList(linkedHashSet));
    }

    /* renamed from: case */
    public abstract String mo37634case();

    /* renamed from: else */
    public abstract boolean mo37635else();

    /* renamed from: for */
    public abstract Cfor.Cdo mo37636for();

    public String toString() {
        return "[class=" + getClass().getName() + ", name=" + mo37637try() + ", version=" + mo37634case() + ", enabled=" + mo37635else() + "]";
    }

    /* renamed from: try */
    public abstract String mo37637try();
}
