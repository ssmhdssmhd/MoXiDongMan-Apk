.class public Landroid/support/v4/c42;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private break:Landroid/support/v4/y90;

.field private case:Landroid/support/v4/p;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/for;

.field private for:Landroid/support/v4/uz0;

.field private goto:Lorg/bouncycastle/asn1/goto;

.field private if:Lorg/bouncycastle/asn1/catch;

.field private new:Lorg/bouncycastle/asn1/goto;

.field private this:Landroid/support/v4/tg0;

.field private try:Lorg/bouncycastle/asn1/case;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/uz0;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/case;Landroid/support/v4/p;Lorg/bouncycastle/asn1/for;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/tg0;Landroid/support/v4/y90;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/c42;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/c42;->if:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Landroid/support/v4/c42;->for:Landroid/support/v4/uz0;

    iput-object p3, p0, Landroid/support/v4/c42;->new:Lorg/bouncycastle/asn1/goto;

    iput-object p4, p0, Landroid/support/v4/c42;->try:Lorg/bouncycastle/asn1/case;

    iput-object p5, p0, Landroid/support/v4/c42;->case:Landroid/support/v4/p;

    iput-object p6, p0, Landroid/support/v4/c42;->else:Lorg/bouncycastle/asn1/for;

    iput-object p7, p0, Landroid/support/v4/c42;->goto:Lorg/bouncycastle/asn1/goto;

    iput-object p8, p0, Landroid/support/v4/c42;->this:Landroid/support/v4/tg0;

    iput-object p9, p0, Landroid/support/v4/c42;->break:Landroid/support/v4/y90;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c42;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c42;->if:Lorg/bouncycastle/asn1/catch;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/uz0;->case(Ljava/lang/Object;)Landroid/support/v4/uz0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c42;->for:Landroid/support/v4/uz0;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c42;->new:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c42;->try:Lorg/bouncycastle/asn1/case;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->super(Z)Lorg/bouncycastle/asn1/for;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/support/v4/c42;->else:Lorg/bouncycastle/asn1/for;

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/break;

    instance-of v2, v1, Lorg/bouncycastle/asn1/import;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Landroid/support/v4/y90;->catch(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y90;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/c42;->break:Landroid/support/v4/y90;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v1, v3}, Landroid/support/v4/tg0;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tg0;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/c42;->this:Landroid/support/v4/tg0;

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lorg/bouncycastle/asn1/super;

    if-nez v2, :cond_6

    instance-of v2, v1, Landroid/support/v4/p;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lorg/bouncycastle/asn1/for;

    if-eqz v2, :cond_5

    invoke-static {v1}, Lorg/bouncycastle/asn1/for;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;

    move-result-object v1

    goto :goto_0

    :cond_5
    instance-of v2, v1, Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/c42;->goto:Lorg/bouncycastle/asn1/goto;

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v1}, Landroid/support/v4/p;->new(Ljava/lang/Object;)Landroid/support/v4/p;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/c42;->case:Landroid/support/v4/p;

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/c42;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/c42;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/c42;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/c42;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/c42;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/for;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->else:Lorg/bouncycastle/asn1/for;

    return-object v0
.end method

.method public case()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->try:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->if:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->new:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public const()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->this:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public final()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public goto()Landroid/support/v4/uz0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->for:Landroid/support/v4/uz0;

    return-object v0
.end method

.method public new()Landroid/support/v4/p;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->case:Landroid/support/v4/p;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->goto:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/c42;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/c42;->if:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/c42;->for:Landroid/support/v4/uz0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/c42;->new:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/c42;->try:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/c42;->case:Landroid/support/v4/p;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/c42;->else:Lorg/bouncycastle/asn1/for;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/c42;->else:Lorg/bouncycastle/asn1/for;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/c42;->goto:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/c42;->this:Landroid/support/v4/tg0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/c42;->this:Landroid/support/v4/tg0;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v4/c42;->break:Landroid/support/v4/y90;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/c42;->break:Landroid/support/v4/y90;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c42;->break:Landroid/support/v4/y90;

    return-object v0
.end method
