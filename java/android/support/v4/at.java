package android.support.v4;

import java.security.Permission;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class at extends Permission {
    public static final String DEFAULT_RANDOM = "defaultRandomConfig";
    public static final String GLOBAL_CONFIG = "globalConfig";
    public static final String THREAD_LOCAL_CONFIG = "threadLocalConfig";
    private final Set<String> actions;

    public at(String str) {
        super(str);
        HashSet hashSet = new HashSet();
        this.actions = hashSet;
        hashSet.add(str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof at) && this.actions.equals(((at) obj).actions);
    }

    @Override // java.security.Permission
    public String getActions() {
        return this.actions.toString();
    }

    public int hashCode() {
        return this.actions.hashCode();
    }

    @Override // java.security.Permission
    public boolean implies(Permission permission) {
        if (!(permission instanceof at)) {
            return false;
        }
        at atVar = (at) permission;
        return getName().equals(atVar.getName()) || this.actions.containsAll(atVar.actions);
    }
}
