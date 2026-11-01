.class public Landroid/support/v4/ly1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final break:Lorg/bouncycastle/asn1/goto;

.field private static final catch:Lorg/bouncycastle/asn1/goto;

.field private static final class:Lorg/bouncycastle/asn1/goto;

.field private static final this:Lorg/bouncycastle/asn1/goto;


# instance fields
.field private case:Lorg/bouncycastle/asn1/throw;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Z

.field private for:Landroid/support/v4/fr;

.field private goto:Z

.field private if:Lorg/bouncycastle/asn1/throw;

.field private new:Lorg/bouncycastle/asn1/throw;

.field private try:Lorg/bouncycastle/asn1/throw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/ly1;->this:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/ly1;->break:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/ly1;->catch:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/ly1;->class:Lorg/bouncycastle/asn1/goto;

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

    iput-object v0, p0, Landroid/support/v4/ly1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/throw;

    iput-object v0, p0, Landroid/support/v4/ly1;->if:Lorg/bouncycastle/asn1/throw;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ly1;->for:Landroid/support/v4/fr;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/final;

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    instance-of v1, v0, Lorg/bouncycastle/asn1/volatile;

    iput-boolean v1, p0, Landroid/support/v4/ly1;->goto:Z

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ly1;->try:Lorg/bouncycastle/asn1/throw;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/volatile;

    iput-boolean v1, p0, Landroid/support/v4/ly1;->else:Z

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ly1;->new:Lorg/bouncycastle/asn1/throw;

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/bouncycastle/asn1/throw;

    iput-object v0, p0, Landroid/support/v4/ly1;->case:Lorg/bouncycastle/asn1/throw;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/throw;Landroid/support/v4/fr;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/fr;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Landroid/support/v4/ly1;->new(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ly1;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/ly1;->if:Lorg/bouncycastle/asn1/throw;

    iput-object p2, p0, Landroid/support/v4/ly1;->for:Landroid/support/v4/fr;

    iput-object p3, p0, Landroid/support/v4/ly1;->new:Lorg/bouncycastle/asn1/throw;

    iput-object p4, p0, Landroid/support/v4/ly1;->try:Lorg/bouncycastle/asn1/throw;

    iput-object p5, p0, Landroid/support/v4/ly1;->case:Lorg/bouncycastle/asn1/throw;

    instance-of p1, p4, Lorg/bouncycastle/asn1/continue;

    iput-boolean p1, p0, Landroid/support/v4/ly1;->goto:Z

    instance-of p1, p3, Lorg/bouncycastle/asn1/continue;

    iput-boolean p1, p0, Landroid/support/v4/ly1;->else:Z

    return-void
.end method

.method public static break(Ljava/lang/Object;)Landroid/support/v4/ly1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ly1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ly1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ly1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ly1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;)Lorg/bouncycastle/asn1/goto;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/bouncycastle/asn1/import;

    if-eqz v6, :cond_0

    invoke-static {v5}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v6

    if-ne v6, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_4
    if-eqz v2, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    const-wide/16 p2, 0x5

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    return-object p1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lorg/bouncycastle/asn1/import;

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    sget-object p1, Landroid/support/v4/ly1;->class:Lorg/bouncycastle/asn1/goto;

    return-object p1

    :cond_8
    if-eqz v4, :cond_9

    sget-object p1, Landroid/support/v4/ly1;->catch:Lorg/bouncycastle/asn1/goto;

    return-object p1

    :cond_9
    if-eqz v3, :cond_a

    sget-object p1, Landroid/support/v4/ly1;->break:Lorg/bouncycastle/asn1/goto;

    return-object p1

    :cond_a
    invoke-direct {p0, p4}, Landroid/support/v4/ly1;->try(Lorg/bouncycastle/asn1/throw;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p1, Landroid/support/v4/ly1;->break:Lorg/bouncycastle/asn1/goto;

    return-object p1

    :cond_b
    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Landroid/support/v4/ly1;->break:Lorg/bouncycastle/asn1/goto;

    return-object p1

    :cond_c
    sget-object p1, Landroid/support/v4/ly1;->this:Lorg/bouncycastle/asn1/goto;

    return-object p1
.end method

.method private try(Lorg/bouncycastle/asn1/throw;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/goto;->goto(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/goto;->catch()Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ly1;->try:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ly1;->case:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ly1;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ly1;->new:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ly1;->if:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public this()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ly1;->for:Landroid/support/v4/fr;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ly1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ly1;->if:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ly1;->for:Landroid/support/v4/fr;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ly1;->new:Lorg/bouncycastle/asn1/throw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Landroid/support/v4/ly1;->else:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/volatile;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/volatile;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/ly1;->new:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/ly1;->try:Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Landroid/support/v4/ly1;->goto:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/volatile;

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/volatile;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/ly1;->try:Lorg/bouncycastle/asn1/throw;

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v4/ly1;->case:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/package;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/package;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
