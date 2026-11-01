.class public Landroid/support/v4/c72;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:Landroid/support/v4/wz0;

.field private if:Lorg/bouncycastle/asn1/g;

.field private new:Lorg/bouncycastle/asn1/class;

.field private try:Landroid/support/v4/n80;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/g;Landroid/support/v4/wz0;Lorg/bouncycastle/asn1/class;Landroid/support/v4/n80;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/c72;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/c72;->if:Lorg/bouncycastle/asn1/g;

    iput-object p2, p0, Landroid/support/v4/c72;->for:Landroid/support/v4/wz0;

    iput-object p3, p0, Landroid/support/v4/c72;->new:Lorg/bouncycastle/asn1/class;

    iput-object p4, p0, Landroid/support/v4/c72;->try:Landroid/support/v4/n80;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c72;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/g;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/g;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c72;->if:Lorg/bouncycastle/asn1/g;

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/wz0;

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/wz0;->try(Ljava/lang/Object;)Landroid/support/v4/wz0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c72;->for:Landroid/support/v4/wz0;

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c72;->new:Lorg/bouncycastle/asn1/class;

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/n80;->new(Ljava/lang/Object;)Landroid/support/v4/n80;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/c72;->try:Landroid/support/v4/n80;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/c72;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/support/v4/c72;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/c72;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/c72;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast p0, Landroid/support/v4/c72;

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/wz0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c72;->for:Landroid/support/v4/wz0;

    return-object v0
.end method

.method public goto()Landroid/support/v4/n80;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c72;->try:Landroid/support/v4/n80;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c72;->new:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/c72;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/c72;->if:Lorg/bouncycastle/asn1/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/c72;->for:Landroid/support/v4/wz0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/c72;->new:Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/c72;->try:Landroid/support/v4/n80;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/package;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/package;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c72;->if:Lorg/bouncycastle/asn1/g;

    return-object v0
.end method
