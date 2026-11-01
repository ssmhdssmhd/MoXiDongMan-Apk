.class public Landroid/support/v4/a02;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/cg;

.field private for:Lorg/bouncycastle/asn1/case;

.field private if:Landroid/support/v4/mg;

.field private new:Lorg/bouncycastle/asn1/case;

.field private try:Landroid/support/v4/y90;


# direct methods
.method public constructor <init>(Landroid/support/v4/cg;Landroid/support/v4/mg;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/case;Landroid/support/v4/fh2;)V
    .locals 6

    invoke-static {p5}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/a02;-><init>(Landroid/support/v4/cg;Landroid/support/v4/mg;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/case;Landroid/support/v4/y90;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/cg;Landroid/support/v4/mg;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/case;Landroid/support/v4/y90;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/a02;->do:Landroid/support/v4/cg;

    iput-object p2, p0, Landroid/support/v4/a02;->if:Landroid/support/v4/mg;

    iput-object p3, p0, Landroid/support/v4/a02;->for:Lorg/bouncycastle/asn1/case;

    iput-object p4, p0, Landroid/support/v4/a02;->new:Lorg/bouncycastle/asn1/case;

    iput-object p5, p0, Landroid/support/v4/a02;->try:Landroid/support/v4/y90;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/cg;->try(Ljava/lang/Object;)Landroid/support/v4/cg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a02;->do:Landroid/support/v4/cg;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/mg;->new(Ljava/lang/Object;)Landroid/support/v4/mg;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/a02;->if:Landroid/support/v4/mg;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/a02;->for:Lorg/bouncycastle/asn1/case;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/case;->super(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/case;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/a02;->new:Lorg/bouncycastle/asn1/case;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/y90;->catch(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y90;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a02;->try:Landroid/support/v4/y90;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/case;->super(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/case;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a02;->new:Lorg/bouncycastle/asn1/case;

    :cond_2
    :goto_0
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/a02;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/a02;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/a02;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/a02;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/a02;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/a02;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/a02;->case(Ljava/lang/Object;)Landroid/support/v4/a02;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a02;->for:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a02;->new:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public new()Landroid/support/v4/cg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a02;->do:Landroid/support/v4/cg;

    return-object v0
.end method

.method public this()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a02;->try:Landroid/support/v4/y90;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/a02;->do:Landroid/support/v4/cg;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/a02;->if:Landroid/support/v4/mg;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/a02;->for:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/a02;->new:Lorg/bouncycastle/asn1/case;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/a02;->new:Lorg/bouncycastle/asn1/case;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/a02;->try:Landroid/support/v4/y90;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/a02;->try:Landroid/support/v4/y90;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/mg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a02;->if:Landroid/support/v4/mg;

    return-object v0
.end method
