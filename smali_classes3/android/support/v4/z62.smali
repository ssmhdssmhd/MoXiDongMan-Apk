.class public Landroid/support/v4/z62;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public case:Landroid/support/v4/y90;

.field public do:Lorg/bouncycastle/asn1/goto;

.field public for:Lorg/bouncycastle/asn1/catch;

.field public if:Landroid/support/v4/uz0;

.field public new:Lorg/bouncycastle/asn1/goto;

.field public try:Lorg/bouncycastle/asn1/for;


# direct methods
.method public constructor <init>(Landroid/support/v4/uz0;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/for;Landroid/support/v4/y90;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/z62;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/z62;->if:Landroid/support/v4/uz0;

    iput-object p2, p0, Landroid/support/v4/z62;->for:Lorg/bouncycastle/asn1/catch;

    iput-object p3, p0, Landroid/support/v4/z62;->new:Lorg/bouncycastle/asn1/goto;

    iput-object p4, p0, Landroid/support/v4/z62;->try:Lorg/bouncycastle/asn1/for;

    iput-object p5, p0, Landroid/support/v4/z62;->case:Landroid/support/v4/y90;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/z62;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/uz0;->case(Ljava/lang/Object;)Landroid/support/v4/uz0;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/z62;->if:Landroid/support/v4/uz0;

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/catch;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/z62;->for:Lorg/bouncycastle/asn1/catch;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/goto;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/z62;->new:Lorg/bouncycastle/asn1/goto;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/for;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/for;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/z62;->try:Lorg/bouncycastle/asn1/for;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/import;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3, v1}, Landroid/support/v4/y90;->catch(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y90;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/z62;->case:Landroid/support/v4/y90;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/z62;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/z62;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/z62;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/z62;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/z62;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z62;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public else()Landroid/support/v4/uz0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z62;->if:Landroid/support/v4/uz0;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z62;->new:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/for;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z62;->try:Lorg/bouncycastle/asn1/for;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z62;->for:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/z62;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/z62;->if:Landroid/support/v4/uz0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/z62;->for:Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/z62;->new:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/z62;->try:Lorg/bouncycastle/asn1/for;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/z62;->try:Lorg/bouncycastle/asn1/for;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/z62;->case:Landroid/support/v4/y90;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Landroid/support/v4/z62;->case:Landroid/support/v4/y90;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z62;->case:Landroid/support/v4/y90;

    return-object v0
.end method
