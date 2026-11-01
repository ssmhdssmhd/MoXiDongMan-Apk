.class Lorg/chromium/net/break$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/JniStaticTestMocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/JniStaticTestMocker<",
        "Lorg/chromium/net/HttpUtil$Natives;",
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
.method public do(Lorg/chromium/net/HttpUtil$Natives;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/chromium/net/break;->do(Lorg/chromium/net/HttpUtil$Natives;)Lorg/chromium/net/HttpUtil$Natives;

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
    check-cast p1, Lorg/chromium/net/HttpUtil$Natives;

    invoke-virtual {p0, p1}, Lorg/chromium/net/break$do;->do(Lorg/chromium/net/HttpUtil$Natives;)V

    return-void
.end method
