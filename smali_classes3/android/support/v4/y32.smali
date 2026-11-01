.class public Landroid/support/v4/y32;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final case:Lorg/bouncycastle/asn1/goto;


# instance fields
.field public do:Lorg/bouncycastle/asn1/goto;

.field public for:Lorg/bouncycastle/asn1/super;

.field public if:Landroid/support/v4/tg0;

.field public new:Landroid/support/v4/y90;

.field public try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/y32;->case:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/tg0;Lorg/bouncycastle/asn1/super;Landroid/support/v4/fh2;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Landroid/support/v4/y32;->case:Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/y32;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/y32;->if:Landroid/support/v4/tg0;

    iput-object p2, p0, Landroid/support/v4/y32;->for:Lorg/bouncycastle/asn1/super;

    invoke-static {p3}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/y32;->new:Landroid/support/v4/y90;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/tg0;Lorg/bouncycastle/asn1/super;Landroid/support/v4/y90;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Landroid/support/v4/y32;->case:Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/y32;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/y32;->if:Landroid/support/v4/tg0;

    iput-object p2, p0, Landroid/support/v4/y32;->for:Lorg/bouncycastle/asn1/super;

    iput-object p3, p0, Landroid/support/v4/y32;->new:Landroid/support/v4/y90;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

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

    iput-boolean v2, p0, Landroid/support/v4/y32;->try:Z

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y32;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/v4/y32;->case:Lorg/bouncycastle/asn1/goto;

    iput-object v1, p0, Landroid/support/v4/y32;->do:Lorg/bouncycastle/asn1/goto;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-static {v0, v2}, Landroid/support/v4/tg0;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y32;->if:Landroid/support/v4/tg0;

    move v0, v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/super;

    iput-object v0, p0, Landroid/support/v4/y32;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    add-int/lit8 v3, v1, 0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v2}, Landroid/support/v4/y90;->catch(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y90;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/y32;->new:Landroid/support/v4/y90;

    :cond_2
    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/y32;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/y32;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/y32;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/y32;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/y32;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y32;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/y32;->new(Ljava/lang/Object;)Landroid/support/v4/y32;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y32;->new:Landroid/support/v4/y90;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/super;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y32;->for:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public goto()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y32;->if:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y32;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/y32;->do:Lorg/bouncycastle/asn1/goto;

    sget-object v2, Landroid/support/v4/y32;->case:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/y32;->try:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/y32;->do:Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/y32;->if:Landroid/support/v4/tg0;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/y32;->if:Landroid/support/v4/tg0;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/y32;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/y32;->new:Landroid/support/v4/y90;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/y32;->new:Landroid/support/v4/y90;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
