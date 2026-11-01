package com.efs.sdk.base.core.e.a;

import com.efs.sdk.base.Constants;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.processor.action.ILogEncryptAction;

/* loaded from: classes.dex */
public final class d extends a {
    private ILogEncryptAction b;

    public d() {
        if (ControllerCenter.getGlobalEnvStruct().getLogEncryptAction() == null) {
            this.b = new com.efs.sdk.base.core.e.b();
        } else {
            this.b = ControllerCenter.getGlobalEnvStruct().getLogEncryptAction();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @Override // com.efs.sdk.base.core.e.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.efs.sdk.base.core.d.b bVar) {
        com.efs.sdk.base.core.d.a aVar = bVar.a;
        boolean z = false;
        if ((1 != aVar.e) || "wa".equals(aVar.a) || Constants.LOG_TYPE_STARTPERF.equals(bVar.a.a)) {
            z = true;
        } else {
            com.efs.sdk.base.core.d.a aVar2 = bVar.a;
            if ((1 == aVar2.b && !bVar.b.a) || 1 == aVar2.c) {
            }
        }
        if (z) {
            b(bVar);
            return;
        }
        byte[] bArrEncrypt = this.b.encrypt(ControllerCenter.getGlobalEnvStruct().getSecret(), bVar.c);
        if (bArrEncrypt != null) {
            bVar.a(bArrEncrypt);
            bVar.a(this.b.getDeVal());
        }
        b(bVar);
    }
}
