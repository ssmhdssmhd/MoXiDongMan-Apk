package android.support.v4;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.repackage.a.a.a.a;

/* loaded from: classes3.dex */
public class zl2 {

    /* renamed from: do, reason: not valid java name */
    public org.repackage.a.a.a.a f8597do = null;

    /* renamed from: if, reason: not valid java name */
    public String f8599if = null;

    /* renamed from: for, reason: not valid java name */
    public String f8598for = null;

    /* renamed from: new, reason: not valid java name */
    public final Object f8600new = new Object();

    /* renamed from: try, reason: not valid java name */
    public ServiceConnection f8601try = new Cdo();

    /* renamed from: android.support.v4.zl2$do, reason: invalid class name */
    public class Cdo implements ServiceConnection {
        public Cdo() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            zl2.this.f8597do = a.Cdo.m38056do(iBinder);
            synchronized (zl2.this.f8600new) {
                zl2.this.f8600new.notify();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            zl2.this.f8597do = null;
        }
    }

    /* renamed from: android.support.v4.zl2$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final zl2 f8603do = new zl2(null);
    }

    public /* synthetic */ zl2(Cdo cdo) {
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized String m10245do(Context context, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot run on MainThread");
        }
        if (this.f8597do != null) {
            try {
                return m10246for(context, str);
            } catch (RemoteException e) {
                e.printStackTrace();
                return "";
            }
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        if (context.bindService(intent, this.f8601try, 1)) {
            synchronized (this.f8600new) {
                try {
                    this.f8600new.wait(3000L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            if (this.f8597do != null) {
                return "";
            }
            try {
                return m10246for(context, str);
            } catch (RemoteException e3) {
                e3.printStackTrace();
                return "";
            }
        }
        if (this.f8597do != null) {
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final String m10246for(Context context, String str) throws NoSuchAlgorithmException {
        Signature[] signatureArr;
        if (TextUtils.isEmpty(this.f8599if)) {
            this.f8599if = context.getPackageName();
        }
        if (TextUtils.isEmpty(this.f8598for)) {
            String string = null;
            try {
                signatureArr = context.getPackageManager().getPackageInfo(this.f8599if, 64).signatures;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                signatureArr = null;
            }
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        byte[] bArrDigest = messageDigest.digest(byteArray);
                        StringBuilder sb = new StringBuilder();
                        for (byte b : bArrDigest) {
                            sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
                        }
                        string = sb.toString();
                    }
                } catch (NoSuchAlgorithmException e2) {
                    e2.printStackTrace();
                }
            }
            this.f8598for = string;
        }
        String strM38057do = ((a.Cdo.C0490do) this.f8597do).m38057do(this.f8599if, this.f8598for, str);
        return TextUtils.isEmpty(strM38057do) ? "" : strM38057do;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m10247if(Context context) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 0);
            return Build.VERSION.SDK_INT >= 28 ? packageInfo != null && packageInfo.getLongVersionCode() >= 1 : packageInfo != null && packageInfo.versionCode >= 1;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
