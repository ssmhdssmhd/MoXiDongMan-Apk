.class final Lorg/chromium/base/metrics/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/base/metrics/if$do;

    invoke-direct {v0}, Lorg/chromium/base/metrics/if$do;-><init>()V

    sput-object v0, Lorg/chromium/base/metrics/if;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;)Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/base/metrics/if;->do:Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/base/metrics/if;->do:Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

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

    const-string v1, "No mock found for the native implementation for org.chromium.base.metrics.NativeUmaRecorder.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/base/metrics/if;

    invoke-direct {v0}, Lorg/chromium/base/metrics/if;-><init>()V

    return-object v0
.end method


# virtual methods
.method public recordBooleanHistogram(Ljava/lang/String;JZ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->h(Ljava/lang/String;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public recordExponentialHistogram(Ljava/lang/String;JIIII)J
    .locals 0

    .line 1
    invoke-static/range {p1 .. p7}, Landroid/support/v4/oe0;->i(Ljava/lang/String;JIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public recordLinearHistogram(Ljava/lang/String;JIIII)J
    .locals 0

    .line 1
    invoke-static/range {p1 .. p7}, Landroid/support/v4/oe0;->j(Ljava/lang/String;JIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public recordSparseHistogram(Ljava/lang/String;JI)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->k(Ljava/lang/String;JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public recordUserAction(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->l(Ljava/lang/String;J)V

    return-void
.end method
