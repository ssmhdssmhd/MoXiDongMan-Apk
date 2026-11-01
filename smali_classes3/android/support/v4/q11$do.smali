.class public Landroid/support/v4/q11$do;
.super Landroid/support/v4/q11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/q11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private new:Landroid/support/v4/y3;

.field private try:Lorg/bouncycastle/pqc/crypto/newhope/for;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/q11;-><init>(Landroid/support/v4/b1;[B[BLjava/security/SecureRandom;)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/newhope/for;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/newhope/for;-><init>()V

    iput-object p1, p0, Landroid/support/v4/q11$do;->try:Lorg/bouncycastle/pqc/crypto/newhope/for;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/newhope/try;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/newhope/try;-><init>()V

    new-instance p2, Landroid/support/v4/dr0;

    const/16 p3, 0x800

    invoke-direct {p2, p4, p3}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/newhope/try;->init(Landroid/support/v4/dr0;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/newhope/try;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/q11$do;->new:Landroid/support/v4/y3;

    iget-object p2, p0, Landroid/support/v4/q11$do;->try:Lorg/bouncycastle/pqc/crypto/newhope/for;

    invoke-virtual {p1}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/newhope/for;->if(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method


# virtual methods
.method public case()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q11$do;->new:Landroid/support/v4/y3;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/s11;

    invoke-static {v0}, Landroid/support/v4/q11;->do(Landroid/support/v4/s11;)[B

    move-result-object v0

    return-object v0
.end method

.method public else([B)Landroid/support/v4/q11;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q11;->do:Lorg/bouncycastle/crypto/util/try$if;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/try$if;->for([B)Lorg/bouncycastle/crypto/util/try$if;

    return-object p0
.end method

.method public try([B)Lorg/bouncycastle/crypto/util/try;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/q11;->for:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/q11;->for:Z

    iget-object v0, p0, Landroid/support/v4/q11;->do:Lorg/bouncycastle/crypto/util/try$if;

    iget-object v1, p0, Landroid/support/v4/q11$do;->try:Lorg/bouncycastle/pqc/crypto/newhope/for;

    invoke-static {p1}, Landroid/support/v4/q11;->if([B)Landroid/support/v4/s11;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/newhope/for;->do(Lorg/bouncycastle/crypto/CipherParameters;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/try$if;->if([B)Lorg/bouncycastle/crypto/util/try$if;

    iget-object p1, p0, Landroid/support/v4/q11;->do:Lorg/bouncycastle/crypto/util/try$if;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/try$if;->do()Lorg/bouncycastle/crypto/util/try;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "builder already used"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
