.class public Landroid/support/v4/e3;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/b1;

.field private for:Lorg/bouncycastle/asn1/super;

.field private if:Landroid/support/v4/w4;

.field private new:Landroid/support/v4/fr;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;Landroid/support/v4/w4;[Landroid/support/v4/sc1;Landroid/support/v4/fr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e3;->do:Landroid/support/v4/b1;

    iput-object p2, p0, Landroid/support/v4/e3;->if:Landroid/support/v4/w4;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/e3;->for:Lorg/bouncycastle/asn1/super;

    iput-object p4, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;[Landroid/support/v4/sc1;Landroid/support/v4/fr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e3;->do:Landroid/support/v4/b1;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/e3;->for:Lorg/bouncycastle/asn1/super;

    iput-object p3, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/fr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/asn1/import;

    if-eqz v4, :cond_3

    invoke-static {v3}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v1, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/e3;->for:Lorg/bouncycastle/asn1/super;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid tag no in constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3, v0}, Landroid/support/v4/w4;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/w4;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/e3;->if:Landroid/support/v4/w4;

    goto :goto_1

    :cond_2
    invoke-static {v3, v0}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/e3;->do:Landroid/support/v4/b1;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong sequence size in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/e3;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/e3;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/e3;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/e3;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/e3;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()[Landroid/support/v4/sc1;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/e3;->for:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/sc1;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/e3;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/sc1;->new(Ljava/lang/Object;)Landroid/support/v4/sc1;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public goto()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    return-object v0
.end method

.method public new()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e3;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/e3;->do:Landroid/support/v4/b1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/e3;->do:Landroid/support/v4/b1;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/e3;->if:Landroid/support/v4/w4;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v4/e3;->if:Landroid/support/v4/w4;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/e3;->for:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/e3;->for:Lorg/bouncycastle/asn1/super;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/b1;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e3;->do:Landroid/support/v4/b1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    invoke-virtual {v0}, Landroid/support/v4/fr;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/e3;->new:Landroid/support/v4/fr;

    invoke-virtual {v0}, Landroid/support/v4/fr;->new()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ly1;->break(Ljava/lang/Object;)Landroid/support/v4/ly1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ly1;->this()Landroid/support/v4/fr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/fr;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/ly1;->this()Landroid/support/v4/fr;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/c42;->else(Ljava/lang/Object;)Landroid/support/v4/c42;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/c42;->goto()Landroid/support/v4/uz0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/uz0;->new()Landroid/support/v4/b1;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot parse time stamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot identify algorithm identifier for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
