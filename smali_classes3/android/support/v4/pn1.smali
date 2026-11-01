.class public Landroid/support/v4/pn1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final else:Lorg/bouncycastle/asn1/goto;


# instance fields
.field private case:Landroid/support/v4/y90;

.field private do:Z

.field private for:Landroid/support/v4/nn1;

.field private if:Lorg/bouncycastle/asn1/goto;

.field private new:Lorg/bouncycastle/asn1/case;

.field private try:Lorg/bouncycastle/asn1/super;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/pn1;->else:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/nn1;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/super;Landroid/support/v4/fh2;)V
    .locals 6

    sget-object v1, Landroid/support/v4/pn1;->else:Lorg/bouncycastle/asn1/goto;

    invoke-static {p2}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v3

    invoke-static {p4}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/pn1;-><init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/nn1;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/super;Landroid/support/v4/y90;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/nn1;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/super;Landroid/support/v4/y90;)V
    .locals 6

    sget-object v1, Landroid/support/v4/pn1;->else:Lorg/bouncycastle/asn1/goto;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/pn1;-><init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/nn1;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/super;Landroid/support/v4/y90;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/nn1;Lorg/bouncycastle/asn1/case;Lorg/bouncycastle/asn1/super;Landroid/support/v4/y90;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/pn1;->if:Lorg/bouncycastle/asn1/goto;

    iput-object p2, p0, Landroid/support/v4/pn1;->for:Landroid/support/v4/nn1;

    iput-object p3, p0, Landroid/support/v4/pn1;->new:Lorg/bouncycastle/asn1/case;

    iput-object p4, p0, Landroid/support/v4/pn1;->try:Lorg/bouncycastle/asn1/super;

    iput-object p5, p0, Landroid/support/v4/pn1;->case:Landroid/support/v4/y90;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/import;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Landroid/support/v4/pn1;->do:Z

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pn1;->if:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/v4/pn1;->else:Lorg/bouncycastle/asn1/goto;

    iput-object v1, p0, Landroid/support/v4/pn1;->if:Lorg/bouncycastle/asn1/goto;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/nn1;->new(Ljava/lang/Object;)Landroid/support/v4/nn1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pn1;->for:Landroid/support/v4/nn1;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/pn1;->new:Lorg/bouncycastle/asn1/case;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/super;

    iput-object v0, p0, Landroid/support/v4/pn1;->try:Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v2}, Landroid/support/v4/y90;->catch(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y90;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pn1;->case:Landroid/support/v4/y90;

    :cond_1
    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/pn1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/pn1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/pn1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/pn1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/pn1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/pn1;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/pn1;->new(Ljava/lang/Object;)Landroid/support/v4/pn1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pn1;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public case()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pn1;->new:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public else()Landroid/support/v4/nn1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pn1;->for:Landroid/support/v4/nn1;

    return-object v0
.end method

.method public goto()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pn1;->case:Landroid/support/v4/y90;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/super;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pn1;->try:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-boolean v1, p0, Landroid/support/v4/pn1;->do:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/pn1;->if:Lorg/bouncycastle/asn1/goto;

    sget-object v3, Landroid/support/v4/pn1;->else:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/pn1;->if:Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/pn1;->for:Landroid/support/v4/nn1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pn1;->new:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pn1;->try:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pn1;->case:Landroid/support/v4/y90;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/pn1;->case:Landroid/support/v4/y90;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
