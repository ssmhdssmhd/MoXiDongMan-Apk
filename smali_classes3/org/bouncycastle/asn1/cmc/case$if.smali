.class Lorg/bouncycastle/asn1/cmc/case$if;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/cmc/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/asn1/goto;

.field private final for:Lorg/bouncycastle/asn1/super;

.field private final if:Landroid/support/v4/tg2;

.field private final new:Lorg/bouncycastle/asn1/throw;

.field public final synthetic try:Lorg/bouncycastle/asn1/cmc/case;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/cmc/case;Landroid/support/v4/tg2;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/throw;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->try:Lorg/bouncycastle/asn1/cmc/case;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {}, Lorg/bouncycastle/asn1/cmc/case;->new()Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/case$if;->if:Landroid/support/v4/tg2;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    const/4 p2, 0x2

    new-array p2, p2, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p4, p2, p3

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->for:Lorg/bouncycastle/asn1/super;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cmc/case$if;->new:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/asn1/cmc/case;Landroid/support/v4/tg2;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/cmc/case$do;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/asn1/cmc/case$if;-><init>(Lorg/bouncycastle/asn1/cmc/case;Landroid/support/v4/tg2;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/cmc/case;Lorg/bouncycastle/asn1/super;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->try:Lorg/bouncycastle/asn1/cmc/case;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/case$if;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/case$if;->if:Landroid/support/v4/tg2;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/import;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->new:Lorg/bouncycastle/asn1/throw;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "incorrect tag number on attributes for CertificationRequestInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "incorrect subjectPublicKeyInfo size for CertificationRequestInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "incorrect sequence size for CertificationRequestInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/asn1/cmc/case;Lorg/bouncycastle/asn1/super;Lorg/bouncycastle/asn1/cmc/case$do;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/cmc/case$if;-><init>(Lorg/bouncycastle/asn1/cmc/case;Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method private break()Lorg/bouncycastle/asn1/super;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case$if;->for:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public static synthetic case(Lorg/bouncycastle/asn1/cmc/case$if;)Lorg/bouncycastle/asn1/throw;
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/cmc/case$if;->goto()Lorg/bouncycastle/asn1/throw;

    move-result-object p0

    return-object p0
.end method

.method private catch()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case$if;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public static synthetic else(Lorg/bouncycastle/asn1/cmc/case$if;)Lorg/bouncycastle/asn1/super;
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/cmc/case$if;->break()Lorg/bouncycastle/asn1/super;

    move-result-object p0

    return-object p0
.end method

.method private goto()Lorg/bouncycastle/asn1/throw;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case$if;->new:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public static synthetic new(Lorg/bouncycastle/asn1/cmc/case$if;)Lorg/bouncycastle/asn1/goto;
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/cmc/case$if;->catch()Lorg/bouncycastle/asn1/goto;

    move-result-object p0

    return-object p0
.end method

.method private this()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/case$if;->if:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public static synthetic try(Lorg/bouncycastle/asn1/cmc/case$if;)Landroid/support/v4/tg2;
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/cmc/case$if;->this()Landroid/support/v4/tg2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->if:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/case$if;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/case$if;->new:Lorg/bouncycastle/asn1/throw;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
