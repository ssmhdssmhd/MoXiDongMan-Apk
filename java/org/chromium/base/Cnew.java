package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.CommandLine;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.new, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cnew implements CommandLine.Natives {

    /* renamed from: do, reason: not valid java name */
    private static CommandLine.Natives f33211do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<CommandLine.Natives> f33212if = new Cdo();

    /* renamed from: org.chromium.base.new$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<CommandLine.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(CommandLine.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            CommandLine.Natives unused = Cnew.f33211do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CommandLine.Natives m37182if() {
        if (oe0.f4582do) {
            CommandLine.Natives natives = f33211do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.CommandLine.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cnew();
    }

    @Override // org.chromium.base.CommandLine.Natives
    public void appendSwitch(String str) {
        oe0.m5592if(str);
    }

    @Override // org.chromium.base.CommandLine.Natives
    public void appendSwitchWithValue(String str, String str2) {
        oe0.m5590for(str, str2);
    }

    @Override // org.chromium.base.CommandLine.Natives
    public void appendSwitchesAndArguments(String[] strArr) {
        oe0.m5598new(strArr);
    }

    @Override // org.chromium.base.CommandLine.Natives
    public String getSwitchValue(String str) {
        return oe0.m5613try(str);
    }

    @Override // org.chromium.base.CommandLine.Natives
    public String[] getSwitchesFlattened() {
        return oe0.m5579case();
    }

    @Override // org.chromium.base.CommandLine.Natives
    public boolean hasSwitch(String str) {
        return oe0.m5586else(str);
    }

    @Override // org.chromium.base.CommandLine.Natives
    public void init(String[] strArr) {
        oe0.m5591goto(strArr);
    }

    @Override // org.chromium.base.CommandLine.Natives
    public void removeSwitch(String str) {
        oe0.m5609this(str);
    }
}
