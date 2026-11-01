package org.mozilla.javascript;

/* loaded from: classes3.dex */
class BeanProperty {
    public MemberBox getter;
    public MemberBox setter;
    public NativeJavaMethod setters;

    public BeanProperty(MemberBox memberBox, MemberBox memberBox2, NativeJavaMethod nativeJavaMethod) {
        this.getter = memberBox;
        this.setter = memberBox2;
        this.setters = nativeJavaMethod;
    }
}
