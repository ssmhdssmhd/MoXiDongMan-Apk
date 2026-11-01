package kotlin.time;

import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.n01;
import kotlin.Cwhile;

@l90
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u0000 \u00042\u00020\u0001:\u0002\u0005\u0006J\b\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0007"}, d2 = {"Lkotlin/time/TimeSource;", "", "Lkotlin/time/catch;", "markNow", "Companion", "do", "if", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface TimeSource {

    @m41
    public static final Cdo Companion = Cdo.f28052do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"kotlin/time/TimeSource$do", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.time.TimeSource$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ Cdo f28052do = new Cdo();

        private Cdo() {
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0001¨\u0006\b"}, d2 = {"kotlin/time/TimeSource$if", "Lkotlin/time/TimeSource;", "", "toString", "Lkotlin/time/catch;", "markNow", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.time.TimeSource$if, reason: invalid class name */
    public static final class Cif implements TimeSource {

        /* renamed from: if, reason: not valid java name */
        @m41
        public static final Cif f28053if = new Cif();

        /* renamed from: do, reason: not valid java name */
        private final /* synthetic */ n01 f28054do = n01.f4101if;

        private Cif() {
        }

        @Override // kotlin.time.TimeSource
        @m41
        public Ccatch markNow() {
            return this.f28054do.markNow();
        }

        @m41
        public String toString() {
            return n01.f4101if.toString();
        }
    }

    @m41
    Ccatch markNow();
}
