package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Ccatch;
import kotlin.Cwhile;
import kotlin.internal.Cdo;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Cstatic;
import org.apache.commons.lang3.Ctry;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a$\u0010\u0003\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0083\b¢\u0006\u0004\b\u0003\u0010\u0004\u001a\b\u0010\u0006\u001a\u00020\u0005H\u0002\u001a \u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0001¨\u0006\f"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "instance", "if", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "for", "major", "minor", "patch", "", "do", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ae1 {

    /* renamed from: do, reason: not valid java name */
    @m41
    @tp0
    public static final Cdo f113do;

    static {
        Cdo cdo;
        int iM187for = m187for();
        if (iM187for >= 65544) {
            try {
                Object objNewInstance = io0.class.newInstance();
                Csuper.m30696super(objNewInstance, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    try {
                        if (objNewInstance == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                        cdo = (Cdo) objNewInstance;
                    } catch (ClassCastException e) {
                        Throwable thInitCause = new ClassCastException("Instance classloader: " + objNewInstance.getClass().getClassLoader() + ", base type classloader: " + Cdo.class.getClassLoader()).initCause(e);
                        Csuper.m30696super(thInitCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                        throw thInitCause;
                    }
                } catch (ClassNotFoundException unused) {
                }
            } catch (ClassNotFoundException unused2) {
                Object objNewInstance2 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
                Csuper.m30696super(objNewInstance2, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    if (objNewInstance2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    cdo = (Cdo) objNewInstance2;
                } catch (ClassCastException e2) {
                    Throwable thInitCause2 = new ClassCastException("Instance classloader: " + objNewInstance2.getClass().getClassLoader() + ", base type classloader: " + Cdo.class.getClassLoader()).initCause(e2);
                    Csuper.m30696super(thInitCause2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw thInitCause2;
                }
            }
        } else if (iM187for >= 65543) {
            try {
                Object objNewInstance3 = ho0.class.newInstance();
                Csuper.m30696super(objNewInstance3, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    try {
                        if (objNewInstance3 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                        }
                        cdo = (Cdo) objNewInstance3;
                    } catch (ClassNotFoundException unused3) {
                    }
                } catch (ClassCastException e3) {
                    Throwable thInitCause3 = new ClassCastException("Instance classloader: " + objNewInstance3.getClass().getClassLoader() + ", base type classloader: " + Cdo.class.getClassLoader()).initCause(e3);
                    Csuper.m30696super(thInitCause3, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw thInitCause3;
                }
            } catch (ClassNotFoundException unused4) {
                Object objNewInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                Csuper.m30696super(objNewInstance4, "Class.forName(\"kotlin.in…entations\").newInstance()");
                try {
                    if (objNewInstance4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    cdo = (Cdo) objNewInstance4;
                } catch (ClassCastException e4) {
                    Throwable thInitCause4 = new ClassCastException("Instance classloader: " + objNewInstance4.getClass().getClassLoader() + ", base type classloader: " + Cdo.class.getClassLoader()).initCause(e4);
                    Csuper.m30696super(thInitCause4, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
                    throw thInitCause4;
                }
            }
        } else {
            cdo = new Cdo();
        }
        f113do = cdo;
    }

    @wg1
    @iz1(version = "1.2")
    /* renamed from: do, reason: not valid java name */
    public static final boolean m186do(int i, int i2, int i3) {
        return Ccatch.f27640case.m29847case(i, i2, i3);
    }

    /* renamed from: for, reason: not valid java name */
    private static final int m187for() {
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            return 65542;
        }
        int iD2 = Cstatic.D2(property, Ctry.f28883do, 0, false, 6, null);
        if (iD2 < 0) {
            try {
                return Integer.parseInt(property) * 65536;
            } catch (NumberFormatException unused) {
                return 65542;
            }
        }
        int i = iD2 + 1;
        int iD22 = Cstatic.D2(property, Ctry.f28883do, i, false, 4, null);
        if (iD22 < 0) {
            iD22 = property.length();
        }
        String strSubstring = property.substring(0, iD2);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        String strSubstring2 = property.substring(i, iD22);
        Csuper.m30696super(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        try {
            return (Integer.parseInt(strSubstring) * 65536) + Integer.parseInt(strSubstring2);
        } catch (NumberFormatException unused2) {
            return 65542;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final /* synthetic */ <T> T m188if(Object obj) throws Throwable {
        try {
            Csuper.m30674default(1, ExifInterface.GPS_DIRECTION_TRUE);
            return obj;
        } catch (ClassCastException e) {
            ClassLoader classLoader = obj.getClass().getClassLoader();
            Csuper.m30674default(4, ExifInterface.GPS_DIRECTION_TRUE);
            Throwable thInitCause = new ClassCastException("Instance classloader: " + classLoader + ", base type classloader: " + Object.class.getClassLoader()).initCause(e);
            Csuper.m30696super(thInitCause, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)");
            throw thInitCause;
        }
    }
}
