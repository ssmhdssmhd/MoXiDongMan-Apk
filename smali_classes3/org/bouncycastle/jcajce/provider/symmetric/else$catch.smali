.class public Lorg/bouncycastle/jcajce/provider/symmetric/else$catch;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "catch"
.end annotation


# instance fields
.field private case:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/xt;

    invoke-direct {v0}, Landroid/support/v4/xt;-><init>()V

    const-string v1, "DESede"

    const/16 v2, 0xc0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;-><init>(Ljava/lang/String;ILandroid/support/v4/rl;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/else$catch;->case:Z

    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    new-instance v2, Landroid/support/v4/dr0;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->for:I

    invoke-direct {v2, v3, v4}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v2}, Landroid/support/v4/rl;->if(Landroid/support/v4/dr0;)V

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->try:Z

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/else$catch;->case:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->new:Landroid/support/v4/rl;

    invoke-virtual {v0}, Landroid/support/v4/rl;->do()[B

    move-result-object v0

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;->do:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_1
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

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/else$catch;->case:Z

    return-void
.end method
