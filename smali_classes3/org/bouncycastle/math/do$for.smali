.class public Lorg/bouncycastle/math/do$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private do:Ljava/math/BigInteger;

.field private for:I

.field private if:[B


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/do$for;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/math/do$for;->if:[B

    iput p3, p0, Lorg/bouncycastle/math/do$for;->for:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/math/BigInteger;[BILorg/bouncycastle/math/do$do;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/do$for;-><init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public do()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/do$for;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/do$for;->if:[B

    return-object v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/do$for;->for:I

    return v0
.end method
