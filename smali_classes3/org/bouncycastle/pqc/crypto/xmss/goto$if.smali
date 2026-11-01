.class public Lorg/bouncycastle/pqc/crypto/xmss/goto$if;
.super Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bouncycastle/pqc/crypto/xmss/throw$do<",
        "Lorg/bouncycastle/pqc/crypto/xmss/goto$if;",
        ">;"
    }
.end annotation


# instance fields
.field private case:I

.field private else:I

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;-><init>(I)V

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->case:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->else:I

    return-void
.end method

.method public static synthetic break(Lorg/bouncycastle/pqc/crypto/xmss/goto$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try:I

    return p0
.end method

.method public static synthetic catch(Lorg/bouncycastle/pqc/crypto/xmss/goto$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->case:I

    return p0
.end method

.method public static synthetic class(Lorg/bouncycastle/pqc/crypto/xmss/goto$if;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->else:I

    return p0
.end method


# virtual methods
.method public bridge synthetic case()Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->const()Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v0

    return-object v0
.end method

.method public const()Lorg/bouncycastle/pqc/crypto/xmss/goto$if;
    .locals 0

    return-object p0
.end method

.method public final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->case:I

    return-object p0
.end method

.method public super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->else:I

    return-object p0
.end method

.method public throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try:I

    return-object p0
.end method

.method public try()Lorg/bouncycastle/pqc/crypto/xmss/throw;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/goto;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/goto$if;Lorg/bouncycastle/pqc/crypto/xmss/goto$do;)V

    return-object v0
.end method
