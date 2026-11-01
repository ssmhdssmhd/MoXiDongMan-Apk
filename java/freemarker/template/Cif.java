package freemarker.template;

import android.support.v4.k52;
import freemarker.ext.util.WrapperTemplateModel;
import java.io.Serializable;
import java.lang.reflect.Array;

/* renamed from: freemarker.template.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif extends Cthrows implements TemplateSequenceModel, AdapterTemplateModel, WrapperTemplateModel, Serializable {

    /* renamed from: freemarker.template.if$break, reason: invalid class name */
    public static class Cbreak extends Cif {
        private final Object[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                Object[] objArr = this.array;
                if (i < objArr.length) {
                    return wrap(objArr[i]);
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Cbreak(Object[] objArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = objArr;
        }
    }

    /* renamed from: freemarker.template.if$case, reason: invalid class name */
    public static class Ccase extends Cif {
        private final float[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                float[] fArr = this.array;
                if (i < fArr.length) {
                    return wrap(Float.valueOf(fArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Ccase(float[] fArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = fArr;
        }
    }

    /* renamed from: freemarker.template.if$catch, reason: invalid class name */
    public static class Ccatch extends Cif {
        private final short[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                short[] sArr = this.array;
                if (i < sArr.length) {
                    return wrap(Short.valueOf(sArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Ccatch(short[] sArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = sArr;
        }
    }

    /* renamed from: freemarker.template.if$else, reason: invalid class name */
    public static class Celse extends Cif {
        private final Object array;
        private final int length;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i < 0 || i >= this.length) {
                return null;
            }
            return wrap(Array.get(this.array, i));
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.length;
        }

        private Celse(Object obj, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = obj;
            this.length = Array.getLength(obj);
        }
    }

    /* renamed from: freemarker.template.if$for, reason: invalid class name */
    public static class Cfor extends Cif {
        private final byte[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                byte[] bArr = this.array;
                if (i < bArr.length) {
                    return wrap(Byte.valueOf(bArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Cfor(byte[] bArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = bArr;
        }
    }

    /* renamed from: freemarker.template.if$goto, reason: invalid class name */
    public static class Cgoto extends Cif {
        private final int[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                int[] iArr = this.array;
                if (i < iArr.length) {
                    return wrap(Integer.valueOf(iArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Cgoto(int[] iArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = iArr;
        }
    }

    /* renamed from: freemarker.template.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0261if extends Cif {
        private final boolean[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                boolean[] zArr = this.array;
                if (i < zArr.length) {
                    return wrap(Boolean.valueOf(zArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private C0261if(boolean[] zArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = zArr;
        }
    }

    /* renamed from: freemarker.template.if$new, reason: invalid class name */
    public static class Cnew extends Cif {
        private final char[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                char[] cArr = this.array;
                if (i < cArr.length) {
                    return wrap(Character.valueOf(cArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Cnew(char[] cArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = cArr;
        }
    }

    /* renamed from: freemarker.template.if$this, reason: invalid class name */
    public static class Cthis extends Cif {
        private final long[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                long[] jArr = this.array;
                if (i < jArr.length) {
                    return wrap(Long.valueOf(jArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Cthis(long[] jArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = jArr;
        }
    }

    /* renamed from: freemarker.template.if$try, reason: invalid class name */
    public static class Ctry extends Cif {
        private final double[] array;

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) throws k52 {
            if (i >= 0) {
                double[] dArr = this.array;
                if (i < dArr.length) {
                    return wrap(Double.valueOf(dArr[i]));
                }
            }
            return null;
        }

        @Override // freemarker.ext.util.WrapperTemplateModel
        public Object getWrappedObject() {
            return this.array;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() throws k52 {
            return this.array.length;
        }

        private Ctry(double[] dArr, ObjectWrapper objectWrapper) {
            super(objectWrapper);
            this.array = dArr;
        }
    }

    public static Cif adapt(Object obj, ObjectWrapperAndUnwrapper objectWrapperAndUnwrapper) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == null) {
            throw new IllegalArgumentException("Not an array");
        }
        return componentType.isPrimitive() ? componentType == Integer.TYPE ? new Cgoto((int[]) obj, objectWrapperAndUnwrapper) : componentType == Double.TYPE ? new Ctry((double[]) obj, objectWrapperAndUnwrapper) : componentType == Long.TYPE ? new Cthis((long[]) obj, objectWrapperAndUnwrapper) : componentType == Boolean.TYPE ? new C0261if((boolean[]) obj, objectWrapperAndUnwrapper) : componentType == Float.TYPE ? new Ccase((float[]) obj, objectWrapperAndUnwrapper) : componentType == Character.TYPE ? new Cnew((char[]) obj, objectWrapperAndUnwrapper) : componentType == Short.TYPE ? new Ccatch((short[]) obj, objectWrapperAndUnwrapper) : componentType == Byte.TYPE ? new Cfor((byte[]) obj, objectWrapperAndUnwrapper) : new Celse(obj, objectWrapperAndUnwrapper) : new Cbreak((Object[]) obj, objectWrapperAndUnwrapper);
    }

    @Override // freemarker.template.AdapterTemplateModel
    public final Object getAdaptedObject(Class cls) {
        return getWrappedObject();
    }

    private Cif(ObjectWrapper objectWrapper) {
        super(objectWrapper);
    }
}
