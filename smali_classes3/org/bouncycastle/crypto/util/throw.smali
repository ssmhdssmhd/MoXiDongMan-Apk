.class public Lorg/bouncycastle/crypto/util/throw;
.super Landroid/support/v4/u91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/throw$if;
    }
.end annotation


# instance fields
.field private final for:I

.field private final if:I

.field private final new:I

.field private final try:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/util/throw$if;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/catch;

    invoke-direct {p0, v0}, Landroid/support/v4/u91;-><init>(Lorg/bouncycastle/asn1/catch;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/throw$if;->do(Lorg/bouncycastle/crypto/util/throw$if;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/throw;->if:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/throw$if;->if(Lorg/bouncycastle/crypto/util/throw$if;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/throw;->for:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/throw$if;->for(Lorg/bouncycastle/crypto/util/throw$if;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/throw;->new:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/throw$if;->new(Lorg/bouncycastle/crypto/util/throw$if;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/util/throw;->try:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/throw$if;Lorg/bouncycastle/crypto/util/throw$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/throw;-><init>(Lorg/bouncycastle/crypto/util/throw$if;)V

    return-void
.end method


# virtual methods
.method public for()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/throw;->if:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/throw;->for:I

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/throw;->new:I

    return v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/throw;->try:I

    return v0
.end method
