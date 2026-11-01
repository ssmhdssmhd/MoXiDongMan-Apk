.class public Landroid/support/v4/ra1;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public constructor <init>(ILandroid/support/v4/tg0;Landroid/support/v4/tg0;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v4/ra1;-><init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/tg0;Landroid/support/v4/tg0;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/tg0;Landroid/support/v4/tg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ra1;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p2, p0, Landroid/support/v4/ra1;->if:Landroid/support/v4/tg0;

    iput-object p3, p0, Landroid/support/v4/ra1;->for:Landroid/support/v4/tg0;

    return-void
.end method

.method private do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method private static for(Landroid/support/v4/pm0;)Lorg/bouncycastle/asn1/super;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method private static new([Landroid/support/v4/pm0;)Lorg/bouncycastle/asn1/super;
    .locals 3

    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/n;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public break(Landroid/support/v4/b1;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->try:Landroid/support/v4/b1;

    return-object p0
.end method

.method public case(Landroid/support/v4/pm0;)Landroid/support/v4/ra1;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/ra1;->for(Landroid/support/v4/pm0;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/ra1;->else(Lorg/bouncycastle/asn1/super;)Landroid/support/v4/ra1;

    move-result-object p1

    return-object p1
.end method

.method public catch(Lorg/bouncycastle/asn1/j;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->else:Lorg/bouncycastle/asn1/class;

    return-object p0
.end method

.method public class([B)Landroid/support/v4/ra1;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/ra1;->catch(Lorg/bouncycastle/asn1/j;)Landroid/support/v4/ra1;

    move-result-object p1

    return-object p1
.end method

.method public const(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->break:Lorg/bouncycastle/asn1/class;

    return-object p0
.end method

.method public else(Lorg/bouncycastle/asn1/super;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->class:Lorg/bouncycastle/asn1/super;

    return-object p0
.end method

.method public final([B)Landroid/support/v4/ra1;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/ra1;->const(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;

    move-result-object p1

    return-object p1
.end method

.method public goto([Landroid/support/v4/pm0;)Landroid/support/v4/ra1;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/ra1;->new([Landroid/support/v4/pm0;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/ra1;->else(Lorg/bouncycastle/asn1/super;)Landroid/support/v4/ra1;

    move-result-object p1

    return-object p1
.end method

.method public if()Landroid/support/v4/qa1;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ra1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->if:Landroid/support/v4/tg0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->for:Landroid/support/v4/tg0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->new:Lorg/bouncycastle/asn1/case;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->try:Landroid/support/v4/b1;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->case:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->else:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->goto:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->this:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->break:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->catch:Landroid/support/v4/pa1;

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ra1;->class:Lorg/bouncycastle/asn1/super;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/ra1;->do(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/ra1;->new:Lorg/bouncycastle/asn1/case;

    iput-object v1, p0, Landroid/support/v4/ra1;->try:Landroid/support/v4/b1;

    iput-object v1, p0, Landroid/support/v4/ra1;->case:Lorg/bouncycastle/asn1/class;

    iput-object v1, p0, Landroid/support/v4/ra1;->else:Lorg/bouncycastle/asn1/class;

    iput-object v1, p0, Landroid/support/v4/ra1;->goto:Lorg/bouncycastle/asn1/class;

    iput-object v1, p0, Landroid/support/v4/ra1;->this:Lorg/bouncycastle/asn1/class;

    iput-object v1, p0, Landroid/support/v4/ra1;->break:Lorg/bouncycastle/asn1/class;

    iput-object v1, p0, Landroid/support/v4/ra1;->catch:Landroid/support/v4/pa1;

    iput-object v1, p0, Landroid/support/v4/ra1;->class:Lorg/bouncycastle/asn1/super;

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-static {v1}, Landroid/support/v4/qa1;->else(Ljava/lang/Object;)Landroid/support/v4/qa1;

    move-result-object v0

    return-object v0
.end method

.method public import([B)Landroid/support/v4/ra1;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/ra1;->while(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;

    move-result-object p1

    return-object p1
.end method

.method public native(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->goto:Lorg/bouncycastle/asn1/class;

    return-object p0
.end method

.method public public([B)Landroid/support/v4/ra1;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/ra1;->native(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;

    move-result-object p1

    return-object p1
.end method

.method public super(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->case:Lorg/bouncycastle/asn1/class;

    return-object p0
.end method

.method public this(Lorg/bouncycastle/asn1/case;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->new:Lorg/bouncycastle/asn1/case;

    return-object p0
.end method

.method public throw([B)Landroid/support/v4/ra1;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/ra1;->super(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;

    move-result-object p1

    return-object p1
.end method

.method public try(Landroid/support/v4/pa1;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->catch:Landroid/support/v4/pa1;

    return-object p0
.end method

.method public while(Lorg/bouncycastle/asn1/class;)Landroid/support/v4/ra1;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ra1;->this:Lorg/bouncycastle/asn1/class;

    return-object p0
.end method
