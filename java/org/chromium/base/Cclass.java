package org.chromium.base;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.ImportantFileWriterAndroid;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.class, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cclass implements ImportantFileWriterAndroid.Natives {

    /* renamed from: do, reason: not valid java name */
    private static ImportantFileWriterAndroid.Natives f33149do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<ImportantFileWriterAndroid.Natives> f33150if = new Cdo();

    /* renamed from: org.chromium.base.class$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<ImportantFileWriterAndroid.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(ImportantFileWriterAndroid.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            ImportantFileWriterAndroid.Natives unused = Cclass.f33149do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static ImportantFileWriterAndroid.Natives m37016if() {
        if (oe0.f4582do) {
            ImportantFileWriterAndroid.Natives natives = f33149do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.ImportantFileWriterAndroid.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cclass();
    }

    @Override // org.chromium.base.ImportantFileWriterAndroid.Natives
    public boolean writeFileAtomically(String str, byte[] bArr) {
        return oe0.m5587extends(str, bArr);
    }
}
