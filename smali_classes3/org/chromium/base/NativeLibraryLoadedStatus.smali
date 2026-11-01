.class public Lorg/chromium/base/NativeLibraryLoadedStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;
    }
.end annotation


# static fields
.field private static do:Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/base/NativeLibraryLoadedStatus;->do:Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    .line 3
    invoke-interface {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;->areMainDexNativeMethodsReady()Z

    move-result p0

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;->areNativeMethodsReady()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_3

    return-void

    .line 5
    :cond_3
    new-instance p0, Landroid/support/v4/kp0;

    const-string v0, "Native method called before the native library was ready."

    invoke-direct {p0, v0}, Landroid/support/v4/kp0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static for(Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/base/NativeLibraryLoadedStatus;->do:Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    return-void
.end method

.method public static if()Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/NativeLibraryLoadedStatus;->do:Lorg/chromium/base/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    return-object v0
.end method
