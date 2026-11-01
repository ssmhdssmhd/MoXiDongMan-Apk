.class final Lorg/chromium/net/impl/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/CronetUploadDataStream$Natives;


# annotations
.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/net/impl/CronetUploadDataStream$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/impl/new$do;

    invoke-direct {v0}, Lorg/chromium/net/impl/new$do;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/new;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/net/impl/CronetUploadDataStream$Natives;)Lorg/chromium/net/impl/CronetUploadDataStream$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/net/impl/new;->do:Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/net/impl/CronetUploadDataStream$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/net/impl/new;->do:Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

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

    const-string v1, "No mock found for the native implementation for org.chromium.net.impl.CronetUploadDataStream.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/net/impl/new;

    invoke-direct {v0}, Lorg/chromium/net/impl/new;-><init>()V

    return-object v0
.end method


# virtual methods
.method public attachUploadDataToRequest(Lorg/chromium/net/impl/CronetUploadDataStream;JJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->R(Ljava/lang/Object;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public createAdapterForTesting(Lorg/chromium/net/impl/CronetUploadDataStream;)J
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->S(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createUploadDataStreamForTesting(Lorg/chromium/net/impl/CronetUploadDataStream;JJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->T(Ljava/lang/Object;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public destroy(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/oe0;->U(J)V

    return-void
.end method

.method public onReadSucceeded(JLorg/chromium/net/impl/CronetUploadDataStream;IZ)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->V(JLjava/lang/Object;IZ)V

    return-void
.end method

.method public onRewindSucceeded(JLorg/chromium/net/impl/CronetUploadDataStream;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->W(JLjava/lang/Object;)V

    return-void
.end method
