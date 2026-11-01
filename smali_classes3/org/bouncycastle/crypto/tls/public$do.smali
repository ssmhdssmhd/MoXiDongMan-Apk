.class Lorg/bouncycastle/crypto/tls/public$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/public;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:I

.field private if:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/tls/public$do;->do:I

    iput p2, p0, Lorg/bouncycastle/crypto/tls/public$do;->if:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/public$do;->if:I

    return v0
.end method

.method public for(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/public$do;->if:I

    return-void
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/public$do;->do:I

    return v0
.end method

.method public new(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/public$do;->do:I

    return-void
.end method
