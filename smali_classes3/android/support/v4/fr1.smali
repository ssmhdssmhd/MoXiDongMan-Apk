.class public Landroid/support/v4/fr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public break:Ljava/math/BigInteger;

.field public case:Ljava/math/BigInteger;

.field public catch:Ljava/math/BigInteger;

.field public class:Lorg/bouncycastle/crypto/Digest;

.field public const:Ljava/security/SecureRandom;

.field public do:Ljava/math/BigInteger;

.field public else:Ljava/math/BigInteger;

.field public for:Ljava/math/BigInteger;

.field public goto:Ljava/math/BigInteger;

.field public if:Ljava/math/BigInteger;

.field public new:Ljava/math/BigInteger;

.field public this:Ljava/math/BigInteger;

.field public try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private if()Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    iget-object v2, p0, Landroid/support/v4/fr1;->if:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Landroid/support/v4/jr1;->do(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/fr1;->else:Ljava/math/BigInteger;

    iget-object v2, p0, Landroid/support/v4/fr1;->case:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/fr1;->for:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/fr1;->if:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/fr1;->case:Ljava/math/BigInteger;

    iget-object v4, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/fr1;->try:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public case(Landroid/support/v4/gr1;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/gr1;->if()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/gr1;->do()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/fr1;->else(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public do()Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/fr1;->new:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/fr1;->try:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/fr1;->goto:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-static {v3, v4, v0, v1, v2}, Landroid/support/v4/jr1;->for(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fr1;->this:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/xs;

    const-string v1, "Impossible to compute M1: some data are missing from the previous operations (A,B,S)"

    invoke-direct {v0, v1}, Landroid/support/v4/xs;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public else(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/fr1;->if:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iput-object p4, p0, Landroid/support/v4/fr1;->const:Ljava/security/SecureRandom;

    return-void
.end method

.method public for(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Landroid/support/v4/jr1;->catch(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fr1;->try:Ljava/math/BigInteger;

    iget-object v0, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    iget-object v2, p0, Landroid/support/v4/fr1;->new:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/jr1;->try(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fr1;->else:Ljava/math/BigInteger;

    invoke-direct {p0}, Landroid/support/v4/fr1;->if()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fr1;->goto:Ljava/math/BigInteger;

    return-object p1
.end method

.method public goto()Ljava/math/BigInteger;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    iget-object v2, p0, Landroid/support/v4/fr1;->if:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/fr1;->const:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/jr1;->else(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/fr1;->goto:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/fr1;->this:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/fr1;->break:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-static {v1, v2, v0}, Landroid/support/v4/jr1;->if(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fr1;->catch:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/xs;

    const-string v1, "Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)"

    invoke-direct {v0, v1}, Landroid/support/v4/xs;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public this(Ljava/math/BigInteger;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/fr1;->new:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/fr1;->this:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/fr1;->goto:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-static {v3, v4, v0, v1, v2}, Landroid/support/v4/jr1;->new(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/fr1;->break:Ljava/math/BigInteger;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Landroid/support/v4/xs;

    const-string v0, "Impossible to compute and verify M2: some data are missing from the previous operations (A,M1,S)"

    invoke-direct {p1, v0}, Landroid/support/v4/xs;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public try([B[B[B)Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/fr1;->class:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/jr1;->case(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fr1;->case:Ljava/math/BigInteger;

    invoke-virtual {p0}, Landroid/support/v4/fr1;->goto()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fr1;->for:Ljava/math/BigInteger;

    iget-object p2, p0, Landroid/support/v4/fr1;->if:Ljava/math/BigInteger;

    iget-object p3, p0, Landroid/support/v4/fr1;->do:Ljava/math/BigInteger;

    invoke-virtual {p2, p1, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fr1;->new:Ljava/math/BigInteger;

    return-object p1
.end method
