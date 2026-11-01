.class public Landroid/support/v4/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S

.field private docLength:I

.field private rainbowParams:Landroid/support/v4/uk1;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/f6;->docLength:I

    iput-object p2, p0, Landroid/support/v4/f6;->coeffquadratic:[[S

    iput-object p3, p0, Landroid/support/v4/f6;->coeffsingular:[[S

    iput-object p4, p0, Landroid/support/v4/f6;->coeffscalar:[S

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/al1;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v4/al1;->new()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/al1;->do()[[S

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/al1;->for()[[S

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/al1;->if()[S

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/support/v4/f6;-><init>(I[[S[[S[S)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/zk1;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v4/rk1;->if()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/zk1;->for()[[S

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/zk1;->try()[[S

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/zk1;->new()[S

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/support/v4/f6;-><init>(I[[S[[S[S)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/support/v4/f6;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/support/v4/f6;

    iget v1, p0, Landroid/support/v4/f6;->docLength:I

    invoke-virtual {p1}, Landroid/support/v4/f6;->getDocLength()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/v4/f6;->coeffquadratic:[[S

    invoke-virtual {p1}, Landroid/support/v4/f6;->getCoeffQuadratic()[[S

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/cl1;->break([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/f6;->coeffsingular:[[S

    invoke-virtual {p1}, Landroid/support/v4/f6;->getCoeffSingular()[[S

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/cl1;->break([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/f6;->coeffscalar:[S

    invoke-virtual {p1}, Landroid/support/v4/f6;->getCoeffScalar()[S

    move-result-object p1

    invoke-static {v1, p1}, Landroid/support/v4/cl1;->this([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getCoeffQuadratic()[[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f6;->coeffquadratic:[[S

    return-object v0
.end method

.method public getCoeffScalar()[S
    .locals 1

    iget-object v0, p0, Landroid/support/v4/f6;->coeffscalar:[S

    invoke-static {v0}, Landroid/support/v4/q3;->return([S)[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .locals 4

    iget-object v0, p0, Landroid/support/v4/f6;->coeffsingular:[[S

    array-length v0, v0

    new-array v0, v0, [[S

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/f6;->coeffsingular:[[S

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/support/v4/q3;->return([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDocLength()I
    .locals 1

    iget v0, p0, Landroid/support/v4/f6;->docLength:I

    return v0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, Landroid/support/v4/yk1;

    iget v1, p0, Landroid/support/v4/f6;->docLength:I

    iget-object v2, p0, Landroid/support/v4/f6;->coeffquadratic:[[S

    iget-object v3, p0, Landroid/support/v4/f6;->coeffsingular:[[S

    iget-object v4, p0, Landroid/support/v4/f6;->coeffscalar:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/yk1;-><init>(I[[S[[S[S)V

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/catch;

    sget-object v3, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v1, v0}, Landroid/support/v4/mr0;->for(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/support/v4/f6;->docLength:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/f6;->coeffquadratic:[[S

    invoke-static {v1}, Landroid/support/v4/q3;->x([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/f6;->coeffsingular:[[S

    invoke-static {v1}, Landroid/support/v4/q3;->x([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/f6;->coeffscalar:[S

    invoke-static {v1}, Landroid/support/v4/q3;->v([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
