package com.google.zxing;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.wn1;
import java.util.Map;

/* loaded from: classes2.dex */
public interface Reader {
    wn1 decode(Cfor cfor) throws ll, ld0, j41;

    wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws ll, ld0, j41;

    void reset();
}
