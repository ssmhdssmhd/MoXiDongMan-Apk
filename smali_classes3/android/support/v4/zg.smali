.class public Landroid/support/v4/zg;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/goto;

.field public for:Lorg/bouncycastle/asn1/x509/try;

.field public if:Landroid/support/v4/tg2;

.field public new:Lorg/bouncycastle/asn1/throw;


# direct methods
.method public constructor <init>(Landroid/support/v4/tg2;Lorg/bouncycastle/asn1/x509/try;Lorg/bouncycastle/asn1/throw;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/zg;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/support/v4/zg;->this(Lorg/bouncycastle/asn1/throw;)V

    iput-object p1, p0, Landroid/support/v4/zg;->if:Landroid/support/v4/tg2;

    iput-object p2, p0, Landroid/support/v4/zg;->for:Lorg/bouncycastle/asn1/x509/try;

    iput-object p3, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/zg;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/goto;

    iput-object v1, p0, Landroid/support/v4/zg;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/zg;->if:Landroid/support/v4/tg2;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/zg;->for:Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    :cond_0
    iget-object p1, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    invoke-static {p1}, Landroid/support/v4/zg;->this(Lorg/bouncycastle/asn1/throw;)V

    iget-object p1, p0, Landroid/support/v4/zg;->if:Landroid/support/v4/tg2;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/zg;->do:Lorg/bouncycastle/asn1/goto;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/zg;->for:Lorg/bouncycastle/asn1/x509/try;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/goto;Lorg/bouncycastle/asn1/x509/try;Lorg/bouncycastle/asn1/throw;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/goto;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/zg;-><init>(Landroid/support/v4/tg2;Lorg/bouncycastle/asn1/x509/try;Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method

.method private static this(Lorg/bouncycastle/asn1/throw;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/m4;->else(Ljava/lang/Object;)Landroid/support/v4/m4;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/m4;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/m4;->try()Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "challengePassword attribute must have one value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/zg;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/zg;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/zg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/zg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/zg;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zg;->if:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zg;->for:Lorg/bouncycastle/asn1/x509/try;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zg;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/zg;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zg;->if:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zg;->for:Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Landroid/support/v4/zg;->new:Lorg/bouncycastle/asn1/throw;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
