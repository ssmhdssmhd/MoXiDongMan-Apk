package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: org.apache.commons.lang3.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements Serializable {
    public static final Cnew ASCII_ALPHA;
    public static final Cnew ASCII_ALPHA_LOWER;
    public static final Cnew ASCII_ALPHA_UPPER;
    public static final Cnew ASCII_NUMERIC;
    public static final Map<String, Cnew> COMMON;
    public static final Cnew EMPTY;
    private static final long serialVersionUID = 5947847346149275958L;
    private final Set<Cfor> set = Collections.synchronizedSet(new HashSet());

    static {
        Cnew cnew = new Cnew(null);
        EMPTY = cnew;
        Cnew cnew2 = new Cnew("a-zA-Z");
        ASCII_ALPHA = cnew2;
        Cnew cnew3 = new Cnew("a-z");
        ASCII_ALPHA_LOWER = cnew3;
        Cnew cnew4 = new Cnew("A-Z");
        ASCII_ALPHA_UPPER = cnew4;
        Cnew cnew5 = new Cnew("0-9");
        ASCII_NUMERIC = cnew5;
        Map<String, Cnew> mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
        COMMON = mapSynchronizedMap;
        mapSynchronizedMap.put(null, cnew);
        mapSynchronizedMap.put("", cnew);
        mapSynchronizedMap.put("a-zA-Z", cnew2);
        mapSynchronizedMap.put("A-Za-z", cnew2);
        mapSynchronizedMap.put("a-z", cnew3);
        mapSynchronizedMap.put("A-Z", cnew4);
        mapSynchronizedMap.put("0-9", cnew5);
    }

    public Cnew(String... strArr) {
        for (String str : strArr) {
            add(str);
        }
    }

    public static Cnew getInstance(String... strArr) {
        Cnew cnew;
        if (strArr == null) {
            return null;
        }
        return (strArr.length != 1 || (cnew = COMMON.get(strArr[0])) == null) ? new Cnew(strArr) : cnew;
    }

    public void add(String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2 = length - i;
            if (i2 >= 4 && str.charAt(i) == '^' && str.charAt(i + 2) == '-') {
                this.set.add(Cfor.isNotIn(str.charAt(i + 1), str.charAt(i + 3)));
                i += 4;
            } else if (i2 >= 3 && str.charAt(i + 1) == '-') {
                this.set.add(Cfor.isIn(str.charAt(i), str.charAt(i + 2)));
                i += 3;
            } else if (i2 < 2 || str.charAt(i) != '^') {
                this.set.add(Cfor.is(str.charAt(i)));
                i++;
            } else {
                this.set.add(Cfor.isNot(str.charAt(i + 1)));
                i += 2;
            }
        }
    }

    public boolean contains(char c) {
        Iterator<Cfor> it = this.set.iterator();
        while (it.hasNext()) {
            if (it.next().contains(c)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cnew) {
            return this.set.equals(((Cnew) obj).set);
        }
        return false;
    }

    public Cfor[] getCharRanges() {
        Set<Cfor> set = this.set;
        return (Cfor[]) set.toArray(new Cfor[set.size()]);
    }

    public int hashCode() {
        return this.set.hashCode() + 89;
    }

    public String toString() {
        return this.set.toString();
    }
}
