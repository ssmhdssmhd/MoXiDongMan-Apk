package freemarker.ext.jsp;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.template.utility.Cif;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: freemarker.ext.jsp.super, reason: invalid class name */
/* loaded from: classes3.dex */
final class Csuper {

    /* renamed from: do, reason: not valid java name */
    private static final Pattern f24872do = Pattern.compile("^([\\w\\.]+(\\s*\\[\\s*\\])?)\\s+(\\w+)\\s*\\((.*)\\)$", 32);

    /* renamed from: if, reason: not valid java name */
    private static final Pattern f24873if = Pattern.compile("^([\\w\\.]+)(\\s*\\[\\s*\\])?$");

    private Csuper() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Class[]] */
    /* renamed from: do, reason: not valid java name */
    public static Method m29042do(Class cls, String str) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        Class<?>[] clsArr;
        Pattern pattern = f24872do;
        Matcher matcher = pattern.matcher(str);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Invalid function signature (doesn't match this pattern: " + pattern + ")");
        }
        String strGroup = matcher.group(3);
        String strTrim = matcher.group(4).trim();
        if ("".equals(strTrim)) {
            clsArr = new Class[0];
        } else {
            String[] strArrT = freemarker.template.utility.Csuper.t(strTrim, ',');
            ?? r1 = new Class[strArrT.length];
            for (int i = 0; i < strArrT.length; i++) {
                String strTrim2 = strArrT[i].trim();
                Pattern pattern2 = f24873if;
                Matcher matcher2 = pattern2.matcher(strTrim2);
                if (!matcher2.matches()) {
                    throw new IllegalArgumentException("Invalid argument signature (doesn't match pattern " + pattern2 + "): " + strTrim2);
                }
                String strGroup2 = matcher2.group(1);
                boolean z = strGroup2.indexOf(46) == -1;
                boolean z2 = matcher2.group(2) != null;
                if (z) {
                    if ("byte".equals(strGroup2)) {
                        r1[i] = z2 ? byte[].class : Byte.TYPE;
                    } else if ("short".equals(strGroup2)) {
                        r1[i] = z2 ? short[].class : Short.TYPE;
                    } else if ("int".equals(strGroup2)) {
                        r1[i] = z2 ? int[].class : Integer.TYPE;
                    } else if ("long".equals(strGroup2)) {
                        r1[i] = z2 ? long[].class : Long.TYPE;
                    } else if (TypedValues.Custom.S_FLOAT.equals(strGroup2)) {
                        r1[i] = z2 ? float[].class : Float.TYPE;
                    } else if ("double".equals(strGroup2)) {
                        r1[i] = z2 ? double[].class : Double.TYPE;
                    } else if (TypedValues.Custom.S_BOOLEAN.equals(strGroup2)) {
                        r1[i] = z2 ? boolean[].class : Boolean.TYPE;
                    } else {
                        if (!"char".equals(strGroup2)) {
                            throw new IllegalArgumentException("Invalid primitive type: '" + strGroup2 + "'.");
                        }
                        r1[i] = z2 ? char[].class : Character.TYPE;
                    }
                } else if (z2) {
                    r1[i] = Cif.m29285try("[L" + strGroup2 + ";");
                } else {
                    r1[i] = Cif.m29285try(strGroup2);
                }
            }
            clsArr = r1;
        }
        return cls.getMethod(strGroup, clsArr);
    }
}
