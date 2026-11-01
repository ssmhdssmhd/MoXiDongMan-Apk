.class public Landroid/support/v4/og;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private break:Lorg/bouncycastle/asn1/instanceof;

.field private case:Landroid/support/v4/e81;

.field private catch:Landroid/support/v4/y90;

.field private do:Lorg/bouncycastle/asn1/super;

.field private else:Landroid/support/v4/tg2;

.field private for:Lorg/bouncycastle/asn1/goto;

.field private goto:Lorg/bouncycastle/asn1/x509/try;

.field private if:Lorg/bouncycastle/asn1/goto;

.field private new:Landroid/support/v4/b1;

.field private this:Lorg/bouncycastle/asn1/instanceof;

.field private try:Landroid/support/v4/tg2;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/og;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v0, v3}, Landroid/support/v4/y90;->catch(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/y90;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->catch:Landroid/support/v4/y90;

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->break:Lorg/bouncycastle/asn1/instanceof;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->this:Lorg/bouncycastle/asn1/instanceof;

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/x509/try;->else(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->goto:Lorg/bouncycastle/asn1/x509/try;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Landroid/support/v4/tg2;->goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tg2;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->else:Landroid/support/v4/tg2;

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/e81;->new(Ljava/lang/Object;)Landroid/support/v4/e81;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->case:Landroid/support/v4/e81;

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Landroid/support/v4/tg2;->goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tg2;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->try:Landroid/support/v4/tg2;

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v3}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->new:Landroid/support/v4/b1;

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->for:Lorg/bouncycastle/asn1/goto;

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/og;->if:Lorg/bouncycastle/asn1/goto;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/og;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/og;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/og;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/og;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/og;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public case()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->try:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public catch()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->else:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->break:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public const()Landroid/support/v4/e81;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->case:Landroid/support/v4/e81;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->this:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public final()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public goto()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->goto:Lorg/bouncycastle/asn1/x509/try;

    return-object v0
.end method

.method public new()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->catch:Landroid/support/v4/y90;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->for:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/og;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
