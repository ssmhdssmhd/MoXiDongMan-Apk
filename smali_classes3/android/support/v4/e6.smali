.class public Landroid/support/v4/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private A1inv:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private layers:[Landroid/support/v4/ds0;

.field private vi:[I


# direct methods
.method public constructor <init>(Landroid/support/v4/wk1;)V
    .locals 7

    invoke-virtual {p1}, Landroid/support/v4/wk1;->try()[[S

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/wk1;->for()[S

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/wk1;->case()[[S

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/wk1;->new()[S

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/wk1;->goto()[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/wk1;->else()[Landroid/support/v4/ds0;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/e6;-><init>([[S[S[[S[S[I[Landroid/support/v4/ds0;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/xk1;)V
    .locals 7

    invoke-virtual {p1}, Landroid/support/v4/xk1;->for()[[S

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/xk1;->do()[S

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/xk1;->new()[[S

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/xk1;->if()[S

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/xk1;->case()[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/xk1;->try()[Landroid/support/v4/ds0;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/e6;-><init>([[S[S[[S[S[I[Landroid/support/v4/ds0;)V

    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Landroid/support/v4/ds0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e6;->A1inv:[[S

    iput-object p2, p0, Landroid/support/v4/e6;->b1:[S

    iput-object p3, p0, Landroid/support/v4/e6;->A2inv:[[S

    iput-object p4, p0, Landroid/support/v4/e6;->b2:[S

    iput-object p5, p0, Landroid/support/v4/e6;->vi:[I

    iput-object p6, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    instance-of v1, p1, Landroid/support/v4/e6;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    check-cast p1, Landroid/support/v4/e6;

    iget-object v1, p0, Landroid/support/v4/e6;->A1inv:[[S

    invoke-virtual {p1}, Landroid/support/v4/e6;->getInvA1()[[S

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/cl1;->break([[S[[S)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/e6;->A2inv:[[S

    invoke-virtual {p1}, Landroid/support/v4/e6;->getInvA2()[[S

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/cl1;->break([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/e6;->b1:[S

    invoke-virtual {p1}, Landroid/support/v4/e6;->getB1()[S

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/cl1;->this([S[S)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/e6;->b2:[S

    invoke-virtual {p1}, Landroid/support/v4/e6;->getB2()[S

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/cl1;->this([S[S)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/e6;->vi:[I

    invoke-virtual {p1}, Landroid/support/v4/e6;->getVi()[I

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    array-length v3, v3

    invoke-virtual {p1}, Landroid/support/v4/e6;->getLayers()[Landroid/support/v4/ds0;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_5
    if-ltz v0, :cond_7

    iget-object v2, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/support/v4/e6;->getLayers()[Landroid/support/v4/ds0;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/ds0;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    return v1

    :cond_8
    :goto_6
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getB1()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e6;->b1:[S

    return-object v0
.end method

.method public getB2()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e6;->b2:[S

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    new-instance v7, Landroid/support/v4/vk1;

    iget-object v1, p0, Landroid/support/v4/e6;->A1inv:[[S

    iget-object v2, p0, Landroid/support/v4/e6;->b1:[S

    iget-object v3, p0, Landroid/support/v4/e6;->A2inv:[[S

    iget-object v4, p0, Landroid/support/v4/e6;->b2:[S

    iget-object v5, p0, Landroid/support/v4/e6;->vi:[I

    iget-object v6, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/vk1;-><init>([[S[S[[S[S[I[Landroid/support/v4/ds0;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/do;

    invoke-direct {v2, v1, v7}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getInvA1()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e6;->A1inv:[[S

    return-object v0
.end method

.method public getInvA2()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e6;->A2inv:[[S

    return-object v0
.end method

.method public getLayers()[Landroid/support/v4/ds0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    return-object v0
.end method

.method public getVi()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e6;->vi:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e6;->A1inv:[[S

    invoke-static {v1}, Landroid/support/v4/q3;->x([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e6;->b1:[S

    invoke-static {v1}, Landroid/support/v4/q3;->v([S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e6;->A2inv:[[S

    invoke-static {v1}, Landroid/support/v4/q3;->x([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e6;->b2:[S

    invoke-static {v1}, Landroid/support/v4/q3;->v([S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e6;->vi:[I

    invoke-static {v1}, Landroid/support/v4/q3;->q([I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Landroid/support/v4/e6;->layers:[Landroid/support/v4/ds0;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/support/v4/ds0;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method
