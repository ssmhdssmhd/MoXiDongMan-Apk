package org.repackage.a.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public interface a extends IInterface {

    /* renamed from: org.repackage.a.a.a.a$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements a {

        /* renamed from: org.repackage.a.a.a.a$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0490do implements a {

            /* renamed from: do, reason: not valid java name */
            public IBinder f34108do;

            public C0490do(IBinder iBinder) {
                this.f34108do = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f34108do;
            }

            /* renamed from: do, reason: not valid java name */
            public String m38057do(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.f34108do.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static a m38056do(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0490do(iBinder) : (a) iInterfaceQueryLocalInterface;
        }
    }
}
