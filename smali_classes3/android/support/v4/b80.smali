.class public Landroid/support/v4/b80;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:Lorg/bouncycastle/asn1/throw;

.field private if:Landroid/support/v4/o81;

.field private new:Landroid/support/v4/h70;

.field private try:Lorg/bouncycastle/asn1/throw;


# direct methods
.method public constructor <init>(Landroid/support/v4/o81;Lorg/bouncycastle/asn1/throw;Landroid/support/v4/h70;Landroid/support/v4/w4;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-static {p4}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/v4/b80;->new(Landroid/support/v4/o81;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/b80;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/b80;->if:Landroid/support/v4/o81;

    iput-object p2, p0, Landroid/support/v4/b80;->for:Lorg/bouncycastle/asn1/throw;

    iput-object p3, p0, Landroid/support/v4/b80;->new:Landroid/support/v4/h70;

    invoke-static {p4}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/b80;->try:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/o81;Lorg/bouncycastle/asn1/throw;Landroid/support/v4/h70;Lorg/bouncycastle/asn1/throw;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-static {p1, p2, p4}, Landroid/support/v4/b80;->new(Landroid/support/v4/o81;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/b80;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/b80;->if:Landroid/support/v4/o81;

    iput-object p2, p0, Landroid/support/v4/b80;->for:Lorg/bouncycastle/asn1/throw;

    iput-object p3, p0, Landroid/support/v4/b80;->new:Landroid/support/v4/h70;

    iput-object p4, p0, Landroid/support/v4/b80;->try:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/goto;

    iput-object v1, p0, Landroid/support/v4/b80;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/import;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-static {v1, v0}, Landroid/support/v4/o81;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/o81;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/b80;->if:Landroid/support/v4/o81;

    const/4 v1, 0x3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v1, v2

    const/4 v3, 0x3

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/b80;->for:Lorg/bouncycastle/asn1/throw;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/h70;->else(Ljava/lang/Object;)Landroid/support/v4/h70;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/b80;->new:Landroid/support/v4/h70;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/b80;->try:Lorg/bouncycastle/asn1/throw;

    :cond_1
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/b80;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b80;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b80;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/b80;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/b80;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b80;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/b80;->case(Ljava/lang/Object;)Landroid/support/v4/b80;

    move-result-object p0

    return-object p0
.end method

.method public static new(Landroid/support/v4/o81;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;)I
    .locals 1

    const/4 v0, 0x2

    if-nez p0, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/ol1;->try(Ljava/lang/Object;)Landroid/support/v4/ol1;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/ol1;->else()Lorg/bouncycastle/asn1/goto;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b80;->try:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b80;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public goto()Landroid/support/v4/o81;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b80;->if:Landroid/support/v4/o81;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b80;->for:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/b80;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/b80;->if:Landroid/support/v4/o81;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/b80;->if:Landroid/support/v4/o81;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/b80;->for:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/b80;->new:Landroid/support/v4/h70;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/b80;->try:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v4/b80;->try:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/package;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/package;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/h70;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b80;->new:Landroid/support/v4/h70;

    return-object v0
.end method
