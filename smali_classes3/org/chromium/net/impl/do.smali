.class final Lorg/chromium/net/impl/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;


# annotations
.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/impl/do$do;

    invoke-direct {v0}, Lorg/chromium/net/impl/do$do;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/do;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;)Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/net/impl/do;->do:Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/net/impl/do;->do:Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

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

    const-string v1, "No mock found for the native implementation for org.chromium.net.impl.CronetBidirectionalStream.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/net/impl/do;

    invoke-direct {v0}, Lorg/chromium/net/impl/do;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createBidirectionalStream(Lorg/chromium/net/impl/CronetBidirectionalStream;JZZZIZI)J
    .locals 0

    .line 1
    invoke-static/range {p1 .. p9}, Landroid/support/v4/oe0;->J(Ljava/lang/Object;JZZZIZI)J

    move-result-wide p1

    return-wide p1
.end method

.method public destroy(JLorg/chromium/net/impl/CronetBidirectionalStream;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->K(JLjava/lang/Object;Z)V

    return-void
.end method

.method public readData(JLorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;II)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Landroid/support/v4/oe0;->L(JLjava/lang/Object;Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public sendRequestHeaders(JLorg/chromium/net/impl/CronetBidirectionalStream;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->M(JLjava/lang/Object;)V

    return-void
.end method

.method public start(JLorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I
    .locals 0

    .line 1
    invoke-static/range {p1 .. p8}, Landroid/support/v4/oe0;->N(JLjava/lang/Object;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public writevData(JLorg/chromium/net/impl/CronetBidirectionalStream;[Ljava/nio/ByteBuffer;[I[IZ)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p7}, Landroid/support/v4/oe0;->O(JLjava/lang/Object;[Ljava/lang/Object;[I[IZ)Z

    move-result p1

    return p1
.end method
