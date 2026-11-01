package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessage.Cdo;
import com.google.protobuf.MessageOrBuilder;

/* loaded from: classes2.dex */
public class a1<MType extends AbstractMessage, BType extends AbstractMessage.Cdo, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {

    /* renamed from: do, reason: not valid java name */
    private AbstractMessage.BuilderParent f16594do;

    /* renamed from: for, reason: not valid java name */
    private MType f16595for;

    /* renamed from: if, reason: not valid java name */
    private BType f16596if;

    /* renamed from: new, reason: not valid java name */
    private boolean f16597new;

    public a1(MType mtype, AbstractMessage.BuilderParent builderParent, boolean z) {
        this.f16595for = (MType) Internal.m19623new(mtype);
        this.f16594do = builderParent;
        this.f16597new = z;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m19684goto() {
        AbstractMessage.BuilderParent builderParent;
        if (this.f16596if != null) {
            this.f16595for = null;
        }
        if (!this.f16597new || (builderParent = this.f16594do) == null) {
            return;
        }
        builderParent.markDirty();
        this.f16597new = false;
    }

    /* renamed from: case, reason: not valid java name */
    public IType m19685case() {
        BType btype = this.f16596if;
        return btype != null ? btype : this.f16595for;
    }

    /* renamed from: do, reason: not valid java name */
    public MType m19686do() {
        this.f16597new = true;
        return (MType) m19692try();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a1<MType, BType, IType> m19687else(MType mtype) {
        if (this.f16596if == null) {
            Message message = this.f16595for;
            if (message == message.getDefaultInstanceForType()) {
                this.f16595for = mtype;
            } else {
                m19690new().mergeFrom((Message) mtype);
            }
        }
        m19684goto();
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public void m19688for() {
        this.f16594do = null;
    }

    /* renamed from: if, reason: not valid java name */
    public a1<MType, BType, IType> m19689if() {
        MType mtype = this.f16595for;
        this.f16595for = (MType) (mtype != null ? mtype.getDefaultInstanceForType() : this.f16596if.getDefaultInstanceForType());
        BType btype = this.f16596if;
        if (btype != null) {
            btype.dispose();
            this.f16596if = null;
        }
        m19684goto();
        return this;
    }

    @Override // com.google.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        m19684goto();
    }

    /* renamed from: new, reason: not valid java name */
    public BType m19690new() {
        if (this.f16596if == null) {
            BType btype = (BType) this.f16595for.newBuilderForType(this);
            this.f16596if = btype;
            btype.mergeFrom(this.f16595for);
            this.f16596if.markClean();
        }
        return this.f16596if;
    }

    /* renamed from: this, reason: not valid java name */
    public a1<MType, BType, IType> m19691this(MType mtype) {
        this.f16595for = (MType) Internal.m19623new(mtype);
        BType btype = this.f16596if;
        if (btype != null) {
            btype.dispose();
            this.f16596if = null;
        }
        m19684goto();
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public MType m19692try() {
        if (this.f16595for == null) {
            this.f16595for = (MType) this.f16596if.buildPartial();
        }
        return this.f16595for;
    }
}
