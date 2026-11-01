package com.googlecode.protobuf.format;

import com.google.protobuf.Cprotected;
import com.google.protobuf.Message;
import com.google.protobuf.t1;
import com.googlecode.protobuf.format.Ccase;
import java.io.IOException;

/* renamed from: com.googlecode.protobuf.format.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif extends Ccase {

    /* renamed from: com.googlecode.protobuf.format.if$do, reason: invalid class name */
    public static class Cdo extends Ccase.Cfor {
        public Cdo(Appendable appendable) {
            super(appendable);
        }

        @Override // com.googlecode.protobuf.format.Ccase.Cfor
        /* renamed from: for */
        public void mo22520for(CharSequence charSequence) throws IOException {
            if ("id".equals(charSequence)) {
                super.mo22520for("_id");
            } else if ("rev".equals(charSequence)) {
                super.mo22520for("_rev");
            } else {
                super.mo22520for(charSequence);
            }
        }
    }

    /* renamed from: com.googlecode.protobuf.format.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0170if extends Ccase.Ctry {
        public C0170if(CharSequence charSequence) {
            super(charSequence);
        }

        @Override // com.googlecode.protobuf.format.Ccase.Ctry
        /* renamed from: else */
        public String mo22531else() throws Ccase.Cnew {
            String strMo22531else = super.mo22531else();
            return "_id".equals(strMo22531else) ? "id" : "_rev".equals(strMo22531else) ? "rev" : strMo22531else;
        }
    }

    @Override // com.googlecode.protobuf.format.Ccase, com.googlecode.protobuf.format.Cdo
    /* renamed from: const */
    public void mo22469const(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws NumberFormatException, Ccase.Cnew {
        C0170if c0170if = new C0170if(charSequence);
        c0170if.m22534if("{");
        while (!c0170if.m22540switch("}")) {
            m22514default(c0170if, cprotected, builder);
        }
    }

    @Override // com.googlecode.protobuf.format.Ccase, com.googlecode.protobuf.format.Cdo
    /* renamed from: super */
    public void mo22471super(Message message, Appendable appendable) throws IOException {
        Cdo cdo = new Cdo(appendable);
        cdo.mo22520for("{");
        m22515strictfp(message, cdo);
        cdo.mo22520for("}");
    }

    @Override // com.googlecode.protobuf.format.Ccase, com.googlecode.protobuf.format.Cdo
    /* renamed from: throw */
    public void mo22472throw(t1 t1Var, Appendable appendable) throws IOException {
        Cdo cdo = new Cdo(appendable);
        cdo.mo22520for("{");
        m22516transient(t1Var, cdo);
        cdo.mo22520for("}");
    }
}
