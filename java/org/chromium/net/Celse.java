package org.chromium.net;

import java.util.concurrent.Executor;
import org.chromium.net.Cnative;
import org.chromium.net.Creturn;

/* renamed from: org.chromium.net.else, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Celse extends Creturn {

    /* renamed from: org.chromium.net.else$do, reason: invalid class name */
    public static abstract class Cdo extends Creturn.Cdo {

        /* renamed from: case, reason: not valid java name */
        public static final int f33451case = 0;

        /* renamed from: else, reason: not valid java name */
        public static final int f33452else = 1;

        /* renamed from: goto, reason: not valid java name */
        public static final int f33453goto = 2;

        @Override // org.chromium.net.Creturn.Cdo
        /* renamed from: break, reason: merged with bridge method [inline-methods] */
        public abstract Cdo mo1279if();

        @Override // org.chromium.net.Creturn.Cdo
        /* renamed from: catch, reason: merged with bridge method [inline-methods] */
        public abstract Celse mo1277for();

        @Override // org.chromium.net.Creturn.Cdo
        /* renamed from: class, reason: merged with bridge method [inline-methods] */
        public abstract Cdo mo1282new();

        /* renamed from: const */
        public Cdo mo1269const() {
            return this;
        }

        @Override // org.chromium.net.Creturn.Cdo
        /* renamed from: final, reason: merged with bridge method [inline-methods] */
        public abstract Cdo mo1294try(String str);

        @Override // org.chromium.net.Creturn.Cdo
        /* renamed from: goto, reason: merged with bridge method [inline-methods] */
        public abstract Cdo mo1272do(String str, String str2);

        /* renamed from: import */
        public Cdo mo1280import(int i) {
            return this;
        }

        /* renamed from: native */
        public Cdo mo1281native(int i) {
            return this;
        }

        @Override // org.chromium.net.Creturn.Cdo
        /* renamed from: public, reason: merged with bridge method [inline-methods] */
        public abstract Cdo mo1273else(Cpublic cpublic, Executor executor);

        /* renamed from: super */
        public Cdo mo1289super(int i) {
            return this;
        }

        /* renamed from: this */
        public Cdo mo1291this(Object obj) {
            return this;
        }

        @Override // org.chromium.net.Creturn.Cdo
        /* renamed from: throw, reason: merged with bridge method [inline-methods] */
        public abstract Cdo mo1266case(int i);

        /* renamed from: while */
        public Cdo mo1295while(Cnative.Cdo cdo) {
            return this;
        }
    }
}
