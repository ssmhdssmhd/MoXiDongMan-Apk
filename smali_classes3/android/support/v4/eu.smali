.class public Landroid/support/v4/eu;
.super Ljavax/crypto/spec/DHParameterSpec;
.source "SourceFile"


# instance fields
.field private final do:Ljava/math/BigInteger;

.field private final for:I

.field private final if:Ljava/math/BigInteger;

.field private new:Landroid/support/v4/xu;


# direct methods
.method public constructor <init>(Landroid/support/v4/ou;)V
    .locals 7

    invoke-virtual {p1}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/ou;->else()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/ou;->if()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/ou;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/ou;->try()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v4/ou;->new()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/eu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    invoke-virtual {p1}, Landroid/support/v4/ou;->goto()Landroid/support/v4/xu;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/eu;->new:Landroid/support/v4/xu;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/eu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/eu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/eu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .locals 0

    invoke-direct {p0, p1, p3, p6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Landroid/support/v4/eu;->do:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/eu;->if:Ljava/math/BigInteger;

    iput p5, p0, Landroid/support/v4/eu;->for:I

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/ou;
    .locals 9

    new-instance v8, Landroid/support/v4/ou;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/eu;->do:Ljava/math/BigInteger;

    iget v4, p0, Landroid/support/v4/eu;->for:I

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/eu;->if:Ljava/math/BigInteger;

    iget-object v7, p0, Landroid/support/v4/eu;->new:Landroid/support/v4/xu;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Landroid/support/v4/xu;)V

    return-object v8
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/eu;->for:I

    return v0
.end method

.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/eu;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/eu;->do:Ljava/math/BigInteger;

    return-object v0
.end method
