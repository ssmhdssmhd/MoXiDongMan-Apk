package freemarker.debug.impl;

import android.support.v4.k52;
import freemarker.debug.DebugModel;
import java.lang.reflect.Method;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.rmi.UnexpectedException;
import java.rmi.server.RemoteObject;
import java.rmi.server.RemoteRef;
import java.rmi.server.RemoteStub;
import java.util.Date;

/* renamed from: freemarker.debug.impl.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew extends RemoteStub implements DebugModel, Remote {

    /* renamed from: break, reason: not valid java name */
    private static Method f24399break = null;

    /* renamed from: case, reason: not valid java name */
    private static Method f24400case = null;

    /* renamed from: catch, reason: not valid java name */
    private static Method f24401catch = null;

    /* renamed from: class, reason: not valid java name */
    private static Method f24402class = null;

    /* renamed from: const, reason: not valid java name */
    private static Method f24403const = null;

    /* renamed from: do, reason: not valid java name */
    private static final long f24404do = 2;

    /* renamed from: else, reason: not valid java name */
    private static Method f24405else;

    /* renamed from: final, reason: not valid java name */
    private static Method f24406final;

    /* renamed from: for, reason: not valid java name */
    private static Method f24407for;

    /* renamed from: goto, reason: not valid java name */
    private static Method f24408goto;

    /* renamed from: if, reason: not valid java name */
    private static Method f24409if;

    /* renamed from: new, reason: not valid java name */
    private static Method f24410new;

    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ Class f24411super;

    /* renamed from: this, reason: not valid java name */
    private static Method f24412this;

    /* renamed from: throw, reason: not valid java name */
    public static /* synthetic */ Class f24413throw;

    /* renamed from: try, reason: not valid java name */
    private static Method f24414try;

    /* renamed from: while, reason: not valid java name */
    public static /* synthetic */ Class f24415while;

    static {
        try {
            Class clsM28445do = f24411super;
            if (clsM28445do == null) {
                clsM28445do = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do;
            }
            Class<?> cls = Integer.TYPE;
            f24409if = clsM28445do.getMethod("get", cls);
            Class clsM28445do2 = f24411super;
            if (clsM28445do2 == null) {
                clsM28445do2 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do2;
            }
            f24407for = clsM28445do2.getMethod("get", cls, cls);
            Class clsM28445do3 = f24411super;
            if (clsM28445do3 == null) {
                clsM28445do3 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do3;
            }
            Class<?>[] clsArr = new Class[1];
            Class<?> clsM28445do4 = f24413throw;
            if (clsM28445do4 == null) {
                clsM28445do4 = m28445do("java.lang.String");
                f24413throw = clsM28445do4;
            }
            clsArr[0] = clsM28445do4;
            f24410new = clsM28445do3.getMethod("get", clsArr);
            Class clsM28445do5 = f24411super;
            if (clsM28445do5 == null) {
                clsM28445do5 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do5;
            }
            Class<?>[] clsArr2 = new Class[1];
            Class<?> clsM28445do6 = f24415while;
            if (clsM28445do6 == null) {
                clsM28445do6 = m28445do("[Ljava.lang.String;");
                f24415while = clsM28445do6;
            }
            clsArr2[0] = clsM28445do6;
            f24414try = clsM28445do5.getMethod("get", clsArr2);
            Class clsM28445do7 = f24411super;
            if (clsM28445do7 == null) {
                clsM28445do7 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do7;
            }
            f24400case = clsM28445do7.getMethod("getAsBoolean", new Class[0]);
            Class clsM28445do8 = f24411super;
            if (clsM28445do8 == null) {
                clsM28445do8 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do8;
            }
            f24405else = clsM28445do8.getMethod("getAsDate", new Class[0]);
            Class clsM28445do9 = f24411super;
            if (clsM28445do9 == null) {
                clsM28445do9 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do9;
            }
            f24408goto = clsM28445do9.getMethod("getAsNumber", new Class[0]);
            Class clsM28445do10 = f24411super;
            if (clsM28445do10 == null) {
                clsM28445do10 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do10;
            }
            f24412this = clsM28445do10.getMethod("getAsString", new Class[0]);
            Class clsM28445do11 = f24411super;
            if (clsM28445do11 == null) {
                clsM28445do11 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do11;
            }
            f24399break = clsM28445do11.getMethod("getCollection", new Class[0]);
            Class clsM28445do12 = f24411super;
            if (clsM28445do12 == null) {
                clsM28445do12 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do12;
            }
            f24401catch = clsM28445do12.getMethod("getDateType", new Class[0]);
            Class clsM28445do13 = f24411super;
            if (clsM28445do13 == null) {
                clsM28445do13 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do13;
            }
            f24402class = clsM28445do13.getMethod("getModelTypes", new Class[0]);
            Class clsM28445do14 = f24411super;
            if (clsM28445do14 == null) {
                clsM28445do14 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do14;
            }
            f24403const = clsM28445do14.getMethod("keys", new Class[0]);
            Class clsM28445do15 = f24411super;
            if (clsM28445do15 == null) {
                clsM28445do15 = m28445do("freemarker.debug.DebugModel");
                f24411super = clsM28445do15;
            }
            f24406final = clsM28445do15.getMethod("size", new Class[0]);
        } catch (NoSuchMethodException unused) {
            throw new NoSuchMethodError("stub class initialization failed");
        }
    }

    public Cnew(RemoteRef remoteRef) {
        super(remoteRef);
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ Class m28445do(String str) {
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
            return (DebugModel) ((RemoteObject) this).ref.invoke(this, f24409if, new Object[]{new Integer(i)}, -8133058733457407300L);
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
            return (DebugModel) ((RemoteObject) this).ref.invoke(this, f24410new, new Object[]{str}, -724507235264020332L);
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
            return (DebugModel[]) ((RemoteObject) this).ref.invoke(this, f24407for, new Object[]{new Integer(i), new Integer(i2)}, 2963274088089045739L);
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
            return (DebugModel[]) ((RemoteObject) this).ref.invoke(this, f24414try, new Object[]{strArr}, -5400820492225333337L);
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
            return ((Boolean) ((RemoteObject) this).ref.invoke(this, f24400case, (Object[]) null, 315270873791227726L)).booleanValue();
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
            return (Date) ((RemoteObject) this).ref.invoke(this, f24405else, (Object[]) null, -6762406881188215033L);
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
            return (Number) ((RemoteObject) this).ref.invoke(this, f24408goto, (Object[]) null, -6188010426576701549L);
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
            return (String) ((RemoteObject) this).ref.invoke(this, f24412this, (Object[]) null, -5749749291031241731L);
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
            return (DebugModel[]) ((RemoteObject) this).ref.invoke(this, f24399break, (Object[]) null, -1992223977663617938L);
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
            return ((Integer) ((RemoteObject) this).ref.invoke(this, f24401catch, (Object[]) null, -3242981404503740604L)).intValue();
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
    public int getModelTypes() throws UnexpectedException, RemoteException {
        try {
            return ((Integer) ((RemoteObject) this).ref.invoke(this, f24402class, (Object[]) null, -3673171458095957561L)).intValue();
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
            return (String[]) ((RemoteObject) this).ref.invoke(this, f24403const, (Object[]) null, 563174456558742983L);
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
    public int size() throws k52, UnexpectedException, RemoteException {
        try {
            return ((Integer) ((RemoteObject) this).ref.invoke(this, f24406final, (Object[]) null, 4495240443643581991L)).intValue();
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
}
