package net.minidev.json.writer;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: net.minidev.json.writer.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo<T> extends net.minidev.json.writer.Ccase<T> {

    /* renamed from: do, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<int[]> f28299do = new Cgoto(null);

    /* renamed from: if, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Integer[]> f28304if = new Cthis(null);

    /* renamed from: for, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<short[]> f28302for = new Cbreak(null);

    /* renamed from: new, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Short[]> f28305new = new Ccatch(null);

    /* renamed from: try, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<byte[]> f28309try = new Cclass(null);

    /* renamed from: case, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Byte[]> f28295case = new Cconst(null);

    /* renamed from: else, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<char[]> f28300else = new Cfinal(null);

    /* renamed from: goto, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Character[]> f28303goto = new Csuper(null);

    /* renamed from: this, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<long[]> f28307this = new Cthrow(null);

    /* renamed from: break, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Long[]> f28294break = new C0378do(null);

    /* renamed from: catch, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<float[]> f28296catch = new Cif(null);

    /* renamed from: class, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Float[]> f28297class = new Cfor(null);

    /* renamed from: const, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<double[]> f28298const = new Cnew(null);

    /* renamed from: final, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Double[]> f28301final = new Ctry(null);

    /* renamed from: super, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<boolean[]> f28306super = new Ccase(null);

    /* renamed from: throw, reason: not valid java name */
    public static net.minidev.json.writer.Ccase<Boolean[]> f28308throw = new Celse(null);

    /* renamed from: net.minidev.json.writer.do$break, reason: invalid class name */
    public class Cbreak extends Cdo<short[]> {
        public Cbreak(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public short[] convert(Object obj) {
            List list = (List) obj;
            short[] sArr = new short[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                sArr[i] = ((Number) it.next()).shortValue();
                i++;
            }
            return sArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$case, reason: invalid class name */
    public class Ccase extends Cdo<boolean[]> {
        public Ccase(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean[] convert(Object obj) {
            List list = (List) obj;
            boolean[] zArr = new boolean[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                zArr[i] = ((Boolean) it.next()).booleanValue();
                i++;
            }
            return zArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$catch, reason: invalid class name */
    public class Ccatch extends Cdo<Short[]> {
        public Ccatch(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Short[] convert(Object obj) {
            List list = (List) obj;
            Short[] shArr = new Short[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    if (obj2 instanceof Short) {
                        shArr[i] = (Short) obj2;
                    } else {
                        shArr[i] = Short.valueOf(((Number) obj2).shortValue());
                    }
                    i++;
                }
            }
            return shArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$class, reason: invalid class name */
    public class Cclass extends Cdo<byte[]> {
        public Cclass(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public byte[] convert(Object obj) {
            List list = (List) obj;
            byte[] bArr = new byte[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                bArr[i] = ((Number) it.next()).byteValue();
                i++;
            }
            return bArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$const, reason: invalid class name */
    public class Cconst extends Cdo<Byte[]> {
        public Cconst(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Byte[] convert(Object obj) {
            List list = (List) obj;
            Byte[] bArr = new Byte[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    if (obj2 instanceof Byte) {
                        bArr[i] = (Byte) obj2;
                    } else {
                        bArr[i] = Byte.valueOf(((Number) obj2).byteValue());
                    }
                    i++;
                }
            }
            return bArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$do, reason: invalid class name and collision with other inner class name */
    public class C0378do extends Cdo<Long[]> {
        public C0378do(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Long[] convert(Object obj) {
            List list = (List) obj;
            Long[] lArr = new Long[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    if (obj2 instanceof Float) {
                        lArr[i] = (Long) obj2;
                    } else {
                        lArr[i] = Long.valueOf(((Number) obj2).longValue());
                    }
                    i++;
                }
            }
            return lArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$else, reason: invalid class name */
    public class Celse extends Cdo<Boolean[]> {
        public Celse(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean[] convert(Object obj) {
            List list = (List) obj;
            Boolean[] boolArr = new Boolean[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    if (obj2 instanceof Boolean) {
                        boolArr[i] = Boolean.valueOf(((Boolean) obj2).booleanValue());
                    } else {
                        if (!(obj2 instanceof Number)) {
                            throw new RuntimeException("can not convert " + obj2 + " toBoolean");
                        }
                        boolArr[i] = Boolean.valueOf(((Number) obj2).intValue() != 0);
                    }
                    i++;
                }
            }
            return boolArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$final, reason: invalid class name */
    public class Cfinal extends Cdo<char[]> {
        public Cfinal(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public char[] convert(Object obj) {
            List list = (List) obj;
            char[] cArr = new char[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                cArr[i] = it.next().toString().charAt(0);
                i++;
            }
            return cArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$for, reason: invalid class name */
    public class Cfor extends Cdo<Float[]> {
        public Cfor(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float[] convert(Object obj) {
            List list = (List) obj;
            Float[] fArr = new Float[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    if (obj2 instanceof Float) {
                        fArr[i] = (Float) obj2;
                    } else {
                        fArr[i] = Float.valueOf(((Number) obj2).floatValue());
                    }
                    i++;
                }
            }
            return fArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$goto, reason: invalid class name */
    public class Cgoto extends Cdo<int[]> {
        public Cgoto(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int[] convert(Object obj) {
            List list = (List) obj;
            int[] iArr = new int[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = ((Number) it.next()).intValue();
                i++;
            }
            return iArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$if, reason: invalid class name */
    public class Cif extends Cdo<float[]> {
        public Cif(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public float[] convert(Object obj) {
            List list = (List) obj;
            float[] fArr = new float[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                fArr[i] = ((Number) it.next()).floatValue();
                i++;
            }
            return fArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$new, reason: invalid class name */
    public class Cnew extends Cdo<double[]> {
        public Cnew(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public double[] convert(Object obj) {
            List list = (List) obj;
            double[] dArr = new double[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                dArr[i] = ((Number) it.next()).doubleValue();
                i++;
            }
            return dArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$super, reason: invalid class name */
    public class Csuper extends Cdo<Character[]> {
        public Csuper(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Character[] convert(Object obj) {
            List list = (List) obj;
            Character[] chArr = new Character[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    chArr[i] = Character.valueOf(obj2.toString().charAt(0));
                    i++;
                }
            }
            return chArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$this, reason: invalid class name */
    public class Cthis extends Cdo<Integer[]> {
        public Cthis(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Integer[] convert(Object obj) {
            List list = (List) obj;
            Integer[] numArr = new Integer[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    if (obj2 instanceof Integer) {
                        numArr[i] = (Integer) obj2;
                    } else {
                        numArr[i] = Integer.valueOf(((Number) obj2).intValue());
                    }
                    i++;
                }
            }
            return numArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$throw, reason: invalid class name */
    public class Cthrow extends Cdo<long[]> {
        public Cthrow(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public long[] convert(Object obj) {
            List list = (List) obj;
            long[] jArr = new long[list.size()];
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                jArr[i] = ((Number) it.next()).intValue();
                i++;
            }
            return jArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$try, reason: invalid class name */
    public class Ctry extends Cdo<Double[]> {
        public Ctry(net.minidev.json.writer.Ctry ctry) {
            super(ctry);
        }

        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Double[] convert(Object obj) {
            List list = (List) obj;
            Double[] dArr = new Double[list.size()];
            int i = 0;
            for (Object obj2 : list) {
                if (obj2 != null) {
                    if (obj2 instanceof Double) {
                        dArr[i] = (Double) obj2;
                    } else {
                        dArr[i] = Double.valueOf(((Number) obj2).doubleValue());
                    }
                    i++;
                }
            }
            return dArr;
        }
    }

    /* renamed from: net.minidev.json.writer.do$while, reason: invalid class name */
    public static class Cwhile<T> extends Cdo<T> {

        /* renamed from: import, reason: not valid java name */
        public net.minidev.json.writer.Ccase<?> f28310import;

        /* renamed from: while, reason: not valid java name */
        public final Class<?> f28311while;

        public Cwhile(net.minidev.json.writer.Ctry ctry, Class<T> cls) {
            super(ctry);
            this.f28311while = cls.getComponentType();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object[]] */
        @Override // net.minidev.json.writer.Cdo, net.minidev.json.writer.Ccase
        public T convert(Object obj) {
            List list = (List) obj;
            ?? r0 = (T) ((Object[]) Array.newInstance(this.f28311while, list.size()));
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                r0[i] = it.next();
                i++;
            }
            return r0;
        }

        @Override // net.minidev.json.writer.Ccase
        public net.minidev.json.writer.Ccase<?> startArray(String str) {
            if (this.f28310import == null) {
                this.f28310import = this.base.m31740do(this.f28311while);
            }
            return this.f28310import;
        }

        @Override // net.minidev.json.writer.Ccase
        public net.minidev.json.writer.Ccase<?> startObject(String str) {
            if (this.f28310import == null) {
                this.f28310import = this.base.m31740do(this.f28311while);
            }
            return this.f28310import;
        }
    }

    public Cdo(net.minidev.json.writer.Ctry ctry) {
        super(ctry);
    }

    @Override // net.minidev.json.writer.Ccase
    public void addValue(Object obj, Object obj2) {
        ((List) obj).add(obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.minidev.json.writer.Ccase
    public T convert(Object obj) {
        return obj;
    }

    @Override // net.minidev.json.writer.Ccase
    public Object createArray() {
        return new ArrayList();
    }
}
