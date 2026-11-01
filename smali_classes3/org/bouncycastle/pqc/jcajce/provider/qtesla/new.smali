.class public Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field private static final try:Ljava/util/Map;


# instance fields
.field private do:Landroid/support/v4/mi1;

.field private for:Ljava/security/SecureRandom;

.field private if:Landroid/support/v4/ni1;

.field private new:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->try:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "qTESLA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/ni1;

    invoke-direct {v0}, Landroid/support/v4/ni1;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->if:Landroid/support/v4/ni1;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->for:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->new:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->new:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/mi1;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->for:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/mi1;-><init>(ILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->do:Landroid/support/v4/mi1;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->if:Landroid/support/v4/ni1;

    invoke-virtual {v1, v0}, Landroid/support/v4/ni1;->init(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->new:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->if:Landroid/support/v4/ni1;

    invoke-virtual {v0}, Landroid/support/v4/ni1;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/qi1;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/pi1;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/if;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/if;-><init>(Landroid/support/v4/qi1;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/do;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/do;-><init>(Landroid/support/v4/pi1;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/oi1;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/oi1;

    new-instance v0, Landroid/support/v4/mi1;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->try:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/v4/oi1;->do()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p2}, Landroid/support/v4/mi1;-><init>(ILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->do:Landroid/support/v4/mi1;

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->if:Landroid/support/v4/ni1;

    invoke-virtual {p1, v0}, Landroid/support/v4/ni1;->init(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/new;->new:Z

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a QTESLAParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
