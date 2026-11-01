.class public abstract Lorg/bouncycastle/pqc/crypto/xmss/throw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
    }
.end annotation


# instance fields
.field private final do:I

.field private final for:I

.field private final if:J

.field private final new:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->do(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->if(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if:J

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->for(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->new(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->new:I

    return-void
.end method


# virtual methods
.method public final do()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->new:I

    return v0
.end method

.method public final for()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if:J

    return-wide v0
.end method

.method public final if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do:I

    return v0
.end method

.method public final new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for:I

    return v0
.end method

.method public try()[B
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/ib1;->case(I[BI)V

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if:J

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/ib1;->static(J[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Landroid/support/v4/ib1;->case(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw;->new:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Landroid/support/v4/ib1;->case(I[BI)V

    return-object v0
.end method
