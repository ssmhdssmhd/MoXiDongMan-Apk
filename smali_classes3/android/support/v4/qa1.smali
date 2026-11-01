.class public Landroid/support/v4/qa1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final const:Landroid/support/v4/tg0;

.field public static final final:I = 0x1

.field public static final super:I = 0x2


# instance fields
.field private break:Lorg/bouncycastle/asn1/class;

.field private case:Lorg/bouncycastle/asn1/class;

.field private catch:Landroid/support/v4/pa1;

.field private class:Lorg/bouncycastle/asn1/super;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private else:Lorg/bouncycastle/asn1/class;

.field private for:Landroid/support/v4/tg0;

.field private goto:Lorg/bouncycastle/asn1/class;

.field private if:Landroid/support/v4/tg0;

.field private new:Lorg/bouncycastle/asn1/case;

.field private this:Lorg/bouncycastle/asn1/class;

.field private try:Landroid/support/v4/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/tg0;

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/n;-><init>()V

    invoke-static {v1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/tg0;-><init>(Landroid/support/v4/tg2;)V

    sput-object v0, Landroid/support/v4/qa1;->const:Landroid/support/v4/tg0;

    return-void
.end method

.method public constructor <init>(ILandroid/support/v4/tg0;Landroid/support/v4/tg0;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v4/qa1;-><init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/tg0;Landroid/support/v4/tg0;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/tg0;Landroid/support/v4/tg0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qa1;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p2, p0, Landroid/support/v4/qa1;->if:Landroid/support/v4/tg0;

    iput-object p3, p0, Landroid/support/v4/qa1;->for:Landroid/support/v4/tg0;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->if:Landroid/support/v4/tg0;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->for:Landroid/support/v4/tg0;

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

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->class:Lorg/bouncycastle/asn1/super;

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Landroid/support/v4/pa1;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/pa1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->catch:Landroid/support/v4/pa1;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->break:Lorg/bouncycastle/asn1/class;

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->this:Lorg/bouncycastle/asn1/class;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->goto:Lorg/bouncycastle/asn1/class;

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->else:Lorg/bouncycastle/asn1/class;

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->case:Lorg/bouncycastle/asn1/class;

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v2}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->try:Landroid/support/v4/b1;

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/case;->super(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qa1;->new:Lorg/bouncycastle/asn1/case;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static else(Ljava/lang/Object;)Landroid/support/v4/qa1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/qa1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/qa1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/qa1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/qa1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public case()[Landroid/support/v4/pm0;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/qa1;->class:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/pm0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/qa1;->class:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/pm0;->case(Ljava/lang/Object;)Landroid/support/v4/pm0;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public catch()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->else:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public class()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->break:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public const()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->for:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public final()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->if:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->new:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public super()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->case:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public this()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->try:Landroid/support/v4/b1;

    return-object v0
.end method

.method public throw()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->this:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/qa1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->if:Landroid/support/v4/tg0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->for:Landroid/support/v4/tg0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->new:Lorg/bouncycastle/asn1/case;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->try:Landroid/support/v4/b1;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->case:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->else:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->goto:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->this:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->break:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->catch:Landroid/support/v4/pa1;

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/qa1;->class:Lorg/bouncycastle/asn1/super;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/qa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/pa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->catch:Landroid/support/v4/pa1;

    return-object v0
.end method

.method public while()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qa1;->goto:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method
