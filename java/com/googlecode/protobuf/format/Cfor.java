package com.googlecode.protobuf.format;

/* renamed from: com.googlecode.protobuf.format.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor {

    /* renamed from: com.googlecode.protobuf.format.for$do, reason: invalid class name */
    public enum Cdo {
        COUCHDB(Cif.class),
        HTML(Cnew.class),
        JAVA_PROPS(Ctry.class),
        JSON(Ccase.class),
        XML(Cbreak.class),
        SMILE(Cthis.class),
        JSON_JACKSON(Celse.class),
        XML_JAVAX(Ccatch.class);

        private Class<? extends Cgoto> formatterClass;

        Cdo(Class cls) {
            this.formatterClass = cls;
        }

        public Class<? extends Cgoto> getFormatterClass() {
            return this.formatterClass;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public Cgoto m22576do(Cdo cdo) {
        try {
            return cdo.getFormatterClass().newInstance();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        }
    }
}
