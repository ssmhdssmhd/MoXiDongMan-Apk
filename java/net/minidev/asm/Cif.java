package net.minidev.asm;

import android.support.v4.Cthrow;
import android.support.v4.f92;
import android.support.v4.o;
import android.support.v4.xz0;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;
import org.objectweb.asm.Cbreak;
import org.objectweb.asm.Cfor;

/* renamed from: net.minidev.asm.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: break, reason: not valid java name */
    private static String f28183break = f92.m2219while(Cdo.class);

    /* renamed from: case, reason: not valid java name */
    public final String f28184case;

    /* renamed from: do, reason: not valid java name */
    public final Class<?> f28185do;

    /* renamed from: else, reason: not valid java name */
    public final String f28186else;

    /* renamed from: for, reason: not valid java name */
    public final Cfor f28187for;

    /* renamed from: if, reason: not valid java name */
    public final o[] f28189if;

    /* renamed from: new, reason: not valid java name */
    public final String f28190new;

    /* renamed from: try, reason: not valid java name */
    public final String f28192try;

    /* renamed from: goto, reason: not valid java name */
    public final HashMap<Class<?>, Method> f28188goto = new HashMap<>();

    /* renamed from: this, reason: not valid java name */
    public Class<? extends Exception> f28191this = NoSuchFieldException.class;

    public Cif(Class<?> cls, Accessor[] accessorArr, Cfor cfor) {
        this.f28185do = cls;
        this.f28189if = accessorArr;
        this.f28187for = cfor;
        String name = cls.getName();
        this.f28190new = name;
        if (name.startsWith("java.")) {
            this.f28192try = "net.minidev.asm." + name + "AccAccess";
        } else {
            this.f28192try = name.concat("AccAccess");
        }
        this.f28184case = this.f28192try.replace(Ctry.f28883do, Attributes.InternalPrefix);
        this.f28186else = name.replace(Ctry.f28883do, Attributes.InternalPrefix);
    }

    /* renamed from: case, reason: not valid java name */
    private void m31557case(xz0 xz0Var, o oVar) {
        xz0Var.mo9633continue(25, 1);
        xz0Var.mo9627abstract(192, this.f28186else);
        xz0Var.mo9633continue(25, 3);
        f92 f92VarM2213private = f92.m2213private(oVar.m5433new());
        Class<?> clsM5433new = oVar.m5433new();
        String strM2219while = f92.m2219while(clsM5433new);
        Method method = this.f28188goto.get(clsM5433new);
        if (method != null) {
            xz0Var.m9649return(184, f92.m2219while(method.getDeclaringClass()), method.getName(), f92.m2211native(method));
        } else if (oVar.m5435try()) {
            Cbreak cbreak = new Cbreak();
            xz0Var.mo9632const(198, cbreak);
            xz0Var.mo9633continue(25, 3);
            xz0Var.m9649return(182, "java/lang/Object", "toString", "()Ljava/lang/String;");
            xz0Var.m9649return(184, strM2219while, "valueOf", "(Ljava/lang/String;)L" + strM2219while + ";");
            xz0Var.mo9633continue(58, 3);
            xz0Var.mo9638final(cbreak);
            xz0Var.mo9636else(3, 0, null, 0, null);
            xz0Var.mo9633continue(25, 1);
            xz0Var.mo9627abstract(192, this.f28186else);
            xz0Var.mo9633continue(25, 3);
            xz0Var.mo9627abstract(192, strM2219while);
        } else if (clsM5433new.equals(String.class)) {
            Cbreak cbreak2 = new Cbreak();
            xz0Var.mo9632const(198, cbreak2);
            xz0Var.mo9633continue(25, 3);
            xz0Var.m9649return(182, "java/lang/Object", "toString", "()Ljava/lang/String;");
            xz0Var.mo9633continue(58, 3);
            xz0Var.mo9638final(cbreak2);
            xz0Var.mo9636else(3, 0, null, 0, null);
            xz0Var.mo9633continue(25, 1);
            xz0Var.mo9627abstract(192, this.f28186else);
            xz0Var.mo9633continue(25, 3);
            xz0Var.mo9627abstract(192, strM2219while);
        } else {
            xz0Var.mo9627abstract(192, strM2219while);
        }
        if (oVar.m5427case()) {
            xz0Var.mo9629case(181, this.f28186else, oVar.m5430for(), f92VarM2213private.m2221class());
        } else {
            xz0Var.m9649return(182, this.f28186else, oVar.f4389if.getName(), f92.m2211native(oVar.f4389if));
        }
        xz0Var.mo9653this(177);
    }

    /* renamed from: else, reason: not valid java name */
    private void m31558else(xz0 xz0Var, Class<?> cls) {
        String strM2219while = f92.m2219while(cls);
        xz0Var.mo9627abstract(187, strM2219while);
        xz0Var.mo9653this(89);
        xz0Var.mo9651super("mapping " + this.f28190new + " failed to map field:");
        xz0Var.mo9633continue(21, 2);
        xz0Var.m9649return(184, "java/lang/Integer", "toString", "(I)Ljava/lang/String;");
        xz0Var.m9649return(182, "java/lang/String", "concat", "(Ljava/lang/String;)Ljava/lang/String;");
        xz0Var.m9649return(183, strM2219while, "<init>", "(Ljava/lang/String;)V");
        xz0Var.mo9653this(191);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m31559goto(xz0 xz0Var, Class<?> cls) {
        String strM2219while = f92.m2219while(cls);
        xz0Var.mo9627abstract(187, strM2219while);
        xz0Var.mo9653this(89);
        xz0Var.mo9651super("mapping " + this.f28190new + " failed to map field:");
        xz0Var.mo9633continue(25, 2);
        xz0Var.m9649return(182, "java/lang/String", "concat", "(Ljava/lang/String;)Ljava/lang/String;");
        xz0Var.m9649return(183, strM2219while, "<init>", "(Ljava/lang/String;)V");
        xz0Var.mo9653this(191);
    }

    /* renamed from: new, reason: not valid java name */
    private void m31560new(byte[] bArr, String str) {
    }

    /* renamed from: try, reason: not valid java name */
    private void m31561try(xz0 xz0Var, int i, int i2, Cbreak cbreak) {
        xz0Var.mo9633continue(21, i);
        if (i2 == 0) {
            xz0Var.mo9632const(154, cbreak);
            return;
        }
        if (i2 == 1) {
            xz0Var.mo9653this(4);
            xz0Var.mo9632const(160, cbreak);
            return;
        }
        if (i2 == 2) {
            xz0Var.mo9653this(5);
            xz0Var.mo9632const(160, cbreak);
            return;
        }
        if (i2 == 3) {
            xz0Var.mo9653this(6);
            xz0Var.mo9632const(160, cbreak);
            return;
        }
        if (i2 == 4) {
            xz0Var.mo9653this(7);
            xz0Var.mo9632const(160, cbreak);
        } else if (i2 == 5) {
            xz0Var.mo9653this(8);
            xz0Var.mo9632const(160, cbreak);
        } else {
            if (i2 < 6) {
                throw new RuntimeException("non supported negative values");
            }
            xz0Var.mo9630catch(16, i2);
            xz0Var.mo9632const(160, cbreak);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m31562do(Class<?> cls) throws SecurityException {
        if (cls == null) {
            return;
        }
        for (Method method : cls.getMethods()) {
            if ((method.getModifiers() & 8) != 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0].equals(Object.class)) {
                    Class<?> returnType = method.getReturnType();
                    if (!returnType.equals(Void.TYPE)) {
                        this.f28188goto.put(returnType, method);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0281  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Class<?> m31563for() {
        Class<? extends Exception> cls;
        int i;
        int i2;
        int i3 = 1;
        Cfor cfor = new Cfor(1);
        boolean z = this.f28189if.length > 10;
        cfor.mo570do(50, 33, this.f28184case, "Lnet/minidev/asm/BeansAccess<L" + this.f28186else + ";>;", f28183break, null);
        xz0 xz0VarMo571else = cfor.mo571else(1, "<init>", "()V", null, null);
        xz0VarMo571else.mo9645new();
        xz0VarMo571else.mo9633continue(25, 0);
        xz0VarMo571else.m9649return(183, f28183break, "<init>", "()V");
        xz0VarMo571else.mo9653this(177);
        xz0VarMo571else.mo9648public(1, 1);
        xz0VarMo571else.mo9656try();
        xz0 xz0VarMo571else2 = cfor.mo571else(1, "set", "(Ljava/lang/Object;ILjava/lang/Object;)V", null, null);
        xz0VarMo571else2.mo9645new();
        o[] oVarArr = this.f28189if;
        if (oVarArr.length != 0) {
            if (oVarArr.length > 14) {
                xz0VarMo571else2.mo9633continue(21, 2);
                Cbreak[] cbreakArrM7927this = Cthrow.m7927this(this.f28189if.length);
                Cbreak cbreak = new Cbreak();
                xz0VarMo571else2.mo9637extends(0, cbreakArrM7927this.length - 1, cbreak, cbreakArrM7927this);
                o[] oVarArr2 = this.f28189if;
                int length = oVarArr2.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length) {
                    o oVar = oVarArr2[i4];
                    int i6 = i5 + 1;
                    xz0VarMo571else2.mo9638final(cbreakArrM7927this[i5]);
                    if (oVar.m5434this()) {
                        m31557case(xz0VarMo571else2, oVar);
                    } else {
                        xz0VarMo571else2.mo9653this(177);
                    }
                    i4++;
                    i5 = i6;
                }
                xz0VarMo571else2.mo9638final(cbreak);
            } else {
                Cbreak[] cbreakArrM7927this2 = Cthrow.m7927this(oVarArr.length);
                int i7 = 0;
                for (o oVar2 : this.f28189if) {
                    m31561try(xz0VarMo571else2, 2, i7, cbreakArrM7927this2[i7]);
                    m31557case(xz0VarMo571else2, oVar2);
                    xz0VarMo571else2.mo9638final(cbreakArrM7927this2[i7]);
                    xz0VarMo571else2.mo9636else(3, 0, null, 0, null);
                    i7++;
                }
            }
        }
        Class<? extends Exception> cls2 = this.f28191this;
        if (cls2 != null) {
            m31558else(xz0VarMo571else2, cls2);
        } else {
            xz0VarMo571else2.mo9653this(177);
        }
        xz0VarMo571else2.mo9648public(0, 0);
        xz0VarMo571else2.mo9656try();
        xz0 xz0VarMo571else3 = cfor.mo571else(1, "get", "(Ljava/lang/Object;I)Ljava/lang/Object;", null, null);
        xz0VarMo571else3.mo9645new();
        o[] oVarArr3 = this.f28189if;
        int i8 = 192;
        int i9 = 176;
        if (oVarArr3.length == 0) {
            xz0VarMo571else3.mo9636else(3, 0, null, 0, null);
        } else {
            if (oVarArr3.length <= 14) {
                Cbreak[] cbreakArrM7927this3 = Cthrow.m7927this(oVarArr3.length);
                int i10 = 0;
                for (o oVar3 : this.f28189if) {
                    m31561try(xz0VarMo571else3, 2, i10, cbreakArrM7927this3[i10]);
                    xz0VarMo571else3.mo9633continue(25, 1);
                    xz0VarMo571else3.mo9627abstract(192, this.f28186else);
                    f92 f92VarM2213private = f92.m2213private(oVar3.m5433new());
                    if (oVar3.m5427case()) {
                        xz0VarMo571else3.mo9629case(180, this.f28186else, oVar3.m5430for(), f92VarM2213private.m2221class());
                    } else {
                        Method method = oVar3.f4388for;
                        if (method == null) {
                            throw new RuntimeException("no Getter for field " + oVar3.m5430for() + " in class " + this.f28190new);
                        }
                        xz0VarMo571else3.m9649return(182, this.f28186else, oVar3.f4388for.getName(), f92.m2211native(method));
                    }
                    Cthrow.m7921do(xz0VarMo571else3, f92VarM2213private);
                    xz0VarMo571else3.mo9653this(176);
                    xz0VarMo571else3.mo9638final(cbreakArrM7927this3[i10]);
                    xz0VarMo571else3.mo9636else(3, 0, null, 0, null);
                    i10++;
                }
                cls = this.f28191this;
                if (cls == null) {
                    m31558else(xz0VarMo571else3, cls);
                    i = 0;
                } else {
                    xz0VarMo571else3.mo9653this(1);
                    xz0VarMo571else3.mo9653this(176);
                    i = 0;
                }
                xz0VarMo571else3.mo9648public(i, i);
                xz0VarMo571else3.mo9656try();
                if (!z) {
                    xz0 xz0VarMo571else4 = cfor.mo571else(1, "set", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V", null, null);
                    xz0VarMo571else4.mo9645new();
                    Cbreak[] cbreakArrM7927this4 = Cthrow.m7927this(this.f28189if.length);
                    o[] oVarArr4 = this.f28189if;
                    int length2 = oVarArr4.length;
                    int i11 = 0;
                    int i12 = 0;
                    while (i11 < length2) {
                        o oVar4 = oVarArr4[i11];
                        xz0VarMo571else4.mo9633continue(25, 2);
                        xz0VarMo571else4.mo9651super(oVar4.f4387else);
                        xz0VarMo571else4.m9649return(182, "java/lang/String", "equals", "(Ljava/lang/Object;)Z");
                        xz0VarMo571else4.mo9632const(153, cbreakArrM7927this4[i12]);
                        m31557case(xz0VarMo571else4, oVar4);
                        xz0VarMo571else4.mo9638final(cbreakArrM7927this4[i12]);
                        xz0VarMo571else4.mo9636else(3, 0, null, 0, null);
                        i12++;
                        i11++;
                        oVarArr4 = oVarArr4;
                    }
                    Class<? extends Exception> cls3 = this.f28191this;
                    if (cls3 != null) {
                        m31559goto(xz0VarMo571else4, cls3);
                    } else {
                        xz0VarMo571else4.mo9653this(177);
                    }
                    xz0VarMo571else4.mo9648public(0, 0);
                    xz0VarMo571else4.mo9656try();
                }
                if (!z) {
                    xz0 xz0VarMo571else5 = cfor.mo571else(1, "get", "(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;", null, null);
                    xz0VarMo571else5.mo9645new();
                    Cbreak[] cbreakArrM7927this5 = Cthrow.m7927this(this.f28189if.length);
                    o[] oVarArr5 = this.f28189if;
                    int length3 = oVarArr5.length;
                    int i13 = 0;
                    int i14 = 0;
                    while (i13 < length3) {
                        o oVar5 = oVarArr5[i13];
                        xz0VarMo571else5.mo9633continue(25, 2);
                        xz0VarMo571else5.mo9651super(oVar5.f4387else);
                        xz0VarMo571else5.m9649return(182, "java/lang/String", "equals", "(Ljava/lang/Object;)Z");
                        o[] oVarArr6 = oVarArr5;
                        xz0VarMo571else5.mo9632const(153, cbreakArrM7927this5[i14]);
                        xz0VarMo571else5.mo9633continue(25, 1);
                        xz0VarMo571else5.mo9627abstract(192, this.f28186else);
                        f92 f92VarM2213private2 = f92.m2213private(oVar5.m5433new());
                        if (oVar5.m5427case()) {
                            i2 = length3;
                            xz0VarMo571else5.mo9629case(180, this.f28186else, oVar5.m5430for(), f92VarM2213private2.m2221class());
                        } else {
                            i2 = length3;
                            xz0VarMo571else5.m9649return(182, this.f28186else, oVar5.f4388for.getName(), f92.m2211native(oVar5.f4388for));
                        }
                        Cthrow.m7921do(xz0VarMo571else5, f92VarM2213private2);
                        xz0VarMo571else5.mo9653this(176);
                        xz0VarMo571else5.mo9638final(cbreakArrM7927this5[i14]);
                        xz0VarMo571else5.mo9636else(3, 0, null, 0, null);
                        i14++;
                        i13++;
                        oVarArr5 = oVarArr6;
                        length3 = i2;
                    }
                    Class<? extends Exception> cls4 = this.f28191this;
                    if (cls4 != null) {
                        m31559goto(xz0VarMo571else5, cls4);
                    } else {
                        xz0VarMo571else5.mo9653this(1);
                        xz0VarMo571else5.mo9653this(176);
                    }
                    xz0VarMo571else5.mo9648public(0, 0);
                    xz0VarMo571else5.mo9656try();
                }
                xz0 xz0VarMo571else6 = cfor.mo571else(1, "newInstance", "()Ljava/lang/Object;", null, null);
                xz0VarMo571else6.mo9645new();
                xz0VarMo571else6.mo9627abstract(187, this.f28186else);
                xz0VarMo571else6.mo9653this(89);
                xz0VarMo571else6.m9649return(183, this.f28186else, "<init>", "()V");
                xz0VarMo571else6.mo9653this(176);
                xz0VarMo571else6.mo9648public(2, 1);
                xz0VarMo571else6.mo9656try();
                cfor.mo575new();
                return this.f28187for.m31556do(this.f28192try, cfor.d());
            }
            xz0VarMo571else3.mo9633continue(21, 2);
            Cbreak[] cbreakArrM7927this6 = Cthrow.m7927this(this.f28189if.length);
            Cbreak cbreak2 = new Cbreak();
            xz0VarMo571else3.mo9637extends(0, cbreakArrM7927this6.length - 1, cbreak2, cbreakArrM7927this6);
            o[] oVarArr7 = this.f28189if;
            int length4 = oVarArr7.length;
            int i15 = 0;
            int i16 = 0;
            while (i15 < length4) {
                o oVar6 = oVarArr7[i15];
                int i17 = i16 + 1;
                xz0VarMo571else3.mo9638final(cbreakArrM7927this6[i16]);
                xz0VarMo571else3.mo9636else(3, 0, null, 0, null);
                if (oVar6.m5429else()) {
                    xz0VarMo571else3.mo9633continue(25, i3);
                    xz0VarMo571else3.mo9627abstract(i8, this.f28186else);
                    f92 f92VarM2213private3 = f92.m2213private(oVar6.m5433new());
                    if (oVar6.m5427case()) {
                        xz0VarMo571else3.mo9629case(180, this.f28186else, oVar6.m5430for(), f92VarM2213private3.m2221class());
                    } else {
                        xz0VarMo571else3.m9649return(182, this.f28186else, oVar6.f4388for.getName(), f92.m2211native(oVar6.f4388for));
                    }
                    Cthrow.m7921do(xz0VarMo571else3, f92VarM2213private3);
                    xz0VarMo571else3.mo9653this(176);
                } else {
                    xz0VarMo571else3.mo9653this(i3);
                    xz0VarMo571else3.mo9653this(i9);
                }
                i15++;
                i16 = i17;
                i9 = 176;
                i8 = 192;
                i3 = 1;
            }
            xz0VarMo571else3.mo9638final(cbreak2);
            xz0VarMo571else3.mo9636else(3, 0, null, 0, null);
        }
        cls = this.f28191this;
        if (cls == null) {
        }
        xz0VarMo571else3.mo9648public(i, i);
        xz0VarMo571else3.mo9656try();
        if (!z) {
        }
        if (!z) {
        }
        xz0 xz0VarMo571else62 = cfor.mo571else(1, "newInstance", "()Ljava/lang/Object;", null, null);
        xz0VarMo571else62.mo9645new();
        xz0VarMo571else62.mo9627abstract(187, this.f28186else);
        xz0VarMo571else62.mo9653this(89);
        xz0VarMo571else62.m9649return(183, this.f28186else, "<init>", "()V");
        xz0VarMo571else62.mo9653this(176);
        xz0VarMo571else62.mo9648public(2, 1);
        xz0VarMo571else62.mo9656try();
        cfor.mo575new();
        return this.f28187for.m31556do(this.f28192try, cfor.d());
    }

    /* renamed from: if, reason: not valid java name */
    public void m31564if(Iterable<Class<?>> iterable) throws SecurityException {
        if (iterable == null) {
            return;
        }
        Iterator<Class<?>> it = iterable.iterator();
        while (it.hasNext()) {
            m31562do(it.next());
        }
    }
}
