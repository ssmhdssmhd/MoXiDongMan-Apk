.class public Lorg/bouncycastle/crypto/tls/default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# instance fields
.field private final do:Lorg/bouncycastle/crypto/tls/return;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/return;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/return;->close()V

    return-void
.end method

.method public getReceiveLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/return;->getReceiveLimit()I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/return;->getSendLimit()I

    move-result v0

    return v0
.end method

.method public receive([BIII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x50

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/return;->receive([BIII)I

    move-result p1
    :try_end_0
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    new-instance p2, Landroid/support/v4/n72;

    invoke-direct {p2, v0, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    throw p1

    :catch_2
    move-exception p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {p1}, Landroid/support/v4/n72;->getAlertDescription()S

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    throw p1
.end method

.method public send([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x50

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/return;->send([BII)V
    :try_end_0
    .catch Landroid/support/v4/n72; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    new-instance p2, Landroid/support/v4/n72;

    invoke-direct {p2, v0, p1}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    throw p1

    :catch_2
    move-exception p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/default;->do:Lorg/bouncycastle/crypto/tls/return;

    invoke-virtual {p1}, Landroid/support/v4/n72;->getAlertDescription()S

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/tls/return;->if(S)V

    throw p1
.end method
