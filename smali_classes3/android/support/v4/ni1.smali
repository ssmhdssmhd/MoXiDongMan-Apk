.class public final Landroid/support/v4/ni1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private do:I

.field private if:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(I)[B
    .locals 0

    invoke-static {p1}, Landroid/support/v4/ri1;->if(I)I

    move-result p1

    new-array p1, p1, [B

    return-object p1
.end method

.method private if(I)[B
    .locals 0

    invoke-static {p1}, Landroid/support/v4/ri1;->for(I)I

    move-result p1

    new-array p1, p1, [B

    return-object p1
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 5

    iget v0, p0, Landroid/support/v4/ni1;->do:I

    invoke-direct {p0, v0}, Landroid/support/v4/ni1;->do(I)[B

    move-result-object v0

    iget v1, p0, Landroid/support/v4/ni1;->do:I

    invoke-direct {p0, v1}, Landroid/support/v4/ni1;->if(I)[B

    move-result-object v1

    iget v2, p0, Landroid/support/v4/ni1;->do:I

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v4/ni1;->if:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->goto([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/ni1;->do:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/ni1;->if:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->catch([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v4/ni1;->if:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->break([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/support/v4/ni1;->if:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->this([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v4/ni1;->if:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/this;->else([B[BLjava/security/SecureRandom;)I

    :goto_0
    new-instance v2, Landroid/support/v4/y3;

    new-instance v3, Landroid/support/v4/qi1;

    iget v4, p0, Landroid/support/v4/ni1;->do:I

    invoke-direct {v3, v4, v1}, Landroid/support/v4/qi1;-><init>(I[B)V

    new-instance v1, Landroid/support/v4/pi1;

    iget v4, p0, Landroid/support/v4/ni1;->do:I

    invoke-direct {v1, v4, v0}, Landroid/support/v4/pi1;-><init>(I[B)V

    invoke-direct {v2, v3, v1}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 1

    check-cast p1, Landroid/support/v4/mi1;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ni1;->if:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/mi1;->for()I

    move-result p1

    iput p1, p0, Landroid/support/v4/ni1;->do:I

    return-void
.end method
