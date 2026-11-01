package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;

@ki0
/* renamed from: com.google.common.collect.synchronized, reason: invalid class name */
/* loaded from: classes2.dex */
final class Csynchronized implements Serializable {
    private int value;

    public Csynchronized(int i) {
        this.value = i;
    }

    public void add(int i) {
        this.value += i;
    }

    public int addAndGet(int i) {
        int i2 = this.value + i;
        this.value = i2;
        return i2;
    }

    public boolean equals(@b51 Object obj) {
        return (obj instanceof Csynchronized) && ((Csynchronized) obj).value == this.value;
    }

    public int get() {
        return this.value;
    }

    public int getAndSet(int i) {
        int i2 = this.value;
        this.value = i;
        return i2;
    }

    public int hashCode() {
        return this.value;
    }

    public void set(int i) {
        this.value = i;
    }

    public String toString() {
        return Integer.toString(this.value);
    }
}
