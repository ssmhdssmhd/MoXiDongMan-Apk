.class final Lorg/chromium/net/impl/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/CronetUrlRequest$Natives;


# annotations
.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/net/impl/CronetUrlRequest$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/net/impl/CronetUrlRequest$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/impl/case$do;

    invoke-direct {v0}, Lorg/chromium/net/impl/case$do;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/case;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/net/impl/CronetUrlRequest$Natives;)Lorg/chromium/net/impl/CronetUrlRequest$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/net/impl/case;->do:Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/net/impl/case;->do:Lorg/chromium/net/impl/CronetUrlRequest$Natives;

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

    const-string v1, "No mock found for the native implementation for org.chromium.net.impl.CronetUrlRequest.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/net/impl/case;

    invoke-direct {v0}, Lorg/chromium/net/impl/case;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addRequestHeader(JLorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->l0(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public createRequestAdapter(Lorg/chromium/net/impl/CronetUrlRequest;JLjava/lang/String;IZZZZIZII)J
    .locals 0

    .line 1
    invoke-static/range {p1 .. p13}, Landroid/support/v4/oe0;->m0(Ljava/lang/Object;JLjava/lang/String;IZZZZIZII)J

    move-result-wide p1

    return-wide p1
.end method

.method public destroy(JLorg/chromium/net/impl/CronetUrlRequest;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->n0(JLjava/lang/Object;Z)V

    return-void
.end method

.method public followDeferredRedirect(JLorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->o0(JLjava/lang/Object;)V

    return-void
.end method

.method public getStatus(JLorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->p0(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public readData(JLorg/chromium/net/impl/CronetUrlRequest;Ljava/nio/ByteBuffer;II)Z
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Landroid/support/v4/oe0;->q0(JLjava/lang/Object;Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public setHttpMethod(JLorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->r0(JLjava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public start(JLorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->s0(JLjava/lang/Object;)V

    return-void
.end method
