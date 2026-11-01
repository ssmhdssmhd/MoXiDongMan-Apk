.class public Lorg/bouncycastle/crypto/tls/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# static fields
.field public static final case:I = 0x8

.field public static final new:I = 0x14

.field public static final try:I = 0x54


# instance fields
.field public final do:Ljava/net/DatagramSocket;

.field public final for:I

.field public final if:I


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/m0;->do:Ljava/net/DatagramSocket;

    add-int/lit8 p1, p2, -0x14

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lorg/bouncycastle/crypto/tls/m0;->if:I

    add-int/lit8 p2, p2, -0x54

    add-int/lit8 p2, p2, -0x8

    iput p2, p0, Lorg/bouncycastle/crypto/tls/m0;->for:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'socket\' must be bound and connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/m0;->do:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-void
.end method

.method public getReceiveLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/m0;->if:I

    return v0
.end method

.method public getSendLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/m0;->for:I

    return v0
.end method

.method public receive([BIII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/m0;->do:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    new-instance p4, Ljava/net/DatagramPacket;

    invoke-direct {p4, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/m0;->do:Ljava/net/DatagramSocket;

    invoke-virtual {p1, p4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    return p1
.end method

.method public send([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/m0;->getSendLimit()I

    move-result v0

    if-gt p3, v0, :cond_0

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/m0;->do:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method
