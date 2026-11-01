.class public Landroid/support/v4/py1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Lorg/bouncycastle/asn1/class;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/throw;

.field private for:Landroid/support/v4/b1;

.field private if:Landroid/support/v4/ao0;

.field private new:Lorg/bouncycastle/asn1/throw;

.field private try:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/ao0;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/throw;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/class;Lorg/bouncycastle/asn1/throw;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/py1;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p2, p0, Landroid/support/v4/py1;->if:Landroid/support/v4/ao0;

    iput-object p3, p0, Landroid/support/v4/py1;->for:Landroid/support/v4/b1;

    iput-object p4, p0, Landroid/support/v4/py1;->new:Lorg/bouncycastle/asn1/throw;

    iput-object p5, p0, Landroid/support/v4/py1;->try:Landroid/support/v4/b1;

    iput-object p6, p0, Landroid/support/v4/py1;->case:Lorg/bouncycastle/asn1/class;

    iput-object p7, p0, Landroid/support/v4/py1;->else:Lorg/bouncycastle/asn1/throw;

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

    iput-object v0, p0, Landroid/support/v4/py1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ao0;->try(Ljava/lang/Object;)Landroid/support/v4/ao0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/py1;->if:Landroid/support/v4/ao0;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/py1;->for:Landroid/support/v4/b1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/py1;->new:Lorg/bouncycastle/asn1/throw;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v3, p0, Landroid/support/v4/py1;->new:Lorg/bouncycastle/asn1/throw;

    :goto_0
    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/py1;->try:Landroid/support/v4/b1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/py1;->case:Lorg/bouncycastle/asn1/class;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/py1;->else:Lorg/bouncycastle/asn1/throw;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Landroid/support/v4/py1;->else:Lorg/bouncycastle/asn1/throw;

    :goto_1
    return-void
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/py1;
    .locals 3

    instance-of v0, p0, Landroid/support/v4/py1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/py1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/py1;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/py1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/py1;->else:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public case()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/py1;->try:Landroid/support/v4/b1;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/py1;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/py1;->case:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/py1;->new:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public this()Landroid/support/v4/ao0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/py1;->if:Landroid/support/v4/ao0;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/py1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/py1;->if:Landroid/support/v4/ao0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/py1;->for:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/py1;->new:Lorg/bouncycastle/asn1/throw;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/py1;->new:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/py1;->try:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/py1;->case:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/py1;->else:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v4/py1;->else:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/py1;->for:Landroid/support/v4/b1;

    return-object v0
.end method
