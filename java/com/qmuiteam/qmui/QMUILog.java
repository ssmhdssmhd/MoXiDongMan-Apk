package com.qmuiteam.qmui;

/* loaded from: classes2.dex */
public class QMUILog {

    /* renamed from: do, reason: not valid java name */
    private static QMUILogDelegate f19006do;

    public interface QMUILogDelegate {
        void d(String str, String str2, Object... objArr);

        void e(String str, String str2, Object... objArr);

        void i(String str, String str2, Object... objArr);

        void printErrStackTrace(String str, Throwable th, String str2, Object... objArr);

        void w(String str, String str2, Object... objArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m23434case(String str, String str2, Object... objArr) {
        QMUILogDelegate qMUILogDelegate = f19006do;
        if (qMUILogDelegate != null) {
            qMUILogDelegate.w(str, str2, objArr);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m23435do(String str, String str2, Object... objArr) {
        QMUILogDelegate qMUILogDelegate = f19006do;
        if (qMUILogDelegate != null) {
            qMUILogDelegate.d(str, str2, objArr);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m23436for(String str, String str2, Object... objArr) {
        QMUILogDelegate qMUILogDelegate = f19006do;
        if (qMUILogDelegate != null) {
            qMUILogDelegate.i(str, str2, objArr);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m23437if(String str, String str2, Object... objArr) {
        QMUILogDelegate qMUILogDelegate = f19006do;
        if (qMUILogDelegate != null) {
            qMUILogDelegate.e(str, str2, objArr);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m23438new(String str, Throwable th, String str2, Object... objArr) {
        QMUILogDelegate qMUILogDelegate = f19006do;
        if (qMUILogDelegate != null) {
            qMUILogDelegate.printErrStackTrace(str, th, str2, objArr);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m23439try(QMUILogDelegate qMUILogDelegate) {
        f19006do = qMUILogDelegate;
    }
}
