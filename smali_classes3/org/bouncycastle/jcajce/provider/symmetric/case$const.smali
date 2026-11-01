.class public Lorg/bouncycastle/jcajce/provider/symmetric/case$const;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "const"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/tt;

    invoke-direct {v0}, Landroid/support/v4/tt;-><init>()V

    const-string v1, "DES"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;-><init>(Ljava/lang/String;ILandroid/support/v4/rl;)V

    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    new-instance v1, Landroid/support/v4/dr0;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->for:I

    invoke-direct {v1, v2, v3}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/rl;->if(Landroid/support/v4/dr0;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    invoke-virtual {v1}, Landroid/support/v4/rl;->do()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->do:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->engineInit(ILjava/security/SecureRandom;)V

    return-void
.end method
