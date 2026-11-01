.class public Landroid/support/v4/wa1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final break:Landroid/support/v4/wa1;

.field public static final case:I = 0x4

.field public static final catch:Landroid/support/v4/wa1;

.field public static final class:Landroid/support/v4/wa1;

.field public static final const:Landroid/support/v4/wa1;

.field public static final else:I = 0x5

.field public static final final:Landroid/support/v4/wa1;

.field public static final for:I = 0x1

.field public static final goto:I = 0x6

.field public static final if:I = 0x0

.field public static final new:I = 0x2

.field public static final super:Landroid/support/v4/wa1;

.field public static final this:Landroid/support/v4/wa1;

.field public static final try:I = 0x3


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/wa1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/wa1;-><init>(I)V

    sput-object v0, Landroid/support/v4/wa1;->this:Landroid/support/v4/wa1;

    new-instance v0, Landroid/support/v4/wa1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/wa1;-><init>(I)V

    sput-object v0, Landroid/support/v4/wa1;->break:Landroid/support/v4/wa1;

    new-instance v0, Landroid/support/v4/wa1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/wa1;-><init>(I)V

    sput-object v0, Landroid/support/v4/wa1;->catch:Landroid/support/v4/wa1;

    new-instance v0, Landroid/support/v4/wa1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v4/wa1;-><init>(I)V

    sput-object v0, Landroid/support/v4/wa1;->class:Landroid/support/v4/wa1;

    new-instance v0, Landroid/support/v4/wa1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v4/wa1;-><init>(I)V

    sput-object v0, Landroid/support/v4/wa1;->const:Landroid/support/v4/wa1;

    new-instance v0, Landroid/support/v4/wa1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/wa1;-><init>(I)V

    sput-object v0, Landroid/support/v4/wa1;->final:Landroid/support/v4/wa1;

    new-instance v0, Landroid/support/v4/wa1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v4/wa1;-><init>(I)V

    sput-object v0, Landroid/support/v4/wa1;->super:Landroid/support/v4/wa1;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-direct {p0, v0}, Landroid/support/v4/wa1;-><init>(Lorg/bouncycastle/asn1/goto;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wa1;->do:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/wa1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/wa1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/wa1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/wa1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/wa1;-><init>(Lorg/bouncycastle/asn1/goto;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wa1;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wa1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
