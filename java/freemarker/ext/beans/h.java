package freemarker.ext.beans;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.template.utility.Cif;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
class h {

    /* renamed from: do, reason: not valid java name */
    private static final String f24579do = "unsafeMethods.properties";

    /* renamed from: if, reason: not valid java name */
    private static final Set f24580if = m28617if();

    private h() {
    }

    /* renamed from: do, reason: not valid java name */
    private static Map m28615do() {
        HashMap map = new HashMap();
        map.put(TypedValues.Custom.S_BOOLEAN, Boolean.TYPE);
        map.put("byte", Byte.TYPE);
        map.put("char", Character.TYPE);
        map.put("short", Short.TYPE);
        map.put("int", Integer.TYPE);
        map.put("long", Long.TYPE);
        map.put(TypedValues.Custom.S_FLOAT, Float.TYPE);
        map.put("double", Double.TYPE);
        return map;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m28616for(Method method) {
        return f24580if.contains(method);
    }

    /* renamed from: if, reason: not valid java name */
    private static final Set m28617if() throws Throwable {
        try {
            Properties propertiesM29284throw = Cif.m29284throw(Ctry.class, f24579do);
            HashSet hashSet = new HashSet((propertiesM29284throw.size() * 4) / 3, 1.0f);
            Map mapM28615do = m28615do();
            Iterator it = propertiesM29284throw.keySet().iterator();
            while (it.hasNext()) {
                try {
                    hashSet.add(m28618new((String) it.next(), mapM28615do));
                } catch (ClassNotFoundException e) {
                    if (Cclass.f24488native) {
                        throw e;
                    }
                } catch (NoSuchMethodException e2) {
                    if (Cclass.f24488native) {
                        throw e2;
                    }
                }
            }
            return hashSet;
        } catch (Exception e3) {
            throw new RuntimeException("Could not load unsafe method set", e3);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static Method m28618new(String str, Map map) throws NoSuchMethodException, ClassNotFoundException {
        int iIndexOf = str.indexOf(40);
        int iLastIndexOf = str.lastIndexOf(46, iIndexOf);
        Class clsM29285try = Cif.m29285try(str.substring(0, iLastIndexOf));
        String strSubstring = str.substring(iLastIndexOf + 1, iIndexOf);
        StringTokenizer stringTokenizer = new StringTokenizer(str.substring(iIndexOf + 1, str.length() - 1), ",");
        int iCountTokens = stringTokenizer.countTokens();
        Class<?>[] clsArr = new Class[iCountTokens];
        for (int i = 0; i < iCountTokens; i++) {
            String strNextToken = stringTokenizer.nextToken();
            clsArr[i] = (Class) map.get(strNextToken);
            if (clsArr[i] == null) {
                clsArr[i] = Cif.m29285try(strNextToken);
            }
        }
        return clsM29285try.getMethod(strSubstring, clsArr);
    }
}
