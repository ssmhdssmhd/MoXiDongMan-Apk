package com.google.protobuf;

import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Ccase;
import com.google.protobuf.MessageOrBuilder;

/* loaded from: classes2.dex */
public class z0<MType extends GeneratedMessage, BType extends GeneratedMessage.Ccase, IType extends MessageOrBuilder> implements GeneratedMessage.BuilderParent {

    /* renamed from: do, reason: not valid java name */
    private GeneratedMessage.BuilderParent f17356do;

    /* renamed from: for, reason: not valid java name */
    private MType f17357for;

    /* renamed from: if, reason: not valid java name */
    private BType f17358if;

    /* renamed from: new, reason: not valid java name */
    private boolean f17359new;

    public z0(MType mtype, GeneratedMessage.BuilderParent builderParent, boolean z) {
        this.f17357for = (MType) Internal.m19623new(mtype);
        this.f17356do = builderParent;
        this.f17359new = z;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m21647goto() {
        GeneratedMessage.BuilderParent builderParent;
        if (this.f17358if != null) {
            this.f17357for = null;
        }
        if (!this.f17359new || (builderParent = this.f17356do) == null) {
            return;
        }
        builderParent.markDirty();
        this.f17359new = false;
    }

    /* renamed from: case, reason: not valid java name */
    public IType m21648case() {
        BType btype = this.f17358if;
        return btype != null ? btype : this.f17357for;
    }

    /* renamed from: do, reason: not valid java name */
    public MType m21649do() {
        this.f17359new = true;
        return (MType) m21655try();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public z0<MType, BType, IType> m21650else(MType mtype) {
        if (this.f17358if == null) {
            Message message = this.f17357for;
            if (message == message.getDefaultInstanceForType()) {
                this.f17357for = mtype;
            } else {
                m21653new().mergeFrom((Message) mtype);
            }
        }
        m21647goto();
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public void m21651for() {
        this.f17356do = null;
    }

    /* renamed from: if, reason: not valid java name */
    public z0<MType, BType, IType> m21652if() {
        MType mtype = this.f17357for;
        this.f17357for = (MType) (mtype != null ? mtype.getDefaultInstanceForType() : this.f17358if.getDefaultInstanceForType());
        BType btype = this.f17358if;
        if (btype != null) {
            btype.dispose();
            this.f17358if = null;
        }
        m21647goto();
        return this;
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m21647goto();
    }

    /* renamed from: new, reason: not valid java name */
    public BType m21653new() {
        if (this.f17358if == null) {
            BType btype = (BType) this.f17357for.newBuilderForType(this);
            this.f17358if = btype;
            btype.mergeFrom(this.f17357for);
            this.f17358if.markClean();
        }
        return this.f17358if;
    }

    /* renamed from: this, reason: not valid java name */
    public z0<MType, BType, IType> m21654this(MType mtype) {
        this.f17357for = (MType) Internal.m19623new(mtype);
        BType btype = this.f17358if;
        if (btype != null) {
            btype.dispose();
            this.f17358if = null;
        }
        m21647goto();
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public MType m21655try() {
        if (this.f17357for == null) {
            this.f17357for = (MType) this.f17358if.buildPartial();
        }
        return this.f17357for;
    }
}
