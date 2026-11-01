.class public Landroid/support/v4/q11$if;
.super Landroid/support/v4/q11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/q11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/q11;-><init>(Landroid/support/v4/b1;[B[BLjava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public case([B)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/new;

    iget-object v1, p0, Landroid/support/v4/q11;->if:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/new;-><init>(Ljava/security/SecureRandom;)V

    invoke-static {p1}, Landroid/support/v4/q11;->if([B)Landroid/support/v4/s11;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/new;->generateExchange(Landroid/support/v4/a4;)Landroid/support/v4/v80;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/q11;->do:Lorg/bouncycastle/crypto/util/try$if;

    invoke-virtual {p1}, Landroid/support/v4/v80;->if()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/try$if;->if([B)Lorg/bouncycastle/crypto/util/try$if;

    invoke-virtual {p1}, Landroid/support/v4/v80;->do()Landroid/support/v4/a4;

    move-result-object p1

    check-cast p1, Landroid/support/v4/s11;

    invoke-static {p1}, Landroid/support/v4/q11;->do(Landroid/support/v4/s11;)[B

    move-result-object p1

    return-object p1
.end method

.method public else([B)Landroid/support/v4/q11;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q11;->do:Lorg/bouncycastle/crypto/util/try$if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/try$if;->for([B)Lorg/bouncycastle/crypto/util/try$if;

    return-object p0
.end method

.method public try()Lorg/bouncycastle/crypto/util/try;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/q11;->for:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/q11;->for:Z

    iget-object v0, p0, Landroid/support/v4/q11;->do:Lorg/bouncycastle/crypto/util/try$if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/try$if;->do()Lorg/bouncycastle/crypto/util/try;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "builder already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
