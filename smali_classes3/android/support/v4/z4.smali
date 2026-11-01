.class public Landroid/support/v4/z4;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Landroid/support/v4/fr;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/throw;

.field private for:Lorg/bouncycastle/asn1/throw;

.field private goto:Lorg/bouncycastle/asn1/class;

.field private if:Landroid/support/v4/o81;

.field private new:Landroid/support/v4/b1;

.field private this:Lorg/bouncycastle/asn1/throw;

.field private try:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(Landroid/support/v4/o81;Lorg/bouncycastle/asn1/throw;Landroid/support/v4/b1;Landroid/support/v4/b1;Landroid/support/v4/fr;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/class;Lorg/bouncycastle/asn1/throw;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-nez p4, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p6, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-static {p1}, Landroid/support/v4/z4;->new(Landroid/support/v4/o81;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/z4;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/z4;->if:Landroid/support/v4/o81;

    iput-object p3, p0, Landroid/support/v4/z4;->new:Landroid/support/v4/b1;

    iput-object p4, p0, Landroid/support/v4/z4;->try:Landroid/support/v4/b1;

    iput-object p2, p0, Landroid/support/v4/z4;->for:Lorg/bouncycastle/asn1/throw;

    iput-object p5, p0, Landroid/support/v4/z4;->case:Landroid/support/v4/fr;

    iput-object p6, p0, Landroid/support/v4/z4;->else:Lorg/bouncycastle/asn1/throw;

    iput-object p7, p0, Landroid/support/v4/z4;->goto:Lorg/bouncycastle/asn1/class;

    iput-object p8, p0, Landroid/support/v4/z4;->this:Lorg/bouncycastle/asn1/throw;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "digestAlgorithm and authAttrs must be set together"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/goto;

    iput-object v1, p0, Landroid/support/v4/z4;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/import;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-static {v1, v0}, Landroid/support/v4/o81;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/o81;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/z4;->if:Landroid/support/v4/o81;

    const/4 v1, 0x3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v1, v2

    const/4 v3, 0x3

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/z4;->for:Lorg/bouncycastle/asn1/throw;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/z4;->new:Landroid/support/v4/b1;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v3, v1, Lorg/bouncycastle/asn1/import;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-static {v1, v0}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/z4;->try:Landroid/support/v4/b1;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    :cond_1
    invoke-static {v1}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/z4;->case:Landroid/support/v4/fr;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v3, v2, Lorg/bouncycastle/asn1/import;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/bouncycastle/asn1/import;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/z4;->else:Lorg/bouncycastle/asn1/throw;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    move v4, v2

    move-object v2, v1

    move v1, v4

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/z4;->goto:Lorg/bouncycastle/asn1/class;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/z4;->this:Lorg/bouncycastle/asn1/throw;

    :cond_3
    return-void
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/z4;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/z4;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/z4;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/z4;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/z4;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new(Landroid/support/v4/o81;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/o81;->try()Lorg/bouncycastle/asn1/throw;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lorg/bouncycastle/asn1/import;

    if-eqz v5, :cond_1

    check-cast v2, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v0, 0x3

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/o81;->new()Lorg/bouncycastle/asn1/throw;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/o81;->new()Lorg/bouncycastle/asn1/throw;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/import;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    return v4
.end method

.method public static this(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/z4;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/z4;->goto(Ljava/lang/Object;)Landroid/support/v4/z4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->goto:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public case()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->try:Landroid/support/v4/b1;

    return-object v0
.end method

.method public catch()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public class()Landroid/support/v4/o81;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->if:Landroid/support/v4/o81;

    return-object v0
.end method

.method public const()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->for:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public else()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->case:Landroid/support/v4/fr;

    return-object v0
.end method

.method public final()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->this:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public super()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/z4;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/z4;->if:Landroid/support/v4/o81;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/z4;->if:Landroid/support/v4/o81;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/z4;->for:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/z4;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/z4;->try:Landroid/support/v4/b1;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v4/z4;->try:Landroid/support/v4/b1;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/z4;->case:Landroid/support/v4/fr;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/z4;->else:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/z4;->else:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/z4;->goto:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/z4;->this:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/support/v4/z4;->this:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/package;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/package;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z4;->else:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method
