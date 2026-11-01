package com.wsw.cospa.bean;

/* loaded from: classes2.dex */
public class Switcher<T> {
    private T element;
    private boolean enable;

    public Switcher(T t, boolean z) {
        this.element = t;
        this.enable = z;
    }

    public T getElement() {
        return this.element;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setElement(T t) {
        this.element = t;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void switchEnable() {
        this.enable = !this.enable;
    }
}
