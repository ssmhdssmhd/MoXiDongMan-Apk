package freemarker.debug.impl;

import android.support.v4.k52;
import freemarker.debug.DebugModel;
import freemarker.debug.DebuggedEnvironment;
import java.lang.reflect.Method;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.rmi.UnexpectedException;
import java.rmi.server.RemoteObject;
import java.rmi.server.RemoteRef;
import java.rmi.server.RemoteStub;
import java.util.Date;

/* renamed from: freemarker.debug.impl.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase extends RemoteStub implements DebuggedEnvironment, DebugModel, Remote {

    /* renamed from: break, reason: not valid java name */
    private static Method f24338break = null;

    /* renamed from: case, reason: not valid java name */
    private static Method f24339case = null;

    /* renamed from: catch, reason: not valid java name */
    private static Method f24340catch = null;

    /* renamed from: class, reason: not valid java name */
    private static Method f24341class = null;

    /* renamed from: const, reason: not valid java name */
    private static Method f24342const = null;

    /* renamed from: do, reason: not valid java name */
    private static final long f24343do = 2;

    /* renamed from: else, reason: not valid java name */
    private static Method f24344else;

    /* renamed from: final, reason: not valid java name */
    private static Method f24345final;

    /* renamed from: for, reason: not valid java name */
    private static Method f24346for;

    /* renamed from: goto, reason: not valid java name */
    private static Method f24347goto;

    /* renamed from: if, reason: not valid java name */
    private static Method f24348if;

    /* renamed from: import, reason: not valid java name */
    public static /* synthetic */ Class f24349import;

    /* renamed from: native, reason: not valid java name */
    public static /* synthetic */ Class f24350native;

    /* renamed from: new, reason: not valid java name */
    private static Method f24351new;

    /* renamed from: public, reason: not valid java name */
    public static /* synthetic */ Class f24352public;

    /* renamed from: return, reason: not valid java name */
    public static /* synthetic */ Class f24353return;

    /* renamed from: super, reason: not valid java name */
    private static Method f24354super;

    /* renamed from: this, reason: not valid java name */
    private static Method f24355this;

    /* renamed from: throw, reason: not valid java name */
    private static Method f24356throw;

    /* renamed from: try, reason: not valid java name */
    private static Method f24357try;

    /* renamed from: while, reason: not valid java name */
    private static Method f24358while;

    static {
        try {
            Class clsM28406do = f24349import;
            if (clsM28406do == null) {
                clsM28406do = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do;
            }
            Class<?> cls = Integer.TYPE;
            f24348if = clsM28406do.getMethod("get", cls);
            Class clsM28406do2 = f24349import;
            if (clsM28406do2 == null) {
                clsM28406do2 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do2;
            }
            f24346for = clsM28406do2.getMethod("get", cls, cls);
            Class clsM28406do3 = f24349import;
            if (clsM28406do3 == null) {
                clsM28406do3 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do3;
            }
            Class<?>[] clsArr = new Class[1];
            Class<?> clsM28406do4 = f24350native;
            if (clsM28406do4 == null) {
                clsM28406do4 = m28406do("java.lang.String");
                f24350native = clsM28406do4;
            }
            clsArr[0] = clsM28406do4;
            f24351new = clsM28406do3.getMethod("get", clsArr);
            Class clsM28406do5 = f24349import;
            if (clsM28406do5 == null) {
                clsM28406do5 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do5;
            }
            Class<?>[] clsArr2 = new Class[1];
            Class<?> clsM28406do6 = f24352public;
            if (clsM28406do6 == null) {
                clsM28406do6 = m28406do("[Ljava.lang.String;");
                f24352public = clsM28406do6;
            }
            clsArr2[0] = clsM28406do6;
            f24357try = clsM28406do5.getMethod("get", clsArr2);
            Class clsM28406do7 = f24349import;
            if (clsM28406do7 == null) {
                clsM28406do7 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do7;
            }
            f24339case = clsM28406do7.getMethod("getAsBoolean", new Class[0]);
            Class clsM28406do8 = f24349import;
            if (clsM28406do8 == null) {
                clsM28406do8 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do8;
            }
            f24344else = clsM28406do8.getMethod("getAsDate", new Class[0]);
            Class clsM28406do9 = f24349import;
            if (clsM28406do9 == null) {
                clsM28406do9 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do9;
            }
            f24347goto = clsM28406do9.getMethod("getAsNumber", new Class[0]);
            Class clsM28406do10 = f24349import;
            if (clsM28406do10 == null) {
                clsM28406do10 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do10;
            }
            f24355this = clsM28406do10.getMethod("getAsString", new Class[0]);
            Class clsM28406do11 = f24349import;
            if (clsM28406do11 == null) {
                clsM28406do11 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do11;
            }
            f24338break = clsM28406do11.getMethod("getCollection", new Class[0]);
            Class clsM28406do12 = f24349import;
            if (clsM28406do12 == null) {
                clsM28406do12 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do12;
            }
            f24340catch = clsM28406do12.getMethod("getDateType", new Class[0]);
            Class clsM28406do13 = f24353return;
            if (clsM28406do13 == null) {
                clsM28406do13 = m28406do("freemarker.debug.DebuggedEnvironment");
                f24353return = clsM28406do13;
            }
            f24341class = clsM28406do13.getMethod("getId", new Class[0]);
            Class clsM28406do14 = f24349import;
            if (clsM28406do14 == null) {
                clsM28406do14 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do14;
            }
            f24342const = clsM28406do14.getMethod("getModelTypes", new Class[0]);
            Class clsM28406do15 = f24349import;
            if (clsM28406do15 == null) {
                clsM28406do15 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do15;
            }
            f24345final = clsM28406do15.getMethod("keys", new Class[0]);
            Class clsM28406do16 = f24353return;
            if (clsM28406do16 == null) {
                clsM28406do16 = m28406do("freemarker.debug.DebuggedEnvironment");
                f24353return = clsM28406do16;
            }
            f24354super = clsM28406do16.getMethod("resume", new Class[0]);
            Class clsM28406do17 = f24349import;
            if (clsM28406do17 == null) {
                clsM28406do17 = m28406do("freemarker.debug.DebugModel");
                f24349import = clsM28406do17;
            }
            f24356throw = clsM28406do17.getMethod("size", new Class[0]);
            Class clsM28406do18 = f24353return;
            if (clsM28406do18 == null) {
                clsM28406do18 = m28406do("freemarker.debug.DebuggedEnvironment");
                f24353return = clsM28406do18;
            }
            f24358while = clsM28406do18.getMethod("stop", new Class[0]);
        } catch (NoSuchMethodException unused) {
            throw new NoSuchMethodError("stub class initialization failed");
        }
    }

    public Ccase(RemoteRef remoteRef) {
        super(remoteRef);
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ Class m28406do(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public DebugModel get(int i) throws k52, UnexpectedException, RemoteException {
        try {
            return (DebugModel) ((RemoteObject) this).ref.invoke(this, f24348if, new Object[]{new Integer(i)}, -8133058733457407300L);
        } catch (k52 e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new UnexpectedException("undeclared checked exception", e3);
        } catch (RemoteException e4) {
            throw e4;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public DebugModel get(String str) throws k52, UnexpectedException, RemoteException {
        try {
            return (DebugModel) ((RemoteObject) this).ref.invoke(this, f24351new, new Object[]{str}, -724507235264020332L);
        } catch (k52 e) {
            throw e;
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public DebugModel[] get(int i, int i2) throws k52, UnexpectedException, RemoteException {
        try {
            return (DebugModel[]) ((RemoteObject) this).ref.invoke(this, f24346for, new Object[]{new Integer(i), new Integer(i2)}, 2963274088089045739L);
        } catch (k52 e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (RemoteException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public DebugModel[] get(String[] strArr) throws k52, UnexpectedException, RemoteException {
        try {
            return (DebugModel[]) ((RemoteObject) this).ref.invoke(this, f24357try, new Object[]{strArr}, -5400820492225333337L);
        } catch (k52 e) {
            throw e;
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public boolean getAsBoolean() throws k52, UnexpectedException, RemoteException {
        try {
            return ((Boolean) ((RemoteObject) this).ref.invoke(this, f24339case, (Object[]) null, 315270873791227726L)).booleanValue();
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public Date getAsDate() throws k52, UnexpectedException, RemoteException {
        try {
            return (Date) ((RemoteObject) this).ref.invoke(this, f24344else, (Object[]) null, -6762406881188215033L);
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public Number getAsNumber() throws k52, UnexpectedException, RemoteException {
        try {
            return (Number) ((RemoteObject) this).ref.invoke(this, f24347goto, (Object[]) null, -6188010426576701549L);
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public String getAsString() throws k52, UnexpectedException, RemoteException {
        try {
            return (String) ((RemoteObject) this).ref.invoke(this, f24355this, (Object[]) null, -5749749291031241731L);
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public DebugModel[] getCollection() throws k52, UnexpectedException, RemoteException {
        try {
            return (DebugModel[]) ((RemoteObject) this).ref.invoke(this, f24338break, (Object[]) null, -1992223977663617938L);
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public int getDateType() throws k52, UnexpectedException, RemoteException {
        try {
            return ((Integer) ((RemoteObject) this).ref.invoke(this, f24340catch, (Object[]) null, -3242981404503740604L)).intValue();
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebuggedEnvironment
    public long getId() throws UnexpectedException, RemoteException {
        try {
            return ((Long) ((RemoteObject) this).ref.invoke(this, f24341class, (Object[]) null, -6040770469254561000L)).longValue();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnexpectedException("undeclared checked exception", e2);
        } catch (RemoteException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public int getModelTypes() throws UnexpectedException, RemoteException {
        try {
            return ((Integer) ((RemoteObject) this).ref.invoke(this, f24342const, (Object[]) null, -3673171458095957561L)).intValue();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnexpectedException("undeclared checked exception", e2);
        } catch (RemoteException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public String[] keys() throws k52, UnexpectedException, RemoteException {
        try {
            return (String[]) ((RemoteObject) this).ref.invoke(this, f24345final, (Object[]) null, 563174456558742983L);
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebuggedEnvironment
    public void resume() throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24354super, (Object[]) null, 4126995468303716546L);
        } catch (RemoteException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new UnexpectedException("undeclared checked exception", e3);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebugModel
    public int size() throws k52, UnexpectedException, RemoteException {
        try {
            return ((Integer) ((RemoteObject) this).ref.invoke(this, f24356throw, (Object[]) null, 4495240443643581991L)).intValue();
        } catch (RemoteException e) {
            throw e;
        } catch (k52 e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new UnexpectedException("undeclared checked exception", e4);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebuggedEnvironment
    public void stop() throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24358while, (Object[]) null, -2856118408655404442L);
        } catch (RemoteException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new UnexpectedException("undeclared checked exception", e3);
        }
    }
}
