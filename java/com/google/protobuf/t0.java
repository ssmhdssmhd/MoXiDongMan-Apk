package com.google.protobuf;

/* loaded from: classes2.dex */
final class t0 implements MessageInfo {

    /* renamed from: do, reason: not valid java name */
    private final MessageLite f17226do;

    /* renamed from: for, reason: not valid java name */
    private final Object[] f17227for;

    /* renamed from: if, reason: not valid java name */
    private final String f17228if;

    /* renamed from: new, reason: not valid java name */
    private final int f17229new;

    public t0(MessageLite messageLite, String str, Object[] objArr) {
        this.f17226do = messageLite;
        this.f17228if = str;
        this.f17227for = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f17229new = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.f17229new = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public Object[] m21182do() {
        return this.f17227for;
    }

    @Override // com.google.protobuf.MessageInfo
    public MessageLite getDefaultInstance() {
        return this.f17226do;
    }

    @Override // com.google.protobuf.MessageInfo
    public p0 getSyntax() {
        return (this.f17229new & 1) == 1 ? p0.PROTO2 : p0.PROTO3;
    }

    /* renamed from: if, reason: not valid java name */
    public String m21183if() {
        return this.f17228if;
    }

    @Override // com.google.protobuf.MessageInfo
    public boolean isMessageSetWireFormat() {
        return (this.f17229new & 2) == 2;
    }
}
