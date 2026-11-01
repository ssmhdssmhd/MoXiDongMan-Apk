.class final Lorg/bouncycastle/pqc/crypto/xmss/try;
.super Lorg/bouncycastle/pqc/crypto/xmss/throw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/try$if;
    }
.end annotation


# static fields
.field private static final goto:I = 0x2

.field private static final this:I


# instance fields
.field private final case:I

.field private final else:I

.field private final try:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/try$if;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->try:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->break(Lorg/bouncycastle/pqc/crypto/xmss/try$if;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->case:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/try$if;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->else:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/try$if;Lorg/bouncycastle/pqc/crypto/xmss/try$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/try;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/try$if;)V

    return-void
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->try:I

    return v0
.end method

.method public else()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->case:I

    return v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->else:I

    return v0
.end method

.method public try()[B
    .locals 3

    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->try()[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->try:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Landroid/support/v4/ib1;->case(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->case:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Landroid/support/v4/ib1;->case(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/try;->else:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Landroid/support/v4/ib1;->case(I[BI)V

    return-object v0
.end method
