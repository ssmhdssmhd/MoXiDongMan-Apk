.class public Lorg/bouncycastle/crypto/prng/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/prng/new$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(IZ)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/prng/new$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/prng/new$if;-><init>(Lorg/bouncycastle/crypto/prng/new;Lorg/bouncycastle/crypto/prng/new$do;)V

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/new$if;->do(IZ)[B

    move-result-object p1

    return-object p1
.end method
