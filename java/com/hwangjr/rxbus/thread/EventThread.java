package com.hwangjr.rxbus.thread;

import io.reactivex.Ctry;
import io.reactivex.android.schedulers.Cdo;

/* loaded from: classes.dex */
public enum EventThread {
    MAIN_THREAD,
    NEW_THREAD,
    IO,
    COMPUTATION,
    TRAMPOLINE,
    SINGLE,
    EXECUTOR,
    HANDLER;

    /* renamed from: com.hwangjr.rxbus.thread.EventThread$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$hwangjr$rxbus$thread$EventThread;

        static {
            int[] iArr = new int[EventThread.values().length];
            $SwitchMap$com$hwangjr$rxbus$thread$EventThread = iArr;
            try {
                iArr[EventThread.MAIN_THREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hwangjr$rxbus$thread$EventThread[EventThread.NEW_THREAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hwangjr$rxbus$thread$EventThread[EventThread.IO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$hwangjr$rxbus$thread$EventThread[EventThread.COMPUTATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$hwangjr$rxbus$thread$EventThread[EventThread.TRAMPOLINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$hwangjr$rxbus$thread$EventThread[EventThread.SINGLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$hwangjr$rxbus$thread$EventThread[EventThread.EXECUTOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$hwangjr$rxbus$thread$EventThread[EventThread.HANDLER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static Ctry getScheduler(EventThread eventThread) {
        switch (AnonymousClass1.$SwitchMap$com$hwangjr$rxbus$thread$EventThread[eventThread.ordinal()]) {
        }
        return Cdo.m29358for();
    }
}
