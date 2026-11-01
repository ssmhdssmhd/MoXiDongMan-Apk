.class public Lorg/chromium/base/metrics/else;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Lorg/chromium/base/metrics/do;

.field private static for:Z

.field private static if:Z

.field public static final synthetic new:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/base/metrics/do;

    invoke-direct {v0}, Lorg/chromium/base/metrics/do;-><init>()V

    sput-object v0, Lorg/chromium/base/metrics/else;->do:Lorg/chromium/base/metrics/do;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lorg/chromium/base/metrics/else;->if:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lorg/chromium/base/metrics/UmaRecorder;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/metrics/else;->do:Lorg/chromium/base/metrics/do;

    return-object v0
.end method

.method public static for()V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/base/metrics/else;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/base/metrics/do;

    invoke-direct {v0}, Lorg/chromium/base/metrics/do;-><init>()V

    sput-object v0, Lorg/chromium/base/metrics/else;->do:Lorg/chromium/base/metrics/do;

    :cond_0
    return-void
.end method

.method public static if()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lorg/chromium/base/metrics/else;->for:Z

    .line 2
    sget-object v0, Lorg/chromium/base/metrics/else;->do:Lorg/chromium/base/metrics/do;

    new-instance v1, Lorg/chromium/base/metrics/NativeUmaRecorder;

    invoke-direct {v1}, Lorg/chromium/base/metrics/NativeUmaRecorder;-><init>()V

    invoke-virtual {v0, v1}, Lorg/chromium/base/metrics/do;->case(Lorg/chromium/base/metrics/UmaRecorder;)Lorg/chromium/base/metrics/UmaRecorder;

    return-void
.end method

.method public static new(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/chromium/base/metrics/else;->if:Z

    return-void
.end method

.method public static try(Lorg/chromium/base/metrics/UmaRecorder;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/metrics/else;->do:Lorg/chromium/base/metrics/do;

    invoke-virtual {v0, p0}, Lorg/chromium/base/metrics/do;->case(Lorg/chromium/base/metrics/UmaRecorder;)Lorg/chromium/base/metrics/UmaRecorder;

    return-void
.end method
