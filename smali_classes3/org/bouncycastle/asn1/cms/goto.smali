.class public Lorg/bouncycastle/asn1/cms/goto;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Lorg/bouncycastle/asn1/class;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/throw;

.field private for:Landroid/support/v4/b1;

.field private if:Landroid/support/v4/oy1;

.field private new:Lorg/bouncycastle/asn1/throw;

.field private try:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(Landroid/support/v4/oy1;Landroid/support/v4/b1;Landroid/support/v4/w4;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/class;Landroid/support/v4/w4;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/oy1;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/goto;->if:Landroid/support/v4/oy1;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/goto;->for:Landroid/support/v4/b1;

    invoke-static {p3}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/goto;->new:Lorg/bouncycastle/asn1/throw;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/goto;->try:Landroid/support/v4/b1;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/goto;->case:Lorg/bouncycastle/asn1/class;

    invoke-static {p6}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/goto;->else:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/oy1;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/throw;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/class;Lorg/bouncycastle/asn1/throw;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/oy1;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/goto;->if:Landroid/support/v4/oy1;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/goto;->for:Landroid/support/v4/b1;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/goto;->new:Lorg/bouncycastle/asn1/throw;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/goto;->try:Landroid/support/v4/b1;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/goto;->case:Lorg/bouncycastle/asn1/class;

    iput-object p6, p0, Lorg/bouncycastle/asn1/cms/goto;->else:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/oy1;->try(Ljava/lang/Object;)Landroid/support/v4/oy1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->if:Landroid/support/v4/oy1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->for:Landroid/support/v4/b1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->new:Lorg/bouncycastle/asn1/throw;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/goto;->new:Lorg/bouncycastle/asn1/throw;

    :goto_0
    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->try:Landroid/support/v4/b1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->case:Lorg/bouncycastle/asn1/class;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/goto;->else:Lorg/bouncycastle/asn1/throw;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/goto;->else:Lorg/bouncycastle/asn1/throw;

    :goto_1
    return-void
.end method

.method public static goto(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/goto;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/goto;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/goto;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/goto;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->else:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public case()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->try:Landroid/support/v4/b1;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->case:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->new:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public this()Landroid/support/v4/oy1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->if:Landroid/support/v4/oy1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/goto;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/goto;->if:Landroid/support/v4/oy1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/goto;->for:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/goto;->new:Lorg/bouncycastle/asn1/throw;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/goto;->new:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/goto;->try:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/goto;->case:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/goto;->else:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/cms/goto;->else:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/goto;->for:Landroid/support/v4/b1;

    return-object v0
.end method
