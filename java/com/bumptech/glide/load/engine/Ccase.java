package com.bumptech.glide.load.engine;

/* renamed from: com.bumptech.glide.load.engine.case, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Ccase {

    /* renamed from: do, reason: not valid java name */
    public static final Ccase f9734do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    public static final Ccase f9736if = new Cif();

    /* renamed from: for, reason: not valid java name */
    public static final Ccase f9735for = new Cfor();

    /* renamed from: new, reason: not valid java name */
    public static final Ccase f9737new = new Cnew();

    /* renamed from: try, reason: not valid java name */
    public static final Ccase f9738try = new Ctry();

    /* renamed from: com.bumptech.glide.load.engine.case$do, reason: invalid class name */
    public class Cdo extends Ccase {
        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: do */
        public boolean mo11455do() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: for */
        public boolean mo11456for(com.bumptech.glide.load.Cdo cdo) {
            return cdo == com.bumptech.glide.load.Cdo.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: if */
        public boolean mo11457if() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: new */
        public boolean mo11458new(boolean z, com.bumptech.glide.load.Cdo cdo, com.bumptech.glide.load.Cfor cfor) {
            return (cdo == com.bumptech.glide.load.Cdo.RESOURCE_DISK_CACHE || cdo == com.bumptech.glide.load.Cdo.MEMORY_CACHE) ? false : true;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.case$for, reason: invalid class name */
    public class Cfor extends Ccase {
        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: do */
        public boolean mo11455do() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: for */
        public boolean mo11456for(com.bumptech.glide.load.Cdo cdo) {
            return (cdo == com.bumptech.glide.load.Cdo.DATA_DISK_CACHE || cdo == com.bumptech.glide.load.Cdo.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: if */
        public boolean mo11457if() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: new */
        public boolean mo11458new(boolean z, com.bumptech.glide.load.Cdo cdo, com.bumptech.glide.load.Cfor cfor) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.case$if, reason: invalid class name */
    public class Cif extends Ccase {
        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: do */
        public boolean mo11455do() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: for */
        public boolean mo11456for(com.bumptech.glide.load.Cdo cdo) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: if */
        public boolean mo11457if() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: new */
        public boolean mo11458new(boolean z, com.bumptech.glide.load.Cdo cdo, com.bumptech.glide.load.Cfor cfor) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.case$new, reason: invalid class name */
    public class Cnew extends Ccase {
        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: do */
        public boolean mo11455do() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: for */
        public boolean mo11456for(com.bumptech.glide.load.Cdo cdo) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: if */
        public boolean mo11457if() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: new */
        public boolean mo11458new(boolean z, com.bumptech.glide.load.Cdo cdo, com.bumptech.glide.load.Cfor cfor) {
            return (cdo == com.bumptech.glide.load.Cdo.RESOURCE_DISK_CACHE || cdo == com.bumptech.glide.load.Cdo.MEMORY_CACHE) ? false : true;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.case$try, reason: invalid class name */
    public class Ctry extends Ccase {
        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: do */
        public boolean mo11455do() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: for */
        public boolean mo11456for(com.bumptech.glide.load.Cdo cdo) {
            return cdo == com.bumptech.glide.load.Cdo.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: if */
        public boolean mo11457if() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.Ccase
        /* renamed from: new */
        public boolean mo11458new(boolean z, com.bumptech.glide.load.Cdo cdo, com.bumptech.glide.load.Cfor cfor) {
            return ((z && cdo == com.bumptech.glide.load.Cdo.DATA_DISK_CACHE) || cdo == com.bumptech.glide.load.Cdo.LOCAL) && cfor == com.bumptech.glide.load.Cfor.TRANSFORMED;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract boolean mo11455do();

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo11456for(com.bumptech.glide.load.Cdo cdo);

    /* renamed from: if, reason: not valid java name */
    public abstract boolean mo11457if();

    /* renamed from: new, reason: not valid java name */
    public abstract boolean mo11458new(boolean z, com.bumptech.glide.load.Cdo cdo, com.bumptech.glide.load.Cfor cfor);
}
