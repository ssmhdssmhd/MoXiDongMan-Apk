.class public final Lorg/bouncycastle/pqc/crypto/xmss/default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final height:I

.field private final value:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/default;->height:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/default;->value:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bouncycastle/pqc/crypto/xmss/default;
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/default;-><init>(I[B)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/default;->height:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/default;->value:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method
