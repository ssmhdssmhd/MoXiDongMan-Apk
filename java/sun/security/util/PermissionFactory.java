package sun.security.util;

import java.security.Permission;

/* loaded from: classes4.dex */
public interface PermissionFactory<T extends Permission> {
    T newPermission(String str);
}
