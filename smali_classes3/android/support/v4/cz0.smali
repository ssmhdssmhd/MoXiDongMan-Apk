.class public Landroid/support/v4/cz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final goto:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field private case:Ljava/security/SecureRandom;

.field private do:Landroid/support/v4/bz0;

.field private else:Z

.field private for:I

.field private if:I

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/cz0;->else:Z

    return-void
.end method

.method private do()Landroid/support/v4/y3;
    .locals 11

    iget-boolean v0, p0, Landroid/support/v4/cz0;->else:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/cz0;->for()V

    :cond_0
    new-instance v4, Landroid/support/v4/se0;

    iget v0, p0, Landroid/support/v4/cz0;->if:I

    iget v1, p0, Landroid/support/v4/cz0;->try:I

    invoke-direct {v4, v0, v1}, Landroid/support/v4/se0;-><init>(II)V

    new-instance v5, Landroid/support/v4/pe1;

    iget v0, p0, Landroid/support/v4/cz0;->new:I

    const/16 v1, 0x49

    iget-object v2, p0, Landroid/support/v4/cz0;->case:Ljava/security/SecureRandom;

    invoke-direct {v5, v4, v0, v1, v2}, Landroid/support/v4/pe1;-><init>(Landroid/support/v4/se0;ICLjava/security/SecureRandom;)V

    new-instance v0, Landroid/support/v4/re1;

    invoke-direct {v0, v4, v5}, Landroid/support/v4/re1;-><init>(Landroid/support/v4/se0;Landroid/support/v4/pe1;)V

    invoke-virtual {v0}, Landroid/support/v4/re1;->for()[Landroid/support/v4/pe1;

    invoke-static {v4, v5}, Landroid/support/v4/uh0;->if(Landroid/support/v4/se0;Landroid/support/v4/pe1;)Landroid/support/v4/qe0;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/cz0;->case:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Landroid/support/v4/uh0;->do(Landroid/support/v4/qe0;Ljava/security/SecureRandom;)Landroid/support/v4/uh0$do;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/uh0$do;->for()Landroid/support/v4/qe0;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/uh0$do;->if()Landroid/support/v4/fd1;

    move-result-object v6

    invoke-virtual {v1}, Landroid/support/v4/qe0;->throw()Landroid/support/v4/ay0;

    move-result-object v0

    check-cast v0, Landroid/support/v4/qe0;

    invoke-virtual {v0}, Landroid/support/v4/qe0;->import()Landroid/support/v4/qe0;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/ay0;->new()I

    move-result v3

    iget-object v0, p0, Landroid/support/v4/cz0;->case:Ljava/security/SecureRandom;

    invoke-static {v3, v0}, Landroid/support/v4/qe0;->while(ILjava/security/SecureRandom;)[Landroid/support/v4/qe0;

    move-result-object v0

    new-instance v7, Landroid/support/v4/fd1;

    iget v2, p0, Landroid/support/v4/cz0;->for:I

    iget-object v8, p0, Landroid/support/v4/cz0;->case:Ljava/security/SecureRandom;

    invoke-direct {v7, v2, v8}, Landroid/support/v4/fd1;-><init>(ILjava/security/SecureRandom;)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, v1}, Landroid/support/v4/qe0;->else(Landroid/support/v4/ay0;)Landroid/support/v4/ay0;

    move-result-object v1

    check-cast v1, Landroid/support/v4/qe0;

    invoke-virtual {v1, v7}, Landroid/support/v4/qe0;->goto(Landroid/support/v4/fd1;)Landroid/support/v4/ay0;

    move-result-object v1

    check-cast v1, Landroid/support/v4/qe0;

    new-instance v9, Landroid/support/v4/iz0;

    iget v2, p0, Landroid/support/v4/cz0;->for:I

    iget v8, p0, Landroid/support/v4/cz0;->new:I

    invoke-direct {v9, v2, v8, v1}, Landroid/support/v4/iz0;-><init>(IILandroid/support/v4/qe0;)V

    new-instance v10, Landroid/support/v4/gz0;

    iget v2, p0, Landroid/support/v4/cz0;->for:I

    const/4 v1, 0x1

    aget-object v8, v0, v1

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Landroid/support/v4/gz0;-><init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/fd1;Landroid/support/v4/fd1;Landroid/support/v4/qe0;)V

    new-instance v0, Landroid/support/v4/y3;

    invoke-direct {v0, v9, v10}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v0
.end method

.method private for()V
    .locals 3

    new-instance v0, Landroid/support/v4/bz0;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v1

    new-instance v2, Landroid/support/v4/ez0;

    invoke-direct {v2}, Landroid/support/v4/ez0;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/bz0;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/ez0;)V

    invoke-direct {p0, v0}, Landroid/support/v4/cz0;->if(Landroid/support/v4/dr0;)V

    return-void
.end method

.method private if(Landroid/support/v4/dr0;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/support/v4/bz0;

    iput-object v0, p0, Landroid/support/v4/cz0;->do:Landroid/support/v4/bz0;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/cz0;->case:Ljava/security/SecureRandom;

    if-nez p1, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/cz0;->case:Ljava/security/SecureRandom;

    :cond_0
    iget-object p1, p0, Landroid/support/v4/cz0;->do:Landroid/support/v4/bz0;

    invoke-virtual {p1}, Landroid/support/v4/bz0;->for()Landroid/support/v4/ez0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/ez0;->if()I

    move-result p1

    iput p1, p0, Landroid/support/v4/cz0;->if:I

    iget-object p1, p0, Landroid/support/v4/cz0;->do:Landroid/support/v4/bz0;

    invoke-virtual {p1}, Landroid/support/v4/bz0;->for()Landroid/support/v4/ez0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/ez0;->for()I

    move-result p1

    iput p1, p0, Landroid/support/v4/cz0;->for:I

    iget-object p1, p0, Landroid/support/v4/cz0;->do:Landroid/support/v4/bz0;

    invoke-virtual {p1}, Landroid/support/v4/bz0;->for()Landroid/support/v4/ez0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/ez0;->new()I

    move-result p1

    iput p1, p0, Landroid/support/v4/cz0;->new:I

    iget-object p1, p0, Landroid/support/v4/cz0;->do:Landroid/support/v4/bz0;

    invoke-virtual {p1}, Landroid/support/v4/bz0;->for()Landroid/support/v4/ez0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/ez0;->do()I

    move-result p1

    iput p1, p0, Landroid/support/v4/cz0;->try:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/cz0;->else:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/cz0;->do()Landroid/support/v4/y3;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/cz0;->if(Landroid/support/v4/dr0;)V

    return-void
.end method
