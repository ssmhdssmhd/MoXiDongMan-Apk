package com.google.common.io;

import android.support.v4.lf;
import android.support.v4.li0;
import java.io.IOException;
import org.apache.commons.lang3.Cclass;

@li0
/* renamed from: com.google.common.io.while, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cwhile {

    /* renamed from: do, reason: not valid java name */
    private StringBuilder f15366do = new StringBuilder();

    /* renamed from: if, reason: not valid java name */
    private boolean f15367if;

    @lf
    /* renamed from: for, reason: not valid java name */
    private boolean m17192for(boolean z) throws IOException {
        mo17075new(this.f15366do.toString(), this.f15367if ? z ? "\r\n" : Cclass.f28656new : z ? "\n" : "");
        this.f15366do = new StringBuilder();
        this.f15367if = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001a  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m17193do(char[] cArr, int i, int i2) throws IOException {
        int i3;
        if (!this.f15367if || i2 <= 0) {
            i3 = i;
        } else {
            if (m17192for(cArr[i] == '\n')) {
                i3 = i + 1;
            }
        }
        int i4 = i + i2;
        int i5 = i3;
        while (i3 < i4) {
            char c = cArr[i3];
            if (c == '\n') {
                this.f15366do.append(cArr, i5, i3 - i5);
                m17192for(true);
            } else if (c != '\r') {
                i3++;
            } else {
                this.f15366do.append(cArr, i5, i3 - i5);
                this.f15367if = true;
                int i6 = i3 + 1;
                if (i6 < i4) {
                    if (m17192for(cArr[i6] == '\n')) {
                        i3 = i6;
                    }
                }
            }
            i5 = i3 + 1;
            i3++;
        }
        this.f15366do.append(cArr, i5, i4 - i5);
    }

    /* renamed from: if, reason: not valid java name */
    public void m17194if() throws IOException {
        if (this.f15367if || this.f15366do.length() > 0) {
            m17192for(false);
        }
    }

    /* renamed from: new */
    public abstract void mo17075new(String str, String str2) throws IOException;
}
