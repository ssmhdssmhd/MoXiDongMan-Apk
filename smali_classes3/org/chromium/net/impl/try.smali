.class final Lorg/chromium/net/impl/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;


# annotations
.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/impl/try$do;

    invoke-direct {v0}, Lorg/chromium/net/impl/try$do;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/try;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;)Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/net/impl/try;->do:Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/net/impl/try;->do:Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-boolean v0, Landroid/support/v4/oe0;->if:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mock found for the native implementation for org.chromium.net.impl.CronetUrlRequestContext.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/net/impl/try;

    invoke-direct {v0}, Lorg/chromium/net/impl/try;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addPkp(JLjava/lang/String;[[BZJ)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p7}, Landroid/support/v4/oe0;->X(JLjava/lang/String;[[BZJ)V

    return-void
.end method

.method public addQuicHint(JLjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->Y(JLjava/lang/String;II)V

    return-void
.end method

.method public configureNetworkQualityEstimatorForTesting(JLorg/chromium/net/impl/CronetUrlRequestContext;ZZZ)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Landroid/support/v4/oe0;->Z(JLjava/lang/Object;ZZZ)V

    return-void
.end method

.method public createRequestContextAdapter(J)J
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/oe0;->a0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public createRequestContextConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZIJLjava/lang/String;JZZI)J
    .locals 2

    .line 1
    invoke-static/range {p1 .. p16}, Landroid/support/v4/oe0;->b0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZIJLjava/lang/String;JZZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public destroy(JLorg/chromium/net/impl/CronetUrlRequestContext;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->c0(JLjava/lang/Object;)V

    return-void
.end method

.method public getHistogramDeltas()[B
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/oe0;->d0()[B

    move-result-object v0

    return-object v0
.end method

.method public initRequestContextOnInitThread(JLorg/chromium/net/impl/CronetUrlRequestContext;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->e0(JLjava/lang/Object;)V

    return-void
.end method

.method public provideRTTObservations(JLorg/chromium/net/impl/CronetUrlRequestContext;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->f0(JLjava/lang/Object;Z)V

    return-void
.end method

.method public provideThroughputObservations(JLorg/chromium/net/impl/CronetUrlRequestContext;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->g0(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setMinLogLevel(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->h0(I)I

    move-result p1

    return p1
.end method

.method public startNetLogToDisk(JLorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Landroid/support/v4/oe0;->i0(JLjava/lang/Object;Ljava/lang/String;ZI)V

    return-void
.end method

.method public startNetLogToFile(JLorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->j0(JLjava/lang/Object;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public stopNetLog(JLorg/chromium/net/impl/CronetUrlRequestContext;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->k0(JLjava/lang/Object;)V

    return-void
.end method
