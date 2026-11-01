.class public Landroid/support/v4/uc1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:[Landroid/support/v4/fe1;

.field private for:Z

.field private if:Z

.field private new:Z


# direct methods
.method public constructor <init>([Landroid/support/v4/fe1;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/uc1;->if:Z

    iput-boolean v0, p0, Landroid/support/v4/uc1;->for:Z

    iput-boolean v0, p0, Landroid/support/v4/uc1;->new:Z

    invoke-direct {p0, p1}, Landroid/support/v4/uc1;->new([Landroid/support/v4/fe1;)[Landroid/support/v4/fe1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uc1;->do:[Landroid/support/v4/fe1;

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/fe1;ZZZ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/uc1;->if:Z

    iput-boolean v0, p0, Landroid/support/v4/uc1;->for:Z

    iput-boolean v0, p0, Landroid/support/v4/uc1;->new:Z

    invoke-direct {p0, p1}, Landroid/support/v4/uc1;->new([Landroid/support/v4/fe1;)[Landroid/support/v4/fe1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uc1;->do:[Landroid/support/v4/fe1;

    iput-boolean p2, p0, Landroid/support/v4/uc1;->if:Z

    iput-boolean p3, p0, Landroid/support/v4/uc1;->for:Z

    iput-boolean p4, p0, Landroid/support/v4/uc1;->new:Z

    return-void
.end method

.method private class(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/uc1;->for:Z

    return-void
.end method

.method private const(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/uc1;->new:Z

    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/uc1;
    .locals 6

    instance-of v0, p0, Landroid/support/v4/uc1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/uc1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_6

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    new-instance v2, Landroid/support/v4/uc1;

    invoke-static {v1}, Landroid/support/v4/uc1;->try(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/fe1;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/support/v4/uc1;-><init>([Landroid/support/v4/fe1;)V

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v5, v4, Lorg/bouncycastle/asn1/for;

    if-eqz v5, :cond_1

    invoke-static {v4}, Lorg/bouncycastle/asn1/for;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v4

    invoke-direct {v2, v4}, Landroid/support/v4/uc1;->final(Z)V

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lorg/bouncycastle/asn1/import;

    if-eqz v5, :cond_4

    invoke-static {v4}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v5

    if-eqz v5, :cond_3

    if-ne v5, v1, :cond_2

    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/for;->final(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/for;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v4

    invoke-direct {v2, v4}, Landroid/support/v4/uc1;->const(Z)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/for;->final(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/for;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v4

    invoke-direct {v2, v4}, Landroid/support/v4/uc1;->class(Z)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private final(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/uc1;->if:Z

    return-void
.end method

.method public static goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/uc1;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/uc1;->else(Ljava/lang/Object;)Landroid/support/v4/uc1;

    move-result-object p0

    return-object p0
.end method

.method private new([Landroid/support/v4/fe1;)[Landroid/support/v4/fe1;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/fe1;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static try(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/fe1;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/fe1;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/fe1;->new(Ljava/lang/Object;)Landroid/support/v4/fe1;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public break()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/uc1;->new:Z

    return v0
.end method

.method public case()[Landroid/support/v4/fe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uc1;->do:[Landroid/support/v4/fe1;

    invoke-direct {p0, v0}, Landroid/support/v4/uc1;->new([Landroid/support/v4/fe1;)[Landroid/support/v4/fe1;

    move-result-object v0

    return-object v0
.end method

.method public catch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/uc1;->if:Z

    return v0
.end method

.method public this()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/uc1;->for:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Landroid/support/v4/import;

    invoke-direct {v1}, Landroid/support/v4/import;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/v4/uc1;->do:[Landroid/support/v4/fe1;

    array-length v5, v4

    if-eq v3, v5, :cond_0

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/n;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-boolean v1, p0, Landroid/support/v4/uc1;->if:Z

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/uc1;->for:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-boolean v3, p0, Landroid/support/v4/uc1;->for:Z

    invoke-static {v3}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v3

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-boolean v1, p0, Landroid/support/v4/uc1;->new:Z

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-boolean v3, p0, Landroid/support/v4/uc1;->new:Z

    invoke-static {v3}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathProcInput: {\nacceptablePolicySet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/uc1;->do:[Landroid/support/v4/fe1;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v4/uc1;->if:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nexplicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v4/uc1;->for:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ninhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v4/uc1;->new:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
