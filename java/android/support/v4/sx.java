package android.support.v4;

/* loaded from: classes3.dex */
public class sx {
    /* renamed from: break, reason: not valid java name */
    public static byte m7632break(Object obj) {
        if (obj == null) {
            return (byte) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).byteValue();
        }
        if (obj instanceof String) {
            return Byte.parseByte((String) obj);
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to byte");
    }

    /* renamed from: case, reason: not valid java name */
    public static Integer m7633case(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Integer.class) {
            return (Integer) obj;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to Integer");
    }

    /* renamed from: catch, reason: not valid java name */
    public static char m7634catch(Object obj) {
        if (obj == null) {
            return ' ';
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() > 0) {
                return str.charAt(0);
            }
            return ' ';
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to char");
    }

    /* renamed from: class, reason: not valid java name */
    public static double m7635class(Object obj) {
        if (obj == null) {
            return 0.0d;
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (obj instanceof String) {
            return Double.parseDouble((String) obj);
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to float");
    }

    /* renamed from: const, reason: not valid java name */
    public static float m7636const(Object obj) {
        if (obj == null) {
            return 0.0f;
        }
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        if (obj instanceof String) {
            return Float.parseFloat((String) obj);
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to float");
    }

    /* renamed from: do, reason: not valid java name */
    public static Boolean m7637do(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Boolean.class) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            return Boolean.valueOf(Boolean.parseBoolean((String) obj));
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to Boolean");
    }

    /* renamed from: else, reason: not valid java name */
    public static Long m7638else(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Long.class) {
            return (Long) obj;
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        throw new tr("Primitive: Can not convert value '" + obj + "' As " + obj.getClass().getName() + " to Long");
    }

    /* renamed from: final, reason: not valid java name */
    public static int m7639final(Object obj) {
        if (obj == null) {
            return 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            return Integer.parseInt((String) obj);
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to int");
    }

    /* renamed from: for, reason: not valid java name */
    public static Character m7640for(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Character.class) {
            return (Character) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() > 0) {
                return Character.valueOf(str.charAt(0));
            }
            return ' ';
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to Character");
    }

    /* renamed from: goto, reason: not valid java name */
    public static Short m7641goto(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Short.class) {
            return (Short) obj;
        }
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to Short");
    }

    /* renamed from: if, reason: not valid java name */
    public static Byte m7642if(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Byte.class) {
            return (Byte) obj;
        }
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to Byte");
    }

    /* renamed from: new, reason: not valid java name */
    public static Double m7643new(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Double.class) {
            return (Double) obj;
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to Float");
    }

    /* renamed from: super, reason: not valid java name */
    public static long m7644super(Object obj) {
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj instanceof String) {
            return Long.parseLong((String) obj);
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to long");
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m7645this(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj.getClass() == Boolean.class) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof String) {
            return Boolean.parseBoolean((String) obj);
        }
        if (obj instanceof Number) {
            return !obj.toString().equals("0");
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to boolean");
    }

    /* renamed from: throw, reason: not valid java name */
    public static short m7646throw(Object obj) {
        if (obj == null) {
            return (short) 0;
        }
        if (obj instanceof Number) {
            return ((Number) obj).shortValue();
        }
        if (obj instanceof String) {
            return Short.parseShort((String) obj);
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to short");
    }

    /* renamed from: try, reason: not valid java name */
    public static Float m7647try(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj.getClass() == Float.class) {
            return (Float) obj;
        }
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        throw new tr("Primitive: Can not convert " + obj.getClass().getName() + " to Float");
    }
}
