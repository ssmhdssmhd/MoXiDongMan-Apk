.class public Landroid/support/v4/do0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Z

.field private do:Landroid/support/v4/r10;

.field private else:Lorg/bouncycastle/asn1/super;

.field private for:Z

.field private if:Z

.field private new:Landroid/support/v4/ll1;

.field private try:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/r10;ZZ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/do0;-><init>(Landroid/support/v4/r10;ZZLandroid/support/v4/ll1;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/r10;ZZLandroid/support/v4/ll1;ZZ)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/do0;->do:Landroid/support/v4/r10;

    iput-boolean p5, p0, Landroid/support/v4/do0;->try:Z

    iput-boolean p6, p0, Landroid/support/v4/do0;->case:Z

    iput-boolean p3, p0, Landroid/support/v4/do0;->for:Z

    iput-boolean p2, p0, Landroid/support/v4/do0;->if:Z

    iput-object p4, p0, Landroid/support/v4/do0;->new:Landroid/support/v4/ll1;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/u;

    invoke-direct {v3, v2, v1, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/u;

    invoke-static {v2}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/u;

    const/4 p2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    if-eqz p4, :cond_3

    new-instance p1, Lorg/bouncycastle/asn1/u;

    const/4 p2, 0x3

    invoke-direct {p1, v1, p2, p4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    if-eqz p5, :cond_4

    new-instance p1, Lorg/bouncycastle/asn1/u;

    const/4 p2, 0x4

    invoke-static {v2}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    if-eqz p6, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/u;

    const/4 p2, 0x5

    invoke-static {v2}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p1, p0, Landroid/support/v4/do0;->else:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/do0;->else:Lorg/bouncycastle/asn1/super;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/for;->final(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v4/do0;->case:Z

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/for;->final(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v4/do0;->try:Z

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/support/v4/ll1;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/support/v4/ll1;-><init>(Lorg/bouncycastle/asn1/instanceof;)V

    iput-object v3, p0, Landroid/support/v4/do0;->new:Landroid/support/v4/ll1;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/for;->final(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v4/do0;->for:Z

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/for;->final(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v4/do0;->if:Z

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Landroid/support/v4/r10;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/r10;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/do0;->do:Landroid/support/v4/r10;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/do0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/do0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/do0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/do0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/do0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/do0;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/do0;->else(Ljava/lang/Object;)Landroid/support/v4/do0;

    move-result-object p0

    return-object p0
.end method

.method private new(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private try(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public break()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/do0;->try:Z

    return v0
.end method

.method public case()Landroid/support/v4/r10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do0;->do:Landroid/support/v4/r10;

    return-object v0
.end method

.method public catch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/do0;->case:Z

    return v0
.end method

.method public class()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/do0;->for:Z

    return v0
.end method

.method public const()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/do0;->if:Z

    return v0
.end method

.method public this()Landroid/support/v4/ll1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do0;->new:Landroid/support/v4/ll1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do0;->else:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/for;->new()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/support/v4/do0;->do:Landroid/support/v4/r10;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/r10;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Landroid/support/v4/do0;->new(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/do0;->if:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v4/do0;->try(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsUserCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Landroid/support/v4/do0;->new(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Landroid/support/v4/do0;->for:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v4/do0;->try(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsCACerts"

    invoke-direct {p0, v1, v0, v3, v2}, Landroid/support/v4/do0;->new(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Landroid/support/v4/do0;->new:Landroid/support/v4/ll1;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/if;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlySomeReasons"

    invoke-direct {p0, v1, v0, v3, v2}, Landroid/support/v4/do0;->new(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Landroid/support/v4/do0;->case:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Landroid/support/v4/do0;->try(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsAttributeCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Landroid/support/v4/do0;->new(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Landroid/support/v4/do0;->try:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Landroid/support/v4/do0;->try(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indirectCRL"

    invoke-direct {p0, v1, v0, v3, v2}, Landroid/support/v4/do0;->new(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
