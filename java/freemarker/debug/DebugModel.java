package freemarker.debug;

import android.support.v4.k52;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.Date;

/* loaded from: classes.dex */
public interface DebugModel extends Remote {
    public static final int TYPE_BOOLEAN = 8;
    public static final int TYPE_COLLECTION = 32;
    public static final int TYPE_CONFIGURATION = 8192;
    public static final int TYPE_DATE = 4;
    public static final int TYPE_ENVIRONMENT = 2048;
    public static final int TYPE_HASH = 64;
    public static final int TYPE_HASH_EX = 128;
    public static final int TYPE_METHOD = 256;
    public static final int TYPE_METHOD_EX = 512;
    public static final int TYPE_NUMBER = 2;
    public static final int TYPE_SCALAR = 1;
    public static final int TYPE_SEQUENCE = 16;
    public static final int TYPE_TEMPLATE = 4096;
    public static final int TYPE_TRANSFORM = 1024;

    DebugModel get(int i) throws k52, RemoteException;

    DebugModel get(String str) throws k52, RemoteException;

    DebugModel[] get(int i, int i2) throws k52, RemoteException;

    DebugModel[] get(String[] strArr) throws k52, RemoteException;

    boolean getAsBoolean() throws k52, RemoteException;

    Date getAsDate() throws k52, RemoteException;

    Number getAsNumber() throws k52, RemoteException;

    String getAsString() throws k52, RemoteException;

    DebugModel[] getCollection() throws k52, RemoteException;

    int getDateType() throws k52, RemoteException;

    int getModelTypes() throws RemoteException;

    String[] keys() throws k52, RemoteException;

    int size() throws k52, RemoteException;
}
