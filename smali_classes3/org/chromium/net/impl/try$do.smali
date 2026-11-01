.class Lorg/chromium/net/impl/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/JniStaticTestMocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/JniStaticTestMocker<",
        "Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/chromium/net/impl/try;->do(Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;)Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Tried to set a JNI mock when mocks aren\'t enabled!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setInstanceForTesting(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/try$do;->do(Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;)V

    return-void
.end method
